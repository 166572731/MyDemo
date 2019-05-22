package org.java.entity;


public class CarList {

  private long pkCar;
  private long fkUser;
  private long fkDepartment;
  private long fkSet;
  private String numberId;
  private long typeId;
  private long statusId;
  private String title;
  private String description;
  private String imagePath;
  private java.sql.Timestamp createDate;
  private long isCheck;
  private long checkUser;
  private java.sql.Timestamp checkDate;
  private long checkDepartment;
  private java.sql.Timestamp startDate;
  private java.sql.Timestamp endDate;
  private String driver;
  private String passengers;
  private String destination;
  private String mileage;
  private long isBack;
  private java.sql.Timestamp backDate;


  public long getPkCar() {
    return pkCar;
  }

  public void setPkCar(long pkCar) {
    this.pkCar = pkCar;
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


  public long getFkSet() {
    return fkSet;
  }

  public void setFkSet(long fkSet) {
    this.fkSet = fkSet;
  }


  public String getNumberId() {
    return numberId;
  }

  public void setNumberId(String numberId) {
    this.numberId = numberId;
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


  public java.sql.Timestamp getCreateDate() {
    return createDate;
  }

  public void setCreateDate(java.sql.Timestamp createDate) {
    this.createDate = createDate;
  }


  public long getIsCheck() {
    return isCheck;
  }

  public void setIsCheck(long isCheck) {
    this.isCheck = isCheck;
  }


  public long getCheckUser() {
    return checkUser;
  }

  public void setCheckUser(long checkUser) {
    this.checkUser = checkUser;
  }


  public java.sql.Timestamp getCheckDate() {
    return checkDate;
  }

  public void setCheckDate(java.sql.Timestamp checkDate) {
    this.checkDate = checkDate;
  }


  public long getCheckDepartment() {
    return checkDepartment;
  }

  public void setCheckDepartment(long checkDepartment) {
    this.checkDepartment = checkDepartment;
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


  public String getDriver() {
    return driver;
  }

  public void setDriver(String driver) {
    this.driver = driver;
  }


  public String getPassengers() {
    return passengers;
  }

  public void setPassengers(String passengers) {
    this.passengers = passengers;
  }


  public String getDestination() {
    return destination;
  }

  public void setDestination(String destination) {
    this.destination = destination;
  }


  public String getMileage() {
    return mileage;
  }

  public void setMileage(String mileage) {
    this.mileage = mileage;
  }


  public long getIsBack() {
    return isBack;
  }

  public void setIsBack(long isBack) {
    this.isBack = isBack;
  }


  public java.sql.Timestamp getBackDate() {
    return backDate;
  }

  public void setBackDate(java.sql.Timestamp backDate) {
    this.backDate = backDate;
  }

}
