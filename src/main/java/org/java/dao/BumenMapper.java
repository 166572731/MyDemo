package org.java.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface BumenMapper {
    //查询所有的部门
    public List<Map<String,Object>> ShowBumen();

    //查询某一个部门
    public Map selectone(@Param("pk_Department") String  pk_Department);

    //修改某一个部门
    public void updatebumen(Map<String,Object> m);

    //删除某一个部门
    public int delbumen(@Param("pk_Department") String pk_Department);

    //新增一个部门
    public void  insertbumen( Map<String,Object> m);
}
