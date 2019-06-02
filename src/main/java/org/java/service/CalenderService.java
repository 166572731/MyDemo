package org.java.service;

import java.util.List;
import java.util.Map;

public interface CalenderService {

    List<Map> load(Integer departmentId,String userId);
}
