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
        HttpSession session=request.getSession();
        Map<String,Object> userName= (Map<String, Object>) session.getAttribute("loginMan");//获得登录的用户
        String name=userName.get("userName").toString();
        map.put("fk_Account", name);
        map.put("fk_User", name);
        map.put("StatusID", "未读");
        map.put("MailType", "1");

        mailServiec.AddMail(map);
        return "page/ShowMeil";
    }
    @RequestMapping("/yidu")
    public @ResponseBody int yidua(HttpServletRequest request)
    {

        int mailId=Integer.parseInt(request.getParameter("meilid"));
        System.out.println(mailId);
        mailServiec.yidu(mailId);
        return mailId;
    }

    @RequestMapping("del")
    public @ResponseBody int delete(HttpServletRequest request)
    {
        int mailId=Integer.parseInt(request.getParameter("meilid"));
        mailServiec.delete(mailId);
        return mailId;
    }

    @RequestMapping("hsz")
    public  @ResponseBody Map<String,Object> hsz(HttpServletRequest request)
    {

        HttpSession session=request.getSession();
        Map<String,Object> userName= (Map<String, Object>) session.getAttribute("loginMan");//获得登录的用户名
        String name=userName.get("userName").toString();
        List<Map<String,Object>> list=mailServiec.ShowDelete(name);

        Map<String,Object> map=new HashMap<String,Object>();
        map.put("code", 0);		//必须规定的  返回数据的格式
        map.put("msg", "");		//所返回的信息  可有可无
        map.put("count",list.size());
        map.put("data", list);
        return map;
    }

    @RequestMapping("/cdDelete")
    public @ResponseBody int cdDelete(HttpServletRequest request)
    {
        int mailId=Integer.parseInt(request.getParameter("meilid"));
        mailServiec.cdDelete(mailId);
        return mailId;
    }

    @RequestMapping("/hfu")
    public  @ResponseBody int hfu(HttpServletRequest request)
    {
        int mailId=Integer.parseInt(request.getParameter("meilid"));
        System.out.println(mailId);
        mailServiec.hfu(mailId);
        return mailId;
    }

    @RequestMapping("/hfMail")
    public  @ResponseBody int hfMail(HttpServletRequest request)
    {
        HttpSession session=request.getSession();
        int mailId=Integer.parseInt(request.getParameter("meilid"));//邮件id
        String nr=(String) request.getParameter("nr");//内容
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("pk_Mail", mailId);
        map.put("nr",nr );
        mailServiec.yidu(mailId);
        mailServiec.hfMail(map);
        return mailId;
    }

    @RequestMapping("/wdu")
    public  @ResponseBody int wdu(HttpServletRequest request)
    {
        HttpSession session=request.getSession();
        Map<String,Object> userName= (Map<String, Object>) session.getAttribute("loginMan");//获得登录的用户
        String name=userName.get("userName").toString();
        int count=mailServiec.wdu(name);
        System.out.println(count);
        return count;
    }

    @RequestMapping("/showHfu")
    public  @ResponseBody Map<String,Object> showHfu(HttpServletRequest request)
    {

        HttpSession session=request.getSession();
        Map<String,Object> userName= (Map<String, Object>) session.getAttribute("loginMan");//获得登录的用户名
        String name=userName.get("userName").toString();
        List<Map<String,Object>> list=mailServiec.showHfu(name);
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("code", 0);		//必须规定的  返回数据的格式
        map.put("msg", "");		//所返回的信息  可有可无
        map.put("count",list.size());
        map.put("data", list);
        return map;
    }

}
