package org.java.web;

import org.java.service.CalenderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class CalenderController {


    @Autowired
    private CalenderService calenderService;

    @RequestMapping("/page/load")
    public String load(Integer departmentId, String userId, Model model, ServletRequest request) throws Exception{
        List<Map> list=calenderService.load(departmentId, userId);
        System.out.println(list.size());
        System.out.println(departmentId);
        System.out.println(userId);
        model.addAttribute(list);
        return "/page/richeng_manager";
    }



}
