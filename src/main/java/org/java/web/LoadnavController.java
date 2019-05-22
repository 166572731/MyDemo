package org.java.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class LoadnavController {
    @RequestMapping("loadnav")
    public @ResponseBody Map loadNav(HttpSession session){
        Map loginMan= (Map) session.getAttribute("loginMan");
        return loginMan;
    }
}
