package org.java.web;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.java.service.Comm_nicationService;
import org.java.service.TaskService;
import org.java.service.impl.Comm_incationServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import sun.misc.ClassLoaderUtil;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class CommController {

    @Autowired
    private Comm_nicationService comm_nicationService;

    @Autowired
    private TaskService taskService;


    @Autowired
    private ServletContext cxt;

    /*
    查询所有任务
     */
    @RequestMapping("/all/communication")
    public @ResponseBody Map allcommunication(HttpSession ses,HttpServletRequest req){
        Integer id=0;

        List<Map> list1 = comm_nicationService.allclassification();//查询有所得类型
        ses.setAttribute("all", list1);
        Map<String, Object> map = new HashMap<>();

        map.put("code", 0);        //必须规定的  返回数据的格式
        map.put("msg", "");        //所返回的信息  可有可无
        if(req.getParameter("id")!=null){
            id=Integer.parseInt(req.getParameter("id"));
        }

        if(id==0) {

            Subject subject = SecurityUtils.getSubject();
            Map user_list = (Map) subject.getPrincipal();
            Integer user_id = Integer.parseInt(user_list.get("pk_user").toString());//获得用户编号
            List<Map> list = comm_nicationService.allcommunication(user_id);
            map.put("count", list.size());
            map.put("data", list);

        }else if(id==1){
            List<Map> list = comm_nicationService.myaddressbook(id);
            map.put("count", list.size());
            map.put("data", list);
        }else if(id==2){
            List<Map> list = comm_nicationService.myaddressbook(id);
            map.put("count", list.size());
            map.put("data", list);
        }else if(id==3){
            List<Map> list = comm_nicationService.myaddressbook(id);
            map.put("count", list.size());
            map.put("data", list);
        }else if(id==4){
            String class_name=req.getParameter("nr");
            List<Map> list = comm_nicationService.Classificationofquery(class_name);
            map.put("count", list.size());
            map.put("data", list);
        }
        return map;
    }


    /*
    修改之前的查询联系人
     */
    @RequestMapping("/comm/up")
    public @ResponseBody Map commup(HttpServletRequest req){
        Integer comm_id=Integer.parseInt(req.getParameter("comm_id"));
        Map map=comm_nicationService.commup(comm_id);

        return map;
    }




    //修改联系人
    @RequestMapping("/phone/up")
    public String phone_up(@RequestParam() CommonsMultipartFile myfile , HttpServletRequest req) throws  Exception{

        Map map=new HashMap();

        String  jer=" ";  //接收人

        Integer comm_id=Integer.parseInt(req.getParameter("comm_id").toString());//联系人编号
        Integer comm_thedegreeof=Integer.parseInt(req.getParameter("comm_thedegreeof").toString());
        Integer comm_typeid=Integer.parseInt(req.getParameter("comm_typeid").toString());
        Integer comm_sex=Integer.parseInt(req.getParameter("comm_sex").toString());
        Integer   comm_class_id=0;
        if(req.getParameter("comm_class_id")!=null){
            comm_class_id =Integer.parseInt(req.getParameter("comm_class_id").toString());
        }

        String comm_name=req.getParameter("comm_name");
        String comm_phone=req.getParameter("comm_phone");
        String comm_landline=req.getParameter("comm_landline");
        String comm_fax=req.getParameter("comm_fax");
        String comm_email=req.getParameter("comm_email");
        String comm_address=req.getParameter("comm_address");
        String comm_note=req.getParameter("comm_note");
        map.put("comm_id",comm_id);
        map.put("comm_thedegreeof",comm_thedegreeof);
        map.put("comm_typeid",comm_typeid);
        map.put("comm_sex",comm_sex);
        map.put("comm_class_id",comm_class_id);
        map.put("comm_name",comm_name);
        map.put("comm_phone",comm_phone);
        map.put("comm_landline",comm_landline);
        map.put("comm_fax",comm_fax);
        map.put("comm_email",comm_email);
        map.put("comm_address",comm_address);
        map.put("comm_note",comm_note);
        Map m=new HashMap();
        m.put("comm_id", comm_id);
        if(req.getParameter("ctl00$cphMain$txtReceiver")!=null){

            jer=req.getParameter("ctl00$cphMain$txtReceiver");


            String[] names=jer.split(",");
            if(comm_typeid==3) {
                for (String name : names) {
                    m = taskService.cxbh(name);
                    map.put("pk_user",m.get("pk_user"));
                    comm_nicationService.phone_Anewtask(map);
                }
            }
        }

        String FilePath = cxt.getRealPath("upload");


        //获得上传的文件名称
        String fname="";

        fname = myfile.getOriginalFilename();

        if(fname.equals("")||fname==null) {

            map.put("comm_headportrait",null);
        }
        if(fname!=null&&!fname.equals("")) {//在指定目录 下，产生一个新文件（这个文件是一个空文件，没有数据）

            File newFile = new File(FilePath, fname);

            //将上传文件中的数据，写入到新文件中
           myfile.getFileItem().write(newFile);
            map.put("comm_headportrait", "upload" + "/" + fname);     //头像
        }

        comm_nicationService.phone_up(map);

        return "/page/phone_number";
    }


    //添加联系人与分享该联系人
    @RequestMapping("/phone/Anewtask")
    public String phone_Anewtask(@RequestParam() CommonsMultipartFile myfile , HttpServletRequest req) throws  Exception{
        Map map=new HashMap();

        String  jsr=" ";  //接收人
        Integer comm_thedegreeof=Integer.parseInt(req.getParameter("comm_thedegreeof").toString());
        Integer comm_typeid=Integer.parseInt(req.getParameter("comm_typeid").toString());
        Integer comm_sex=Integer.parseInt(req.getParameter("comm_sex").toString());
        Integer   comm_class_id=1;              //默认存在的目录为好友
        if(req.getParameter("comm_class_id")!=null){
            comm_class_id =Integer.parseInt(req.getParameter("comm_class_id").toString());
        }
        System.out.println("\n\n"+comm_class_id+"\n\n");

        String comm_name=req.getParameter("comm_name");
        String comm_phone=req.getParameter("comm_phone");
        String comm_landline=req.getParameter("comm_landline");
        String comm_fax=req.getParameter("comm_fax");
        String comm_email=req.getParameter("comm_email");
        String comm_address=req.getParameter("comm_address");
        String comm_note=req.getParameter("comm_note");
        map.put("comm_thedegreeof",comm_thedegreeof);
        map.put("comm_typeid",comm_typeid);
        map.put("comm_sex",comm_sex);
        map.put("comm_class_id",comm_class_id);
        map.put("comm_name",comm_name);
        map.put("comm_phone",comm_phone);
        map.put("comm_landline",comm_landline);
        map.put("comm_fax",comm_fax);
        map.put("comm_email",comm_email);
        map.put("comm_address",comm_address);
        map.put("comm_note",comm_note);

        //获得任务创建人的编号
        Subject subject = SecurityUtils.getSubject();
        Map user_list=(Map) subject.getPrincipal() ;
        map.put("pk_user",user_list.get("pk_user"));


        //获得路径
        String FilePath = cxt.getRealPath("upload");
        //获得上传的文件名称
        String fname="";

        fname = myfile.getOriginalFilename();

        if(fname.equals("")||fname==null) {

            map.put("comm_headportrait",null);
        }
        if(fname!=null&&!fname.equals("")) {//在指定目录 下，产生一个新文件（这个文件是一个空文件，没有数据）

            File newFile = new File(FilePath, fname);

            //将上传文件中的数据，写入到新文件中
            myfile.getFileItem().write(newFile);
            map.put("comm_headportrait", "upload" + "/" + fname);     //头像
        }
        comm_nicationService.phone_Anewtask(map);

        //添加分享表
        Map m=new HashMap();
        //根据名称，电话查询该联系人的编号
        String comm_id=(String)comm_nicationService.query_number(comm_name,comm_phone);
        if(req.getParameter("ctl00$cphMain$txtReceiver")!=null){

            jsr=req.getParameter("ctl00$cphMain$txtReceiver");

            if(comm_typeid==3) {  //返回的类型如果为共享通讯录则进行添加到共享通讯表中
                String[] names = jsr.split(",");
                for (String name : names) {
                    m = taskService.cxbh(name);  //编号查询
                    map.put("pk_user",m.get("pk_user"));
                    comm_nicationService.phone_Anewtask(map);

                }
            }
        }

        return "/page/phone_number";
    }


    //根据编号查询联系人
    @RequestMapping("/phone/toview")
    public @ResponseBody Map phone_toview(HttpServletRequest req,HttpSession ses){
        //根据任务编号获取该联系人信息
        Map map=(Map) comm_nicationService.phone_toview(Integer.parseInt(req.getParameter("comm_id")));

        Integer comm_sex=Integer.parseInt(map.get("comm_sex").toString());



        String comm_headportrait="";


        if(map.get("comm_headportrait")!=null){
            comm_headportrait=map.get("comm_headportrait").toString();
        }


        System.out.println("\n\n性别"+comm_sex);
        System.out.println("\n\n头像路径"+comm_headportrait);

        ses.setAttribute("comm_sex",comm_sex);
        ses.setAttribute("comm_headportrait",comm_headportrait);
       return map;
    }

    //删除联系人
    @RequestMapping("/phone/thecontact")
    public String phone_thecontact(HttpServletRequest req){
        //获取联系人编号
        Integer comm_id=Integer.parseInt(req.getParameter("comm_id"));
         int n=comm_nicationService.phone_thecontact(comm_id);
        return "/page/phone_number";

    }


    //新增分类类型
    @RequestMapping("/inse/typeid")
    public  String inse_typeid(HttpServletRequest req,HttpSession ses){
        String xz=req.getParameter("xz");
       int n= comm_nicationService.ins_type(xz);
        List<Map> list = comm_nicationService.allclassification();//查询有所得类型
        ses.setAttribute("all", list);
        return "/page/phone_number";
    }

}
