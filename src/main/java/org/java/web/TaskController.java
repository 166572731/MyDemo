package org.java.web;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.java.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.*;

@Controller
public class TaskController {
    @Autowired
    private TaskService taskService;

    @Autowired
    private ServletContext cxt;



    @ResponseBody
    @RequestMapping("showall")
    public Map showAll(){
        Subject subject = SecurityUtils.getSubject();
        Map user_list=(Map) subject.getPrincipal() ;
        //获得用户编号
        Integer user_id=Integer.parseInt(user_list.get("pk_user").toString());
        String username=(String) user_list.get("userName");

        List<Map> showall=taskService.showTask(user_id);
        for (Map map:showall){
            map.put("username",username);

        }
        Map<String,Object> map=new HashMap<>();

        map.put("code", 0);		//必须规定的  返回数据的格式
        map.put("msg", "");		//所返回的信息  可有可无
        map.put("count",showall.size());
        map.put("data", showall);
        return map;
    }


    @RequestMapping("up")
    public @ResponseBody Map up(HttpServletRequest req, Model model, HttpServletResponse rep, HttpSession ses) throws  Exception{

        Integer task_id=Integer.parseInt(req.getParameter("aa"));
        Map map=(Map)taskService.up(task_id);
        Subject subject = SecurityUtils.getSubject();
        Map user_list=(Map) subject.getPrincipal() ;
        map.put("username",user_list.get("userName"));
        String schedule=(String) map.get("task_schedule");
        ses.setAttribute("feedback",taskService.feedback(task_id));
        ses.setAttribute("schedule",schedule);
        return map;
    }

    /**
     * 查看任务
     * @param map
     * @return
     */
      @RequestMapping("se")
    public String se(@RequestParam() Map map){
        Integer id=Integer.parseInt(map.get("fk_task").toString());     //任务编号
        Integer StatusID =Integer.parseInt(map.get("type").toString()); //状态编号
        String task_schedule=null;
        if(StatusID==1){
            task_schedule="25%";
        }else if (StatusID==2){
            task_schedule="50%";
        }else if (StatusID==3){
            task_schedule="75%";
        }else{
            task_schedule="100%";
        }
        taskService.upmytask(StatusID,id);
        taskService.task_up(StatusID,task_schedule,id);
        taskService.se(map);
        return "/page/task_manager";
    }


    @RequestMapping("/del/del")
    public @ResponseBody Integer sel(HttpServletRequest req){
        Integer task_id=Integer.parseInt(req.getParameter("aa"));
       int n= taskService.delfeedback(task_id);
        n+=taskService.dereceiver(task_id);
        n+=taskService.del(task_id);

        return n;

    }


