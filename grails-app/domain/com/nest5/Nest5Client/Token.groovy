package com.nest5.Nest5Client

import org.apache.commons.lang.RandomStringUtils

class Token {
    Company company
    Date dateCreated
    Date dateUsed
    Boolean annulled = false
    String code
    String companyCode

    static constraints = {
    }


    def beforeValidate() {
       if(!annulled){ //if annulling, don't do this
           dateUsed = new Date(1)
           companyCode = company.email.bytes.encodeBase64().toString()
           //def decoded = new String("SGVsbG8gV29ybGQ=".decodeBase64())
           int randomStringLength = 128
           String charset = (('a'..'z') + ('A'..'Z') + ('0'..'9')).join()
           def exists = true
           String randomString
           while(exists){
               randomString = RandomStringUtils.random(randomStringLength, charset.toCharArray())
               exists = Token.findByCode(randomString) ? true : false
           }
           code = randomString
       }

    }
}


