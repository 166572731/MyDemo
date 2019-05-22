package org.java.dao;

import org.apache.ibatis.annotations.Param;
import org.java.entity.UserList;

import java.util.List;
import java.util.Map;

public interface User_listMapper {
    Map login(@Param("username") String username);
}
