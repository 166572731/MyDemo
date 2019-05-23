package org.java.service.impl;

import org.java.dao.NoticeListMapper;
import org.java.entity.NoticeList;
import org.java.service.NoticeListService;
import org.springframework.beans.factory.annotation.Autowired;

public class NoticeListServiceImpl implements NoticeListService {
    @Autowired
    private NoticeListMapper mapper;
    @Override
    public void addNocice(NoticeList noticeList) {
        mapper.addNotice(noticeList);
    }
}
