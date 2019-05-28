package org.java.service;

import org.java.entity.NoticeList;

import java.util.List;

public interface NoticeListService {
    List<NoticeList> findAll(Integer fk_User);
    void addNocice(NoticeList noticeList);
    NoticeList findByUser(Integer user);
    void delById(Integer pk_Notice);
    List<NoticeList> findMyNotice();
    NoticeList findById (Integer pk_Notice);
}
