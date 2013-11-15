package com.nest5.Nest5Client

import grails.converters.JSON
import org.apache.commons.lang.RandomStringUtils

class DummyDataController {
    def couponService
    def userService
    def index() {

        println "index"
    }

    def createUsers(){
//        Crea usuarios dummy, con valores extendidos de fecha de nacimiento entre 1970 y 2013, genero entre m y f, y todos con clave farroyavefami y lo demas aleatorio
         println "aca"
        def cantidad = params.c as Integer
        String charset = (('A'..'Z') + ('0'..'9') + " " + ('a'..'z')).join()
        Random rand = new Random()
        int max = 15827
        for(def i = 0 ; i < cantidad; i++){
            def user = new User(
                    name:  RandomStringUtils.random(7, charset.toCharArray()) ,
                    email: RandomStringUtils.random(8, charset.toCharArray())+'@'+'gmail.com',
                    accountExpired: false,
                    accountLocked: false,
                    enabled: true,
                    password: 'farroyavefami',
                    date: RandomStringUtils.random(7, charset.toCharArray()),
                    phone: '2333333',
                    referer: 'none',
                    username: RandomStringUtils.random(7, charset.toCharArray())

            ).save(failOnError: true)

            def sex = rand.nextInt(2) == 0 ? 'male' : 'female'
            //
            def extended = new ExtendedUser(

                    bio: RandomStringUtils.random(150, charset.toCharArray()),
                    gender: sex,
                    user: user,
                    birthDate: new Date() - rand.nextInt(max + 1),
                    accessToken: "0",
                    completed: true,
                    working: false,
                    educated: false,
                    twitterUser: "",
                    fqAccessToken: "0",
                    address: "calle 35 46",
                    city: City.findByCode("medellin")


            ).save(failOnError: true)
        }

        render "listo"
        return

    }

    def crearStampsUsuario(){

        def cantidad = params.c as Integer
        def users = User.findByEmail(params.user)  //Todos los usuarios en bd
        if(!users){
            render "no existe el usuario"
            return
        }
        def offers = Offer.findAll()       //todas las ofertas disponibles
        def cantOffers = offers.size()
        Random rand = new Random()
        def val2 = rand.nextInt(cantOffers + 1)  //un valor entre 0 y el total de ofertas
        for(def i = 0; i < cantidad; i++)
        {
            println i

            def offer

                try{

                    val2 = rand.nextInt(cantOffers + 1)
                    offer = offers.getAt(val2)

                }
                catch (e)
                {
                    println "no hay oferta en la posicion"+val2
                }




            users.addToPromo(offer)
            def results = couponService.saveCoupons(users,offer.promo,offer.store.name)
            render users.name+" "+offer.store.name
        }

        return

    }

    def crearStamps(){

        def cantidad = params.c as Integer
        def users = User.findAll()  //Todos los usuarios en bd
        def offers = Offer.findAll()       //todas las ofertas disponibles
        def cantUsers = users.size()
        def cantOffers = offers.size()
        Random rand = new Random()
        def val1 = rand.nextInt(cantUsers)  //un valor entre 0 y el total de usuarios
        def val2 = rand.nextInt(cantOffers)  //un valor entre 0 y el total de ofertas
        for(def i = 0; i < cantidad; i++)
        {
//            println i
            def user
            while(!user) // hacer loop hasta que con algun valor de val1 encunetre un usuario
            {
                try{
                    val1 = rand.nextInt(cantUsers)
                    user = users.getAt(val1)


                }
                catch (e)
                {
                    println "no hay usuario en la posicion"+val1
                }


            }
            def offer
            while(!offer) // hacer loop hasta que con algun valor de val1 encunetre un usuario
            {
                try{

                    val2 = rand.nextInt(cantOffers)
                    offer = offers.getAt(val2)

                }
                catch (e)
                {
                    println "no hay oferta en la posicion"+val2
                }

            }


            user.addToPromo(offer)
            Category.withSession { session ->
                session.flush()
            }
            def results = couponService.saveCoupons(user,offer.promo,offer.store.name)
            render user.name+" "+offer.store.name
        }

        return

    }

    def showStamps(){
        def stamps = Stamp.list(sort: 'user')


        stamps.each {

            render it.user.id+"<br>"
        }

        return
    }

