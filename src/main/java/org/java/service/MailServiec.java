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

    //删除（邮件修改状态为回收站）
    public  void delete(int meil);

    //查看回收站
    public List<Map<String,Object>>  ShowDelete(String mailto);

    //彻底删除邮件
    public void cdDelete(int meil);

    //邮件恢复(删除后恢复)
    public  void hfu(int meil);

    //邮件回复
    public void  hfMail(Map<String,Object> map);

}
