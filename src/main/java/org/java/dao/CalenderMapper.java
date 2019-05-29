package org.java.dao;




import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


public interface CalenderMapper {

    public List<Map> load(@Param("departmentId") String departmentId,@Param("userId") Integer userId);
}