    /*
     *添加任务与分配
     */
    @RequestMapping("/task_ins/task_ins")
    public String task_ins(@RequestParam() CommonsMultipartFile myfile,HttpServletRequest req) throws  Exception{
        Map mm=new HashMap();
        String FilePath = cxt.getRealPath("upload");
        System.out.println("上传的文件路径是:"+FilePath);

       Integer TypeID=Integer.parseInt(req.getParameter("TypeID"));//任务的类型那个编号
        Integer StatusID=Integer.parseInt(req.getParameter("StatusID")); //任务的状态编号
        String StartDate=req.getParameter("StartDate");                     //任务的开始时间
        String EndDate=req.getParameter("EndDate");                     //任务的结束时间
        String Title=req.getParameter("Title");      //任务的标题
        String UserList=req.getParameter("UserList");    //接收人
        String Description=req.getParameter("Description");//对任务的描述
        Integer    IsTop=0;
        if(req.getParameter("IsTop")!=null){
             IsTop=Integer.parseInt(req.getParameter("IsTop"));
        }
                  //任务是否置顶
//        Integer IsCancel=Integer.parseInt(req.getParameter("IsCancel"));    //任务是否取消
        //分割用户名
        String [] names = UserList.split(",");


        Map map=new HashMap();
        map.put("TypeID",TypeID);
        map.put("StatusID",StatusID);
        map.put("StartDate",StartDate);
        map.put("EndDate",EndDate);
        map.put("Title",Title);
        map.put("UserList",UserList);
        map.put("Description",Description);
        map.put("IsTop",IsTop);//任务是否置顶
        map.put("CompleteDate",null);//任务完成时间
        map.put("IsCancel","0");//任务是否取消
        map.put("CancelDate",null);//取消时间
        map.put("Feedback",null);   //反馈信息   初始任务，默认为空


        String bmmc=null;
       //取出了用户编号和部门编号
       for (String name : names) {
             Map m= taskService.cxbh(name);
             Integer userId=Integer.parseInt(m.get("pk_user").toString());
           Integer deptID=Integer.parseInt(m.get("fk_Department").toString());
            bmmc+=taskService.cxbm(deptID);

       }
        map.put("DepartmentList",bmmc);     //相关部门
       map.put("UserList",UserList);        //相关用户
        Subject subject = SecurityUtils.getSubject();
        Map user_list=(Map) subject.getPrincipal() ;
        map.put("fk_User",user_list.get("pk_user"));    //获取创建任务者的编号
        map.put("fk_Department",user_list.get("fk_Department"));    //任务创建人的部门编号
        map.put("ImagePath",null);      //图片地址
        map.put("RoleList",null);       //默认相关权限为空
        map.put("Url",null);            //路径
       Integer  IsComplete=0;           //任务是否取消 ，默认为不取消
       map.put(" IsComplete",IsComplete);
       map.put("task_schedule","0%");

        //获得上传的文件名称
        String fname=null;
         fname= myfile.getOriginalFilename();
            if(fname==""||fname==null) {

                map.put("FilePath",null);
            }
            if(fname!=null||fname!="") {//在指定目录 下，产生一个新文件（这个文件是一个空文件，没有数据）
                File newFile = new File(FilePath, fname);
                //将上传文件中的数据，写入到新文件中
                myfile.getFileItem().write(newFile);
                map.put("FilePath", "upload" + "/" + fname);     //附件路径
            }
        Integer IsDistribution=1;       //任务是否分配  默认为已分配
        map.put("IsDistribution",IsDistribution);

        taskService.task_ins(map); //添加新任务

        //根据标题查询任务编号

        //添加我的任务
        Integer fk_Task=Integer.parseInt(taskService.bhcx(Title).toString());
        System.out.println("\n\n"+fk_Task);             //查询任务编号
        mm.put("fk_Task",fk_Task);
        mm.put("IsRead","0");       //未接受
        mm.put("IsReceive","0");    //为读取
        mm.put("StatusID","1");     //任务的初始状态

        for (String name : names) {
            Map m= taskService.cxbh(name);
            Integer fk_User=Integer.parseInt(m.get("pk_user").toString());
            Integer fk_Department=Integer.parseInt(m.get("fk_Department").toString());
            mm.put("fk_User",fk_User);
            mm.put("fk_Department",fk_Department);

           taskService.task_rece(mm);
        }


        return  "/page/task_manager";
    }


    /**
     * 查询所有用户
     * @return
     */
    @RequestMapping("/all/all")
    public @ResponseBody List<Map> allusers(HttpSession ses){
        System.out.println(123);
        ses.removeAttribute("schedule");
        ses.removeAttribute("feedback");
        List<Map> user_list=taskService.user_list();
        ses.setAttribute("user",user_list);
        return user_list;
    }


    /**
     * 查询我的任务
     */
    @RequestMapping("/task/mytask")
    public  @ResponseBody Map task_mytask(){
        Subject subject = SecurityUtils.getSubject();
        Map user_list=(Map) subject.getPrincipal() ;

        Integer user_id=Integer.parseInt(user_list.get("pk_user").toString());
        String username=(String) user_list.get("userName");
           //获取创建任务者的编号
        List<Map> all_task=taskService.my_task(Integer.parseInt(user_list.get("pk_user").toString()));

        //获得用户编号

        for (Map m:all_task){
            m.put("userName" ,username);
            System.out.println("\n\n"+m+"\n\n");
        }

        Map<String,Object> map=new HashMap<>();
        map.put("code", 0);		//必须规定的  返回数据的格式
        map.put("msg", "");		//所返回的信息  可有可无
        map.put("count",all_task.size());
        map.put("data", all_task);
        return map;
    }





}
