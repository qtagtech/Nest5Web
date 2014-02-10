import com.nest5.Nest5Client.City
import com.nest5.Nest5Client.Company
import com.nest5.Nest5Client.Country
import com.nest5.Nest5Client.EventType
import com.nest5.Nest5Client.Heart
import com.nest5.Nest5Client.Member
import com.nest5.Nest5Client.SecRole
import com.nest5.Nest5Client.SecUserSecRole
import com.nest5.Nest5Client.User
import com.nest5.Nest5Client.Category
import com.nest5.Nest5Client.Icon

class BootStrap {
    //

    def init = { servletContext ->
        def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
        def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)
        def apiRole = SecRole.findByAuthority('ROLE_API') ?: new SecRole(authority: 'ROLE_API').save(failOnError: true)
        def facebookRole = SecRole.findByAuthority('ROLE_FACEBOOK') ?: new SecRole(authority: 'ROLE_FACEBOOK').save(failOnError: true)
        def companyRole = SecRole.findByAuthority('ROLE_COMPANY') ?: new SecRole(authority: 'ROLE_COMPANY').save(failOnError: true)
        def memberRole =  SecRole.findByAuthority('ROLE_MEMBER') ?: new SecRole(authority: 'ROLE_MEMBER').save(failOnError: true)

        def adminUser = User.findByUsername('admin') ?: new User(
                username: 'admin',
                password: 'farroyavefami',
                enabled: true,
                name : 'Juan David Arroyave Henao',
                email: 'juanda6@gmail.com',
                smartphone: true,
                smartphoneBrand: 'Android-Samsung',
                phone: '3014597229',
                referer: 'none',
                date: '1986/01/13').save(failOnError: true)
        def member = Member.findByUsername('sara.monsalve@qtagtech.com') ?: new Member(
                username: 'sara.monsalve@qtagtech.com',
                password: 'farroyavefami',
                enabled: true,
                name : 'Sara Monsalve',
                email: 'sara.monsalve@qtagtech.com',
                date: new Date(),
                position: "B2B Manager",
                bio: "Publicista",
                twitter: 'saramonsal',
                linkedin: 'none',
                gplus: 'none',
                webaddress: 'sara.monsalve',
                website: 'none',
                address: 'Cara 37 #8A 43').save(failOnError: true)

        def apiUser = User.findByUsername('apiadmin') ?: new User(
                username: 'apiadmin',
                password: 'zAxEE9U1691Nq0h5JiJ0X20tcayF5RTpmzIOctVGNQNBByHslznDR0VP7rWOuyW',
                enabled: true,
                name : 'Android Client Application',
                email: 'soporte@nest5.com',
                smartphone: true,
                smartphoneBrand: 'Android-Samsung',
                phone: '3014597229',
                referer: 'none',
                date: '1986/01/13').save(failOnError: true)
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
                date: '1986/01/13').save(failOnError: true)





        def icon = Icon.findByName('dummyIcon') ?: new Icon(
                name: 'dummyIcon',
                tipo: 'image/png',
                ruta: 'https://s3-us-west-2.amazonaws.com/com.nest5.assets/user-profile/bola_80.png',
                description: 'Logo de Nest5'
        ).save(failOnError: true);


        def dummyCompany = Company.findByUsername('dummyCompany') ?: new Company(

                category: Category.findByName('Ninguna') ?: new Category(name: 'Ninguna', description: 'Sin clasificacion posible.',icon: icon).save(failOnError: true),
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
                 url : "http://",
                 registerDate: new Date(),
                active: false
        ).save(failOnError: true)

        if (!adminUser.authorities.contains(adminRole)) {
            SecUserSecRole.create adminUser, adminRole
        }
        if (!apiUser.authorities.contains(apiRole)) {
            SecUserSecRole.create apiUser, apiRole
        }
        if (!dummyUser.authorities.contains(userRole)) {
            SecUserSecRole.create dummyUser, userRole
        }
        if (!dummyCompany.authorities.contains(companyRole)) {
            SecUserSecRole.create dummyCompany, companyRole
        }
        if (!member.authorities.contains(memberRole)){
            SecUserSecRole.create(member,memberRole)
        }

         /*
         *********CREACION DE TIPOS DE EVENTOS
         *
         * */


        def stampEvent = EventType.findByCode("NEI001") ?: new EventType(
                code: "NEI001",
                name: "Stamp Card",
                message: "user.stamp.card",
                ownMessage: "user.stamp.card.own"
        ).save(failOnError: true)

        def couponEvent = EventType.findByCode("NEI002") ?: new EventType(
                code: "NEI002",
                name: "Get Coupon",
                message: "user.get.coupon",
                ownMessage: "user.get.coupon.own"
        ).save(failOnError: true)

        def redeemEvent = EventType.findByCode("NEI003") ?: new EventType(
                code: "NEI003",
                name: "Redeem Coupon",
                message: "user.redeem.coupon",
                ownMessage: "user.redeem.coupon.own"
        ).save(failOnError: true)

        def addFriendEvent = EventType.findByCode("NEI004") ?: new EventType(
                code: "NEI004",
                name: "Add Friend",
                message: "user.add.friend",
                ownMessage: "user.add.friend.own"
        ).save(failOnError: true)

        def userStatusUpdate = EventType.findByCode("NEI005") ?: new EventType(
                code: "NEI005",
                name: "Status Update",
                message: "user.status.update",
                ownMessage: "user.status.update"
        ).save(failOnError: true)

//        Create countries and cities
        def colombia = Country.findByCode("CO") ?: new Country(
                name: "Colombia",
                code: "CO",
                locale: "es_CO",

        ).save(failOnError: true)
        def unknownCountry = Country.findByCode("NA") ?: new Country(
                name: "Unknown",
                code: "NA",
                locale: "es_CO",

        ).save(failOnError: true)

        def medellin = City.findByCode("medellin") ?: new City(
                name: "Medellín",
                code: "medellin",
                latitude: 6.253189,
                longitude: -75.573685,
                country: colombia

        ).save(failOnError: true)
        def bogota = City.findByCode("bogota") ?: new City(
                name: "Bogotá",
                code: "bogota",
                latitude: 4.713303,
                longitude: -74.076176,
                country: colombia

        ).save(failOnError: true)
        def unknownCity = City.findByCode("unknown") ?: new City(
                name: "Unknown",
                code: "unknown",
                latitude: 4.713303,
                longitude: -74.076176,
                country: unknownCountry

        ).save(failOnError: true)
     }
    def destroy = {
    }
}
