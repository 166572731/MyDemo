package org.java.entity;


public class RoleList {

  private long pkRole;
  private long fkRoleName;
  private long fkMenu;
  private long isUse;
  private long isAdmin;
  private long powerList;


  public long getPkRole() {
    return pkRole;
  }

  public void setPkRole(long pkRole) {
    this.pkRole = pkRole;
  }


  public long getFkRoleName() {
    return fkRoleName;
  }

  public void setFkRoleName(long fkRoleName) {
    this.fkRoleName = fkRoleName;
  }


  public long getFkMenu() {
    return fkMenu;
  }

  public void setFkMenu(long fkMenu) {
    this.fkMenu = fkMenu;
  }


  public long getIsUse() {
    return isUse;
  }

  public void setIsUse(long isUse) {
    this.isUse = isUse;
  }


  public long getIsAdmin() {
    return isAdmin;
  }

  public void setIsAdmin(long isAdmin) {
    this.isAdmin = isAdmin;
  }


  public long getPowerList() {
    return powerList;
  }

  public void setPowerList(long powerList) {
    this.powerList = powerList;
  }

}
