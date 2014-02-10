import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

// Place your Spring DSL code here

beans = {
    multipartResolver(org.springframework.web.multipart.commons.CommonsMultipartResolver){
        maxInMemorySize=10240
        maxUploadSize=10000000
    }

    beans = {
        authenticationSuccessHandler(AppAuthSuccessHandler) {
            def conf = SpringSecurityUtils.securityConfig

            requestCache = ref('requestCache')
            defaultTargetUrl = conf.successHandler.defaultTargetUrl
            alwaysUseDefaultTargetUrl = conf.successHandler.alwaysUseDefault
            targetUrlParameter = conf.successHandler.targetUrlParameter
            useReferer = conf.successHandler.useReferer
            redirectStrategy = ref('redirectStrategy')
            adminUrl = "/user/feed"
            userUrl = "/company/panel"
            memberUrl = "/adminTask/dashboard"
        }
    }
}
