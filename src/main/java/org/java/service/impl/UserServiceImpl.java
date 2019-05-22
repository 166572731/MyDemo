package org.java.service.impl;

import org.java.dao.User_listMapper;
import org.java.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    User_listMapper user_listMapper;
    @Override
    public Map login(String username) {
        return user_listMapper.login(username);
    }
}
