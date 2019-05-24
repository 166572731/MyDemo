package org.java.web;

import org.java.service.MailServiec;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class MailController {

    @Autowired
    private MailServiec mailServiec;

    @RequestMapping("showMail")
    public @ResponseBody Map<String,Object> ShowMailByMailTo(Model model, HttpServletRequest request){

        /*Map<String, Object> map=new HashMap<String,Object>();
		List<Map<String, Object>> list=ccs.all();

		map.put("code", 0);		//必须规定的  返回数据的格式
		map.put("msg", "");		//所返回的信息  可有可无
		map.put("count",0);
		map.put("data", list);*/
        System.out.println("进入了web");
        Map<String,Object> map=new HashMap<>();
        HttpSession httpSession=request.getSession();
        Map<String,Object> userName= (Map<String, Object>) httpSession.getAttribute("loginMan");//获得登录的用户名
        System.out.println("登陆用户名"+userName.get("userName"));
        List<Map<String,Object>> list=mailServiec.ShowMailByMailTo(userName.get("userName").toString());
        System.out.println(list);
        map.put("code", 0);		//必须规定的  返回数据的格式
        map.put("msg", "");		//所返回的信息  可有可无
        map.put("count",list.size());
        map.put("data", list);



        return map;
    }
            //通讯录
    @RequestMapping("txl")
    public @ResponseBody List<Map<String,Object>> show(HttpServletRequest request)
    {
        HttpSession session=request.getSession();
        Map<String,Object> userName= (Map<String, Object>) session.getAttribute("loginMan");//获得登录的用户名
        String name=userName.get("userName").toString();

        return mailServiec.ShowAddress(name);
    }

    @RequestMapping("addMail")
    public String addMail(@RequestParam Map<String,Object> map,HttpServletRequest request)
    {
        System.out.println("33333333333333333333333333333");
        HttpSession session=request.getSession();
        Map<String,Object> userName= (Map<String, Object>) session.getAttribute("loginMan");//获得登录的用户名
        String name=userName.get("userName").toString();
        map.put("fk_Account", name);
        map.put("fk_User", name);
        map.put("StatusID", "未读");
        map.put("MailType", "1");

        System.out.println(map);
        mailServiec.AddMail(map);
        return "page/ShowMeil";
    }


}
