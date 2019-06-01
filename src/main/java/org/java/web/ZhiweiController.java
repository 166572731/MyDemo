package org.java.web;

import org.java.service.ZhiweiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class ZhiweiController {
    @Autowired
    private ZhiweiService zhiweiService;

    @RequestMapping("ShowZhiwei")
    public  @ResponseBody Map<String,Object> ShowBumen(){
        System.out.println("进入了web职位");
        Map<String,Object> map=new HashMap<>();
        List<Map<String,Object>> list=zhiweiService.ShowZhiwei();
        System.out.println(list);
        map.put("code", 0);		//必须规定的  返回数据的格式
        map.put("msg", "");		//所返回的信息  可有可无
        map.put("count",list.size());
        map.put("data", list);
        System.out.println(map);
        return  map;
    }

    @RequestMapping("selectzhiwei/{pk_Position}")
    public String selectzhiwei(@PathVariable("pk_Position") String pk_Position, Model model){
        System.out.println("进入了查询某一个职位的方法");
        Map<String, Object> map=zhiweiService.selectzhiwei(pk_Position);
        model.addAttribute("map", map);

        return "/page/updatezhiwei";
    }


    @RequestMapping("delzhiwei/{pk_Position}")
    public String delzhiwei(@PathVariable("pk_Position") String pk_Position){
        System.out.println("进入删除某一个职位的方法");
        zhiweiService.delzhiwei(pk_Position);
        return  "/page/user_zhiwei_manager";
    }

    @RequestMapping("updatezhiwei")
    public String updatebumen(@RequestParam Map<String,Object> m){
        System.out.println("进入了修改某一个职位的步骤");
        zhiweiService.updatezhiwei(m);
        return "/page/user_zhiwei_manager";
    }

    @RequestMapping("insertzhiwei")
    public String insertbumen(@RequestParam Map<String,Object> m){
        System.out.println("进入了添加某一个职位的步骤");
        zhiweiService.insertzhiwei(m);
        return "/page/user_zhiwei_manager";
    }
}
