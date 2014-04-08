package Nest5Client

import com.nest5.Nest5Client.Company
import com.nest5.Nest5Client.Event
import com.nest5.Nest5Client.EventType
import com.nest5.Nest5Client.ExtendedUser
import com.nest5.Nest5Client.Invitation
import com.nest5.Nest5Client.Media
import com.nest5.Nest5Client.Report
import com.nest5.Nest5Client.User




class UserService {
    static transactional = false
    def mailService
    def sendWelcomeMail(user,pass,type="NOSOCIAL",network = "NONE")
    {  if (type == "NOSOCIAL"){
        def link = getLink(user.email,user.date,user.name)
        mailService.sendMail {
            to user.email
            from "multimedia@nest5.com"
            subject "¡Estás a solo un clic de ganarte un Galaxy Note!"
            body (
                    view: "/welcome",
                    model: [user:user,password:pass,link:link]
            )
        }


    }
        if(type == "SOCIAL"){
            def link = "http://nest5.com/user/account?activity=password"
            mailService.sendMail {
                to user.email
                from "multimedia@nest5.com"
                subject "¡Estás a solo un clic de ganarte un Galaxy Note!"
                body (
                        view: "/welcomeSocial",
                        model: [user:user,password:pass,link:link,accountType: network]
                )
            }

        }

    }

    def captureEmail(User user, Company company,String pass){
        mailService.sendMail {
            to user.email
            from "multimedia@nest5.com"
            subject "¡Bienvenido a Nest5, Ingresa y Gana Beneficios!"
            body (
                    view: "/welcomeCapture",
                    model: [user:user,company:company,pass:pass]
            )
        }
    }

    def sendInvitationMail(User user, String picture, String email, Invitation inv){

        mailService.sendMail {
            to email
            from "multimedia@nest5.com"
            subject "¡"+user.name.split(" ")[0]+" te ha invitado a Nest5!"
            body (
                    view: "/emails/invite",
                    model: [user:user, picture: picture,invitation: inv]
            )
        }
    }

    def sendContactMail(email)
    {

        mailService.sendMail {
            to 'marketing@nest5.com'
            from "contacto@nest5.com"
            subject "¡Alguien te necesita en Nest5!"
            body email+" Se ha comunicado desde la sección Regístrate en Nest5 pidiendo ayuda para inscribirse."
        }





    }

    def sendCompanyInitMail(email,name,address,telephone,contact)
    {

        mailService.sendMail {
            to 'marketing@nest5.com'
            from "contacto@nest5.com"
            subject "¡AyJueputa una empresa se inscribió!"
            body " Holi Cati :) la empresa "+name+" acaba de iniciar su proceso con los datos: <br />Email: "+email+"<br />Dirección: "+address+"<br />Teléfono: "+telephone+" <br />Contacto: "+contact+"<br />Chai :P"
        }





    }

    def sendCompanyPassEmail(email,token,code,date)
    {
        def link = "http://nest5.com/secure/change/"+token+"/"+code
        def abuse_link = "http://nest5.comsecure/report/"+token+"/"+code

        mailService.sendMail {
            to email
            from "contacto@nest5.com"
            subject "Nest5 - Solicitud de Cambio de Clave"
            body (
                    view: "/emails/pass_request",
                    model: [email:email, link: link,date: date,abuse_link: abuse_link]
            )

        }





    }

    def sendCompanyEndMail(email,name,address,telephone,contact)
    {

        mailService.sendMail {
            to 'marketing@nest5.com'
            from "contacto@nest5.com"
            subject "¡Que bien mariquis, una empresa terminó el proceso.!"
            body " Holi Cati :) la empresa "+name+" acaba de finalizar su proceso con los datos: <br />Email: "+email+"<br />Dirección: "+address+"<br />Teléfono: "+telephone+" <br />Contacto: "+contact+"<br />Chai :P"
        }





    }
    def sendSecurityReportEmail(Report report)
    {

        mailService.sendMail {
            to 'soporte@nest5.com'
            from "Multimedia@nest5.com"
            subject "¡Nest5 + Seguridad: Reporte Recibido de rating "+report.rating+"!"
            body "Reporte "+report?.id+": "+report?.description
        }





    }


    def getLink(email,birth,name){
        def complete = birth+"_"+name
        def encrypted = complete.encodeAsMD5()+"::"+email
        def base64 = encrypted.encodeAsBase64()
        return "http://nest5.com/confirm/id/"+base64
    }

    /*******FEED METHODS******
     *
     *
     * **/

