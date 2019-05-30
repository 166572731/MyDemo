package org.java.dao;

import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

public interface Phone_numberMapper {



    //根据编号查询我的所有联系人
    @Select("SELECT communication.*,classification.class_name FROM communication  JOIN classification ON classification.class_id=communication.comm_class_id where pk_user=#{pk_user}")
    List<Map> allcommunication(@Param("pk_user") Integer pk_user);

    //查询所有的类型
    @Select("select * from classification ")
    List<Map> allclassification();

    //根据编号查询联系人
    @Select("select * from communication where comm_id=#{comm_id}")
    Map commup(@Param("comm_id") Integer comm_id);

    //修改我的联系人
    @Update("update communication set comm_thedegreeof=#{map.comm_thedegreeof},comm_typeid=#{map.comm_typeid},comm_sex=#{map.comm_sex},comm_name=#{map.comm_name},comm_phone=#{map.comm_phone},comm_landline=#{map.comm_landline},comm_fax=#{map.comm_fax},comm_email=#{map.comm_email},comm_address=#{map.comm_address},comm_note=#{map.comm_note},comm_headportrait=#{map.comm_headportrait},comm_class_id=#{map.comm_class_id} where comm_id=#{map.comm_id}")
    Integer phone_up(@Param("map") Map map);


    //添加联系人
    @Insert("insert communication values(null,#{map.pk_user},#{map.comm_thedegreeof},#{map.comm_typeid},#{map.comm_sex},#{map.comm_name},#{map.comm_phone},#{map.comm_landline},#{map.comm_fax},#{map.comm_email},#{map.comm_address},#{map.comm_note},#{map.comm_headportrait},#{map.comm_class_id},null)")
    Integer phone_Anewtask(@Param("map") Map map);

    //获得联系人编号
    @Select("select comm_id from  communication where comm_name=#{comm_name} and comm_phone=#{comm_phone}")
    String query_number(@Param("comm_name") String comm_name,@Param("comm_phone") String comm_phone);

    //根据编号查询联系人
    @Select("select * from communication  where comm_id=#{comm_id}")
    Map phone_toview(@Param("comm_id") Integer comm_id);

    //删除联系人
    @Delete("delete from communication where comm_id=#{comm_id}")
    Integer phone_thecontact(@Param("comm_id") Integer comm_id);

    //我的通讯录查询
    @Select("SELECT communication.*,classification.class_name FROM communication  JOIN classification ON classification.class_id=communication.comm_class_id WHERE communication.comm_typeid=#{comm_typeid}")
    List<Map> myaddressbook(@Param("comm_typeid") Integer comm_typeid);

    //添加新的分类类型
    @Insert("insert classification values(null,#{class_name})")
    Integer ins_type(@Param("class_name") String class_name);

    //根据分类类型查询
    @Select("SELECT communication.*,classification.class_name FROM communication  JOIN classification ON classification.class_id=communication.comm_class_id  WHERE classification.class_name=#{class_name}")
    List<Map>  Classificationofquery(@Param("class_name") String class_name);
}
