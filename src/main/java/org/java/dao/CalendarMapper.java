package org.java.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface CalendarMapper {

   public List<Map<String,Object>> showCalendar(@Param("MailTo") String mailto);

   public void delete(int id);

   public void addCalendar(Map<String,Object> map);

   public void updateCalendar(Map<String,Object> map);

   public Map<String,Object> getOne(@Param("pk_Calendar") int pk_Calendar);


}
