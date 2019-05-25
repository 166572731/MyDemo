package org.java.service;

import org.java.entity.NoticeList;

import java.util.List;

public interface NoticeListService {
    List<NoticeList> findAll();
    void addNocice(NoticeList noticeList);
    NoticeList findByUser(Integer user);
    void delById(Integer pk_Notice);
}
