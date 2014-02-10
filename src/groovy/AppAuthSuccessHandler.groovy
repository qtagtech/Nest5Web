import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler

import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse


class AppAuthSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

    String companyUrl
    String userUrl
    String memberUrl

    @Override
    protected String determineTargetUrl(HttpServletRequest request, HttpServletResponse response) {

        if (SpringSecurityUtils.ifAllGranted('ROLE_COMPANY')) {
            return companyUrl
        }

        if (SpringSecurityUtils.ifAllGranted('ROLE_USER')) {
            return userUrl
        }
        if (SpringSecurityUtils.ifAllGranted('ROLE_MEMBER')){
            return memberUrl
        }

        return super.determineTargetUrl(request, response);
    }

}
