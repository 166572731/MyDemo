package org.java.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface Role_managerMapper {
    /**
     * 加载权限角色列表
     * */
    List<Map> loadRole();
    List<Map> loadDepartment();

    /**
     * 新增权限角色
     * */
    Integer addDepartmentRole(@Param("roleName") String roleName,@Param("departmentID") Integer departmentID);

    /**
     * 修改权限角色
     * */
    Integer updateDepartmentRole(@Param("roleName") String roleName,@Param("pk_Name") Integer pk_Name);

    /**
     * 删除权限角色
     * */
    Integer deleteDepartmentRole(@Param("pk_Name") Integer pk_Name);
    /**
     * 加载所有角色权限
     */
    List<Map> loadRoleName(@Param("pk_name")Integer pk_name,@Param("pk_department")Integer pk_department);
    /**
     * 修改角色权限
     */
    Map selectRolejurisdiction(@Param("pk_name")Integer pk_name,  @Param("pk_department")Integer pk_department, @Param("pk_menu")Integer pk_menu);

    Integer addRolejurisdiction(@Param("pk_name")Integer pk_name,@Param("pk_department") Integer pk_department,@Param("pk_menu")Integer pk_menu,@Param("roleNameString") String roleNameString);

    Integer updateRolejurisdiction(@Param("pk_Role") Integer pk_Role,@Param("roleNameString") String newRolenameString);

    Integer deleteRolejurisdiction(@Param("pk_Role") Integer pk_Role);
}
