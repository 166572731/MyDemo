package org.java.service;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface RolemanagerService {
    Map selectRole(Integer departmentID, Integer roleID);
    List<Map> selectMenus(List<Integer> idList);
    Map loadRole();
    Integer addDepartmentRole(String roleNname,Integer departmentID);
    /**
     * 修改角色权限
     * */
    Integer updateDepartmentRole(String roleName,Integer pk_Name);

    /**
     * 删除角色权限
     * */
    Integer deleteDepartmentRole(Integer pk_Name);

    List<Map> loadRoleName(Integer pk_name,Integer pk_department);

    /**
     *修改角色权限
     * @return
     */
    Map selectRolejurisdiction(Integer pk_name,Integer pk_department,Integer pk_menu);
    Integer addRolejurisdiction(Integer pk_name, Integer pk_department,Integer pk_menu,String roleNameString);
    Integer updateRolejurisdiction(Integer pk_Role,String newRolenameString);
    Integer deleteRolejurisdiction(Integer pk_Role);
}
