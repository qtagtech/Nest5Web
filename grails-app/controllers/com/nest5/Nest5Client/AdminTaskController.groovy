package com.nest5.Nest5Client

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_MEMBER'])
class AdminTaskController {

    def index() {}


    def dashboard(){
       render view: 'dashboard'
    }
}
