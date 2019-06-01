package org.java.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface ZhanghaoMapper {
    //查询公司所有的账户
    public List<Map<String,Object>> ShowZhanghao();

    //删除某一个账号
    public int delzhanghao(@Param("pk_Account") String pk_Account);

    //添加一个账号
    public void insertzhanghao(Map<String, Object> m);
}
