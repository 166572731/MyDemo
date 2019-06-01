package org.java.service;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface YonghuService {

    //查询所有的用户
    public List<Map<String,Object>> ShowYonghu();

    //删除某一个用户
    public int delyuangong(@Param("pk_user") String pk_user);

    //新增一个用户
    public void insertyonghu(Map<String,Object> m);
}
