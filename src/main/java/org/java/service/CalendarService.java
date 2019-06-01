package org.java.service;

import java.util.List;
import java.util.Map;

public interface CalendarService {

    //查询当前用户的日程
    public List<Map<String,Object>> showCalendar(String name);

    //删除日程
    public void delete(int id);

    //添加日程
    public void addCalendar(Map<String,Object> map);

    //修改日程
    public  void  updateCalendar (Map<String,Object> map);

    //获得日程
    public  Map<String,Object>  getOne(int id);



}
