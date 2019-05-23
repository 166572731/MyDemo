package org.java.web;

import org.java.service.MenusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class MenusController {
    @Autowired
    MenusService menusService;

    @RequestMapping("loadMenus")
    public @ResponseBody Map loadMenusMain(){
        Map map=new HashMap();
        List<Map> mainList=menusService.menusMain();
        List<Map> childList=menusService.menusChild();
        map.put("main", mainList);
        map.put("child", childList);
        return map;
    }
    @RequestMapping("loadnav")
    public @ResponseBody Map loadNav(HttpSession session){
        Map loginMan= (Map) session.getAttribute("loginMan");
        return loginMan;
    }
}
