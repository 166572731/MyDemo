package org.java.util;

import com.alibaba.fastjson.JSON;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MyFormAuthenticationFilter extends FormAuthenticationFilter {
    @Override
    protected boolean onLoginSuccess(AuthenticationToken token, Subject subject, ServletRequest request, ServletResponse response) throws Exception {
        HttpServletResponse httpServletResponse= (HttpServletResponse) response;
        HttpServletRequest httpServletRequest= (HttpServletRequest) request;
        HttpSession httpSession=httpServletRequest.getSession();
        httpSession.setAttribute("loginMan", subject.getPrincipal());
        httpServletResponse.sendRedirect("index.jsp");
        return true;

    }
}
