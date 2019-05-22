package org.java.entity;


public class AttendanceList {

  private long pkAttendance;
  private long fkUser;
  private long fkDepartment;
  private long typeId;
  private long statusId;
  private String description;
  private java.sql.Timestamp shangbantime;
  private java.sql.Timestamp xaibantime;
  private java.sql.Date month;


  public long getPkAttendance() {
    return pkAttendance;
  }

  public void setPkAttendance(long pkAttendance) {
    this.pkAttendance = pkAttendance;
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


  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }


  public java.sql.Timestamp getShangbantime() {
    return shangbantime;
  }

  public void setShangbantime(java.sql.Timestamp shangbantime) {
    this.shangbantime = shangbantime;
  }


  public java.sql.Timestamp getXaibantime() {
    return xaibantime;
  }

  public void setXaibantime(java.sql.Timestamp xaibantime) {
    this.xaibantime = xaibantime;
  }


  public java.sql.Date getMonth() {
    return month;
  }

  public void setMonth(java.sql.Date month) {
    this.month = month;
  }

}
