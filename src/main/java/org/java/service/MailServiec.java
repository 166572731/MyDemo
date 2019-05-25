package org.java.service;

import java.util.List;
import java.util.Map;

public interface MailServiec {

    //根据收件人查询邮件
    public List<Map<String,Object>> ShowMailByMailTo(String mailto) ;
    //查看通讯录
    public  List<Map<String,Object>> ShowAddress(String name);

    //发邮件
    public void AddMail(Map<String, Object> map);

    //改已读
    public void yidu(int meil);
}
