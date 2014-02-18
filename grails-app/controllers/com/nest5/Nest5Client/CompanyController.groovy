package com.nest5.Nest5Client

import grails.converters.JSON
import grails.plugins.springsecurity.Secured
import groovy.time.TimeCategory
import groovyx.net.http.*
import org.springframework.web.servlet.support.RequestContextUtils

import static groovyx.net.http.ContentType.*
import static groovyx.net.http.Method.*

import org.springframework.dao.DataIntegrityViolationException

class CompanyController {
    def springSecurityService
    def userAgentIdentService
    def userService
    def companyService
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def beforeInterceptor = [action:this.&registerDevice,except:'chat,clients,complementary,create,delete,demographics,edit,findCompanies,firstInteraction,index,interactions,list,manualSave,messages,messageUser,panel,save,selectUsers,show,showAllClients,showClients,showCompanies,update']

    @Secured(["ROLE_ADMIN"])
    def index() {
        redirect(action: "list", params: params)
    }

    @Secured(["ROLE_ADMIN"])
    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [companyInstanceList: Company.list(params), companyInstanceTotal: Company.count()]
    }


    def create() {
        [companyInstance: new Company(params),promoInstance: new Promo(params),storeInstance: new Store(params)]
    }


    def save() {
        //println(params.terms)

        if (params.terms != "accepted")
        {
            def data =  [errors: "1", errorType: "2",companyId: null, messages: [[id:13 , value: message(code: 'user.accept.terms', args: [],default: "You didn´t accept the terms and conditions.")]] ]
            render data  as JSON
            return
        }
        def cantUser = Company.countByEmail(params.email)

        if(cantUser > 0) {
            def data =  [errors: "1", errorType: "2",companyId: null, messages: [[id:3 , value: message(code: 'user.email.taken', args: [params.email],default: "The Email {0} is already registered.")]] ]
            render data  as JSON
            return
        }

        def user = new Company()
        user.properties = params
        def userRole = SecRole.findByAuthority('ROLE_COMPANY')
        userService.sendCompanyInitMail(user.email,user.name,user.address,user.telephone,user.contactName)

        user.username = params.email
        //user.referer = params.referer ? params.referer : "NONE"
        //user.smartphone = params.smartphone ? params.smartphone : false
        //user.smartphoneBrand = params.smartphone ? params.smartphoneBrand : "NONE"
        //user.date = params.date ? params.date : "NONE"
        //user.phone = params.phone ? params.phone : "NONE"
        /*String charset = (('A'..'Z') + ('0'..'9')).join()
        Integer length = 18
        String randomString = RandomStringUtils.random(length, charset.toCharArray())
        user.password = randomString*/

        user.accountExpired = false
        user.enabled = true
        user.logo = "" //poner imagen de poner logo
        user.nit = "XXXXXXXX-X"

        if(user.save(flush: true))
        {
//            userService.sendWelcomeMail(user,randomString)  //Mandar correo a empresa
            SecUserSecRole.create user,userRole
            /*def referer = session.getAttribute("NEST5_REFERER")
            session.removeAttribute("NEST5_REFERER")
            if (referer)
            {
                def refCode =  RefCodes.findByCode(referer)
                if(refCode)
                {
                    def dummy = User.findByUsername("dummyNest5")
                    if(refCode.refered == dummy)
                    {
                        refCode.refered =  user
                        refCode.save(flush: true)
                        achievementsService.createAchievement("03_refe",refCode.referer)
                        //falta guardar un achievement al usuario que se registra con los 10 iniciales

                    }

                }
            }*/
            def data =  [errors: "0", errorType: "0",companyId: user.id, messages: [[id:4 , value: message(code: 'company.register.success', args: ["<h2>${user.name}</h2>"],default: "{0}, <br>Thank You!, Your brand's one step closer to getting ready with <b>Nest5</b><br>Continue with designing benefits for your customers: <br><br><button id='gosteptwo'>Go To Step 2</button>")] ] ]
            render data  as JSON
            return

        }
        else
        {
            def data =  [errors: "1", errorType: "1",companyId: null, messages: [id: "NA",value:  user.errors] ]
            render data  as JSON
            return
        }
    }

    def manualSave() {
        def companyInstance = new Company(params)
        if (!companyInstance.save(flush: true)) {
            render(view: "create", model: [companyInstance: companyInstance])
            return
        }

        def companyRole = SecRole.findByAuthority('ROLE_COMPANY') ?: new SecRole(authority: 'ROLE_COMPANY').save(failOnError: true)
        if (!companyInstance.authorities.contains(companyRole)) {
            SecUserSecRole.create companyInstance, companyRole
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'company.label', default: 'Company'), companyInstance.id])
        redirect(action: "show", id: companyInstance.id)
    }

