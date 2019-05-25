package org.java.service;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface WebSocketService {
    List<Map> loadgroup(Integer fk_user);
    List<Map> loadfriend();
}
