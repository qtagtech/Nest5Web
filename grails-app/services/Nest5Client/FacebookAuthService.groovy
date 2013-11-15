package Nest5Client

import com.nest5.Nest5Client.City
import com.nest5.Nest5Client.ExtendedUser
import com.nest5.Nest5Client.FacebookUser
import com.nest5.Nest5Client.SecRole
import com.nest5.Nest5Client.SecUserSecRole
import com.nest5.Nest5Client.User
import com.the6hours.grails.springsecurity.facebook.FacebookAuthToken
import groovyx.net.http.HTTPBuilder
import org.springframework.web.context.request.RequestContextHolder

class FacebookAuthService {




    FacebookUser create(FacebookAuthToken token) {
        def session = RequestContextHolder.currentRequestAttributes().getSession()
        println("Create domain for facebook user $token.uid")
          /*def code = Invitation.findByCode(RequestContextHolder.currentRequestAttributes().getSession().invitation)
        if (!code || code.used)
              return null
        code.used = true*/





//        Facebook facebook = new FacebookTemplate(token.accessToken)
//        FacebookProfile fbProfile = facebook.userOperations().userProfile
//        String email = fbProfile.getEmail() ? fbProfile.getEmail() : "$token.uid@facebook.com"
//        String birthdate = fbProfile.getBirthday()
//        String cName = fbProfile.getName()getName


//        def prUser = Person.findByEmail(email)
//        def fbPrUser = com.nest5.Nest5Client.FacebookUser.findByUser(prUser)

        def http = new HTTPBuilder('https://graph.facebook.com')
        def json = http.get( path : '/me', query : [access_token:token.accessToken?.accessToken] )

        def email = json.email ? json.email : "$token.uid@facebook.com"
        //check if email is authorized for loging in



        def name = json.name ? json.name : "New User"

        def username = json.username ? json.username : "facebook_$token.uid"
        def gender = json.gender ? json.gender : "unknown"
        def working = json.work != null
        def eIds = ""
        def eNames = ""
        def educated = json.education != null
        def edTypes = ""
        def edPlaces = ""
        def edIds = ""
        def birthday = json.birthday ? Date.parse('MM/dd/yyyy',json.birthday) : new Date()
        def location =  json.location ? ((json?.location?.name?.split(","))[0]) : 'medellin' //Medellín, Antioquia, Medellín
        def minus = location.toLowerCase() //medellín
        minus = minus.replaceAll( /([àáâãäå])/, 'a' )
        minus = minus.replaceAll( /([èéêë])/, 'e' )
        minus = minus.replaceAll( /([ìíîï])/, 'i' ) //medellin
        minus = minus.replaceAll( /([òóôõö])/, 'o' )
        minus = minus.replaceAll( /([ùúûü])/, 'u' )
        minus = minus.replaceAll( /([ñ])/, 'n' )
        minus = minus.replaceAll( /([ýÿ])/, 'y' )
        minus = minus.replaceAll( /([ç])/, 'c' )
        minus = minus.replaceAll( /([^a-zA-Z0-9\ ])/, '_' )
        minus = minus.replaceAll( /([\ ])/, '-' )
        if (working)
        {

            json.work.each{
              eIds += it.employer?.id
              eIds += "|"
              eNames += it.employer?.name
              eNames += "|"

            }
        }

        if (educated)
        {

            json.education.each{
                edIds += it.school?.id
                edIds += "|"
                edPlaces += it.school?.name
                edPlaces += "|"
                edTypes += it.type

            }
        }

        def fbPrUser = FacebookUser.findByUid(token.uid)
        if(!fbPrUser)
        {
            def existing = User.findByEmail(email)
            def newUser = existing ?: new User(
                    username: username,
                    password: token.accessToken?.accessToken,
                    enabled: true,
                    accountExpired: false,
                    passwordExpired: false,
                    accountLocked: false,
                    name : name,
                    email: email,
                    uid: token.uid,
                    date: json.birthday ?: "00/00/0000",
                    referer: " ",
                    phone: " "

                    ).save(failOnError: true,flush: true)

            newUser.uid = token?.uid
            newUser.save(failOnError: true,flush: true)


                    /*
                    * birthDate: new Date(),
                    registerDate: new Date(),
                    gender: gender,
                    working: working,
                    employerIds: eIds,
                    employerNames: eNames,
                    educated: educated,
                    educationIds: edIds,
                    educationPlaces: edPlaces,
                    educationTypes: edTypes,
                    accessToken: token.accessToken?.accessToken,
                    completed: false
                    * */

                def extendedUser = new ExtendedUser(
                        user: newUser,
                        bio: " ",
                        gender: gender,
                        birthDate: birthday,
                        accessToken: token.accessToken?.accessToken,
                        working: working,
                        educated: educated,
                        completed: false,
                        twitterUser: "",
                        fqAccessToken: "0",
                        address: "",
                        city: City.findByCode(minus) ?: City.findByCode("unknown"),
                        latitude: new BigDecimal(0),
                        longitude: new BigDecimal(0)

                ).save(failOnError: true,flush: true)
            //Hace extended user

            //Si trabaja crear cada trabajo

            //si estudia crear cada estudio

            if(!existing){
                def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
                def facebookRole = SecRole.findByAuthority('ROLE_FACEBOOK') ?: new SecRole(authority: 'ROLE_FACEBOOK').save(failOnError: true)
                SecUserSecRole.create newUser, userRole
            }

//            SecUserSecRole.create newUser, facebookRole
            FacebookUser fbUser = new FacebookUser(
                    uid: token.uid,
                    accessToken: token.accessToken?.accessToken,
                    accessTokenExpires: token.accessToken?.expireAt,
                    user: newUser
            )
            fbUser.save()
            //send welcome Email
            //userService.sendWelcomeMail(newUser,randomString,"SOCIAL","Facebook")
            //guardar achievement de facebook
            /*def ach = new Achievements()
            def chal = Challenge.findByCode("01_face")
            def regDate = new Date()
            ach.challenge = chal
            ach.user = newUser
            ach.date = regDate
            ach.save()*/
            return fbUser
        }

        /*if(!fbPrUser)
        {

            com.nest5.Nest5Client.FacebookUser fbUser = new com.nest5.Nest5Client.FacebookUser(
                    uid: token.uid,
                    accessToken: token.accessToken,
                    user: prUser
            )
            fbUser.save()
        }*/

        return fbPrUser

    }





}
