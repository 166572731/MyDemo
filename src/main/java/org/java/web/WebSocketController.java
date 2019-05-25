package org.java.web;

import org.java.service.WebSocketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class WebSocketController {
    @Autowired
    WebSocketService webSocketService;
    @RequestMapping("loadgroup")
    public @ResponseBody List<Map> loadgroup(HttpSession httpSession){
        Map map= (Map) httpSession.getAttribute("loginMan");
        Integer fk_user= (Integer) map.get("pk_user");
        return webSocketService.loadgroup(fk_user);
    }
    @RequestMapping("loadfriend")
    public @ResponseBody Map loadfriend(){
        List<Map> list=webSocketService.loadfriend();
        List departmentID=new ArrayList();
        Integer id=0;
        for (Map map:list) {
            Integer newid= (Integer) map.get("fk_Department");
            if (!newid.equals(id)){
                departmentID.add(newid);
                id=newid;
            }
        }
        Map map=new HashMap();
        map.put("departments", departmentID);
        map.put("users", list);
        return map;
    }
}