    def generateUserEvent(user1,user2){
        def addFriendEvent = EventType.findByCode("NEI004")
        def dummyCompany = Company.findByUsername('dummyCompany') ?: new Company(

                category: com.nest5.Nest5Client.Category.findByName('Ninguna') ?: new com.nest5.Nest5Client.Category(name: 'Ninguna', description: 'Sin clasificacion posible.').save(failOnError: true,flush:  true),
                username: 'dummyCompany',
                password: 'farroyavefami',
                enabled: true,
                name : "Dummy Company",
                address: "NA",
                telephone: "00",
                contactName: "NA",
                email: "NA@NA.com",
                nit: "0000",
                logo : " ",
                url : "http://").save(failOnError: true, flush: true)
        def event = new Event(
                type: addFriendEvent,
                user: user1,
                otherBrand: false,
                otherUser: true,
                oUser: user2,
                company: dummyCompany,
                date: new Date(),
                stampCount: 0,
                store: "NA",
                couponCount: 0

        ).save(failOnError: true,flush:  true)
    }

    def generateStatusEvent(User user1,String message){
        def statusUpdateEvent = EventType.findByCode("NEI005")
        def dummyCompany = Company.findByUsername('dummyCompany') ?: new Company(

                category: com.nest5.Nest5Client.Category.findByName('Ninguna') ?: new com.nest5.Nest5Client.Category(name: 'Ninguna', description: 'Sin clasificacion posible.').save(failOnError: true,flush:  true),
                username: 'dummyCompany',
                password: 'farroyavefami',
                enabled: true,
                name : "Dummy Company",
                address: "NA",
                telephone: "00",
                contactName: "NA",
                email: "NA@NA.com",
                nit: "0000",
                logo : " ",
                url : "http://").save(failOnError: true,flush: true)
        def dummyUser = User.findByUsername('dummyNest5') ?: new User(
                username: 'dummyNest5',
                password: 'dummyNest5',
                enabled: true,
                name : 'Dummy User',
                email: 'dummy@nest5.com',
                smartphone: true,
                smartphoneBrand: 'Android-Samsung',
                phone: '5555555',
                referer: 'none',
                date: '1986/01/13').save(failOnError: true, flush:  true)

        def event = new Event(
                type: statusUpdateEvent,
                user: user1,
                otherBrand: false,
                otherUser: false,
                oUser: dummyUser,
                company: dummyCompany,
                date: new Date(),
                stampCount: 0,
                store: "NA",
                couponCount: 0,
                extra: message

        ).save(failOnError: true,flush:  true)
    }

    def userImageUrl(User user){
        def media = Media.findByUserAndIsMain(user,true)
        if(!media)    //if there's no profile image in Nest5, then search with facebook uid facebook's picture
        {

          def extended = ExtendedUser.findByUser(user)

            if(!extended)
                return 'https://s3-us-west-2.amazonaws.com/com.nest5.usermedia/mujer.jpg'
            if(user.uid == 0){      //there's no picture and it's not registered through facebook. Send default user pictire
              if(extended.gender == "female")
                  return 'https://s3-us-west-2.amazonaws.com/com.nest5.usermedia/mujer.jpg'
              else
                  return 'https://s3-us-west-2.amazonaws.com/com.nest5.usermedia/hombre.jpg'
            }
            else{
                return "http://graph.facebook.com/${user.uid}/picture?width=200&height=300"
            } //it's logged with facebook retunr user facebook profile pic

        }
        else{ //has picture uploades to nest5 as main, retun picture's url
          return media.file.ruta
        }
    }

    def generateUserPassword(){

        def animals = ['perro','gato','sapo','raton','caballo','libelula','mariposa','leon','tigre','tigrillo','elefante','jirafa','buey','alce','mosca','zancudo','cerdo','vaca','toro','carnero','oveja','pollo','gallina'];
        def colors = ['negro','blanco','azul','amarillo','rojo','verde','gris','cafe','turquesa','morado','lila','vinotinto','naranja'];
        def propertiess = ['salton','feo','chillon','griton','loco','tierno','bonito','peludo','canson','jodido','volador','ladron','bueno','malo','triste','alegre','contento','enfadado','genial','gentil','leal','bonachon','dormilon'];
        return ""+animals[new Random().nextInt(animals.size())]+"_"+colors[new Random().nextInt(colors.size())]+"_"+propertiess[new Random().nextInt(propertiess.size())]+"_"+new Random().nextInt(3000)


    }





}
