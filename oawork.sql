/*
SQLyog Ultimate v8.32 
MySQL - 5.0.24-community-nt : Database - oawork
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`oawork` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `oawork`;

/*Table structure for table `attachment_list` */

DROP TABLE IF EXISTS `attachment_list`;

CREATE TABLE `attachment_list` (
  `pk_Attachment` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` varchar(50) default NULL COMMENT '描述',
  `FileName` varchar(20) default NULL COMMENT '原始档名',
  `FilePath` varchar(20) default NULL COMMENT '文件路径',
  `FileType` varchar(20) default NULL COMMENT '后缀名',
  `FileSize` double default NULL COMMENT '文件大小',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`pk_Attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `attachment_list` */

/*Table structure for table `attendance_list` */

DROP TABLE IF EXISTS `attendance_list`;

CREATE TABLE `attendance_list` (
  `pk_Attendance` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `Description` varchar(30) default NULL COMMENT '描述',
  `shangbantime` datetime default NULL COMMENT '上班时间',
  `xaibantime` datetime default NULL COMMENT '下班时间',
  `month` date default NULL COMMENT '考勤月份',
  PRIMARY KEY  (`pk_Attendance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `attendance_list` */

/*Table structure for table `calendar_list` */

DROP TABLE IF EXISTS `calendar_list`;

CREATE TABLE `calendar_list` (
  `pk_Calendar` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` varchar(50) default NULL COMMENT '描述',
  `ImagePath` varchar(20) default NULL COMMENT '图片地址',
  `UserList` varchar(20) default NULL COMMENT '相关用户',
  `DepartmentList` varchar(20) default NULL COMMENT '相关部门',
  `StartDate` datetime default NULL COMMENT '开始时间',
  `EndDate` datetime default NULL COMMENT '结束时间',
  `IsRemind` int(11) default NULL COMMENT '是否提醒',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`pk_Calendar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `calendar_list` */

/*Table structure for table `car_list` */

DROP TABLE IF EXISTS `car_list`;

CREATE TABLE `car_list` (
  `pk_Car` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `fk_Set` int(11) default NULL COMMENT '车辆ID',
  `NumberID` varchar(20) default NULL COMMENT '单号',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` varchar(30) default NULL COMMENT '描述',
  `ImagePath` varchar(20) default NULL COMMENT '图片地址',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  `IsCheck` int(11) default NULL COMMENT '是否审核',
  `CheckUser` int(11) default NULL COMMENT '审核人ID',
  `CheckDate` datetime default NULL COMMENT '审核时间',
  `CheckDepartment` int(11) default NULL COMMENT '审核部门',
  `StartDate` datetime default NULL COMMENT '开始时间',
  `EndDate` datetime default NULL COMMENT '结束时间',
  `Driver` varchar(30) default NULL COMMENT '司机',
  `Passengers` varchar(30) default NULL COMMENT '乘客',
  `Destination` varchar(30) default NULL COMMENT '目的地',
  `Mileage` varchar(30) default NULL COMMENT '里程数',
  `IsBack` int(11) default NULL COMMENT '是否归还',
  `BackDate` datetime default NULL COMMENT '归还时间',
  PRIMARY KEY  (`pk_Car`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car_list` */

/*Table structure for table `car_set` */

DROP TABLE IF EXISTS `car_set`;

CREATE TABLE `car_set` (
  `pk_Set` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` varchar(20) default NULL COMMENT '描述',
  `ImagePath` varchar(20) default NULL COMMENT '图片地址',
  `BuyDate` datetime default NULL COMMENT '购买时间',
  `IsUse` int(11) default NULL COMMENT '是否使用',
  `Mileage` varchar(20) default NULL COMMENT '里程数',
  `LastMaintenance` datetime default NULL COMMENT '上次保养时间',
  PRIMARY KEY  (`pk_Set`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car_set` */

/*Table structure for table `classification` */

DROP TABLE IF EXISTS `classification`;

CREATE TABLE `classification` (
  `class_id` int(11) NOT NULL auto_increment,
  `class_name` varchar(20) default NULL,
  PRIMARY KEY  (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `classification` */

insert  into `classification`(`class_id`,`class_name`) values (1,'好友'),(14,'家人'),(15,'同学'),(16,'基友');

/*Table structure for table `communication` */

DROP TABLE IF EXISTS `communication`;

CREATE TABLE `communication` (
  `comm_id` int(11) NOT NULL auto_increment COMMENT '通讯编号',
  `pk_user` int(11) default NULL COMMENT '外键用户编号',
  `comm_thedegreeof` int(11) default NULL COMMENT '重要||一般',
  `comm_typeid` int(11) default NULL COMMENT '类型',
  `comm_sex` int(11) default NULL COMMENT '性别',
  `comm_name` varchar(20) default NULL COMMENT '联系人名称',
  `comm_phone` varchar(11) default NULL COMMENT '联系电话',
  `comm_landline` varchar(20) default NULL COMMENT '公司电话',
  `comm_fax` varchar(20) default NULL COMMENT '传真',
  `comm_email` varchar(20) default NULL COMMENT '邮箱',
  `comm_address` varchar(50) default NULL COMMENT '地址',
  `comm_note` varchar(20) default NULL COMMENT '备注',
  `comm_headportrait` varchar(200) default NULL COMMENT '头像',
  `comm_class_id` int(11) default NULL COMMENT '外键分类',
  `comm_Shared` int(11) default NULL,
  PRIMARY KEY  (`comm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `communication` */

insert  into `communication`(`comm_id`,`pk_user`,`comm_thedegreeof`,`comm_typeid`,`comm_sex`,`comm_name`,`comm_phone`,`comm_landline`,`comm_fax`,`comm_email`,`comm_address`,`comm_note`,`comm_headportrait`,`comm_class_id`,`comm_Shared`) values (4,2,2,2,2,'马王爷','123456789','324234','','32423','给对方','士大夫但是',NULL,1,NULL),(5,2,2,2,1,'父亲','4561515634','324234','','','','','upload/123.jpg',14,NULL),(6,2,2,1,1,'田老师','123456789','123465789','','','','',NULL,14,NULL),(7,2,2,1,2,'张同学','2342352345','2323','','','','',NULL,15,NULL);

/*Table structure for table `finance_account` */

DROP TABLE IF EXISTS `finance_account`;

CREATE TABLE `finance_account` (
  `pk_Account` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `AccountName` varchar(30) default NULL COMMENT '账号',
  `Owner` varchar(20) default NULL COMMENT '开户人',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` varchar(50) default NULL COMMENT '描述',
  `ImagePath` varchar(20) default NULL COMMENT '图片地址',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`pk_Account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `finance_account` */

/*Table structure for table `finance_list` */

DROP TABLE IF EXISTS `finance_list`;

CREATE TABLE `finance_list` (
  `pk_Finance` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `fk_Account` int(11) default NULL COMMENT '账号ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` varchar(50) default NULL COMMENT '描述',
  `HandleName` varchar(20) default NULL COMMENT '经手人',
  `HandleDate` datetime default NULL COMMENT '经手时间',
  `Amount` double default NULL COMMENT '金额',
  PRIMARY KEY  (`pk_Finance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `finance_list` */

/*Table structure for table `group_list` */

DROP TABLE IF EXISTS `group_list`;

CREATE TABLE `group_list` (
  `pk_group` int(11) NOT NULL auto_increment COMMENT '自增列ID',
  `fk_user` int(11) default NULL COMMENT '创建人ID',
  `creatTime` date default NULL COMMENT '创建时间',
  `headUrl` varchar(20) default NULL COMMENT '群头像',
  `groupName` varchar(20) default NULL COMMENT '群名称',
  `conmment` varchar(50) default NULL COMMENT '简介',
  PRIMARY KEY  (`pk_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `group_list` */

insert  into `group_list`(`pk_group`,`fk_user`,`creatTime`,`headUrl`,`groupName`,`conmment`) values (1,2,'2019-05-25','1.jpg','总经办管理群','总经理办公室专用群'),(2,2,'2019-05-25','2.jpg','管理员群','哈哈哈哈哈哈哈');

/*Table structure for table `groupuser_list` */

DROP TABLE IF EXISTS `groupuser_list`;

CREATE TABLE `groupuser_list` (
  `pk_groupuser` int(11) NOT NULL auto_increment COMMENT '自增',
  `fk_user` int(11) default NULL COMMENT '用户ID',
  `fk_group` int(11) default NULL COMMENT '群ID',
  `jointime` date default NULL COMMENT '加入时间',
  PRIMARY KEY  (`pk_groupuser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `groupuser_list` */

insert  into `groupuser_list`(`pk_groupuser`,`fk_user`,`fk_group`,`jointime`) values (1,2,1,'2019-05-25'),(2,2,2,'2019-05-25'),(3,1,1,'2019-05-26'),(4,3,2,'2019-05-26');

/*Table structure for table `mail_list` */

DROP TABLE IF EXISTS `mail_list`;

CREATE TABLE `mail_list` (
  `pk_Mail` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_Account` int(11) default NULL COMMENT '账号ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `MailType` int(11) default NULL COMMENT '邮件类型（0-收件箱 1-发件箱 2-草稿箱 3-垃圾箱 4-回收站）',
  `MailFrom` varchar(20) default NULL COMMENT '发件人',
  `MailTo` varchar(20) default NULL COMMENT '收件人',
  `Subject` varchar(20) default NULL COMMENT '主题',
  `Body` text COMMENT '主体内容',
  `IsSent` int(11) default NULL COMMENT '是否已送',
  `SentDate` datetime default NULL COMMENT '发送时间',
  `IsAttachment` int(11) default NULL COMMENT '是否有附件',
  `AttachmentList` varchar(20) default NULL COMMENT '附件地址',
  `IsRead` int(11) default NULL COMMENT '是否已读',
  `ReadDate` datetime default NULL COMMENT '读取时间',
  `Priority` int(11) default NULL COMMENT '优先级别',
  `IsReply` int(11) default NULL COMMENT '是否回复',
  `ReplyDate` datetime default NULL COMMENT '回复时间',
  PRIMARY KEY  (`pk_Mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mail_list` */

/*Table structure for table `memo_list` */

DROP TABLE IF EXISTS `memo_list`;

CREATE TABLE `memo_list` (
  `pk_Memo` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` text COMMENT '描述',
  `ImagePath` varchar(20) default NULL COMMENT '图片地址',
  `FilePath` varchar(20) default NULL COMMENT '附件地址',
  `IsStar` int(11) default NULL COMMENT '是否星标',
  `Tags` varchar(20) default NULL COMMENT '标签',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`pk_Memo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `memo_list` */

/*Table structure for table `notice_list` */

DROP TABLE IF EXISTS `notice_list`;

CREATE TABLE `notice_list` (
  `pk_Notice` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID\r\n',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` text COMMENT '描述',
  `ImagePath` varchar(20) default NULL COMMENT '图片地址',
  `FilePath` varchar(20) default NULL COMMENT '附件地址',
  `UserList` varchar(20) default NULL COMMENT '相关用户',
  `DepartmentList` varchar(20) default NULL COMMENT '相关部门',
  `RoleList` varchar(20) default NULL COMMENT '相关权限',
  `Url` varchar(20) default NULL COMMENT '链接地址',
  `StartDate` datetime default NULL COMMENT '开始时间',
  `EndDate` datetime default NULL COMMENT '结束时间',
  `IsTop` int(11) default NULL COMMENT '是否置顶',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  `IsRead` int(11) default NULL COMMENT '是否已读',
  `ReadDate` datetime default NULL COMMENT '已读时间',
  PRIMARY KEY  (`pk_Notice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `notice_list` */

/*Table structure for table `process_list` */

DROP TABLE IF EXISTS `process_list`;

CREATE TABLE `process_list` (
  `pk_process` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `ProcessName` varchar(20) default NULL COMMENT '流程定义名称',
  `RoleList` varchar(20) default NULL COMMENT '相关权限',
  `MattersName` varchar(20) default NULL COMMENT '事项名称',
  `Visible` int(11) default NULL COMMENT '是否显示',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`pk_process`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `process_list` */

/*Table structure for table `role_list` */

DROP TABLE IF EXISTS `role_list`;

CREATE TABLE `role_list` (
  `pk_Role` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `pk_Department` int(11) default NULL COMMENT '部门编号ID',
  `fk_RoleName` int(11) default NULL COMMENT '权限名称ID',
  `fk_Menu` int(50) default NULL COMMENT '菜单ID',
  `role_name` varchar(50) default NULL COMMENT '权限字段',
  PRIMARY KEY  (`pk_Role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role_list` */

insert  into `role_list`(`pk_Role`,`pk_Department`,`fk_RoleName`,`fk_Menu`,`role_name`) values (1,1000,3,33,'role:add,role:delete,role:query,role:update,'),(11,1000,3,34,'role:add,role:delete,role:update,role:query,'),(12,1000,3,35,'role:query,role:update,role:delete,role:add,'),(13,1000,3,36,'role:add,role:delete,role:update,role:query,'),(14,1001,4,25,'role:query,'),(15,1001,4,24,'role:query,'),(16,1001,4,23,'role:query,role:update,role:delete,role:add,'),(18,1001,4,4,'role:query,'),(24,1001,5,4,'role:query,'),(25,1000,3,14,'role:add,role:delete,role:update,role:query,'),(26,1000,3,15,'role:query,role:update,role:delete,role:add,'),(27,1000,3,10,'role:add,role:delete,role:update,role:query,'),(28,1000,3,11,'role:query,'),(29,1000,3,20,'role:add,role:delete,role:update,role:query,'),(30,1000,3,29,'role:query,'),(31,1000,3,12,'role:add,role:delete,role:update,role:query,'),(32,1000,1,3,'role:query,role:delete,'),(33,1000,1,4,'role:query,'),(34,1000,1,6,'role:add,role:delete,role:update,role:query,'),(35,1000,1,7,'role:query,role:update,role:delete,role:add,'),(36,1000,1,8,'role:query,'),(37,1000,1,10,'role:add,role:delete,role:update,role:query,'),(38,1000,1,11,'role:query,'),(39,1000,1,14,'role:add,role:delete,role:update,role:query,'),(40,1000,1,15,'role:query,role:update,role:delete,role:add,'),(41,1000,1,17,'role:add,role:delete,role:update,role:query,'),(42,1000,1,18,'role:query,role:update,role:delete,role:add,'),(43,1000,1,20,'role:add,role:delete,role:update,role:query,'),(44,1000,1,21,'role:query,'),(45,1000,1,23,'role:query,'),(46,1000,1,25,'role:query,'),(47,1000,1,28,'role:add,role:delete,role:update,role:query,'),(48,1000,1,27,'role:query,role:update,role:delete,role:add,'),(49,1000,1,29,'role:query,'),(50,1000,1,32,'role:add,role:delete,role:update,role:query,'),(51,1000,2,2,'role:query,'),(52,1000,2,3,'role:query,'),(53,1000,2,4,'role:query,'),(54,1000,2,6,'role:add,role:query,'),(55,1000,2,7,'role:query,'),(56,1000,2,8,'role:query,'),(57,1000,2,10,'role:query,role:update,role:delete,role:add,'),(58,1000,2,11,'role:query,'),(59,1000,2,14,'role:query,role:update,role:add,role:delete,'),(60,1000,2,15,'role:add,role:update,role:query,role:delete,'),(61,1000,2,20,'role:add,role:delete,role:update,role:query,'),(62,1000,2,21,'role:query,'),(63,1000,2,18,'role:query,role:add,role:delete,role:update,'),(64,1000,2,17,'role:query,role:update,role:delete,role:add,'),(65,1000,2,28,'role:add,role:delete,role:update,role:query,'),(66,1000,2,27,'role:query,'),(67,1000,2,32,'role:add,role:delete,role:update,role:query,'),(68,1000,2,29,'role:query,'),(69,1000,3,17,'role:query,'),(70,1000,3,18,'role:query,role:update,role:delete,role:add,'),(71,1000,3,21,'role:query,'),(74,1000,3,31,'role:add,role:delete,role:update,role:query,'),(75,1000,3,32,'role:query,'),(90,1000,3,2,'role:query,');

/*Table structure for table `role_name` */

DROP TABLE IF EXISTS `role_name`;

CREATE TABLE `role_name` (
  `pk_Name` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `RoleName_CHS` varchar(30) default NULL COMMENT '中文名称',
  `RoleName_EN` varchar(30) default NULL COMMENT '英文名称',
  `pk_Department` int(11) default NULL COMMENT '部门ID',
  PRIMARY KEY  (`pk_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role_name` */

insert  into `role_name`(`pk_Name`,`RoleName_CHS`,`RoleName_EN`,`pk_Department`) values (1,'总经理','CEO',1000),(2,'助理','ASSISTANT',1000),(3,'超级管理员','ADMIN',1000),(4,'经理','MANAGER',1001),(5,'会计','ACCOUNTANT',1001),(6,'经理','MANAGER',1002),(7,'主管','DIRECTOR',1002),(8,'文员','CLERTK',1002),(9,'经理',NULL,1003),(10,'文员',NULL,1003),(11,'经理',NULL,1004),(17,'组长',NULL,1004),(18,'文员',NULL,1001);

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `pk_Menu` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `ParentID` varchar(20) default NULL COMMENT '父ID',
  `Name_CHS` varchar(20) default NULL COMMENT '中文名称',
  `Name_EN` varchar(20) default NULL COMMENT '英文名称（预留）',
  `Url` varchar(20) default NULL COMMENT '链接地址',
  `Icon` varchar(20) default NULL COMMENT '图标',
  `SortID` int(11) default NULL COMMENT '排序ID',
  `LevelID` int(11) default NULL COMMENT '层级ID',
  PRIMARY KEY  (`pk_Menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`pk_Menu`,`ParentID`,`Name_CHS`,`Name_EN`,`Url`,`Icon`,`SortID`,`LevelID`) values (1,'0','考勤管理','main',NULL,'fa-laptop',1,1001),(2,'1001','考勤管理','child','kaoqin_manager','fa-laptop',NULL,NULL),(3,'1001','考勤周报表','child','kaoqin_weekchart','fa-laptop',NULL,NULL),(4,'1001','考勤月报表','child','kaoqin_monthchart','fa-laptop',NULL,NULL),(5,'0','用户管理','main',NULL,'fa-book',2,1002),(6,'1002','部门管理','child','user_bumen_manager','fa-book',NULL,NULL),(7,'1002','职位管理','child','user_zhiwei_manager','fa-book',NULL,NULL),(8,'1002','用户管理','child','user_yonghu_manager','fa-book',NULL,NULL),(9,'0','公告通知','main',NULL,'fa-cogs',3,1003),(10,'1003','通知管理','child','gonggao_manager','fa-cogs',NULL,NULL),(11,'1003','通知列表','child','gonggao_list','fa-cogs',NULL,NULL),(13,'0','邮件管理','main',NULL,'fa-envelope',5,1005),(14,'1005','邮件管理','child','mail_mymail','fa-envelope',NULL,NULL),(15,'1005','发送邮件','child','mail_sendmail','fa-envelope',NULL,NULL),(16,'0','任务管理','main',NULL,'fa-tasks',6,1006),(17,'1006','任务管理','child','task_manager','fa-tasks',NULL,NULL),(18,'1006','我的任务','child','task_mytask','fa-tasks',NULL,NULL),(19,'0','车辆管理','main',NULL,'fa-bar-chart-o',7,1007),(20,'1007','用车管理','child','car_usemanager','fa-bar-chart-o',NULL,NULL),(21,'1007','车辆管理','child','car_manager','fa-bar-chart-o',NULL,NULL),(22,'0','财务管理','main',NULL,'fa-th-list',8,1008),(23,'1008','账号管理','child','caiwu_numbermanager','fa-th-list',NULL,NULL),(24,'1008','财务管理','child','caiwu_manager','fa-th-list',NULL,NULL),(25,'1008','财务报表','child','caiwu_chart','fa-th-list',NULL,NULL),(26,'0','流程管理','main',NULL,'fa-th-list',9,1009),(27,'1009','流程汇总','child','flow_list','fa-th-list',NULL,NULL),(28,'1009','流程审核','child','flow_shenhe','fa-th-list',NULL,NULL),(29,'0','通讯录','main','phone_number','fa-bullhorn',10,1010),(30,'0','工作流','main',NULL,'fa-file-text',11,1011),(31,'1011','步骤管理','child','workflow_manager','fa-file-text',NULL,NULL),(32,'1011','我的工作','child','workflow_mywork','fa-file-text',NULL,NULL),(36,'0','权限管理','main','role/role_manager','fa-cogs',15,1015);

/*Table structure for table `sys_statusid` */

DROP TABLE IF EXISTS `sys_statusid`;

CREATE TABLE `sys_statusid` (
  `pk_StatusID` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `StatusName` varchar(20) default NULL COMMENT '名称',
  `ID` int(11) default NULL COMMENT 'ID',
  `Visual` varchar(20) default NULL COMMENT '显示颜色',
  `TableName` varchar(20) default NULL COMMENT '表名',
  `Description` varchar(50) default NULL COMMENT '描述',
  PRIMARY KEY  (`pk_StatusID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_statusid` */

/*Table structure for table `sys_typeid` */

DROP TABLE IF EXISTS `sys_typeid`;

CREATE TABLE `sys_typeid` (
  `pk_TypeID` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `TypeName` varchar(20) default NULL COMMENT '名称',
  `ID` int(11) default NULL COMMENT 'ID',
  `Visual` varchar(20) default NULL COMMENT '显示颜色',
  `TableName` varchar(20) default NULL COMMENT '表名',
  `Description` varchar(50) default NULL COMMENT '描述',
  PRIMARY KEY  (`pk_TypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_typeid` */

/*Table structure for table `talk_list` */

DROP TABLE IF EXISTS `talk_list`;

CREATE TABLE `talk_list` (
  `pk_talk` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `talk_frominfo` varchar(100) default NULL COMMENT '消息来源信息',
  `talk_to` varchar(20) default NULL COMMENT '消息目标',
  `talk_content` text COMMENT '消息内容',
  `talk_time` date default NULL COMMENT '发送时间',
  `talk_from` varchar(20) default NULL COMMENT '消息来源',
  `talk_code` int(11) default NULL COMMENT '读取状态',
  PRIMARY KEY  (`pk_talk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `talk_list` */

insert  into `talk_list`(`pk_talk`,`talk_frominfo`,`talk_to`,`talk_content`,`talk_time`,`talk_from`,`talk_code`) values (1,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','阿诗丹顿','2019-05-31','2',0),(2,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','是的的v从','2019-05-31','2',0),(3,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','删除','2019-05-31','2',0),(4,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','哈哈哈','2019-05-31','2',0),(5,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','好好','2019-05-31','2',0),(6,'{\"headimg\":\"5.jpg\",\"isgroup\":\"管理员群group2\",\"userName\":\"陈磊\",\"pk_user\":2}','group2','真的呀','2019-05-31','2',0),(7,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','阿萨德','2019-05-31','2',0),(8,'{\"headimg\":\"5.jpg\",\"isgroup\":\"管理员群group2\",\"userName\":\"陈磊\",\"pk_user\":2}','group2','sad','2019-05-31','2',0),(9,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','ad深V','2019-05-31','2',0),(10,'{\"headimg\":\"5.jpg\",\"isgroup\":\"管理员群group2\",\"userName\":\"陈磊\",\"pk_user\":2}','group2','啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊','2019-05-31','2',0),(11,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表表v           ','2019-05-31','2',0),(12,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','xcc','2019-05-31','1',0),(13,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','才','2019-05-31','2',0),(14,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','是大V','2019-05-31','2',0),(15,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','dfdgf ','2019-05-31','1',0),(16,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','撒地方规划','2019-05-31','2',0),(17,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','ZXcvb','2019-05-31','1',0),(18,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','qwef ','2019-05-31','1',0),(19,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','asdfgbaaaaaaaaaaaaaa','2019-05-31','1',0),(20,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','撒地方个','2019-05-31','2',0),(21,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','sadf ','2019-05-31','1',0),(22,'{\"headimg\":\"5.jpg\",\"isgroup\":\"管理员群group2\",\"userName\":\"陈磊\",\"pk_user\":2}','group2','aaaaaa啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊','2019-05-31','2',0),(23,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊','2019-05-31','1',0),(24,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊','2019-05-31','1',0),(25,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','啊啊啊啊啊啊啊','2019-05-31','1',0),(26,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','哒哒哒哒哒','2019-05-31','1',0),(27,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','大师傅','2019-05-31','1',0),(28,'{\"headimg\":\"4.jpg\",\"isgroup\":\"陈磊2\",\"userName\":\"张三\",\"pk_user\":1}','2','在不在','2019-05-31','1',0),(29,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','阿萨德','2019-05-31','1',0),(30,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','咋的','2019-05-31','2',0),(31,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','地方','2019-05-31','1',0),(32,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','啥','2019-05-31','2',0),(33,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','斯蒂芬','2019-05-31','1',0),(34,'{\"headimg\":\"5.jpg\",\"isgroup\":\"张三1\",\"userName\":\"陈磊\",\"pk_user\":2}','1','撒地方个','2019-05-31','2',0),(35,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','我二哥','2019-05-31','2',0),(36,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','撒地方个','2019-05-31','2',0),(37,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','asdf','2019-05-31','1',0),(38,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','撒旦法','2019-05-31','1',0),(39,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','阿斯顿法国','2019-05-31','1',0),(40,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','撒旦法','2019-05-31','2',0),(41,'{\"headimg\":\"5.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"陈磊\",\"pk_user\":2}','group1','阿萨德','2019-05-31','2',0),(42,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','问问','2019-05-31','1',0),(43,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','asdf','2019-05-31','1',0),(44,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','山东','2019-05-31','1',0),(45,'{\"headimg\":\"4.jpg\",\"isgroup\":\"总经办管理群group1\",\"userName\":\"张三\",\"pk_user\":1}','group1','萨顶顶','2019-05-31','1',0);

/*Table structure for table `task_feedback` */

DROP TABLE IF EXISTS `task_feedback`;

CREATE TABLE `task_feedback` (
  `id` int(11) NOT NULL COMMENT '编号',
  `fe_list` varchar(200) default NULL COMMENT '反馈',
  `fe_type` varchar(200) default NULL COMMENT '状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `task_feedback` */

insert  into `task_feedback`(`id`,`fe_list`,`fe_type`) values (10,'我已经接受了','陈磊Tue May 28 06:34:52 CST 2019将状态改为新已接收'),(10,'我去','陈磊Tue May 28 06:46:52 CST 2019将状态改为新已接收'),(10,'快弄好了','陈磊Tue May 28 06:47:56 CST 2019将状态改为进行中'),(10,'已经弄完了','陈磊Tue May 28 06:48:18 CST 2019将状态改为已完成'),(10,'','陈磊Tue May 28 12:33:49 CST 2019将状态改为已完成'),(10,'','陈磊Fri May 31 02:28:16 CST 2019将状态改为已完成');

/*Table structure for table `task_list` */

DROP TABLE IF EXISTS `task_list`;

CREATE TABLE `task_list` (
  `pk_Task` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` text COMMENT '描述',
  `ImagePath` varchar(20) default NULL COMMENT '图片地址',
  `FilePath` varchar(200) default NULL COMMENT '附件地址',
  `UserList` varchar(20) default NULL COMMENT '相关用户',
  `DepartmentList` varchar(20) default NULL COMMENT '相关部门',
  `RoleList` varchar(20) default NULL COMMENT '相关权限',
  `Url` varchar(20) default NULL COMMENT '链接地址',
  `StartDate` datetime default NULL COMMENT '开始时间',
  `EndDate` datetime default NULL COMMENT '结束时间',
  `IsComplete` int(11) default NULL COMMENT '是否完成',
  `CompleteDate` datetime default NULL COMMENT '完成时间',
  `IsCancel` int(11) default NULL COMMENT '是否取消',
  `CancelDate` datetime default NULL COMMENT '取消时间',
  `IsTop` int(11) default NULL COMMENT '是否置顶',
  `IsDistribution` int(11) default NULL COMMENT '是否分配',
  `Feedback_id` int(11) default NULL COMMENT '反馈信息编号',
  `task_schedule` varchar(20) default NULL COMMENT '任务进度',
  PRIMARY KEY  (`pk_Task`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `task_list` */

insert  into `task_list`(`pk_Task`,`fk_User`,`fk_Department`,`TypeID`,`StatusID`,`Title`,`Description`,`ImagePath`,`FilePath`,`UserList`,`DepartmentList`,`RoleList`,`Url`,`StartDate`,`EndDate`,`IsComplete`,`CompleteDate`,`IsCancel`,`CancelDate`,`IsTop`,`IsDistribution`,`Feedback_id`,`task_schedule`) values (10,2,1000,1,4,'改好发给','回家看了',NULL,'D:\\AO\\OA_Project\\target\\OA_Project\\upload/timg.jpg','张三,陈磊,','null总经办总经办',NULL,NULL,'2019-05-19 00:00:00','2019-06-01 00:00:00',NULL,NULL,0,NULL,1,1,NULL,'100%');

/*Table structure for table `task_receiver` */

DROP TABLE IF EXISTS `task_receiver`;

CREATE TABLE `task_receiver` (
  `pk_Receiver` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_Task` int(11) default NULL COMMENT '任务ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `IsRead` int(11) default NULL COMMENT '是否已读',
  `ReadDate` datetime default NULL COMMENT '读取时间',
  `IsReceive` int(11) default NULL COMMENT '是否接收',
  `ReceiveDate` datetime default NULL COMMENT '接收时间',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  PRIMARY KEY  (`pk_Receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `task_receiver` */

insert  into `task_receiver`(`pk_Receiver`,`fk_Task`,`fk_User`,`fk_Department`,`IsRead`,`ReadDate`,`IsReceive`,`ReceiveDate`,`StatusID`) values (11,10,1,1000,0,NULL,0,NULL,4),(12,10,2,1000,0,NULL,0,NULL,4);

/*Table structure for table `user_department` */

DROP TABLE IF EXISTS `user_department`;

CREATE TABLE `user_department` (
  `pk_Department` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `DepartmentName` varchar(20) default NULL COMMENT '部门名称',
  `Phone` varchar(11) default NULL COMMENT '电话',
  `Email` varchar(30) default NULL COMMENT '邮件',
  `Address` varchar(20) default NULL COMMENT '地址',
  `ParentID` int(11) default NULL COMMENT '父ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `Manager` int(11) default NULL COMMENT '部门经理',
  `LevelID` int(11) default NULL COMMENT '层级ID',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  `Monday` datetime default NULL COMMENT '周一考勤时间',
  `Tuesday` datetime default NULL COMMENT '周二考勤时间',
  `Wednesday` datetime default NULL COMMENT '周三考勤时间',
  `Thursday` datetime default NULL COMMENT '周四考勤时间',
  `Friday` datetime default NULL COMMENT '周五考勤时间',
  `Saturday` datetime default NULL COMMENT '周六考勤时间',
  `Sunday` datetime default NULL COMMENT '周日考勤时间',
  `headUrl` varchar(20) default NULL COMMENT '部门头像地址',
  PRIMARY KEY  (`pk_Department`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_department` */

insert  into `user_department`(`pk_Department`,`DepartmentName`,`Phone`,`Email`,`Address`,`ParentID`,`TypeID`,`Manager`,`LevelID`,`CreateDate`,`Monday`,`Tuesday`,`Wednesday`,`Thursday`,`Friday`,`Saturday`,`Sunday`,`headUrl`) values (1000,'总经办','0712-666666',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1.jpg'),(1001,'财务部','0712-666999',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2.jpg'),(1002,'行政部','0712-666888',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'3.jpg'),(1003,'人力资源部','0712-666777',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'4.jpg'),(1004,'销售部','0712-666222',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5.jpg'),(1005,'市场部','0712-666111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'6.jpg'),(1006,'营销部','0712-666555',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'7.jpg');

/*Table structure for table `user_list` */

DROP TABLE IF EXISTS `user_list`;

CREATE TABLE `user_list` (
  `pk_user` int(11) NOT NULL auto_increment COMMENT '自增id',
  `userName` varchar(20) default NULL COMMENT '用户名',
  `password` varchar(50) default NULL COMMENT '密码',
  `typeId` int(11) default NULL COMMENT '类型id',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `RoleValue` int(11) default NULL COMMENT '权限ID',
  `RoleList` varchar(30) default NULL COMMENT '相关权限',
  `Position` int(11) default NULL COMMENT '职位ID',
  `Number` varchar(20) default NULL COMMENT '员工号',
  `IsLock` int(11) default NULL COMMENT '是否锁定',
  `LastLoginTime` datetime default NULL COMMENT '最后登录时间',
  `FullName` varchar(11) default NULL COMMENT '真实姓名',
  `Phone` varchar(20) default NULL COMMENT '电话',
  `Email` varchar(20) default NULL COMMENT '邮件',
  `Wechat` varchar(20) default NULL COMMENT '微信',
  `QQ` varchar(15) default NULL COMMENT 'QQ',
  `ZipCode` varchar(10) default NULL COMMENT '邮编',
  `Place` varchar(20) default NULL COMMENT '所在城市',
  `Address` varchar(30) default NULL COMMENT '家庭地址',
  `Sex` int(11) default NULL COMMENT '性别（0-男 1-女）',
  `Height` int(11) default NULL COMMENT '身高',
  `Weight` int(11) default NULL COMMENT '体重',
  `Birthday` datetime default NULL COMMENT '生日',
  `Education` varchar(20) default NULL COMMENT '教育程度',
  `School` varchar(20) default NULL COMMENT '毕业院校',
  `ImagePath1` varchar(20) default NULL COMMENT '图片',
  `IDCardPath` varchar(20) default NULL COMMENT '身份证图片',
  `ResumePath` varchar(20) default NULL COMMENT '简历文档',
  `Wages` bigint(20) default NULL COMMENT '工资',
  `BankAccount` varchar(20) default NULL COMMENT '银行账户',
  `IDNumber` varchar(20) default NULL COMMENT '身份证号',
  `Remark` varchar(30) default NULL COMMENT '备注',
  `EntryTime` datetime default NULL COMMENT '入职时间',
  `IsQuit` int(11) default NULL COMMENT '是否离职',
  `QuitTime` datetime default NULL COMMENT '离职时间',
  PRIMARY KEY  (`pk_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_list` */

insert  into `user_list`(`pk_user`,`userName`,`password`,`typeId`,`fk_Department`,`RoleValue`,`RoleList`,`Position`,`Number`,`IsLock`,`LastLoginTime`,`FullName`,`Phone`,`Email`,`Wechat`,`QQ`,`ZipCode`,`Place`,`Address`,`Sex`,`Height`,`Weight`,`Birthday`,`Education`,`School`,`ImagePath1`,`IDCardPath`,`ResumePath`,`Wages`,`BankAccount`,`IDNumber`,`Remark`,`EntryTime`,`IsQuit`,`QuitTime`) values (1,'张三','ab3f511502b1ca973d4e5dddf3bfbf77',NULL,1000,1,NULL,NULL,'10000',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'4.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'陈磊','ab3f511502b1ca973d4e5dddf3bfbf77',NULL,1000,3,NULL,NULL,'10001',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'5.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'宋江','ab3f511502b1ca973d4e5dddf3bfbf77',NULL,1002,6,NULL,NULL,'10002',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'6.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `user_position` */

DROP TABLE IF EXISTS `user_position`;

CREATE TABLE `user_position` (
  `pk_Position` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `PositionName` varchar(20) default NULL COMMENT '职位名称',
  `ParentID` int(11) default NULL COMMENT '父ID',
  `LevelID` int(11) default NULL COMMENT '层级ID',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`pk_Position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_position` */

/*Table structure for table `workflow_list` */

DROP TABLE IF EXISTS `workflow_list`;

CREATE TABLE `workflow_list` (
  `pk_Workflow` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `fk_process` int(11) default NULL COMMENT '流程定义ID',
  `TypeID` int(11) default NULL COMMENT '类型ID',
  `StatusID` int(11) default NULL COMMENT '状态ID',
  `CurrentStepID` varchar(20) default NULL COMMENT '当前步骤',
  `NextStepID` varchar(20) default NULL COMMENT '下一步骤',
  `Number` varchar(50) default NULL COMMENT '流水编号',
  `Title` varchar(20) default NULL COMMENT '标题',
  `Description` varchar(50) default NULL COMMENT '描述',
  `StartDate` datetime default NULL COMMENT '开始时间',
  `EndDate` datetime default NULL COMMENT '结束时间',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`pk_Workflow`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `workflow_list` */

/*Table structure for table `workflow_receiver` */

DROP TABLE IF EXISTS `workflow_receiver`;

CREATE TABLE `workflow_receiver` (
  `pk_Receiver` int(11) NOT NULL auto_increment COMMENT '自增ID',
  `fk_Workflow` int(11) default NULL COMMENT '工作流ID',
  `fk_process` int(11) default NULL COMMENT '流程定义ID',
  `fk_User` int(11) default NULL COMMENT '用户ID',
  `fk_Department` int(11) default NULL COMMENT '部门ID',
  `IsCheck` int(11) default NULL COMMENT '是否审核',
  `CheckDate` datetime default NULL COMMENT '审核时间',
  `Note` varchar(50) default NULL COMMENT '审批意见',
  `CreateDate` datetime default NULL COMMENT '创建时间',
  PRIMARY KEY  (`pk_Receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `workflow_receiver` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
