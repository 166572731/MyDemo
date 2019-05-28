package org.java.service.impl;

import org.java.dao.NoticeListMapper;
import org.java.entity.NoticeList;
import org.java.service.NoticeListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeListServiceImpl implements NoticeListService {
    @Autowired
    NoticeListMapper mapper;

    @Override
    public void delById(Integer pk_Notice) {
        mapper.delById(pk_Notice);
    }

    @Override
    public List<NoticeList> findMyNotice() {
        return mapper.findMyNotice();
    }

    @Override
    public NoticeList findById(Integer pk_Notice) {
        return mapper.findById(pk_Notice);
    }

    @Override
    public List<NoticeList> findAll(Integer fk_User) {
        System.out.println("impl");
        return mapper.findAll(fk_User);
    }

    @Override
    public NoticeList findByUser(Integer user) {
        return mapper.findByUser(user);
    }

    @Override
    public void addNocice(NoticeList noticeList) {
        mapper.addNotice(noticeList);
    }
}
