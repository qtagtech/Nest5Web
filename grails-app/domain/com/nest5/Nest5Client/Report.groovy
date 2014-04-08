package com.nest5.Nest5Client

class Report {

    Date dateCreated
    String reportedBy
    Integer rating
    String description
    String type



    static constraints = {
        type inList: ["GENERAL","PASS_REQUEST"]

    }
    static mapping = {
        description type: 'text'
    }
    def beforeValidate = {
        if(reportedBy == "" || !reportedBy){
            reportedBy = "anonymous@nest5.com"
        }
        if(type == "" || !type){
            type = "GENERAL"
        }
        if(!rating || rating == 0){
            rating = 1
        }
    }
}
