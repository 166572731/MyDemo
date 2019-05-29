package org.java.web;

import org.java.service.CalenderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

@Controller
public class CalenderController {

    @Autowired
    private CalenderService calenderService;

    @RequestMapping("load")
    public String load(String departmentId, Integer userId, Model model){
       List<Map> list=calenderService.load(departmentId, userId);
        model.addAttribute(list);
        return "richeng_manager";
    }

}
