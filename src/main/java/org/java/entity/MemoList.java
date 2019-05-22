package org.java.entity;


public class MemoList {

  private long pkMemo;
  private long fkUser;
  private long typeId;
  private long statusId;
  private String title;
  private String description;
  private String imagePath;
  private String filePath;
  private long isStar;
  private String tags;
  private java.sql.Timestamp createDate;


  public long getPkMemo() {
    return pkMemo;
  }

  public void setPkMemo(long pkMemo) {
    this.pkMemo = pkMemo;
  }


  public long getFkUser() {
    return fkUser;
  }

  public void setFkUser(long fkUser) {
    this.fkUser = fkUser;
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


  public long getIsStar() {
    return isStar;
  }

  public void setIsStar(long isStar) {
    this.isStar = isStar;
  }


  public String getTags() {
    return tags;
  }

  public void setTags(String tags) {
    this.tags = tags;
  }


  public java.sql.Timestamp getCreateDate() {
    return createDate;
  }

  public void setCreateDate(java.sql.Timestamp createDate) {
    this.createDate = createDate;
  }

}
