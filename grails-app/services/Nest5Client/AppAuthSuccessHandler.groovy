package Nest5Client

import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler

import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

/**
 * Created with IntelliJ IDEA.
 * User: Juanda
 * Date: 28/04/13
 * Time: 07:13 PM
 * To change this template use File | Settings | File Templates.
 */
class AppAuthSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

    String adminUrl
    String userUrl

    @Override
    protected String determineTargetUrl(HttpServletRequest request, HttpServletResponse response) {

        if (SpringSecurityUtils.ifAllGranted('ROLE_ADMIN')) {
            return adminUrl
        }

        if (SpringSecurityUtils.ifAllGranted('ROLE_COUPLE')) {
            return userUrl
        }

        return super.determineTargetUrl(request, response);
    }

}
