package org.java.service;

import java.util.List;
import java.util.Map;

public interface CalenderService {

    List<Map> load(String departmentId,Integer userId);
}
