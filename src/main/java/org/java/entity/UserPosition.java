package org.java.entity;


public class UserPosition {

  private long pkPosition;
  private String positionName;
  private long parentId;
  private long levelId;
  private java.sql.Timestamp createDate;


  public long getPkPosition() {
    return pkPosition;
  }

  public void setPkPosition(long pkPosition) {
    this.pkPosition = pkPosition;
  }


  public String getPositionName() {
    return positionName;
  }

  public void setPositionName(String positionName) {
    this.positionName = positionName;
  }


  public long getParentId() {
    return parentId;
  }

  public void setParentId(long parentId) {
    this.parentId = parentId;
  }


  public long getLevelId() {
    return levelId;
  }

  public void setLevelId(long levelId) {
    this.levelId = levelId;
  }


  public java.sql.Timestamp getCreateDate() {
    return createDate;
  }

  public void setCreateDate(java.sql.Timestamp createDate) {
    this.createDate = createDate;
  }

}
