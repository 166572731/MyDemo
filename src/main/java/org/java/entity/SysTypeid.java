package org.java.entity;


public class SysTypeid {

  private long pkTypeId;
  private String typeName;
  private long id;
  private String visual;
  private String tableName;
  private String description;


  public long getPkTypeId() {
    return pkTypeId;
  }

  public void setPkTypeId(long pkTypeId) {
    this.pkTypeId = pkTypeId;
  }


  public String getTypeName() {
    return typeName;
  }

  public void setTypeName(String typeName) {
    this.typeName = typeName;
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
