package com.nest5.Nest5Client

import grails.converters.JSON
import grails.plugins.springsecurity.Secured
import groovy.time.TimeCategory


class StatisticsController {
    def springSecurityService
    @Secured(["ROLE_COMPANY"])
    def ages(){
        def company = springSecurityService.currentUser
        def clients = company.clients() ?: []

        def user = ExtendedUser.findAll("from ExtendedUser as e where e.user in (:clients)",[clients: clients])


        def emptyList = []
        def ages = []
        //def user2 = ExtendedUser.findByBirthDate
        def k = 0
        user.birthDate.each() {
            emptyList.push(it) //Agrega cada fecha de cumpleaños a emptyList
        }
        //def z = emptyList.first()
        //assert !z.getClass() == Date
        //println(z.getClass())
        //java.util.Date date1 = new java.util.Date(z.getTime());
        //println(date1.getClass())
        //def l = new Date()
        //println(l.getClass())
        //println("ola")
        //z.clearTime()
        //println(emptyList.getClass())
        def g = emptyList.size()
//                 render g as JSON// g contiene el tamaño del vector de edades
//        println(emptyList)
        while(k<g){
            //ages[k] = TimeCategory.minus(new Date(), emptyList[k])
            def l = new Date()
            //println(l)
            //println(l.getClass())
            def z = emptyList.first()
            if (emptyList.size()>1){
                emptyList.remove(0)
            }
            java.util.Date date1 = new java.util.Date(z.getTime());
            //ages[k] = emptyList[k][Calendar.YEAR] - l[Calendar.YEAR]
            ages[k] = l[Calendar.YEAR] - date1[Calendar.YEAR]
            //ages[k] = (int)(l-date1)/365
            k++
        }
//        println(ages)
        def x = ages.first()

        //def rangss = (int)(ages.max()-ages.min())/5     //Define el numero la cantidad de edades que se van a evaluar en cada rango)
        def rangss = (ages.max()-ages.min())/5
        def rangs = rangss
        if(rangss.getClass() == java.math.BigDecimal){
            rangss = (int)(ages.max()-ages.min())/5
            rangs = rangss + 1
        }

//        println(rangs)
//        println("bueno")
        def rang1 = []
        def rang2 = []
        def rang3 = []
        def rang4 = []
        def rang5 = []
        def r = 0
        def i = 0
        def c = 0
        def v = 0
        def b = 0
        def n = 0
        def rangrun = 0  //contador que verifica cuando lleno todas las listas con los rangos
        def rangmin = ages.min()
        def rangmax = ages.min()+rangs-1
//        println(rangmin)
        def rangminlist = []
        def rangmaxlist = []
        rangminlist[rangrun] = rangmin
        rangmaxlist[rangrun] = rangmax
   /*     println(rangmax)
        println("oeee")*/
        while(rangrun<5){
            while(r<g){
                def check = ages[r]
                //println(check)
                //println(rangrun.getClass())
                def rangrun1 = rangrun.toString()
                //println(rangrun1.getClass())
                if (check>=rangmin && check<=rangmax){

                    switch (rangrun){
                        case 0:
                            //println(rangrun)
                            //println(check)
                            rang1[i]=check    //una lista con las edades que cumplen con el primer rango
                            i++
                            break
                        case 1:
                            //println("ola")
                            rang2[c]=check    //una lista con las edades que cumplen con el primer rango
                            c++
                            break
                            //println("hola")
                        case 2:
                            rang3[v]=check    //una lista con las edades que cumplen con el primer rango
                            v++
                            break
                        case 3:
                            rang4[b]=check    //una lista con las edades que cumplen con el primer rango
                            b++
                            break
                        case 4:
                           /* println(rangrun)
                            println(check)
                            println("ke")*/
                            rang5[n]=check    //una lista con las edades que cumplen con el primer rango
                            n++
                            break
                    }
                }
                r++
            }
            r = 0
            //i = 0
            //c = 0
            //v = 0
            //b = 0
            //n = 0
            //println(i)
            rangrun++
            rangmin = rangmax+1
            rangmax = rangmin + rangs -1
            rangminlist[rangrun] = rangmin
            rangmaxlist[rangrun] = rangmax
            /*println(rangmin)
            println(rangmax)
            println("oeee")*/
        }
        /*println(rangmin)
        println(rangmax)
        println("oeee")
        //println(x.getClass())
        //println(ages.sum()/ages.size())
        //println(ages.min())
        //println(ages.max())
        //println(ages.min()+rangs)
        println(rang1)
        println(rang2)
        println(rang3)
        println(rang4)
        println(rang5)
        println(rangminlist)
        println(rangmaxlist)*/

        //Aquí comienza el cálculo de las insights
        def q = 0
        def t = 0
        def cont = []
        def acum = 0
        while(q<ages.size()){
            def compar = ages[q]

            while(t<ages.size()){
                def compar2 = ages[t]
               /* println(compar)
                println(compar2)*/

                if(compar==compar2){
                    acum++
                    cont[q] = acum
                }
                //println(t)
                t++
            }
            acum = 0
            q++
            t = q
        }
//        println(cont)
        cont.indexOf(cont.max())
        //println(cont.indexOf(cont.max()))
        def mode = ages.get(cont.max())
        //println(mode)
        /*def insight1 = ["El número de personas entre los": rangminlist[0], "y": rangmaxlist[0], "años es: ": rang1.size(), "equivalente a %: ": rang1.size()/ages.size()*100]
        def insight2 = ["El número de personas entre los": rangminlist[1], "y": rangmaxlist[1], "años es: ": rang2.size(), "equivalente a %: ": rang2.size()/ages.size()*100]
        def insight3 = ["El número de personas entre los": rangminlist[2], "y": rangmaxlist[2], "años es: ": rang3.size(), "equivalente a %: ": rang3.size()/ages.size()*100]
        def insight4 = ["El número de personas entre los": rangminlist[3], "y": rangmaxlist[3], "años es: ": rang4.size(), "equivalente a %: ": rang4.size()/ages.size()*100]
        def insight5 = ["El número de personas entre los": rangminlist[4], "y": rangmaxlist[4], "años es: ": rang5.size(), "equivalente a %: ": rang5.size()/ages.size()*100]
        def insight6 = ["La edad promedio de los usuarios es: ": ages.sum()/ages.size()]
        def insight7 = ["La persona de mas edad tiene: ": ages.max(), "La persona de menor edad tiene: ": ages.min()]
        def insight8 = ["La mayoría tiene: ": mode]*/
        def insight1 = [type: "ranges",rangeMin: rangminlist[0], rangeMax: rangmaxlist[0], size: rang1.size(), percentage: rang1.size()/ages.size()*100]
        def insight2 = [type: "ranges",rangeMin: rangminlist[1], rangeMax: rangmaxlist[1], size: rang2.size(), percentage: rang2.size()/ages.size()*100]
        def insight3 = [type: "ranges",rangeMin: rangminlist[2], rangeMax: rangmaxlist[2], size: rang3.size(), percentage: rang3.size()/ages.size()*100]
        def insight4 = [type: "ranges",rangeMin: rangminlist[3], rangeMax: rangmaxlist[3], size: rang4.size(), percentage: rang4.size()/ages.size()*100]
        def insight5 = [type: "ranges",rangeMin: rangminlist[4], rangeMax: rangmaxlist[4], size: rang5.size(), percentage: rang5.size()/ages.size()*100]
        def insight6 = [type: "text",text: "La edad promedio de los usuarios es: ", value: ages.sum()/ages.size()]
        def insight7 = [type: "text",text: "La persona de mas edad tiene: ", value: ages.max()]
        def insight8 = [type: "text",text: "La persona de menor edad tiene: ", value: ages.min()]
        def insight9 = [type: "text",text: "La mayoría tiene: ",value: mode]
        def devolver = [insight1,insight2,insight3,insight4,insight5,insight6,insight7,insight8,insight9]
        render devolver as JSON
        return



    }
    //@Secured(["ROLE_COMPANY"])
    def gender(){
        def company = springSecurityService.currentUser
        def clients = company.clients() ?: []

        def usergen = ExtendedUser.findAll("from ExtendedUser as e where e.user in (:clients)",[clients: clients])

        def emptyListgen = []
        def gen = []
        //def user2 = ExtendedUser.findByBirthDate
        def e = 0
        def hombres = 0
        def mujeres = 0
        def indefinido = 0
        usergen.gender.each() {
            emptyListgen.push(it) //Agrega cada fecha de cumpleaños a emptyList
        }

        while(e<emptyListgen.size()){
            if (emptyListgen[e]=="male"){
                hombres++
            }
            if (emptyListgen[e]=="female"){
                mujeres++
            }
            if (emptyListgen[e]=="unknown"){
                indefinido++
            }
            e++
        }
        def insightgen1 = [type: "pie",male: hombres, percentage: hombres/emptyListgen.size()*100]
        def insightgen2 = [type: "pie",female: mujeres, percentage: mujeres/emptyListgen.size()*100]
        def insightgen3 = [type: "pie",unknown: indefinido, percentage: indefinido/emptyListgen.size()*100]
        def result = [insightgen1, insightgen2, insightgen3]

        render result as JSON

        return


    }

