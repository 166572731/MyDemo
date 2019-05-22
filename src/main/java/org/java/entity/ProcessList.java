package org.java.entity;

public class ProcessList {

  private long pkProcess;
  private String processName;
  private String roleList;
  private String mattersName;
  private long visible;
  private java.sql.Timestamp createDate;


  public long getPkProcess() {
    return pkProcess;
  }

  public void setPkProcess(long pkProcess) {
    this.pkProcess = pkProcess;
  }


  public String getProcessName() {
    return processName;
  }

  public void setProcessName(String processName) {
    this.processName = processName;
  }


  public String getRoleList() {
    return roleList;
  }

  public void setRoleList(String roleList) {
    this.roleList = roleList;
  }


  public String getMattersName() {
    return mattersName;
  }

  public void setMattersName(String mattersName) {
    this.mattersName = mattersName;
  }


  public long getVisible() {
    return visible;
  }

  public void setVisible(long visible) {
    this.visible = visible;
  }


  public java.sql.Timestamp getCreateDate() {
    return createDate;
  }

  public void setCreateDate(java.sql.Timestamp createDate) {
    this.createDate = createDate;
  }

}
