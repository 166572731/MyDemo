package org.java.dao;

import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

public interface Task_listMapper {


    @Select("select * from task_list where fk_User=#{fk_User}  ORDER BY IsTop asc")
    public List<Map> showTask(@Param("fk_User") int fk_User);

    @Select("select * from task_list where pk_task=#{task_id}")
    public Map up(@Param("task_id") int task_id);

    //记录进度与反馈
    @Insert("insert  task_feedback value (#{map.fk_task},#{map.feedback},#{map.fe_type})")
    Integer se(@Param("map") Map map);

    //修改任务状态
    @Update(" UPDATE task_list SET StatusID=#{StatusID},task_schedule=#{task_schedule} WHERE pk_Task =#{task_id}")
    public Integer task_up(@Param("StatusID") Integer StatusID,@Param("task_schedule") String task_schedule,@Param("task_id") Integer task_id);


    //根据编号查询反馈
    @Select("select fe_list,fe_type from task_feedback where id=#{id}")
    List<Map> feedback(@Param("id") Integer id);

    @Delete("delete from task_list where pk_Task=#{pk_Task}")
    Integer del(@Param("pk_Task") Integer pk_Task);

    @Delete("DELETE FROM task_feedback WHERE id=#{id}")
    int delfeedback(@Param("id") Integer id);

    @Delete("delete from task_receiver where fk_Task=#{fk_Task}")
    int dereceiver(@Param("fk_Task") Integer fk_Task);


    //添加新任务
    @Insert("INSERT task_list VALUES(NULL,#{map.fk_User},#{map.fk_Department},#{map.TypeID},#{map.StatusID},#{map.Title},#{map.Description},#{map.ImagePath},#{map.FilePath},#{map.UserList},#{map.DepartmentList},#{map.RoleList},#{map.Url},#{map.StartDate},#{map.EndDate},#{map.IsComplete},#{map.CompleteDate},#{map.IsCancel},#{map.CancelDate},#{map.IsTop},#{map.IsDistribution},#{map.Feedback},#{map.task_schedule})")
    Integer task_ins(@Param("map") Map map);

    //分配与添加我的任务
    @Insert("insert task_receiver values(null,#{map.fk_Task},#{map.fk_User},#{map.fk_Department},#{map.IsRead},null,#{map.IsReceive},null,#{map.StatusID})")
    Integer task_rece(@Param("map") Map map);

    //根据标题查询任务编号
    @Select("SELECT pk_Task FROM task_list WHERE Title=#{Title} ")
    String bhcx(@Param("Title") String Title);

    //查询所有用户
    @Select("select * from  user_list")
    List<Map> user_list();


    //根据用户名查询用户编号部门编号
    @Select("select pk_user,fk_Department from user_list where userName=#{userName}")
    Map cxbh(@Param("userName") String userName);

    //根据部门编号查询部门名称
    @Select("select DepartmentName from  user_department where pk_Department=#{pk_Department}")
    String cxbm(@Param("pk_Department") Integer pk_Department);


    //查询所有我的任务
    @Select("SELECT task_receiver.*,task_list.Title,task_list.TypeID,task_list.StartDate,task_list.FilePath  FROM task_list  JOIN task_receiver ON task_receiver.fk_Task=task_list.pk_Task WHERE task_receiver.fk_User=#{fk_User} ORDER BY  task_list.IsTop asc")
    List<Map> my_task(@Param("fk_User") Integer fk_User);

    //修改我的任务状态编号
    @Update("update task_receiver set StatusID=#{StatusID} where fk_Task=#{fk_Task}")
    Integer upmytask(@Param("StatusID") Integer StatusID,@Param("fk_Task") Integer fk_Task);

}