    @Secured(["ROLE_COMPANY"])
    def usersPerMonth(){
        def user = springSecurityService.currentUser
        //registration time
        def today = new Date() //today
        /*use(TimeCategory) {
            today = new Date() + 1.months  //1 month from today (next month)
        }
        def cal1 = Calendar.instance
        cal1.set(today[Calendar.YEAR],today[Calendar.MONTH],1,0,0,0) // first day of next month
        today = cal1.time //date from next month's first day
        use(TimeCategory) {
            today = today - 1.day  //last day of this month
        }*/
        def registerDate = user.registerDate
        def monthsActive = today[Calendar.MONTH] - registerDate[Calendar.MONTH] > 0 ? today[Calendar.MONTH] - registerDate[Calendar.MONTH] : 0
        def ranges = monthsActive < 6 ? monthsActive : 6 //how many ranges of dates it's going to be
        def previousDate = new Date()
        use(TimeCategory) {
            previousDate = today - ranges.months
        }
        def cal = Calendar.instance
        cal.set(previousDate[Calendar.YEAR],previousDate[Calendar.MONTH],1,0,0,0)
        previousDate = cal.time  //Date of first day 00:00:00 ranges months ago (6 months ago, 3 months ago)
        def i = 0
        def promociones = user.managedPromos
        def results = []
        while(i < ranges+1){
            def oneMonthAfter
            use(TimeCategory) {
                oneMonthAfter = previousDate + 1.months - 1.days
            }
            //Get stamps between previous and onemonth
            def c = Stamp.createCriteria()
            def stamps = c.get{
                'in'("promo",promociones)
                between('date',previousDate, oneMonthAfter)
                projections{
                    count("id")
                }

            }
            def cc = Stamp.createCriteria()
            def users = cc.get{
                'in'("promo",promociones)
                between('date',previousDate, oneMonthAfter)
                projections{
                    countDistinct("user")
                }

            }
            results += [label: formatDate([ format: 'MMMM/yyyy', locale: 'es_CO', date: previousDate]),users: users, stamps: stamps]
            use(TimeCategory) {
                previousDate = previousDate + 1.months
            }

            i++
        }

        render results as JSON
        println results
        return
       }

