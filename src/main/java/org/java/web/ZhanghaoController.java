package org.java.web;

import org.java.service.ZhanghaoService;
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
public class ZhanghaoController {

    @Autowired
    private ZhanghaoService zhanghaoService;

    @RequestMapping("ShowZhanghao")
    public  @ResponseBody Map<String,Object> ShowZhanghao(){
        System.out.println("进入了web账号");
        Map<String,Object> map=new HashMap<>();
        List<Map<String,Object>> list=zhanghaoService.ShowZhanghao();
        System.out.println(list);
        map.put("code", 0);		//必须规定的  返回数据的格式
        map.put("msg", "");		//所返回的信息  可有可无
        map.put("count",list.size());
        map.put("data", list);
        System.out.println(map);
        return  map;
    }

    @RequestMapping("delzhanghao/{pk_Account}")
    public String delzhanghao(@PathVariable("pk_Account") String pk_Account){
        System.out.println("进入了删除某一个账号的方法");
        zhanghaoService.delzhanghao(pk_Account);
        return "/page/caiwu_numbermanager";
    }

    @RequestMapping("insertzhanghao")
    public  String insertbumen(@RequestParam Map<String,Object> m){
        System.out.println("进入了增加账号的方法");
        zhanghaoService.insertzhanghao(m);
        return "/page/caiwu_numbermanager";
    }
}
