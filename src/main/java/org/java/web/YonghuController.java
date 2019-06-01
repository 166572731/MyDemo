package org.java.web;


import org.java.service.YonghuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class YonghuController {

    @Autowired
    private YonghuService yonghuService;

    @RequestMapping("ShowYonghu")
    public  @ResponseBody Map<String,Object> ShowBumen(){
        System.out.println("进入了web用户");
        Map<String,Object> map=new HashMap<>();
        List<Map<String,Object>> list=yonghuService.ShowYonghu();
        System.out.println(list);
        map.put("code", 0);		//必须规定的  返回数据的格式
        map.put("msg", "");		//所返回的信息  可有可无
        map.put("count",list.size());
        map.put("data", list);
        System.out.println(map);
        return  map;
    }

    @RequestMapping("delyuangong/{pk_user}")
    public String delyuangong(@PathVariable("pk_user") String pk_user ){
        System.out.println("进入了删除某一个用户的方法");
        yonghuService.delyuangong(pk_user);
        return "/page/user_yonghu_manager";
    }

    @RequestMapping("insertyonghu")
    public  String insertyonghu(@RequestParam Map<String,Object> m){
        System.out.println("进入了增加用户");
        yonghuService.insertyonghu(m);
        return "/page/user_yonghu_manager";
    }
}
