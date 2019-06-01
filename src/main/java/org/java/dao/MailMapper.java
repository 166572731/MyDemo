package org.java.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface MailMapper {

  public List<Map<String,Object>> ShowMailByMailTo(@Param("MailTo") String mailto);

  public  List<Map<String,Object>> ShowAddress(@Param("name") String name);

  public void AddMail(Map<String, Object> map);

  public void yidu(int meilId);

  public void delete(int meilId);

  public List<Map<String,Object>> ShowDelete(@Param("MailTo") String mailto);

  public void cdDelete(int meilId);

  public void  hfu(int meilId);

  public void hfMail(Map<String,Object> map);

  public  int wdu(@Param("mailto") String mailto);

  public List<Map<String,Object>> showHfu(@Param("MailTo") String mailto);

}
