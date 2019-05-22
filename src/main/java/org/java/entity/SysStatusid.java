package org.java.entity;


public class SysStatusid {

  private long pkStatusId;
  private String statusName;
  private long id;
  private String visual;
  private String tableName;
  private String description;


  public long getPkStatusId() {
    return pkStatusId;
  }

  public void setPkStatusId(long pkStatusId) {
    this.pkStatusId = pkStatusId;
  }


  public String getStatusName() {
    return statusName;
  }

  public void setStatusName(String statusName) {
    this.statusName = statusName;
  }


  public long getId() {
    return id;
  }

  public void setId(long id) {
    this.id = id;
  }


  public String getVisual() {
    return visual;
  }

  public void setVisual(String visual) {
    this.visual = visual;
  }


  public String getTableName() {
    return tableName;
  }

  public void setTableName(String tableName) {
    this.tableName = tableName;
  }


  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

}
