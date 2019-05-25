package org.java.web;

import org.java.dao.User_listMapper;
import org.java.entity.NoticeList;
import org.java.service.NoticeListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class NoticeContorller {
    @Autowired
    NoticeListService service;

    User_listMapper userListMapper;

    @RequestMapping("findAll")
    public String finAll(HttpServletRequest request){
        System.out.println("aaaaaaaaaaaa");
        List<NoticeList> list= service.findAll();
        request.setAttribute("list",list );
        return "/page/gonggao_manager";
    }
    @RequestMapping("addNotice")
    public  String addNotice(NoticeList notice,HttpSession session){
        System.out.println("进入添加方法================================");
        Map<String,Object> mpp= (Map<String, Object>) session.getAttribute("loginMan");
         service.addNocice(notice);
        return "redirect:findAll.do";
    }
    @RequestMapping("delById/{pk_Notice}")
    public  String delById(@PathVariable("pk_Notice") Integer pk_Notice){
        service.delById(pk_Notice);
        return "redirect:/findAll.do";
    }
    public String findByUser(HttpSession session, HttpServletRequest request){
        Integer user=Integer.parseInt(session.getAttribute("").toString());
        NoticeList noticeList= service.findByUser(user);
        request.setAttribute("notice", noticeList);
        return  null;
    }
}
