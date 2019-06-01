package org.java.web;

import org.java.service.BumenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.SystemEnvironmentPropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.crypto.MacSpi;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class BumenController {

    @Autowired
    private BumenService bumenService;

    @RequestMapping("ShowBumen")
    public  @ResponseBody Map<String,Object> ShowBumen(){
        System.out.println("进入了web");
        Map<String,Object> map=new HashMap<>();
        List<Map<String,Object>> list=bumenService.ShowBumen();
        System.out.println(list);
        map.put("code", 0);		//必须规定的  返回数据的格式
        map.put("msg", "");		//所返回的信息  可有可无
        map.put("count",list.size());
        map.put("data", list);
        System.out.println(map);
        return  map;
    }


    @RequestMapping("selectone/{pk_Department}")
    public  String selectone(@PathVariable("pk_Department") String pk_Department,Model model){
        System.out.println("进入了查询某一个部门信息");
        Map<String,Object> map=bumenService.selectone(pk_Department);

        model.addAttribute("map", map);
        return  "/page/updatebumen";
    }

    @RequestMapping("updatebumen")
    public  String updatebumen(@RequestParam Map<String,Object> m){

        System.out.println("进入了修改某一个部门的步骤");
        System.out.println(m);
        bumenService.updatebumen(m);
        return "/page/user_bumen_manager";
    }

    @RequestMapping("delbumen/{pk_Department}")
    public String delbumen(@PathVariable("pk_Department") String pk_Department){
        System.out.println("进入了删除某一个部门的步骤");
        bumenService.delbumen(pk_Department);
        return "/page/user_bumen_manager";
    }

    @RequestMapping("insertbumen")
    public  String insertbumen(@RequestParam Map<String,Object> m){
            System.out.println("进入了增加的方法");
            bumenService.insertbumen(m);
            return "/page/user_bumen_manager";
    }
}
