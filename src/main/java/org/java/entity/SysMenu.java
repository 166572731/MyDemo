package org.java.entity;


public class SysMenu {

  private long pkMenu;
  private String parentId;
  private String nameChs;
  private String nameEn;
  private String url;
  private String icon;
  private long sortId;
  private long levelId;
  private long typeId;
  private long visible;
  private String tagChs;
  private String tagEn;


  public long getPkMenu() {
    return pkMenu;
  }

  public void setPkMenu(long pkMenu) {
    this.pkMenu = pkMenu;
  }


  public String getParentId() {
    return parentId;
  }

  public void setParentId(String parentId) {
    this.parentId = parentId;
  }


  public String getNameChs() {
    return nameChs;
  }

  public void setNameChs(String nameChs) {
    this.nameChs = nameChs;
  }


  public String getNameEn() {
    return nameEn;
  }

  public void setNameEn(String nameEn) {
    this.nameEn = nameEn;
  }


  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }


  public String getIcon() {
    return icon;
  }

  public void setIcon(String icon) {
    this.icon = icon;
  }


  public long getSortId() {
    return sortId;
  }

  public void setSortId(long sortId) {
    this.sortId = sortId;
  }


  public long getLevelId() {
    return levelId;
  }

  public void setLevelId(long levelId) {
    this.levelId = levelId;
  }


  public long getTypeId() {
    return typeId;
  }

  public void setTypeId(long typeId) {
    this.typeId = typeId;
  }


  public long getVisible() {
    return visible;
  }

  public void setVisible(long visible) {
    this.visible = visible;
  }


  public String getTagChs() {
    return tagChs;
  }

  public void setTagChs(String tagChs) {
    this.tagChs = tagChs;
  }


  public String getTagEn() {
    return tagEn;
  }

  public void setTagEn(String tagEn) {
    this.tagEn = tagEn;
  }

}
