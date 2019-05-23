package org.java.service.impl;

import org.java.dao.NoticeListMapper;
import org.java.entity.NoticeList;
import org.java.service.NoticeListService;
import org.springframework.beans.factory.annotation.Autowired;

public class NoticeListServiceImpl implements NoticeListService {
    @Autowired
    NoticeListMapper mapper;
    @Override
    public NoticeList findByUser(Integer user) {
        return mapper.findByUser(user);
    }

    @Autowired
    @Override
    public void addNocice(NoticeList noticeList) {
        mapper.addNotice(noticeList);
    }
}
