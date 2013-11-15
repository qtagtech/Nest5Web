import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler

import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse


class AppAuthSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

    String companyUrl
    String userUrl

    @Override
    protected String determineTargetUrl(HttpServletRequest request, HttpServletResponse response) {

        if (SpringSecurityUtils.ifAllGranted('ROLE_COMPANY')) {
            return companyUrl
        }

        if (SpringSecurityUtils.ifAllGranted('ROLE_COUPLE')) {
            return userUrl
        }

        return super.determineTargetUrl(request, response);
    }

}
