package ru.kpfu.itis.pet.g2048.web;

import org.springframework.security.web.util.RegexRequestMatcher;
import org.springframework.security.web.util.RequestMatcher;

import javax.servlet.http.HttpServletRequest;
import java.util.regex.Pattern;

/**
 * Created by RuzilyaS on 19-May-16.
 */
public class CsrfSecurityRequestMatcher implements RequestMatcher {
    private Pattern allowedMethods = Pattern.compile("^(GET|HEAD|TRACE|OPTIONS|POST)$");
    private RegexRequestMatcher unprotectedMatcher = new RegexRequestMatcher("/2048/*", null);

    @Override
    public boolean matches(HttpServletRequest request) {
        if(allowedMethods.matcher(request.getMethod()).matches()){
            return false;
        }
//        return !unprotectedMatcher.matches(request);
        return true;
    }

}
