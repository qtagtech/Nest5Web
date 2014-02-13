package com.nest5.Nest5Client

class CouponCode {

    static hasMany = [companies: CompanyCoupon]
    String name
    String code
    String description
    Long percentage


    static constraints = {
    }
    static mapping = {
        description type: 'text'
    }
}
