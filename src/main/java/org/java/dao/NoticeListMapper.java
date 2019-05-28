package org.java.dao;

import org.java.entity.NoticeList;

import java.util.List;

public interface NoticeListMapper {
    List<NoticeList> findAll(Integer fk_User);
    void addNotice(NoticeList noticeList);
    NoticeList findByUser(Integer user);
    void delById(Integer pk_Notice);
    List<NoticeList> findMyNotice();
    NoticeList findById(Integer pk_Notice);
}
