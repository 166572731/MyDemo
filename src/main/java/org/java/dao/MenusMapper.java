package org.java.dao;

import java.util.List;
import java.util.Map;

public interface MenusMapper {
    List<Map> menusMain();
    List<Map> menusChild();
}
