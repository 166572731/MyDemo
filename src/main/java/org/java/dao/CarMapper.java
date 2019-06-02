package org.java.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface CarMapper {

    public List<Map> getList();

    public List<Map> getList2();

    public Map selectCarById(@Param("pk_Set") Integer pk_Set);

    public void update(Map m);

    public void del(@Param("pk_Set") Integer pk_Set);

    public void del2(@Param("pk_Car") Integer pk_Car);

    public void add(Map m);

    public void add2(Map m);
}
