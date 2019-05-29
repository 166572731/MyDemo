package org.java.realm;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.java.service.MenusService;
import org.java.service.RolemanagerService;
import org.java.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LoginRealm extends AuthorizingRealm {
    @Autowired
    UserService userService;
    @Autowired
    RolemanagerService rolemanagerService;
    @Autowired
    MenusService menusService;
    List<Map> role=null;
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        System.out.println("#######################################正在进行授权,从数据库中读取用户访问权限 ");
       /* for (Map map:role) {

        }
        String role_name= (String) role.get("role_name");
        Map map=new HashMap();
        for (String i: role_name.split(",")) {
            list.add(i);
        }
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        //添加访问权限
        info.addStringPermissions(list);*/
        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        System.out.println("==========正在进行认证操作=============");
        //取得用户凭证（用户名 ）
        String username = (String) token.getPrincipal();
        //根据用户名到数据库中，判断，用户名是否存在
        Map userList = userService.login(username);
        if (userList == null) {
            return null;
        }
        //加载用户所有可查看页面
        role=rolemanagerService.selectRole((Integer) userList.get("fk_Department"), (Integer) userList.get("RoleValue"));
        System.out.println(role);
        if (role.size()>0){
            List<Integer> idList=new ArrayList<>();
            for (Map map: role) {
                Integer pk_menu= (Integer) map.get("fk_Menu");
                idList.add(pk_menu);
            }
            List<Map> menus=menusService.selectMenus(idList);
            List<Map> mainMenus=new ArrayList<>();
            List<Map> childMenus=new ArrayList<>();
            for (Map menu: menus) {
                if (menu.get("Name_EN").equals("main")){
                    mainMenus.add(menu);
                }else {
                    childMenus.add(menu);
                }
            }
            userList.put("childMenus", childMenus);
            userList.put("mainMenus", mainMenus);
        }
        //用户存在，得到该用户的正确密码
        String pwd = (String) userList.get("password");
        //盐
        String salt = "chenlei";
        Md5Hash md5 = new Md5Hash(pwd, salt, 3);
        //第一个参数就是我们需要在保存在shiro中的session中的对象，
        // 注入第二参数是从数据库中查询出来的正确的密码，shiro会自动判断，如果此密码和刚才传递的密码不知会上抛异常
        //第三个参数是盐，
        //第四个参数是自定义的realm的名字，改方法可以重写自己随意更改
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(userList, pwd, ByteSource.Util.bytes(salt), "myRealm");
        //如果密码不正确，就会进入loginController
        return info;
    }
}
