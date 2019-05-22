package org.java.entity;


public class TaskList {

  private long pkTask;
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
  private long isComplete;
  private java.sql.Timestamp completeDate;
  private long isCancel;
  private java.sql.Timestamp cancelDate;
  private long isTop;
  private long isDistribution;
  private String feedback;


  public long getPkTask() {
    return pkTask;
  }

  public void setPkTask(long pkTask) {
    this.pkTask = pkTask;
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


  public long getIsComplete() {
    return isComplete;
  }

  public void setIsComplete(long isComplete) {
    this.isComplete = isComplete;
  }


  public java.sql.Timestamp getCompleteDate() {
    return completeDate;
  }

  public void setCompleteDate(java.sql.Timestamp completeDate) {
    this.completeDate = completeDate;
  }


  public long getIsCancel() {
    return isCancel;
  }

  public void setIsCancel(long isCancel) {
    this.isCancel = isCancel;
  }


  public java.sql.Timestamp getCancelDate() {
    return cancelDate;
  }

  public void setCancelDate(java.sql.Timestamp cancelDate) {
    this.cancelDate = cancelDate;
  }


  public long getIsTop() {
    return isTop;
  }

  public void setIsTop(long isTop) {
    this.isTop = isTop;
  }


  public long getIsDistribution() {
    return isDistribution;
  }

  public void setIsDistribution(long isDistribution) {
    this.isDistribution = isDistribution;
  }


  public String getFeedback() {
    return feedback;
  }

  public void setFeedback(String feedback) {
    this.feedback = feedback;
  }

}
