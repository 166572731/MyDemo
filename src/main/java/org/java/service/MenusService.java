package org.java.service;

import java.util.List;
import java.util.Map;

public interface MenusService {
    List<Map> menusMain();
    List<Map> menusChild();
    List<Map> selectMenus(List<Integer> idList);
}
