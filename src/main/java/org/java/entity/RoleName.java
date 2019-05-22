package org.java.entity;


public class RoleName {

  private long pkName;
  private String roleNameChs;
  private String roleNameEn;
  private long powerValue;


  public long getPkName() {
    return pkName;
  }

  public void setPkName(long pkName) {
    this.pkName = pkName;
  }


  public String getRoleNameChs() {
    return roleNameChs;
  }

  public void setRoleNameChs(String roleNameChs) {
    this.roleNameChs = roleNameChs;
  }


  public String getRoleNameEn() {
    return roleNameEn;
  }

  public void setRoleNameEn(String roleNameEn) {
    this.roleNameEn = roleNameEn;
  }


  public long getPowerValue() {
    return powerValue;
  }

  public void setPowerValue(long powerValue) {
    this.powerValue = powerValue;
  }

}