//    @Secured(["ROLE_ADMIN"])
    def show() {
        def companyInstance = Company.get(params.id)
        if (!companyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'company.label', default: 'Company'), params.id])
            redirect(action: "list")
            return
        }

        [companyInstance: companyInstance]
    }

//    @Secured(["ROLE_ADMIN"])
    def edit() {
        def companyInstance = Company.get(params.id)
        if (!companyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'company.label', default: 'Company'), params.id])
            redirect(action: "list")
            return
        }

        [companyInstance: companyInstance]
    }

//    @Secured(["ROLE_ADMIN"])
    def update() {
        def companyInstance = Company.get(params.id)
        if (!companyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'company.label', default: 'Company'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (companyInstance.version > version) {
                companyInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'company.label', default: 'Company')] as Object[],
                        "Another user has updated this Company while you were editing")
                render(view: "edit", model: [companyInstance: companyInstance])
                return
            }
        }

        companyInstance.properties = params

        if (!companyInstance.save(flush: true)) {
            render(view: "edit", model: [companyInstance: companyInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'company.label', default: 'Company'), companyInstance.id])
        redirect(action: "show", id: companyInstance.id)
    }

//    @Secured(["ROLE_ADMIN"])
    def delete() {
        def companyInstance = Company.get(params.id)
        if (!companyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'company.label', default: 'Company'), params.id])
            redirect(action: "list")
            return
        }

        try {
            companyInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'company.label', default: 'Company'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'company.label', default: 'Company'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    @Secured(['ROLE_COMPANY','ROLE_ADMIN'])
    def panel(){


        def activity = params.activity
        def template
        def menu
        def promos
        def stores
        def clients
        def interactions
        def active
        def paused
        def inactive
        def promo
        def offers
        def clientDetails
        def userStats
        def messages


        def user = springSecurityService.currentUser
        def config = CompanyConfig.findByCompany(user) ?: new CompanyConfig(company: user).save(flush:true,failOnError: true)      //no more properties are set since every config has a default value.
        if(config.advancedPanel)
            redirect(action: 'dashboard')
        //def userInstance = springSecurityService.currentUser
        //def stats = userService.getStats(userInstance)
        //def complete = (userInstance.phone != "NONE") && (userInstance.name != "NONE") && (userInstance.email != "NONE") && (userInstance.date != "NONE") ?: false


        messages = Message.countByCompanyAndRead(user,false)
        switch (activity)
        {
            /*case 'password': template = "password"
                menu = "settings"
                break
            case 'profile' : template = "profile"
                menu = "profile"
                break
            case 'details' : template = "details"
                menu = "settings"
                break
            case 'mobile' : template = "mobile"
                menu = "settings"
                break
            case 'help' : template = "help"
                menu = "help"
                break
            case 'achievements' : template = "achievements"
                menu = "profile"
                break
                */
            case 'displayPromo' : template = "promoQR"
                menu = "profile"
                promo = Promo.findById(params.promocode)
                offers = promo.offers
                break
            case 'stores' : template = "stores"
                menu = "profile"
                stores = user.managedStores
                break
            case 'promos' : template = "promos"
                promos = user.managedPromos.size() < 5 ?  user.managedPromos : user.lazyPromos(0,5)
//                promos =   user.lazyPromos(3,10)
                menu = "profile"
                break
            case 'addpromo' : template = "addPromo"
                //promos = user.managedPromos.size() < 5 ?  user.managedPromos : user.lazyPromos(0,5)
//                promos =   user.lazyPromos(3,10)
                menu = "profile"
                break
            case 'addstore' : template = "addStore"
                //promos = user.managedPromos.size() < 5 ?  user.managedPromos : user.lazyPromos(0,5)
//                promos =   user.lazyPromos(3,10)
                menu = "profile"
                break
            case 'writemessage' : template = "newMessage"
                //promos = user.managedPromos.size() < 5 ?  user.managedPromos : user.lazyPromos(0,5)
//                promos =   user.lazyPromos(3,10)
                menu = "profile"
                break
            case 'users' : template = "users"
                //promos = user.managedPromos.size() < 5 ?  user.managedPromos : user.lazyPromos(0,5)
//                promos =   user.lazyPromos(3,10)
                menu = "profile"
                clients = user.clients()
                clientDetails = []
                clients.each {cliente->
                     def sc = Stamp.createCriteria()
                     def stamps = sc.list{
                         eq('user',cliente)
                         eq('redeemed',false)
                         'in'('promo', user.managedPromos)

                     }
                    def cc = Coupon.createCriteria()
                    def coupons = cc.list{
                        eq('user',cliente)
                        'in'('promo', user.managedPromos)
                    }
                    clientDetails += [client: cliente,stamps: stamps,coupons:coupons]
                }

                break

            case 'stats' : template = "stats"
                //promos = user.managedPromos.size() < 5 ?  user.managedPromos : user.lazyPromos(0,5)
//                promos =   user.lazyPromos(3,10)
                 def c = Stamp.createCriteria()
                 def promociones = user.managedPromos
                def today = new Date()
                def lastMonth = today - 30
                 def lastMonthStamps = c.get{
                     'in'("promo",promociones)
                     gt("date",lastMonth)
                     projections{
                           countDistinct("user")
                     }

                 }
                def r = Relation.createCriteria()

                def firstUser = r.get {
                    eq('user',user)
                    order('firstTime','asc')
                    maxResults(1)
                }
                def rr = Relation.createCriteria()
                def lastUser = rr.get {
                    eq('user',user)
                    order('firstTime','desc')
                    maxResults(1)
                }
                //penetración de la promoción, en el total de usuarios de la empresa y en el total de usuarios de Nest5
                promos = user.managedPromos

                //
                def promoStats = []
                promos.each{actual->
                    def cc  = Stamp.createCriteria()
                    def numberUsers = cc.get{
                      eq('promo',actual)
                      projections{
                          countDistinct('user')
                      }
                    }
                    def nest5Total = User.count()
                    def numberClients = clients.size() != 0 ? clients.size() : 1
                    def pen1 = (Double) (numberUsers / numberClients)
                    def pen2 = (Double) (numberUsers / nest5Total)
                    promoStats += [promo: actual, companyPenetration: pen1, globalPenetration: pen2]

                }
               userStats = [referenceDate: lastMonth,lastMonthStamps: lastMonthStamps,firstUser:firstUser,lastUSer:lastUser,promoStats:promoStats]
                menu = "profile"
                break
            //
            default: template = "general"
                menu = "general"
                println "aca"

                    promos = user.managedPromos
                    stores = user.managedStores
                    clients = user.clients()
                    interactions = []
                    active = []
                    paused = []
                    inactive = []
                    promos.each{
                        interactions += it.stamps
                    }
                def today = new Date()
                def lastWeek = today - 7
                def lastMonth = today - 30
               /* println today
                println lastWeek
                println lastMonth*/
                clients.each{cliente->
                    def c = Stamp.createCriteria()
                    def results
//                    println cliente
                    results = c.get {
                        eq("user",cliente)
                        gt("date",lastWeek)
                        maxResults(1)
                    }
//                    println results

                    if(results)
                    {
                        active += cliente
                    }
                    else{
                        c = Stamp.createCriteria()
                       results = c.get{
                           eq("user",cliente)
                           between("date", lastMonth,lastWeek)
                           maxResults(1)
                       }
                        if(results)
                        {
                            paused += cliente
                        }
                        else{
                            c = Stamp.createCriteria()
                            results = c.get{
                                eq("user",cliente)
                                lt("date", lastMonth)
                                maxResults(1)
                            }
                            if(results)
                            {
                                inactive += cliente
                            }
                        }
                        //
                    }

                }


                break
        }


        if (request.xhr) {
            render template: template, model: [user:user,promos:promos,stores:stores,clients:clients,interactions: interactions,active:active,paused:paused,inactive:inactive,promo: promo,offers:offers,clientDetails: clientDetails,userStats:userStats,picture: companyService.companyImageUrl(user),messages:  messages]
        } else {



            render view: "panel", model: [template: template,user: user,direct:'1',submenu: menu,promos:promos,stores:stores,clients: clients,interactions: interactions,active:active,paused:paused,inactive:inactive,promo: promo,offers: offers,clientDetails: clientDetails,userStats:userStats,picture: companyService.companyImageUrl(user),messages: messages]
        }



        return



    }

    @Secured(['ROLE_COMPANY'])
    def dashboard(){
        def user = springSecurityService.currentUser as Company
        def youarehere = "Dashboard"

        //Register Web as a device with the user id as device_id in the big data server
        /*try{
            registerDevice(user)

        }catch (Exception e){}*/  //If the is an error registering web panel as a device, it just goes on with the login process, it retries in other parts of the flow.

        [user: user,picture: companyService.companyImageUrl(user),youarehere: youarehere]
    }

    @Secured(['ROLE_COMPANY'])
    def tables(){
        def user = springSecurityService.currentUser
        def youarehere = "Tablas Generales"
        [user: user,picture: companyService.companyImageUrl(user),youarehere: youarehere]
    }
    @Secured(['ROLE_COMPANY'])
    def datatable(){
        def user = springSecurityService.currentUser as Company
        def youarehere = "Tablas Generales"
        /*try{
            registerDevice(user)
        }catch(Exception e){}*/
        //check nest5 server since it hasn't synced
        def http = new HTTPBuilder( grailsApplication.config.com.nest5.Nest5Client.bigDataServerURL )
        def jsonData
        // perform a GET request, expecting JSON response data
        http.request( GET, TEXT ) {

            uri.path = grailsApplication.config.com.nest5.Nest5Client.bigDataPath+'databaseOps/allSales'
            uri.query = [company:318]
            println uri

            headers.'User-Agent' = 'Mozilla/5.0 Ubuntu/8.10 Firefox/3.0.4'

            // response handler for a success response code:
            response.success = { resp, json ->
                println resp.statusLine
                println resp.contentType

                // parse the JSON response object:
                jsonData = JSON.parse(json)
                println jsonData
            }

            // handler for any failure status code:
            response.failure = { resp,json ->
                println "Unexpected error: ${resp.statusLine.statusCode} : ${resp.statusLine.reasonPhrase}"
                //resp.setStatus(400)

                println JSON.parse(json)

                return
            }
        }
        //println jsonData
        if(jsonData?.status != 1){

        }
        [user: user,picture: companyService.companyImageUrl(user),youarehere: youarehere,sales: jsonData?.payload]

    }

    @Secured(["ROLE_COMPANY"])
    def addIngredientCategory(){
        def user = springSecurityService.currentUser
        def youarehere = "Agregar Categor&iacute;a de Ingrediente"
        [user: user,picture: companyService.companyImageUrl(user),youarehere: youarehere]
    }
    @Secured(["ROLE_COMPANY"])
    def addProductCategory(){
        def user = springSecurityService.currentUser
        def youarehere = "Agregar Categor&iacute;a de Producto"
        [user: user,picture: companyService.companyImageUrl(user),youarehere: youarehere]
    }
    @Secured(["ROLE_COMPANY"])
    def addMeasuramentUnit(){
        def user = springSecurityService.currentUser
        def youarehere = "Agregar Unidad de Medida"
        [user: user,picture: companyService.companyImageUrl(user),youarehere: youarehere]
    }

    /****************************
    *****************************
    *****************************
     Save rows to big data server
    *****************************
    *****************************
    ****************************/

    @Secured(["ROLE_COMPANY"])
    def saveRow(){
        def user = springSecurityService.currentUser as Company
        def http = new HTTPBuilder( grailsApplication.config.com.nest5.Nest5Client.bigDataServerURL )
        def jsonData
        println params
        // perform a GET request, expecting JSON response data
        http.request( POST, TEXT ) {

            uri.path = grailsApplication.config.com.nest5.Nest5Client.bigDataPath+'rowOps/rowReceived'
            def now = Calendar.getInstance(Locale.default)
            def nowmillis = now.getTimeInMillis()
            params.put("time_created",nowmillis)
            params.put("device_id",new StringBuilder().append(user.id).append((user.email).encodeAsMD5()).toString())
            def fields = JSON.parse(params.fields)
            params.fields = fields
            uri.query = [row:params as JSON,sync_row_id:params.sync_row_id]
           // println uri

            headers.'User-Agent' = 'Mozilla/5.0 Ubuntu/8.10 Firefox/3.0.4'

            // response handler for a success response code:
            response.success = { resp, json ->
                println resp.statusLine
                println resp.contentType

                // parse the JSON response object:
                jsonData = JSON.parse(json)
                println jsonData

            }

            // handler for any failure status code:
            response.failure = { resp,json ->
                println "Unexpected error: ${resp.statusLine.statusCode} : ${resp.statusLine.reasonPhrase}"
                println JSON.parse(json)
                //resp.setStatus(400)

                return
            }
        }
        if(jsonData) {
            if(jsonData.status == 201 && jsonData.code == 555){
                def result = [status: 1,syncId: jsonData.syncId]
                response.setStatus(200)
                render result as JSON
                return
            }

        }
        else{
            def result = [status: 0,syncId: 0]
            response.setStatus(200)
            render result as JSON
            return

        }


    }

    @Secured(["ROLE_COMPANY"])
    def demographics(){
        def company = springSecurityService.currentUser
        def promos = company.managedPromos

      [user: company,picture: companyService.companyImageUrl(company)]

    }
    @Secured(["ROLE_COMPANY"])
    def complementary(){
        def company = springSecurityService.currentUser
//        def promos = company.managedPromos

        [user: company,picture: companyService.companyImageUrl(company)]

    }
    @Secured(["ROLE_COMPANY"])
    def interactions(){
        def company = springSecurityService.currentUser
        def promos = company.managedPromos

        [user: company, picture: companyService.companyImageUrl(company)]

    }

    def firstInteraction(){
        if (request.xhr) {
            def company = Company.findByEmail(params.companyid)
            def promos = company.managedPromos
            def results = []
            promos.each{promocion->
                def newbies = []
                def s = Stamp.createCriteria()
                def users = s.list{
                    eq("promo",promocion)
//                    order("date","asc")
                    projections{
                        distinct("user")

                    }
                }
                    users.each{usuario->

                        def userStamps = usuario.stamps
                        def ss = Stamp.createCriteria()

                        def firstTimeInPromo = ss.get{
                            eq("promo",promocion)
                            eq("user",usuario)
                            order("date","asc")
                            maxResults(1)
                            projections {
                                property("date")
                            }
                        }

                        def firstTimer = true

                        for(def actual : userStamps){
                            if(actual.promo != promocion)
                            {
                               if (actual.date < firstTimeInPromo)
                               {
                                firstTimer = false
                                break

                               }
                            }
                        }
                        if(firstTimer)
                        {
                           newbies += [user: usuario, date: firstTimeInPromo]
                        }

                    }
                results += [promo: promocion,newbies: newbies]

                }

//




        render results as JSON
        return

        }

    }

    def showCompanies()
    {


        // println "Valor: "+parsingForAndroid
// osInfo = detail string inside first parantheses, i.e., for Android - "Linux; U; Android 2.3.3; en-gb; GT-I9100 Build/GINGERBREAD"
        /*if(parsingForAndroid) {
            (userAgentIndentService.operatingSystem, userAgentIndentService.sec, userAgentIndentService.platform, userAgentIndentService.language) = userAgentIndentService.osInfo.split("; ") as List
        } else {
            (userAgentIndentService.platform, userAgentIndentService.sec, userAgentIndentService.operatingSystem, userAgentIndentService.language) = userAgentIndentService.osInfo.split("; ") as List
        }*/

        def cc = Company.createCriteria()
        def companies = cc.list {
            maxResults 6
        }
        //def companies = Company.list();
        def resultSet = []

         companies.each{company->
                            resultSet += [company:[id:company.id,name: company.name],href: company.url,image: resource(dir: 'images/partners',file: 'La_Ostreria.jpg')]

                        }

         /*def companiess = [[company: [id:  1, name: "La Ostreria"],href: "http://www.laostreria.com.co",image: "${resource(dir: 'images/partners', file: 'La_Ostreria.jpg')}"],
                 [company: [id:  2, name: "Winners Burger To Share"],href: "http://www.laostreria.com.co",image: "${resource(dir: 'images/partners', file: 'logo_winners.png')}"],
                 [company: [id:  3, name: "Jawii"],href: "http://www.laostreria.com.co",image: "${resource(dir: 'images/partners', file: 'logoeltrio.png')}"],
                 [company: [id:  4, name: "SushiToGo"],href: "http://www.laostreria.com.co",image: "${resource(dir: 'images/partners', file: 'Goandenjoy.JPG')}"]]
*/
            render resultSet as JSON
        //render text: iphone+" "+android+" "+chrome
            return

    }


    @Secured(["ROLE_COMPANY"])
    def showClients()
    {
        def q = params.q
        def company = springSecurityService.currentUser
        def devolver
        if(!q)
        {
            devolver = []
            render devolver as JSON
            return
        }
        def clients = company.clients()
        def filtered = clients.grep{it.name.toLowerCase().contains(q.toLowerCase()) || it.toString().toLowerCase().contains(q.toLowerCase())}
        def items = []
        filtered.each{cliente->
               items += [value: cliente.id, name: cliente.name]

        }

        render items as JSON
        return


    }

    @Secured(["ROLE_COMPANY"])
    def showAllClients()
    {

        def company = springSecurityService.currentUser


        def clients = company.clients().sort{it.name}
        def items = []
        clients.each{cliente->
            items += [id: cliente.id, name: cliente.name,username: cliente.username,picture:  userService.userImageUrl(cliente)]

        }

        render items as JSON
        return


    }

    def findCompanies() {
        def q = params.term
        def c = Company.createCriteria()
        def users = c.list {
            ilike('name','%'+q+'%')
            /*projections{
                property("username")
                property("id")
                property("name")
                property("email")
            }*/
        }
//        println users
        def results = []
        users.each{actual->
            results += [id: actual.id, name: actual.name, username: actual.username, email: actual.email,value: actual.username,type: 'company', title: actual.username, img: companyService.companyImageUrl(actual)]
        }
        render results as JSON
        return
    }

    @Secured(["ROLE_COMPANY"])
    def messages(){
        def user = springSecurityService.currentUser
        def users = user.chats().unique()

        def distribution = []
        users.each{actual->
            def cantUnread = 0
            def totalMessages = 0
            def lastDate = (Message.findByCompanyAndUser(user,actual,[sort: 'time', order: 'desc'])).time
            def mc = Message.createCriteria()
             cantUnread = mc.get {
                eq('user',actual)
                eq('company',user)
                eq('read',false)
                projections {
                    count('id')
                }
            }
             totalMessages = Message.countByCompanyAndUser(user,actual)

            distribution += [user: actual, total: totalMessages, unread: cantUnread, last: lastDate]
        }
        def messages = Message.countByCompanyAndRead(user,false)
        [user: user, messages: messages,distribution:distribution]
    }

    @Secured(["ROLE_COMPANY"])
    def chat(Long id){
        def user = springSecurityService.currentUser

        def client = User.findById(id as Long)
        if(!client){
            redirect(action: 'messages')
        }
        def conversation = Message.findAllByCompanyAndUser(user,client,[sort: 'time', order: 'asc'])

        conversation.each {act->
            if (act.read == false){
                act.read = true
                act.save(flush: true)
            }
        }
        def messages = Message.countByCompanyAndRead(user,false)

        [user: user, conversation: conversation,client:  client,messages: messages, pictures: [company: companyService.companyImageUrl(user), client: userService.userImageUrl(client)]]
    }

    @Secured(["ROLE_COMPANY"])
    def messageUser(){
        def user = User.findById(params.id as Long)
        def result
        if(!user){
            result = [status: 0, message: "No existe el usuario"]
            render result as JSON
            return
        }
        def company = springSecurityService.currentUser
        if(!company){
            result = [status: 0, message: "No existe la Marca"]
            render result as JSON
            return
        }
        def message = params.message
        company.addToChat(user,message)
//        userService.generateStatusEvent(user,message)
        result = [status: 1, message: message,user: user.id]
        render result as JSON
        return


    }
    @Secured(["ROLE_COMPANY"])
    def clients(){
        def company = springSecurityService.currentUser


        [user: company,picture: companyService.companyImageUrl(company)]

    }

    @Secured(["ROLE_COMPANY"])
    def selectUsers(){
        def user = springSecurityService.currentUser
        def today = new Date()
        def allUsers = user.clients().unique()
        def promos = user.managedPromos
        def sc4 = Stamp.createCriteria()
        def allUsersInPromo = sc4.list {
            'in'('promo',promos)
            projections {
                property('user')
            }
        }.unique()
        def oneWeekBefore
        def oneMonthBefore
        def type = params.type
        def result
//One Week

            use(TimeCategory) {
                oneWeekBefore = today - 1.week
                oneMonthBefore = today - 1.month
            }

        switch(type){
            case 'oneweek':

                def sc = Stamp.createCriteria()
                def oneWeekUsers = sc.list {
                    'in'('promo',promos)
                    ge('date',oneWeekBefore)
                    projections{
                        property('user')
                    }

                }.unique()
                result = []
                oneWeekUsers.each {
                    result += [id: it.id, name: it.name, email:  it.email, picture: userService.userImageUrl(it)]
                }
                break
            case 'onemonth':
                def sc1 = Stamp.createCriteria()
                def oneMonthUsers = sc1.list {
                    'in'('promo',promos)
                    ge('date',oneMonthBefore)
                    projections{
                        property('user')
                    }

                }.unique()
                result = []
                oneMonthUsers.each {
                    result += [id: it.id, name: it.name, email:  it.email, picture: userService.userImageUrl(it)]
                }
                break
            case 'moreonemonth':
                def sc1 = Stamp.createCriteria()
                def oneMonthUsers = sc1.list {
                    'in'('promo',promos)
                    ge('date',oneMonthBefore)
                    projections{
                        property('user')
                    }

                }.unique()
                def sc2 = Stamp.createCriteria()
                def moreOneMonthUsers = sc2.list {
                    'in'('promo',promos)
                    lt('date',oneMonthBefore)
                    not {'in'("user",oneMonthUsers)}
                    projections{
                        property('user')
                    }

                }.unique()
                result = []
                moreOneMonthUsers.each {
                    result += [id: it.id, name: it.name, email:  it.email, picture: userService.userImageUrl(it)]
                }
                break
            case 'nevercame':
                def sc3 = Stamp.createCriteria()
                def stampUsers = sc3.list {
                    'in'('promo',promos)
                    projections{
                        property('user')
                    }

                }.unique()
                def neverUsers = allUsers - stampUsers
                result = []
                neverUsers.each {
                    result += [id: it.id, name: it.name, email:  it.email, picture: userService.userImageUrl(it)]
                }
                break
            case 'onestamp':
                //One stamp, the week before and haven't returned (Fresh users, easy to make come back)
//also Stamped their card once last month
                def cal = Calendar.instance
                cal.setTime(oneWeekBefore)
                cal[Calendar.DAY_OF_WEEK] = cal.firstDayOfWeek
                def previousWeekBefore = cal.time
                def oneStampUsersLastWeek = []
                def oneStampUsersLastMonth = []
                allUsersInPromo.each{usuario->

                    def sc5 = Stamp.createCriteria()
                    def sellos = sc5.list {
                        'in'('promo',promos)
                        eq('user',usuario)
                    }

                    if (sellos.size() == 1){
                        if (sellos[0].date >= previousWeekBefore){
                            oneStampUsersLastWeek += usuario
                        }
                        if(sellos[0].date >= oneMonthBefore){
                            oneStampUsersLastMonth += usuario
                        }
                    }
                }
                result = [oneweek: [], onemonth: []]
                oneStampUsersLastWeek.each {
                    result.oneweek += [id: it.id, name: it.name, email:  it.email, picture: userService.userImageUrl(it)]
                }
                oneStampUsersLastMonth.each {
                    result.onemonth += [id: it.id, name: it.name, email:  it.email, picture: userService.userImageUrl(it)]
                }
                break
            case 'firstfive':
                def rc = Relation.createCriteria()
                def fiveusers = rc.list {
                    eq('company',user)
                    order('firstTime','asc')
                    maxResults(5)
                    projections {
                        property('user')

                    }
                }
                result = []
                fiveusers.each {
                    result += [id: it.id, name: it.name, email:  it.email, picture: userService.userImageUrl(it)]
                }
                break
            case 'almostthere':
                def almostWinUsers = []
                allUsersInPromo.each{usuario->

                    def sc6 = Stamp.createCriteria()
                    def sellos = sc6.list {
                        'in'('promo',promos)
                        eq('user',usuario)
                        eq('redeemed',false)
                    }
                    println sellos.size()
                    if (sellos.size() == 4){
                        almostWinUsers += usuario
                    }
                }
                result = []
                almostWinUsers.each {
                    result += [id: it.id, name: it.name, email:  it.email, picture: userService.userImageUrl(it)]
                }
                break
            case 'mostactive':
                def mostActiveUsers = []

                allUsersInPromo.each{usuario->

                    def sc7 = Stamp.createCriteria()
                    def sellos = sc7.list {
                        'in'('promo',promos)
                        eq('user',usuario)

                    }
                    println "ususario"+usuario.id+" : "+sellos.size()
                    mostActiveUsers += [user: usuario, sellos: sellos]
                }
                mostActiveUsers.sort {-it.sellos.size()}
                result = []
                mostActiveUsers.each {
                    result += [id: it.user.id, name: it.user.name,stamps: it.sellos.size(), email:  it.user.email, picture: userService.userImageUrl(it.user)]
                }
                break
        }
        if(type){
            if(!result)
                result = []
            response.setStatus(200)
            render result as JSON
        }

        else{
            response.setStatus(400)
            render text: "Bad Request"
        }

        return

         //


       /* def cal = Calendar.instance
        cal.set(previousDate[Calendar.YEAR],previousDate[Calendar.MONTH],1,0,0,0)
        previousDate = cal.time  //Date of first day 00:00:00 ranges months ago (6 months ago, 3 months ago)
        def i = 0
        def promociones = user.managedPromos
        def results = []
        while(i < ranges+1){
            def oneMonthAfter
            use(TimeCategory) {
                oneMonthAfter = previousDate + 1.months - 1.days
            }*/
    }

     def registerDevice(){
         try{
             def user = springSecurityService.currentUser as Company
             def http = new HTTPBuilder( grailsApplication.config.com.nest5.Nest5Client.bigDataServerURL )
             def jsonData
             // perform a GET request, expecting JSON response data
             http.request( POST, TEXT ) {

                 uri.path = grailsApplication.config.com.nest5.Nest5Client.bigDataPath+'deviceOps/registerDevice'
                 uri.query = [payload:"{company: "+user.id+",device_id:'"+new StringBuilder().append(user.id).append((user.email).encodeAsMD5()).toString()+"'}"]
                 println uri

                 headers.'User-Agent' = 'Mozilla/5.0 Ubuntu/8.10 Firefox/3.0.4'

                 // response handler for a success response code:
                 response.success = { resp, json ->
                     //println resp.statusLine
                     //println resp.contentType

                     // parse the JSON response object:
                     jsonData = JSON.parse(json)
                     //println jsonData
                 }

                 // handler for any failure status code:
                 response.failure = { resp,json ->
                     //println "Unexpected error: ${resp.statusLine.statusCode} : ${resp.statusLine.reasonPhrase}"
                     //println JSON.parse(json)


                 }
             }

         }catch(Exception e){}

        return true
    }
}
