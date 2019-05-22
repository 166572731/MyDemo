package org.java.entity;


public class FinanceAccount {

  private long pkAccount;
  private long fkUser;
  private long fkDepartment;
  private long typeId;
  private long statusId;
  private String accountName;
  private String owner;
  private String title;
  private String description;
  private String imagePath;
  private java.sql.Timestamp createDate;


  public long getPkAccount() {
    return pkAccount;
  }

  public void setPkAccount(long pkAccount) {
    this.pkAccount = pkAccount;
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


  public String getAccountName() {
    return accountName;
  }

  public void setAccountName(String accountName) {
    this.accountName = accountName;
  }


  public String getOwner() {
    return owner;
  }

  public void setOwner(String owner) {
    this.owner = owner;
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


  public java.sql.Timestamp getCreateDate() {
    return createDate;
  }

  public void setCreateDate(java.sql.Timestamp createDate) {
    this.createDate = createDate;
  }

}
