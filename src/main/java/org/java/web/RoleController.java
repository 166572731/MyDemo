package org.java.web;

import com.alibaba.fastjson.JSONArray;
import org.java.service.RolemanagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class RoleController {
    @Autowired
    RolemanagerService rolemanagerService;

    @RequestMapping("loadRoleList")
    public @ResponseBody
    Map loadRole() {
        Map roleList = rolemanagerService.loadRole();
        System.out.println(roleList);
        return roleList;
    }

    @RequestMapping("addDepartRole")
    public @ResponseBody
    Integer addDepartmentRole(String roleName, @RequestParam("changeID") Integer departmentID) {
        int n = rolemanagerService.addDepartmentRole(roleName, departmentID);
        return n;
    }

    @RequestMapping("updateDepartRole")
    public @ResponseBody
    Integer updateDepartRole(String roleName, @RequestParam("changeID") Integer pk_Name) {
        int n = rolemanagerService.updateDepartmentRole(roleName, pk_Name);
        return n;
    }

    @RequestMapping("deleteDepartRole")
    public @ResponseBody
    Integer deleteDepartRole(Integer pkName) {
        Integer count=rolemanagerService.roleValueisUse(pkName);
        System.out.println(count);
        int n=0;
        if (count<=0){
            n = rolemanagerService.deleteDepartmentRole(pkName);
        }
        return n;
    }

    @RequestMapping("loadRoleName")
    public @ResponseBody
    Map loadRoleName(Integer pkname, Integer pkdepartment) {
        List<Map> list = rolemanagerService.loadRoleName(pkname, pkdepartment);
        Map map = new HashMap();
        map.put("roles", list);
        System.out.println(map);
        return map;
    }

    @RequestMapping("saverole")
    public @ResponseBody Integer saverole(Integer pk_name, Integer pk_department,Integer pk_menu,String role_name,Integer code) {
        int n=0;
        Map role = rolemanagerService.selectRolejurisdiction(pk_name, pk_department,pk_menu);
        if (code==1){
            if (role!=null){
                String role_nameString= (String) role.get("role_name");
                String newroleNameString=role_nameString+role_name+",";
                n=rolemanagerService.updateRolejurisdiction((Integer) role.get("pk_Role"),newroleNameString);
            }else{
                n=rolemanagerService.addRolejurisdiction(pk_name,pk_department,pk_menu,role_name+",");
            }
        }else {
            String role_nameString= (String) role.get("role_name");
            String newRoleString= role_nameString.replace(role_name+",", "");
            System.out.println(newRoleString);
            if (newRoleString.equals("")||newRoleString==null){
                n=rolemanagerService.deleteRolejurisdiction((Integer) role.get("pk_Role"));
            }else{
                n=rolemanagerService.updateRolejurisdiction((Integer) role.get("pk_Role"),newRoleString);
            }
        }
        return n;
    }
}
