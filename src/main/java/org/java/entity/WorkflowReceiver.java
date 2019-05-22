package org.java.entity;

public class WorkflowReceiver {

  private long pkReceiver;
  private long fkWorkflow;
  private long fkProcess;
  private long fkUser;
  private long fkDepartment;
  private long isCheck;
  private java.sql.Timestamp checkDate;
  private String note;
  private java.sql.Timestamp createDate;


  public long getPkReceiver() {
    return pkReceiver;
  }

  public void setPkReceiver(long pkReceiver) {
    this.pkReceiver = pkReceiver;
  }


  public long getFkWorkflow() {
    return fkWorkflow;
  }

  public void setFkWorkflow(long fkWorkflow) {
    this.fkWorkflow = fkWorkflow;
  }


  public long getFkProcess() {
    return fkProcess;
  }

  public void setFkProcess(long fkProcess) {
    this.fkProcess = fkProcess;
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


  public long getIsCheck() {
    return isCheck;
  }

  public void setIsCheck(long isCheck) {
    this.isCheck = isCheck;
  }


  public java.sql.Timestamp getCheckDate() {
    return checkDate;
  }

  public void setCheckDate(java.sql.Timestamp checkDate) {
    this.checkDate = checkDate;
  }


  public String getNote() {
    return note;
  }

  public void setNote(String note) {
    this.note = note;
  }


  public java.sql.Timestamp getCreateDate() {
    return createDate;
  }

  public void setCreateDate(java.sql.Timestamp createDate) {
    this.createDate = createDate;
  }

}
