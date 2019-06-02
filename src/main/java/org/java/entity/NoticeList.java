package org.java.entity;


import java.sql.Timestamp;

public class NoticeList {

  private long pk_Notice;
  private long fk_User;
  private long fk_Department;
  private long typeId;
  private long statusId;
  private String title;
  private String description;
  private String imagePath;
  private String filePath;
  private String userList;
  private String departmentList;
  private String roleList;
  private String url;
  private Timestamp startDate;
  private Timestamp endDate;
  private long isTop;
  private Timestamp createDate;
  private long isRead;
  private Timestamp readDate;
  private String userName;
  public String getUserName() {
    return userName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }
  @Override
  public String toString() {
    return "NoticeList{" +
            "pk_Notice=" + pk_Notice +
            ", fk_User=" + fk_User +
            ", fk_Department=" + fk_Department +
            ", typeId=" + typeId +
            ", statusId=" + statusId +
            ", title='" + title + '\'' +
            ", description='" + description + '\'' +
            ", imagePath='" + imagePath + '\'' +
            ", filePath='" + filePath + '\'' +
            ", userList='" + userList + '\'' +
            ", departmentList='" + departmentList + '\'' +
            ", roleList='" + roleList + '\'' +
            ", url='" + url + '\'' +
            ", startDate=" + startDate +
            ", endDate=" + endDate +
            ", isTop=" + isTop +
            ", createDate=" + createDate +
            ", isRead=" + isRead +
            ", readDate=" + readDate +
            '}';
  }

  public long getPk_Notice() {
    return pk_Notice;
  }

  public void setPk_Notice(long pk_Notice) {
    this.pk_Notice = pk_Notice;
  }

  public long getFk_User() {
    return fk_User;
  }

  public void setFk_User(long fk_User) {
    this.fk_User = fk_User;
  }

  public long getFk_Department() {
    return fk_Department;
  }

  public void setFk_Department(long fk_Department) {
    this.fk_Department = fk_Department;
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

  public String getUserList() {
    return userList;
  }

  public void setUserList(String userList) {
    this.userList = userList;
  }

  public String getDepartmentList() {
    return departmentList;
  }

  public void setDepartmentList(String departmentList) {
    this.departmentList = departmentList;
  }

  public String getRoleList() {
    return roleList;
  }

  public void setRoleList(String roleList) {
    this.roleList = roleList;
  }

  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public Timestamp getStartDate() {
    return startDate;
  }

  public void setStartDate(Timestamp startDate) {
    this.startDate = startDate;
  }

  public Timestamp getEndDate() {
    return endDate;
  }

  public void setEndDate(Timestamp endDate) {
    this.endDate = endDate;
  }

  public long getIsTop() {
    return isTop;
  }

  public void setIsTop(long isTop) {
    this.isTop = isTop;
  }

  public Timestamp getCreateDate() {
    return createDate;
  }

  public void setCreateDate(Timestamp createDate) {
    this.createDate = createDate;
  }

  public long getIsRead() {
    return isRead;
  }

  public void setIsRead(long isRead) {
    this.isRead = isRead;
  }

  public Timestamp getReadDate() {
    return readDate;
  }

  public void setReadDate(Timestamp readDate) {
    this.readDate = readDate;
  }
}
