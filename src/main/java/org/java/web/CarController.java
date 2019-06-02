package org.java.web;

import com.alibaba.fastjson.JSONObject;
import org.java.service.CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class CarController {
    @Autowired
    private CarService carService;



    @RequestMapping("/car/mycar")
    public @ResponseBody Map car(){
        System.out.println("aaaaaaaa");

        List<Map> list=carService.getList();
        Map<String,Object> map=new HashMap();
        map.put("list", list);
        map.put("msg", "");
        map.put("count", list.size());
        map.put("code", 0);
        map.put("data", list);
        System.out.println(map.toString());

         return map;
    }

    @RequestMapping("/del/{pk_Set}")
    public String del(@PathVariable("pk_Set") Integer pk_Set){
         carService.del(pk_Set);
         return "/page/car_manager";
    }

    @RequestMapping("/page/add")
    public String add(@RequestParam Map m){
        carService.add(m);
        return "/page/car_manager";
    }

    @RequestMapping("/car/carManager")
    public @ResponseBody Map carManager(){
        System.out.println("aaaa");
        List<Map> list=carService.getList();
        Map<String,Object> map=new HashMap();
        map.put("list", list);
        map.put("msg", "");
        map.put("count", list.size());
        map.put("code", 0);
        map.put("data", list);
        System.out.println(map.toString());

        return map;
    }

    @RequestMapping("selectCarById/{pk_Set}")
    public String selectzhiwei(@PathVariable("pk_Set") Integer pk_Set, Model model){
        System.out.println("进入了查询某一个职位的方法");
        Map<String, Object> map=carService.selectCarById(pk_Set);
        model.addAttribute("map", map);

        return "/page/car_update";

    }

    @RequestMapping("update")
    public String update(@RequestParam Map<String,Object> m){
        System.out.println("进入了修改页面");
        System.out.println(m.toString());
            carService.update(m);
          return "/page/car_manager";
    }
}
