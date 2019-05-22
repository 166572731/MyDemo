package org.java.entity;


public class CalendarList {

  private long pkCalendar;
  private long fkUser;
  private long fkDepartment;
  private long typeId;
  private long statusId;
  private String title;
  private String description;
  private String imagePath;
  private String userList;
  private String departmentList;
  private java.sql.Timestamp startDate;
  private java.sql.Timestamp endDate;
  private long isRemind;
  private java.sql.Timestamp createDate;


  public long getPkCalendar() {
    return pkCalendar;
  }

  public void setPkCalendar(long pkCalendar) {
    this.pkCalendar = pkCalendar;
  }


  public long getFkUser() {
    return fkUser;
  }

  public void setFkUser(long fkUser) {
    this.fkUser = fkUser;
  }


  public long getFkDepartment() {
    return fkDepartment;
  }

  public void setFkDepartment(long fkDepartment) {
    this.fkDepartment = fkDepartment;
  }


  public long getTypeId() {
    return typeId;
  }

  public void setTypeId(long typeId) {
    this.typeId = typeId;
  }


  public long getStatusId() {
    return statusId;
  }

  public void setStatusId(long statusId) {
    this.statusId = statusId;
  }


  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }


  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }


  public String getImagePath() {
    return imagePath;
  }

  public void setImagePath(String imagePath) {
    this.imagePath = imagePath;
  }


  public String getUserList() {
    return userList;
  }

  public void setUserList(String userList) {
    this.userList = userList;
  }


  public String getDepartmentList() {
    return departmentList;
  }

  public void setDepartmentList(String departmentList) {
    this.departmentList = departmentList;
  }


  public java.sql.Timestamp getStartDate() {
    return startDate;
  }

  public void setStartDate(java.sql.Timestamp startDate) {
    this.startDate = startDate;
  }


  public java.sql.Timestamp getEndDate() {
    return endDate;
  }

  public void setEndDate(java.sql.Timestamp endDate) {
    this.endDate = endDate;
  }


  public long getIsRemind() {
    return isRemind;
  }

  public void setIsRemind(long isRemind) {
    this.isRemind = isRemind;
  }


  public java.sql.Timestamp getCreateDate() {
    return createDate;
  }

  public void setCreateDate(java.sql.Timestamp createDate) {
    this.createDate = createDate;
  }

}
