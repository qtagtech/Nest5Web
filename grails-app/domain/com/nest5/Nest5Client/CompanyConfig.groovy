package com.nest5.Nest5Client

class CompanyConfig {
    //Every property should have a default value
    static belongsTo = ['company':Company]
    static hasMany = [coupons: CompanyCoupon]

    Boolean advancedPanel = false
    String plan = 'FREE'


    static constraints = {
        plan inList: ['STARTER','PRO','FREE']
    }
}
