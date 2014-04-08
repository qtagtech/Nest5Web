class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?/"{
			constraints {
				// apply constraints here
			}
		}


//		"/"(view:"/index")
        "/"(view:"/comingsoon")
        "/download"(view:"/download")
        "/invitationmail"(view:"/emails/invite")
        "/passrequest"(view:"/emails/pass_request")
        "/foursquare"(controller: 'foursquare', action: 'authorize')
        "/gimmedata"(controller: 'adminTask',action: 'dashboard')
        "/mu-1232cc93-baa48bbc-6ae58c5a-bc9723bb" (view: '/test')
        "/privacy"(view: "/privacy")
//        "/regalo"(controller: 'user',action: 'putChallengeSession')
        "/marcas"(view: "/marcas")
        "/company/card"(view: "/company/stampCard")
        "/company/join"(controller: 'company',action: 'create')
        "/confirm/id/$id?"(controller: "user",action: "confirmEmail")
        "/secure/change/$token?/$code?"(controller: "company",action: "newpass")
        "/secure/report/$token?/$code?"(controller: "company",action: "reportpass")
        "/user/landing/$referer?"(controller: "user",action: "landing")
        /*"/api/user/$action?"(controller: "user")
        "/api/promo/$action?"(controller: "promo")
        "/api/company/$action?"(controller: "company")*/
        "/team/$webaddress"(controller: 'member', action: 'show')
        "/offline"(view: 'report')
        "500"(view:'/error')
        "404"(view: '/404')


	}
}
