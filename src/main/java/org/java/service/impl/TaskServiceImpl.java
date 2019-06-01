package org.java.service.impl;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.java.dao.Task_listMapper;
import org.java.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;
@Service("taskService")
public class TaskServiceImpl implements TaskService {

    @Autowired
    private Task_listMapper task_listMapper;

    @Override
    public List<Map> showTask(int fk_User) {
        return task_listMapper.showTask(fk_User);
    }

    @Override
    public Map up(int task_id) {
        return task_listMapper.up(task_id);
    }

    @Override
    public List<Map> my_task(Integer fk_User) {
        return task_listMapper.my_task(fk_User);
    }

    @Override
    public Integer se(Map map) {
       Integer StatusID=Integer.parseInt(map.get("type").toString());
        Subject subject = SecurityUtils.getSubject();
        Map user_list=(Map) subject.getPrincipal() ;

        String name=(String) user_list.get("userName");
        String fe_type=null;
        if(StatusID==1){
           fe_type="将状态改为新任务";
        }else if (StatusID==2){
             fe_type="将状态改为新已接收";
           ;
        }else if (StatusID==3){
             fe_type="将状态改为进行中";
        }else if(StatusID==4){
             fe_type="将状态改为已完成";
        }
        map.put("fe_type",name+""+new Date()+""+fe_type);
        return task_listMapper.se(map);
    }

    @Override
    public Integer task_up( Integer StatusID,String task_schedule,Integer id) {
        return task_listMapper.task_up(StatusID,task_schedule,id);
    }


    @Override
    public String cxbm(Integer pk_Department) {
        return task_listMapper.cxbm(pk_Department);
    }


    @Override
    public Integer upmytask(Integer StatusID, Integer fk_Task) {
        return task_listMapper.upmytask(StatusID,fk_Task);
    }

    @Override
    public Integer delfeedback(Integer pk_Task) {
        return task_listMapper.delfeedback(pk_Task);
    }

    @Override
    public Integer del(Integer pk_Task) {
        return task_listMapper.del(pk_Task);
    }

    @Override
    public Integer dereceiver(Integer fk_Task) {
        return task_listMapper.dereceiver(fk_Task);
    }

    @Override
    public Map cxbh(String userName) {
        return task_listMapper.cxbh(userName);
    }

    @Override
    public String bhcx(String Title) {
        return task_listMapper.bhcx(Title);
    }

    @Override
    public Integer task_ins(Map map) {
        return task_listMapper.task_ins(map);
    }

    @Override
    public Integer task_rece(Map map) {
        return task_listMapper.task_rece(map);
    }

    @Override
    public List<Map> user_list() {
        return task_listMapper.user_list();
    }


    @Override
    public List<Map> feedback(Integer id) {
        return task_listMapper.feedback(id);
    }
}
