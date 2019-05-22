package org.java.entity;


public class WorkflowList {

  private long pkWorkflow;
  private long fkUser;
  private long fkDepartment;
  private long fkProcess;
  private long typeId;
  private long statusId;
  private String currentStepId;
  private String nextStepId;
  private String number;
  private String title;
  private String description;
  private java.sql.Timestamp startDate;
  private java.sql.Timestamp endDate;
  private java.sql.Timestamp createDate;


  public long getPkWorkflow() {
    return pkWorkflow;
  }

  public void setPkWorkflow(long pkWorkflow) {
    this.pkWorkflow = pkWorkflow;
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


  public long getFkProcess() {
    return fkProcess;
  }

  public void setFkProcess(long fkProcess) {
    this.fkProcess = fkProcess;
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


  public String getCurrentStepId() {
    return currentStepId;
  }

  public void setCurrentStepId(String currentStepId) {
    this.currentStepId = currentStepId;
  }


  public String getNextStepId() {
    return nextStepId;
  }

  public void setNextStepId(String nextStepId) {
    this.nextStepId = nextStepId;
  }


  public String getNumber() {
    return number;
  }

  public void setNumber(String number) {
    this.number = number;
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


  public java.sql.Timestamp getCreateDate() {
    return createDate;
  }

  public void setCreateDate(java.sql.Timestamp createDate) {
    this.createDate = createDate;
  }

}
