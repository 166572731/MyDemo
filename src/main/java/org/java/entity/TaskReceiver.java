package org.java.entity;


public class TaskReceiver {

  private long pkReceiver;
  private long fkTask;
  private long fkUser;
  private long fkDepartment;
  private long isRead;
  private java.sql.Timestamp readDate;
  private long isReceive;
  private java.sql.Timestamp receiveDate;
  private long statusId;


  public long getPkReceiver() {
    return pkReceiver;
  }

  public void setPkReceiver(long pkReceiver) {
    this.pkReceiver = pkReceiver;
  }


  public long getFkTask() {
    return fkTask;
  }

  public void setFkTask(long fkTask) {
    this.fkTask = fkTask;
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


  public long getIsReceive() {
    return isReceive;
  }

  public void setIsReceive(long isReceive) {
    this.isReceive = isReceive;
  }


  public java.sql.Timestamp getReceiveDate() {
    return receiveDate;
  }

  public void setReceiveDate(java.sql.Timestamp receiveDate) {
    this.receiveDate = receiveDate;
  }


  public long getStatusId() {
    return statusId;
  }

  public void setStatusId(long statusId) {
    this.statusId = statusId;
  }

}
