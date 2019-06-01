package org.java.service;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface ZhanghaoService {
    //查询所有的账号
    public List<Map<String,Object>> ShowZhanghao();

    //删除某一个账号
    public int delzhanghao(@Param("pk_Account") String pk_Account);

    //添加一个账号
    public void insertzhanghao(Map<String, Object> m);
}