    def playCupid(){
        //Crear Amistades aleatorias para n usuarios
        def n = params.n as Integer //numero de usuarios que se les hara
        Random rand = new Random()
        def userList = User.findAll()
        def userTotal = userList.size()
        for(def i = 0; i < n; i++)
        {

            def cantidadAmistades = rand.nextInt(11)

            def randomUser = userList.getAt(rand.nextInt(userTotal))
            def j = 0
            while(j < cantidadAmistades)
            {
                def newFriend = userList.getAt(rand.nextInt(userTotal))
                println newFriend
                if (newFriend != randomUser)
                {
                    randomUser.addToFriend(newFriend)
                    //Generate Event of EventType NEI004 - Add Friend
                    userService.generateUserEvent(randomUser,newFriend)
                    render text: "se agrego "+newFriend.username + " a los amigos de "+randomUser.username+"<br />"
                    j++
                }
            }
        }

        render text:  "listo"
        return



    }
    def showFriends()
    {
        def user = User.findByUsername(params.u)
        if (!user)
        {
            render text: "no existe el usuario "+params.u
            return
        }
        def friends =  user.friends()
        render text: "Amigos: <br />"
        friends.each {
            render text: it.username+"<br />"
        }
        return
    }

    def showDetailedFriends(){
        def user = User.findByUsername(params.u)
        if (!user)
        {
            render text: "no existe el usuario "+params.u
            return
        }
        def friends =  user.friends
        def isFriend = user.isFriendOf
        render text: "<strong>Amigos:</strong> <br />"
        friends.each {
            render text: it.user2.username+"<br />"
        }
        render text: "<strong>Es Amigo de:</strong> <br />"
        isFriend.each {
            render text: it.user1.username+"<br />"
        }
        return
    }


    def createTastes(){
        def users = User.findAll()
        def qty = params.c as int
        def i = 0
        Random rand = new Random()
        def types = ['universe','family','category','object']
        def universes = Universe.findAll()
        def families = Family.findAll()
        def categories = Category.findAll()
        def objects = Object.findAll()


        while(i < qty){

            def type = types.getAt(rand.nextInt((3)))
            def user = users.getAt(rand.nextInt(users.size()))
            def result
            if(!user){
                result = [status: 0, message:"no existe el usuario",user: [id:null, name: null, picture: null], element: [id: null, name: null, type: null, picture: null]]
                render result as JSON
                return
            }
            def element

            switch(type){
                case "object": element = objects.getAt(rand.nextInt(objects.size() ))
                    break
                case "category": element = categories.getAt(rand.nextInt(categories.size() ))
                    break
                case "family": element = families.getAt(rand.nextInt(families.size() ))
                    break
                case "universe": element = universes.getAt(rand.nextInt(universes.size() ))
                    break
            }
            if(!element){
                result = [status: 0, message:"no existe el elemento",user: [id:user.id, name: user.name, picture: userService.userImageUrl(user)], element: [id: null, name: null, type: null, picture: null]]
                render result as JSON
                return
            }
            def existing
            switch(type){
                case "object": existing = Taste.findByUserAndObject(user,element)
                    break
                case "category":existing = Taste.findByUserAndCategory(user,element)
                    break
                case "family": existing = Taste.findByUserAndFamily(user,element)
                    break
                case "universe":existing = Taste.findByUserAndUniverse(user,element)
                    break
            }
            if(existing){
                result = [status: 0, message:"El usuario ya había indicado que le gustaba este elemento",user: [id:user.id, name: user.name, picture: userService.userImageUrl(user)], element: [id: element.id, name: element.name, type: params.element, picture: element.icon?.ruta]]
                render result as JSON
                return
            }
            def taste = new Taste(
                    user: user,
                    date: new Date(),
                    type: type
            )
            switch(type){
                case "object": taste.object = element
                    break
                case "category": taste.category = element
                    break
                case "family": taste.family = element
                    break
                case "universe": taste.universe = element
                    break
            }

            if(!taste.save(flush: true)){
                def errors =  taste.errors.allErrors.toString()
                result = [status: 0, message: errors,user: [id:user.id, name: user.name, picture: userService.userImageUrl(user)], element: [id: null, name: null, type: null, picture: null]]
                render result as JSON
                return

            }
            result = "a "+user.name+" le gusta "+type+" "+" "+element.name+"<br>"
            render result

            i++
        }
        return
    }
}
