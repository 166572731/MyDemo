package org.java.service.impl;

import org.java.dao.MailMapper;
import org.java.service.MailServiec;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class MailServiceImpl implements MailServiec {

    @Autowired
    private MailMapper mailMapper;

    @Override
    public List<Map<String,Object>> ShowMailByMailTo(String mailto) { //根据收件人查询邮件

        return mailMapper.ShowMailByMailTo(mailto);
    }

    @Override
    public List<Map<String, Object>> ShowAddress(String name) {
        return mailMapper.ShowAddress(name);
    }

    @Override
    public void AddMail(Map<String,Object> map) {
        mailMapper.AddMail(map);
    }

    @Override
    public void yidu(int meil) {
        mailMapper.yidu(meil);
    }

    @Override
    public void delete(int meil) {
        mailMapper.delete(meil);
    }

    @Override
    public List<Map<String, Object>> ShowDelete(String mailto) {
        return mailMapper.ShowDelete(mailto);
    }

    @Override
    public void cdDelete(int meil) {
        mailMapper.cdDelete(meil);
    }

    @Override
    public void hfu(int meil) {
        mailMapper.hfu(meil);
    }

    @Override
    public void hfMail(Map<String, Object> map) {
        mailMapper.hfMail(map);
    }
}
