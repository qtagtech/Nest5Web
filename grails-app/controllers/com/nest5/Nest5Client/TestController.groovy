package com.nest5.Nest5Client

import grails.converters.JSON
import grails.plugins.springsecurity.Secured
import groovyx.net.http.HTTPBuilder
import static groovyx.net.http.Method.GET
import static groovyx.net.http.ContentType.TEXT


class TestController {
    def springSecurityService
    def userService
     @Secured(['ROLE_ADMIN'])
    def index() {
     render text: "listo"
     }

    def createUser() {
        def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
        def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)

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

        if (!adminUser.authorities.contains(adminRole)) {
            SecUserSecRole.create adminUser, adminRole
        }
        render text: "listo"
    }

    def showEvents(){
        def allEvents = Event.list()
        def eventos = []
        allEvents.each {
            render it.toString()
        }
         return
    }

    def formatString(){
       render message(code: 'user.stamp.card', args: ["juanda","Chevignon","5","6" ])
        return
    }

    def foursquareAuth(){
        def json
        try{
            def http = new HTTPBuilder('https://foursquare.com')
            json = http.get(path: '/oauth2/access_token',query:[client_id:'BSXO1F1NWFFWOKHZZSB1EEU3JRUB1XNZ2XA2NHUFAUPXV5MR',client_secret:'FIVSCOIWNONT2YH05TDQOIBCBEM3MJITID2D3TSVSB1POTV3',grant_type:'authorization_code',redirect_uri: 'http://hookthemapp.localhost.com:8080/foursquare',code: 'CODE'])
            render json
            return
        }
        catch (e){
            render e.message
            return
        }

    }

    def foursquareTrending(){
        def http = new HTTPBuilder()
        def date = formatDate(date: new Date(), format: 'yyyyMMdd')
        http.request( 'https://api.foursquare.com', GET, TEXT ) { req ->
            uri.path = '/v2/venues/search'
            uri.query = [ ll: '6.209237,-75.568108',client_id: 'BSXO1F1NWFFWOKHZZSB1EEU3JRUB1XNZ2XA2NHUFAUPXV5MR',client_secret: 'R2MY1H30WP5UR3UB2VZWSNU5BFBQE4N31CJZRAJH4YQ03EAN',v: date]
            headers.'User-Agent' = "Mozilla/5.0 Firefox/3.0.4"
            headers.Accept = 'application/json'

            response.success = { resp, reader ->
                assert resp.statusLine.statusCode == 200
                println "Got response: ${resp.statusLine}"
                println "Content-Type: ${resp.headers.'Content-Type'}"
                render reader.text
            }

            response.'404' = {
                println 'Not found'
            }
        }



        return
    }


}
