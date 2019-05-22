package org.java.entity;


public class NoticeList {

  private long pkNotice;
  private long fkUser;
  private long fkDepartment;
  private long typeId;
  private long statusId;
  private String title;
  private String description;
  private String imagePath;
  private String filePath;
  private String userList;
  private String departmentList;
  private String roleList;
  private String url;
  private java.sql.Timestamp startDate;
  private java.sql.Timestamp endDate;
  private long isTop;
  private java.sql.Timestamp createDate;
  private long isRead;
  private java.sql.Timestamp readDate;


  public long getPkNotice() {
    return pkNotice;
  }

  public void setPkNotice(long pkNotice) {
    this.pkNotice = pkNotice;
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


  public String getFilePath() {
    return filePath;
  }

  public void setFilePath(String filePath) {
    this.filePath = filePath;
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


  public String getRoleList() {
    return roleList;
  }

  public void setRoleList(String roleList) {
    this.roleList = roleList;
  }


  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
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


  public long getIsTop() {
    return isTop;
  }

  public void setIsTop(long isTop) {
    this.isTop = isTop;
  }


  public java.sql.Timestamp getCreateDate() {
    return createDate;
  }

  public void setCreateDate(java.sql.Timestamp createDate) {
    this.createDate = createDate;
  }


  public long getIsRead() {
    return isRead;
  }

  public void setIsRead(long isRead) {
    this.isRead = isRead;
  }


  public java.sql.Timestamp getReadDate() {
    return readDate;
  }

  public void setReadDate(java.sql.Timestamp readDate) {
    this.readDate = readDate;
  }

}
