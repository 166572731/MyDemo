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

    //加载群组所有人
    @RequestMapping("loadGroupUser")
    public String loadGroupUser(String pk_group) {
        /*List<Integer> list1=new ArrayList();
        for (Map group: list) {
            Integer pk_group= (Integer) group.get("pk_group");
            list1.add(pk_group);
        }
        List<Map> userList=webSocketService.loadGroupUser(list1);
        for (Integer groupid: list1) {
            Map groupUser=new HashMap();
            List<Integer> list2=new ArrayList<>();
            for (Map users: userList) {
                Integer id= (Integer) users.get("fk_group");
                if (groupid.equals(id)){
                    list2.add((Integer) users.get("fk_user"));
                }
            }
            groupUser.put(groupid, "a");
        }*/
        return null;
    }

    //加载所有群组
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
