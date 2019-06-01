package org.java.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface YonghuMapper {

    //查询所有的用户
    public List<Map<String,Object>> ShowYonghu();

    //删除某一个用户
    public int delyuangong(@Param("pk_user") String pk_user);

    //新增一个用户
    public void insertyonghu(Map<String,Object> m);
}