    @Secured(["ROLE_COMPANY"])
    def lastMonthUsers(){
        def user = springSecurityService.currentUser
        //promos = user.managedPromos.size() < 5 ?  user.managedPromos : user.lazyPromos(0,5)
//                promos =   user.lazyPromos(3,10)
        def c = Stamp.createCriteria()
        def cc = Stamp.createCriteria()
        def promociones = user.managedPromos
        def today = new Date()
        def cal = Calendar.instance
        cal.set(today[Calendar.YEAR],today[Calendar.MONTH],1,0,0,0)
        def lastMonth = cal.time  //Date of first day 00:00:00 ranges months ago (6 months ago, 3 months ago)
        def lastMonthUsers = c.get{
            'in'("promo",promociones)
            gt("date",lastMonth)
            projections{
                countDistinct("user")
            }

        }
        def lastMonthStamps = cc.get{
            'in'("promo",promociones)
            gt("date",lastMonth)
            projections{
                count("id")
            }

        }

        def userStats = [referenceDate: formatDate([date: lastMonth, type:"date", style:"LONG", locale: "es_CO"]),lastMonthStamps: lastMonthStamps, lastMonthUsers: lastMonthUsers]
        render userStats as JSON
        return
    }

    def penetrations(){
        def user = springSecurityService.currentUser
        def promociones = user.managedPromos
       /* def r = Relation.createCriteria()
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
        }*/
        //penetración de la promoción, en el total de usuarios de la empresa y en el total de usuarios de Nest5
        def clients = user.clients
        def promoStats = []
        def nest5Total = User.count()
        def numberClients = clients.size() != 0 ? clients.size() : 1
        promociones.each{actual->
            def cc  = Stamp.createCriteria()
            def numberUsers = cc.get{
                eq('promo',actual)
                projections{
                    countDistinct('user')
                }
            }
            def pen1 = (Double) (numberUsers / numberClients)
            def pen2 = (Double) (numberUsers / nest5Total)
            promoStats += [promo: [id: actual.id, text: actual.toString()], companyPenetration: pen1, globalPenetration: pen2]
        }

       render promoStats as JSON
        println promoStats
        return
    }

