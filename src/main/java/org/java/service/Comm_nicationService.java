package org.java.service;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

public interface Comm_nicationService {

    //查询我的所有通讯
    List<Map> allcommunication(Integer pk_user);

    //查询所有得类型
    List<Map> allclassification();

    //查询主键编号的联系人
    Map commup( Integer comm_id);

    //修改我的联系人
    Integer phone_up(Map map);


    //新增任务与分享
    //添加联系人
    Integer phone_Anewtask( Map map);

    //查询联系人编号
    String query_number(String comm_name, String comm_phone);

    //根据编号插叙联系人
    Map phone_toview(Integer comm_id);

    //删除联系人
    Integer phone_thecontact(Integer comm_id);

    //条件查询通讯录
    List<Map> myaddressbook(Integer comm_typeid);


    //添加分类类型
    Integer ins_type(String class_name);

    List<Map>  Classificationofquery(String class_name);
}

