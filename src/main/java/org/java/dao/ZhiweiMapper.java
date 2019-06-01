package org.java.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface ZhiweiMapper {
    //查询所有的职位
    public List<Map<String,Object>> ShowZhiwei();

    //查询某一个职位
    public Map<String,Object> selectzhiwei(@Param("pk_Position") String pk_Position);

    //删除某一个职位
    public int delzhiwei(@Param("pk_Position") String pk_Position);

    //修改某一个职位
    public void updatezhiwei(Map<String,Object> m);

    //添加一个职位
    public void insertzhiwei(Map<String,Object> m);

}
