package org.java.web;

import org.java.dao.User_listMapper;
import org.java.entity.NoticeList;
import org.java.service.NoticeListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
public class NoticeContorller {
    @Autowired
    NoticeListService service;
    @Autowired
    User_listMapper userListMapper;

//    User_listMapper userListMapper;

    @RequestMapping("findAll")
    public String finAll(HttpServletRequest request,HttpSession session){
        System.out.println("aaaaaaaaaaaa");
        Map<String,Object> mpp= (Map<String, Object>) session.getAttribute("loginMan");
        Integer pk_user= (Integer) mpp.get("pk_user");
        List<NoticeList> list= service.findAll(pk_user);
        request.setAttribute("list",list );
        return "/page/gonggao_manager";
    }
    @RequestMapping("addNotice")
    public  String addNotice(NoticeList notice, HttpSession session, MultipartFile file,HttpServletRequest request)throws Exception{
        System.out.println("进入添加方法================================");
        Map<String,Object> mpp= (Map<String, Object>) session.getAttribute("loginMan");
        String userName= (String) mpp.get("userName");
        System.out.println(userName);
        Integer id= (Integer) mpp.get("pk_user");
        Integer department= (Integer) mpp.get("fk_Department");
        notice.setFk_User(id);
        notice.setUserName(userName);
        notice.setFk_Department(department);
//        //设置相对路径
//        String realPath = request.getSession().getServletContext().getRealPath("/upload");
//        //获取文件的格式
//        String extention = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")+1);
//       //对格式进行筛选
//        if(extention.equalsIgnoreCase("xls") || extention.equalsIgnoreCase("xlsx") || extention.equalsIgnoreCase("txt")
//        || extention.equalsIgnoreCase("csv")) {
//         //在路径下创建文件夹
//          File f = new File(realPath);
//            String fileName = file.getOriginalFilename();
//            String uploadPath = realPath + File.separator + fileName;
//            if(!f.exists()) {
//                f.mkdir();
//            }
//           //文件的传输
//            file.transferTo(new File(uploadPath));
//
///             Upload upload = new Upload();
//              upload.setFileName(fileName);
////            upload.setFileLength(String.valueOf(file.getSize()));
////            upload.setFileOwner(super.getLoginUser(request).getLoginId());
////            upload.setFilePath("/upload/" + fileName);
////           //将文件的基本信息存到数据库
////            fileQueryService.saveFile(upload);
//
//
//            request.setAttribute("info","文件上传成功!");
//            notice.setFilePath(uploadPath);
//            System.out.println(uploadPath);
//        } else {
//            request.setAttribute("info","文件类型不正确，请上传格式为xls,xlsx,txt,csv文件!");
//        }

        service.addNocice(notice);
        return "redirect:findAll.do";
    }
    @RequestMapping("delById/{pk_Notice}")
    public  String delById(@PathVariable("pk_Notice") Integer pk_Notice){
        service.delById(pk_Notice);
        return "redirect:/findAll.do";
    }
    @RequestMapping("findByUser")
    public String findByUser(HttpSession session, HttpServletRequest request){
        Map<String,Object> mpp= (Map<String, Object>) session.getAttribute("loginMan");
        String name= (String) mpp.get("userName");
        Integer pk_user= (Integer) mpp.get("pk_user");
        List<NoticeList> list= service.findMyNotice();
        request.setAttribute("mlist",list );
        request.setAttribute("userName", name);
        return "/page/gonggao_list";
    }
    @RequestMapping("showById/{pk_Notice}")
    public String findById(@PathVariable("pk_Notice") Integer pk_Notice, Model model){
        NoticeList notice =service.findById(pk_Notice);
        model.addAttribute("notice",notice );
        return "/page/gonggao_show";
    }
}
