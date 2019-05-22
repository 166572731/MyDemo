package org.java.entity;


public class MailList {

  private long pkMail;
  private long fkAccount;
  private long fkUser;
  private long fkDepartment;
  private long typeId;
  private long statusId;
  private long mailType;
  private String mailFrom;
  private String mailTo;
  private String subject;
  private String body;
  private long isSent;
  private java.sql.Timestamp sentDate;
  private long isAttachment;
  private String attachmentList;
  private long isRead;
  private java.sql.Timestamp readDate;
  private long priority;
  private long isReply;
  private java.sql.Timestamp replyDate;


  public long getPkMail() {
    return pkMail;
  }

  public void setPkMail(long pkMail) {
    this.pkMail = pkMail;
  }


  public long getFkAccount() {
    return fkAccount;
  }

  public void setFkAccount(long fkAccount) {
    this.fkAccount = fkAccount;
  }


  public long getFkUser() {
    return fkUser;
  }

  public void setFkUser(long fkUser) {
    this.fkUser = fkUser;
  }


  public long getFkDepartment() {
    return fkDepartment;
  }

  public void setFkDepartment(long fkDepartment) {
    this.fkDepartment = fkDepartment;
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


  public long getMailType() {
    return mailType;
  }

  public void setMailType(long mailType) {
    this.mailType = mailType;
  }


  public String getMailFrom() {
    return mailFrom;
  }

  public void setMailFrom(String mailFrom) {
    this.mailFrom = mailFrom;
  }


  public String getMailTo() {
    return mailTo;
  }

  public void setMailTo(String mailTo) {
    this.mailTo = mailTo;
  }


  public String getSubject() {
    return subject;
  }

  public void setSubject(String subject) {
    this.subject = subject;
  }


  public String getBody() {
    return body;
  }

  public void setBody(String body) {
    this.body = body;
  }


  public long getIsSent() {
    return isSent;
  }

  public void setIsSent(long isSent) {
    this.isSent = isSent;
  }


  public java.sql.Timestamp getSentDate() {
    return sentDate;
  }

  public void setSentDate(java.sql.Timestamp sentDate) {
    this.sentDate = sentDate;
  }


  public long getIsAttachment() {
    return isAttachment;
  }

  public void setIsAttachment(long isAttachment) {
    this.isAttachment = isAttachment;
  }


  public String getAttachmentList() {
    return attachmentList;
  }

  public void setAttachmentList(String attachmentList) {
    this.attachmentList = attachmentList;
  }


  public long getIsRead() {
    return isRead;
  }

  public void setIsRead(long isRead) {
    this.isRead = isRead;
  }


  public java.sql.Timestamp getReadDate() {
    return readDate;
  }

  public void setReadDate(java.sql.Timestamp readDate) {
    this.readDate = readDate;
  }


  public long getPriority() {
    return priority;
  }

  public void setPriority(long priority) {
    this.priority = priority;
  }


  public long getIsReply() {
    return isReply;
  }

  public void setIsReply(long isReply) {
    this.isReply = isReply;
  }


  public java.sql.Timestamp getReplyDate() {
    return replyDate;
  }

  public void setReplyDate(java.sql.Timestamp replyDate) {
    this.replyDate = replyDate;
  }

}
