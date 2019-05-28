package org.java.web;

import org.java.service.CalendarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class CalendarController {

    @Autowired
    private CalendarService calendarService;
    @Autowired
    private HttpServletRequest request;

    public  String byAdminName(HttpServletRequest request){//获得登陆用户名
        HttpSession session=request.getSession();
        Map<String,Object> userName= (Map<String, Object>) session.getAttribute("loginMan");//获得登录的用户
        String name=userName.get("userName").toString();
        return  name;
    }

    @RequestMapping("/showCalendar")
    public  @ResponseBody Map<String,Object> showCalendar()
    {
            Map<String,Object> map=new HashMap<String,Object>();
            String admin=byAdminName(request);

            List<Map<String,Object>> list= calendarService.showCalendar(admin);
            map.put("code", 0);		//必须规定的  返回数据的格式
            map.put("msg", "");		//所返回的信息  可有可无
            map.put("count",list.size());
            map.put("data", list);
        return map;
    }

    @RequestMapping("/deleteCalendar")
    public  @ResponseBody int delete(HttpServletRequest request)
    {
            int id=Integer.parseInt(request.getParameter("id"));
            System.out.println(id);
           // calendarService.delete(id);
            return id;
    }

    @RequestMapping("/addCalendar")
    public  @ResponseBody int add(HttpServletRequest request, @RequestParam Map<String,Object> map)
    {

        return 11;
    }


}
