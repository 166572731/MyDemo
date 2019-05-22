package org.java.entity;


public class FinanceList {

  private long pkFinance;
  private long fkUser;
  private long fkDepartment;
  private long fkAccount;
  private long typeId;
  private long statusId;
  private String title;
  private String description;
  private String handleName;
  private java.sql.Timestamp handleDate;
  private double amount;


  public long getPkFinance() {
    return pkFinance;
  }

  public void setPkFinance(long pkFinance) {
    this.pkFinance = pkFinance;
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


  public long getFkAccount() {
    return fkAccount;
  }

  public void setFkAccount(long fkAccount) {
    this.fkAccount = fkAccount;
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


  public String getHandleName() {
    return handleName;
  }

  public void setHandleName(String handleName) {
    this.handleName = handleName;
  }


  public java.sql.Timestamp getHandleDate() {
    return handleDate;
  }

  public void setHandleDate(java.sql.Timestamp handleDate) {
    this.handleDate = handleDate;
  }


  public double getAmount() {
    return amount;
  }

  public void setAmount(double amount) {
    this.amount = amount;
  }

}
