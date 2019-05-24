package org.java.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LoginController {
    @RequestMapping("login")
    public String login(HttpServletRequest request) {
        String errname=(String)request.getAttribute("shiroLoginFailure");
        if(errname==null){
            request.setAttribute("msg", "您还未登录，请您先登录！");
        }else{
            request.setAttribute("msg", "抱歉,用户名或密码错误！");
        }
        return "login";
    }
}
