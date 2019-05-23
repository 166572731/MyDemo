package org.java.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface MenusMapper {
    List<Map> menusMain();
    List<Map> menusChild();
    /**
     * 加载菜单
     * */
    List<Map> selectMenus(@Param("idList") List<Integer> idList);
}
