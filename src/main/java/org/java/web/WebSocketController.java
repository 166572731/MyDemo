package org.java.web;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import org.java.service.WebSocketService;
import org.java.websocket.WebscoketManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
public class WebSocketController {
    @Autowired
    WebSocketService webSocketService;

    //加载群组列表
    @RequestMapping("loadGroupUser")
    public @ResponseBody
    List<Map> loadGroupUser(Integer fk_group) {
        List<Map> list = webSocketService.loadGroupUser(fk_group);
        return list;
    }

    @RequestMapping("loadgroup")
    public @ResponseBody
    List<Map> loadgroup(HttpSession httpSession) {
        Map map = (Map) httpSession.getAttribute("loginMan");
        Integer fk_user = (Integer) map.get("pk_user");
        return webSocketService.loadgroup(fk_user);
    }

    //加载好友列表
    @RequestMapping("loadfriend")
    public @ResponseBody
    Map loadfriend() {
        List<Map> list = webSocketService.loadfriend();
        List departmentID = new ArrayList();
        Integer id = 0;
        for (Map map : list) {
            Integer newid = (Integer) map.get("fk_Department");
            if (!newid.equals(id)) {
                departmentID.add(newid);
                id = newid;
            }
        }
        Map map = new HashMap();
        map.put("departments", departmentID);
        map.put("users", list);
        return map;
    }
    //新增聊天记录
    @RequestMapping("addtalk")
    public @ResponseBody Integer addtalk(String talkinfo){
        JSONObject talk= JSON.parseObject(talkinfo);
        String talk_from=JSON.toJSONString(talk.get("from"));
        Map map=new HashMap();
        map.put("talk_frominfo",talk_from);
        map.put("talk_to", talk.get("to").toString());
        map.put("talk_content", talk.get("message").toString());
        map.put("talk_time", talk.get("time").toString());
        map.put("talk_code",0);
        map.put("talk_from",JSON.parseObject(talk.get("from").toString()).get("pk_user").toString());
        System.out.println(webSocketService.addtalk(map));
        return 1;
    }
    //加载聊天记录
    @RequestMapping("loadTalk")
    public @ResponseBody List<Map> loadTalk(String talk_from,String talk_to){
        System.out.println("aaaaaaaaaaaa");
        System.out.println(talk_to);
        System.out.println(talk_to.indexOf("group"));
        if (talk_to.indexOf("group")!=-1){
            System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
            System.out.println(talk_to);
            List<Map> groupList=webSocketService.loadGroupTalk(talk_to);
            //对聊天记录进行排序
            Collections.sort(groupList,new Comparator<Map>() {
                @Override
                public int compare(Map o1, Map o2) {
                    // TODO Auto-generated method stub
                    Integer talk1= (Integer) o1.get("pk_talk");
                    Integer talk2= (Integer) o2.get("pk_talk");
                    return talk1-talk2;
                }
            });
            System.out.println(groupList);
            return groupList;
        }
        List<Map> listme=webSocketService.loadTalk(talk_from, talk_to);
        List<Map> listtheir=webSocketService.loadTalk(talk_to, talk_from);
        if (listme.size()!=0){
            if (listtheir.size()!=0){
                List<Map> newTalkList=new ArrayList<>();
                for (Map map:listtheir) {
                    newTalkList.add(map);
                }
                for (Map map:listme) {
                    newTalkList.add(map);
                }
                //对聊天记录进行排序
                Collections.sort(newTalkList,new Comparator<Map>() {
                    @Override
                    public int compare(Map o1, Map o2) {
                        // TODO Auto-generated method stub
                        Integer talk1= (Integer) o1.get("pk_talk");
                        Integer talk2= (Integer) o2.get("pk_talk");
                        return talk1-talk2;
                    }
                });
                return newTalkList;
            }else {
                return listme;
            }
        }else {
            return listtheir;
        }
    }
    //获取群员个人信息
    @RequestMapping("selectFromUserinfo")
    public @ResponseBody Map selectFromUserinfo(String talk_from){
        Map map=webSocketService.selectFromUserinfo(talk_from);
        return map;
    }
}
