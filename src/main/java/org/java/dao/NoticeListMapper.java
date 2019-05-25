package org.java.dao;

import org.java.entity.NoticeList;

import java.util.List;

public interface NoticeListMapper {
    List<NoticeList> findAll();
    void addNotice(NoticeList noticeList);
    NoticeList findByUser(Integer user);
    void delById(Integer pk_Notice);
}
