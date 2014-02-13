package com.nest5.Nest5Client

class CompanyCoupon {

    static belongsTo = [company: CompanyConfig,coupon: CouponCode]
    Boolean redeemed = false
    Date validFrom
    Date validTo
    String notes



    static constraints = {

    }
    static mapping = {
        notes type: 'text'
    }
}
