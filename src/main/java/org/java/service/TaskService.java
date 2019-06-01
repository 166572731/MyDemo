package org.java.service;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

public interface TaskService {
    public List<Map> showTask(int fk_User);

    public Map up(int task_id);

    Integer se(Map map);

    Integer task_up(Integer StatusID,String task_schedule,Integer id);

    List<Map> feedback( Integer id);

    Integer del( Integer pk_Task);

    Integer delfeedback( Integer pk_Task);

    Integer dereceiver(Integer fk_Task);

    Integer task_ins( Map map);

    //分配与添加我的任务
    Integer task_rece( Map map);

    //查询所有人员
    List<Map> user_list();

    //根据标题查询编号
    String bhcx(String Title);

    //根据用户名查询用户编号和部门编号
    Map cxbh(String userName);

    //查询部门名称
    String cxbm(Integer pk_Department);


    //查询所有我的任务
    List<Map> my_task( Integer fk_User);

    //修改我的任务状态编号
    Integer upmytask(Integer StatusID, Integer fk_Task);



}
