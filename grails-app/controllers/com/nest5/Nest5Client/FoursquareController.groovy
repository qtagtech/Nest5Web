package com.nest5.Nest5Client

import grails.converters.JSON
import grails.plugins.springsecurity.Secured
import groovyx.net.http.HTTPBuilder
import static groovyx.net.http.Method.GET
import static groovyx.net.http.ContentType.TEXT

class FoursquareController {
    def springSecurityService
    def index() {}
    @Secured(["ROLE_USER", "ROLE_ADMIN"])
    def searchVenues(){
        def user = springSecurityService.currentUser
        def extended = ExtendedUser.findByUser(user)
        def http = new HTTPBuilder()
        def date = formatDate(date: new Date(), format: 'yyyyMMdd')
        def query = extended.fqAccessToken != "0" ? [ ll: params.lat+','+params.lng,oauth_token: extended.fqAccessToken,v: date] : [ ll: params.lat+','+params.lng,client_id: 'BSXO1F1NWFFWOKHZZSB1EEU3JRUB1XNZ2XA2NHUFAUPXV5MR',client_secret: 'R2MY1H30WP5UR3UB2VZWSNU5BFBQE4N31CJZRAJH4YQ03EAN',v: date]
        http.request('https://api.foursquare.com', GET, TEXT ) { req ->
            uri.path = '/v2/venues/search'
            uri.query = query
            headers.'User-Agent' = "Mozilla/5.0 Firefox/3.0.4"
            headers.Accept = 'application/json'

            response.success = { resp, reader ->
                assert resp.statusLine.statusCode == 200
                render reader.text
            }

            response.'404' = {
                println 'Not found'
            }
        }



        return
    }
    @Secured(["ROLE_USER","ROLE_ADMIN"])
    def authorize(){
        def code = params.code
        def user = springSecurityService.currentUser
        def extended = ExtendedUser.findByUser(user)
        if(!code){
            println "no code"
            flash.message = "Falló tu autorización en Foursquare, si no la cancelaste inténtalo de nuevo por favor."
            redirect(controller: 'user', action: 'info')
            return
        }
        def json
        def date = formatDate(date: new Date(), format: 'yyyyMMdd')
        try{
            def http = new HTTPBuilder('https://es.foursquare.com')
            json = http.get(path: '/oauth2/access_token',query:[client_id: grailsApplication.config.grails.nest5.foursquare.clientId,client_secret:grailsApplication.config.grails.nest5.foursquare.secret,grant_type:'authorization_code',redirect_uri: grailsApplication.config.grails.nest5.foursquare.redirectUri,code: code, v: date])
            extended.fqAccessToken = json.access_token
            if(!extended.twitterUser)
                extended.twitterUser = ""
            if(!extended.save(flush: true))
            {
                println extended.errors.allErrors
                flash.message = "Falló tu autorización en Foursquare, si no la cancelaste inténtalo de nuevo por favor."
                redirect(controller: 'user', action: 'info')
                return
            }
            flash.message = "¡Felicitaciones! tu cuenta de Foursquare ha sido vinculada con Éxito"
            redirect(controller: 'user', action: 'info')
            return
        }
        catch (e){
            println "error de http"
            println e.message
            flash.message = "Falló tu autorización en Foursquare, si no la cancelaste inténtalo de nuevo por favor."
            redirect(controller: 'user', action: 'info')
            return

        }



    }
}
