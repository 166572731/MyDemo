package org.java.test;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.config.IniSecurityManagerFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.Factory;
import org.aspectj.apache.bcel.util.ClassPath;
import org.junit.Test;

public class ShiroTest {
    @Test
    public void Shiro() {
        Factory<SecurityManager> factory=new IniSecurityManagerFactory("classpath:shiro.ini");
        SecurityManager instance = factory.getInstance();
        SecurityUtils.setSecurityManager(instance);
        Subject subject = SecurityUtils.getSubject();
        UsernamePasswordToken jack = new UsernamePasswordToken("jack", "111");
        try {
            subject.login(jack);
            if (subject.isAuthenticated()){
                System.out.println("用户登录成功aaaaaa");
            }
            subject.logout();
            if (!subject.isAuthenticated()){
                System.out.println("用户已退出xxxxxx");
            }
        } catch (UnknownAccountException e) {
            System.out.println("用户名不存在nnnnn");
        }catch(IncorrectCredentialsException e){
            System.out.println("密码错误eeeeeeeeeee");
        }
    }
}
