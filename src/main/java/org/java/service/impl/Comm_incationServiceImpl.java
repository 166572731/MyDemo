package org.java.service.impl;

import org.java.dao.Phone_numberMapper;
import org.java.service.Comm_nicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service("commMapper")
public class Comm_incationServiceImpl implements Comm_nicationService {

    @Autowired
    private Phone_numberMapper commMapper;

    @Override
    public Map commup(Integer comm_id) {
        return commMapper.commup(comm_id);
    }

    @Override  //查询我的所有通讯录
    public List<Map> allcommunication(Integer pk_user) {
        return commMapper.allcommunication(pk_user);
    }

    @Override
    public List<Map> allclassification() {
        return commMapper.allclassification();
    }

    @Override
    public Integer phone_up(Map map) {
        return commMapper.phone_up(map);
    }

    @Override
    public Integer phone_thecontact(Integer comm_id) {
        return commMapper.phone_thecontact(comm_id);
    }

    @Override
    public Map phone_toview(Integer comm_id) {
        return commMapper.phone_toview(comm_id);
    }

    @Override
    public List<Map> Classificationofquery(String class_name) {
        return commMapper.Classificationofquery(class_name);
    }

    @Override
    public String query_number(String comm_name, String comm_phone) {
        return commMapper.query_number(comm_name,comm_phone);
    }

    @Override
    public Integer phone_Anewtask(Map map) {
        return commMapper.phone_Anewtask(map);
    }

    @Override
    public Integer ins_type(String class_name) {
        return commMapper.ins_type(class_name);
    }

    @Override
    public List<Map> myaddressbook(Integer comm_typeid) {
        return commMapper.myaddressbook(comm_typeid);
    }
}
