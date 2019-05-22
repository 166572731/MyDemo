package org.java.entity;


public class CarSet {

  private long pkSet;
  private long typeId;
  private long statusId;
  private String title;
  private String description;
  private String imagePath;
  private java.sql.Timestamp buyDate;
  private long isUse;
  private String mileage;
  private java.sql.Timestamp lastMaintenance;


  public long getPkSet() {
    return pkSet;
  }

  public void setPkSet(long pkSet) {
    this.pkSet = pkSet;
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


  public java.sql.Timestamp getBuyDate() {
    return buyDate;
  }

  public void setBuyDate(java.sql.Timestamp buyDate) {
    this.buyDate = buyDate;
  }


  public long getIsUse() {
    return isUse;
  }

  public void setIsUse(long isUse) {
    this.isUse = isUse;
  }


  public String getMileage() {
    return mileage;
  }

  public void setMileage(String mileage) {
    this.mileage = mileage;
  }


  public java.sql.Timestamp getLastMaintenance() {
    return lastMaintenance;
  }

  public void setLastMaintenance(java.sql.Timestamp lastMaintenance) {
    this.lastMaintenance = lastMaintenance;
  }

}
