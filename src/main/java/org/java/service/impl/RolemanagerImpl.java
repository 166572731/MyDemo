package org.java.service.impl;

import org.java.dao.Role_managerMapper;
import org.java.service.RolemanagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service
public class RolemanagerImpl implements RolemanagerService {
    @Autowired
    Role_managerMapper role_manager;
    @Override
    public List<Map> selectRole(Integer departmentID, Integer roleID) {
        return role_manager.loadRoleName(roleID, departmentID);
    }

    @Override
    public Map loadRole() {
        Map map=new HashMap();
        map.put("department", role_manager.loadDepartment());
        map.put("role", role_manager.loadRole());
        return map;
    }

    @Override
    public Integer addDepartmentRole(String roleName, Integer departmentID) {
        return role_manager.addDepartmentRole(roleName, departmentID);
    }

    @Override
    public Integer updateDepartmentRole(String roleName, Integer pk_Name) {
        return role_manager.updateDepartmentRole(roleName, pk_Name);
    }

    @Override
    public Integer deleteDepartmentRole(Integer pk_Name) {
        return role_manager.deleteDepartmentRole(pk_Name);
    }

    @Override
    public List<Map> loadRoleName(Integer pk_name, Integer pk_department) {
        return role_manager.loadRoleName(pk_name, pk_department);
    }

    @Override
    public Map selectRolejurisdiction(Integer pk_name, Integer pk_department,Integer pk_menu) {
        return role_manager.selectRolejurisdiction(pk_name, pk_department,pk_menu);
    }

    @Override
    public Integer addRolejurisdiction(Integer pk_name, Integer pk_department,Integer pk_menu, String rolrNameString) {
        return role_manager.addRolejurisdiction(pk_name,pk_department,pk_menu, rolrNameString);
    }

    @Override
    public Integer updateRolejurisdiction(Integer pk_Role, String newRolenameString) {
        return role_manager.updateRolejurisdiction(pk_Role, newRolenameString);
    }

    @Override
    public Integer deleteRolejurisdiction(Integer pk_Role) {
        return role_manager.deleteRolejurisdiction(pk_Role);
    }
}