    @Secured(["ROLE_COMPANY"])
    def universeStats(){
        def company = springSecurityService.currentUser
        def clients = company.clients()
        def universes = Universe.findAll()
        def results =  [:]
        def tc = Taste.createCriteria()
        def tastes = tc.list {
            'in'('user',clients)
            eq('type','universe')

        }

       def labels = []
        tastes.each{
            if(results.containsKey(it.universe.name)){
              results[it.universe.name] = results[it.universe.name] + 1

            }
            else{
                results[it.universe.name] = 1
                labels += it.universe.name
            }
        }

//        println results
        def devolver = [total: labels.size(), labels: labels, results: results]

        render devolver as JSON
        return

    }
    @Secured(["ROLE_COMPANY"])
    def familyStats(){
        def company = springSecurityService.currentUser
        def clients = company.clients()
        def families = Family.findAll()
        def results =  [:]
        def tc = Taste.createCriteria()
        def tastes = tc.list {
            'in'('user',clients)
            eq('type','family')

        }

        def labels = []
        tastes.each{
            if(results.containsKey(it.family.name)){
                results[it.family.name] = results[it.family.name] + 1
            }
            else{
                results[it.family.name] = 1
                labels += it.family.name
            }
        }
        def devolver = [total: labels.size(), labels: labels, results: results]

        render devolver as JSON
        return

    }
    @Secured(["ROLE_COMPANY"])
    def categoryStats(){
        def company = springSecurityService.currentUser
        def clients = company.clients()
        def categories = Category.findAll()
        def results =  [:]
        def tc = Taste.createCriteria()
        def tastes = tc.list {
            'in'('user',clients)
            eq('type','category')

        }

        def labels = []
        tastes.each{
            if(results.containsKey(it.category.name)){
                results[it.category.name] = results[it.category.name] + 1
            }
            else{
                results[it.category.name] = 1
                labels += it.category.name
            }
        }

        def devolver = [total: labels.size(), labels: labels, results: results]

        render devolver as JSON
        return

    }

    @Secured(["ROLE_COMPANY"])
    def objectStats(){
        def company = springSecurityService.currentUser
        def clients = company.clients()
        def objects = Object.findAll()
        def results =  [:]
        def tc = Taste.createCriteria()
        def tastes = tc.list {
            'in'('user',clients)
            eq('type','object')

        }

        def labels = []
        tastes.each{
            if(results.containsKey(it.object.name)){
                results[it.object.name] = results[it.object.name] + 1
            }
            else{
                results[it.object.name] = 1
                labels += it.object.name
            }
        }

        def devolver = [total: labels.size(), labels: labels, results: results]

        render devolver as JSON
        return

    }

}