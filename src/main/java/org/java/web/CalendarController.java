package org.java.web;

import org.java.service.CalendarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
           calendarService.delete(id);
            return id;
    }

    @RequestMapping("/addCalendar")
    public @ResponseBody int add(HttpServletRequest request)
    {
        /*
        var Title=$('#Title').val();//标题
		var TypeID=$('#TypeID').val();//类型
		var StartDate=$("#StartDate").val();
		var EndDate=$("#EndDate").val();
		var Description=$("#Description").val();
		var IsRemind=$("#IsRemind").val();
        * */
        Map<String,Object> map=new HashMap<String,Object>();
        String fk_User=byAdminName(request);
        String Title=request.getParameter("Title");
        String TypeID=request.getParameter("TypeID");
        String StartDate=request.getParameter("StartDate");
        String EndDate=request.getParameter("EndDate");
        String Description=request.getParameter("Description");
        String IsRemind=request.getParameter("IsRemind");
        map.put("fk_User", fk_User);
        map.put("Title", Title);
        map.put("StatusID", TypeID);
        map.put("StartDate", StartDate);
        map.put("EndDate", EndDate);
        map.put("Description", Description);
        if (IsRemind.equals("no")){
            map.put("IsRemind", 0);
        }else {
            map.put("IsRemind", 1);
        }
        calendarService.addCalendar(map);
        return 1;
    }

    @RequestMapping("/updateCalendar")
    public  @ResponseBody Integer update(HttpServletRequest request) {

        Map<String,Object> map=new HashMap<String,Object>();
        String fk_User=byAdminName(request);
        String Title=request.getParameter("Title");
        String TypeID=request.getParameter("TypeID");
        String StartDate=request.getParameter("StartDate");
        String EndDate=request.getParameter("EndDate");
        String Description=request.getParameter("Description");
        String pk_Calendar=request.getParameter("pk_Calendar");

        map.put("Title", Title);
        map.put("StatusID", TypeID);
        map.put("StartDate", StartDate);
        map.put("EndDate", EndDate);
        map.put("Description", Description);
        map.put("pk_Calendar", pk_Calendar);
        System.out.println(map);

      //  calendarService.updateCalendar(map);
        return 1;
    }

    @RequestMapping("/getCalendar")
    public  @ResponseBody Map<String,Object> getone(HttpServletRequest request)
    {
        int id=Integer.parseInt(request.getParameter("pk_Calendar"));
         Map<String,Object> map= calendarService.getOne(id);
        return map;
    }

    @RequestMapping("/getRic")
    public  @ResponseBody List<Map<String,Object>> ric(HttpServletRequest request)
    {
        System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++");
        String admin=byAdminName(request);

        List<Map<String,Object>> list= calendarService.showCalendar(admin);
        return list;
    }

}
