-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (x86_64)
--
-- Host: localhost    Database: ry-vue
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES (2,'sc_admin','管理员表',NULL,NULL,'ScAdmin','crud','element-plus','com.ruoyi.system','system','adminofSc','管理员','王超浩','0','/','{\"parentMenuId\":1}','admin','2026-01-14 15:08:47','','2026-01-14 15:11:24',NULL),(3,'sc_class','班级表',NULL,NULL,'ScClass','crud','element-plus','com.ruoyi.system','system','classofSc','班级','王超浩 ','0','/','{\"parentMenuId\":0}','admin','2026-01-14 15:08:47','','2026-01-14 15:21:55',NULL),(4,'sc_college','学院表',NULL,NULL,'ScCollege','crud','element-plus','com.ruoyi.system','system','collegeofSc','学院','王超浩','0','/','{\"parentMenuId\":\"\"}','admin','2026-01-14 15:08:47','','2026-01-14 15:35:18',NULL),(5,'sc_course','课程表',NULL,NULL,'ScCourse','crud','element-plus','com.ruoyi.system','system','courseofSc','课程','王超浩 ','0','/','{\"parentMenuId\":\"\"}','admin','2026-01-14 15:08:47','','2026-01-14 16:00:16',NULL),(6,'sc_enrollment','选课表',NULL,NULL,'ScEnrollment','crud','element-plus','com.ruoyi.system','system','enrollmentofSc','选课','王超浩 ','0','/','{\"parentMenuId\":\"\"}','admin','2026-01-14 15:08:47','','2026-01-14 16:03:53',NULL),(7,'sc_major','专业表',NULL,NULL,'ScMajor','crud','element-plus','com.ruoyi.system','system','majorofSc','专业','王超浩 ','0','/','{\"parentMenuId\":0}','admin','2026-01-14 15:08:47','','2026-01-14 16:06:48',NULL),(8,'sc_score','成绩表',NULL,NULL,'ScScore','crud','element-plus','com.ruoyi.system','system','scoreofSC','成绩','王超浩','0','/','{\"parentMenuId\":0}','admin','2026-01-14 15:08:47','','2026-01-14 16:09:58',NULL),(9,'sc_student','学生表',NULL,NULL,'ScStudent','crud','element-plus','com.ruoyi.system','system','studentofSc','学生','王超浩','0','/','{\"parentMenuId\":0}','admin','2026-01-14 15:08:48','','2026-01-14 16:12:19',NULL),(10,'sc_teacher','教师表',NULL,NULL,'ScTeacher','crud','element-plus','com.ruoyi.system','system','teacherofSc','教师','王超浩','0','/','{\"parentMenuId\":0}','admin','2026-01-14 15:08:48','','2026-01-14 16:16:09',NULL),(11,'sc_teaching','授课表',NULL,NULL,'ScTeaching','crud','element-plus','com.ruoyi.system','system','teachingofSc','授课','王超浩','0','/','{\"parentMenuId\":0}','admin','2026-01-14 15:08:48','','2026-01-14 16:19:36',NULL);
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES (10,2,'id','管理员ID','int','Long','id','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2026-01-14 15:08:47','','2026-01-14 15:11:24'),(11,2,'username','账号','varchar(30)','String','username','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2026-01-14 15:08:47','','2026-01-14 15:11:24'),(12,2,'password','密码','varchar(100)','String','password','0','0','1','1','1','1','1','EQ','input','',3,'admin','2026-01-14 15:08:47','','2026-01-14 15:11:24'),(13,3,'id','班级ID','int','Long','id','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2026-01-14 15:08:47','','2026-01-14 15:21:55'),(14,3,'name','班级名称','varchar(50)','String','name','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2026-01-14 15:08:47','','2026-01-14 15:21:55'),(15,3,'major_id','所属专业','int','Long','majorId','0','0','0','1','1','1','1','EQ','input','',3,'admin','2026-01-14 15:08:47','','2026-01-14 15:21:55'),(16,4,'id','学院ID','int','Long','id','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2026-01-14 15:08:47','','2026-01-14 15:35:18'),(17,4,'name','学院名称','varchar(50)','String','name','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2026-01-14 15:08:47','','2026-01-14 15:35:18'),(18,5,'id','课程ID','int','Long','id','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2026-01-14 15:08:47','','2026-01-14 16:00:16'),(19,5,'course_no','课程编号','varchar(20)','String','courseNo','0','0','1','1','1','1','1','EQ','input','',2,'admin','2026-01-14 15:08:47','','2026-01-14 16:00:16'),(20,5,'name','课程名称','varchar(50)','String','name','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2026-01-14 15:08:47','','2026-01-14 16:00:16'),(21,5,'credit','学分','decimal(3,1)','BigDecimal','credit','0','0','0','1','1','1','1','EQ','input','',4,'admin','2026-01-14 15:08:47','','2026-01-14 16:00:16'),(22,6,'id','选课ID','int','Long','id','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2026-01-14 15:08:47','','2026-01-14 16:03:53'),(23,6,'student_id','学生ID','int','Long','studentId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2026-01-14 15:08:47','','2026-01-14 16:03:53'),(24,6,'teaching_id','授课ID','int','Long','teachingId','0','0','1','1','1','1','1','EQ','input','',3,'admin','2026-01-14 15:08:47','','2026-01-14 16:03:53'),(25,7,'id','专业ID','int','Long','id','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2026-01-14 15:08:47','','2026-01-14 16:06:48'),(26,7,'name','专业名称','varchar(50)','String','name','0','0','1','1','1','1','1','LIKE','input','',2,'admin','2026-01-14 15:08:47','','2026-01-14 16:06:48'),(27,7,'college_id','所属学院','int','Long','collegeId','0','0','0','1','1','1','1','EQ','input','',3,'admin','2026-01-14 15:08:47','','2026-01-14 16:06:48'),(28,8,'id','成绩ID','int','Long','id','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2026-01-14 15:08:47','','2026-01-14 16:09:58'),(29,8,'enrollment_id','选课ID','int','Long','enrollmentId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2026-01-14 15:08:47','','2026-01-14 16:09:58'),(30,8,'usual_score','平时成绩','decimal(5,2)','BigDecimal','usualScore','0','0','0','1','1','1','1','EQ','input','',3,'admin','2026-01-14 15:08:47','','2026-01-14 16:09:58'),(31,8,'mid_score','期中成绩','decimal(5,2)','BigDecimal','midScore','0','0','0','1','1','1','1','EQ','input','',4,'admin','2026-01-14 15:08:47','','2026-01-14 16:09:58'),(32,8,'final_score','期末成绩','decimal(5,2)','BigDecimal','finalScore','0','0','0','1','1','1','1','EQ','input','',5,'admin','2026-01-14 15:08:47','','2026-01-14 16:09:58'),(33,8,'total_score','总评成绩','decimal(5,2)','BigDecimal','totalScore','0','0','0','1','1','1','1','EQ','input','',6,'admin','2026-01-14 15:08:48','','2026-01-14 16:09:58'),(34,9,'id','学生ID','int','Long','id','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2026-01-14 15:08:48','','2026-01-14 16:12:19'),(35,9,'student_no','学号','varchar(20)','String','studentNo','0','0','1','1','1','1','1','EQ','input','',2,'admin','2026-01-14 15:08:48','','2026-01-14 16:12:19'),(36,9,'name','姓名','varchar(20)','String','name','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2026-01-14 15:08:48','','2026-01-14 16:12:19'),(37,9,'gender','性别','char(1)','String','gender','0','0','0','1','1','1','1','EQ','input','',4,'admin','2026-01-14 15:08:48','','2026-01-14 16:12:19'),(38,9,'class_id','所属班级','int','Long','classId','0','0','0','1','1','1','1','EQ','input','',5,'admin','2026-01-14 15:08:48','','2026-01-14 16:12:19'),(39,9,'enrollment_year','入学年份','year','String','enrollmentYear','0','0','0','1','1','1','1','EQ',NULL,'',6,'admin','2026-01-14 15:08:48','','2026-01-14 16:12:19'),(40,10,'id','教师ID','int','Long','id','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2026-01-14 15:08:48','','2026-01-14 16:16:09'),(41,10,'teacher_no','工号','varchar(20)','String','teacherNo','0','0','1','1','1','1','1','EQ','input','',2,'admin','2026-01-14 15:08:48','','2026-01-14 16:16:09'),(42,10,'name','姓名','varchar(20)','String','name','0','0','1','1','1','1','1','LIKE','input','',3,'admin','2026-01-14 15:08:48','','2026-01-14 16:16:09'),(43,10,'title','职称','varchar(20)','String','title','0','0','0','1','1','1','1','EQ','input','',4,'admin','2026-01-14 15:08:48','','2026-01-14 16:16:09'),(44,10,'college_id','所属学院','int','Long','collegeId','0','0','0','1','1','1','1','EQ','input','',5,'admin','2026-01-14 15:08:48','','2026-01-14 16:16:09'),(45,11,'id','授课ID','int','Long','id','1','1','0','1',NULL,NULL,NULL,'EQ','input','',1,'admin','2026-01-14 15:08:48','','2026-01-14 16:19:36'),(46,11,'teacher_id','教师ID','int','Long','teacherId','0','0','1','1','1','1','1','EQ','input','',2,'admin','2026-01-14 15:08:48','','2026-01-14 16:19:36'),(47,11,'course_id','课程ID','int','Long','courseId','0','0','1','1','1','1','1','EQ','input','',3,'admin','2026-01-14 15:08:48','','2026-01-14 16:19:36'),(48,11,'semester','学期','varchar(20)','String','semester','0','0','0','1','1','1','1','EQ','input','',4,'admin','2026-01-14 15:08:48','','2026-01-14 16:19:36');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Blob类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QRTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CALENDARS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日历信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CALENDARS`
--

LOCK TABLES `QRTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cron类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CRON_TRIGGERS`
--

LOCK TABLES `QRTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='已触发的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QRTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_JOB_DETAILS`
--

LOCK TABLES `QRTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_LOCKS`
--

DROP TABLE IF EXISTS `QRTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_LOCKS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='存储的悲观锁信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_LOCKS`
--

LOCK TABLES `QRTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QRTZ_LOCKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='暂停的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QRTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='调度器状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SCHEDULER_STATE`
--

LOCK TABLES `QRTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='简单触发器的信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='同步机制的行锁表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `QRTZ_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='触发器详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_TRIGGERS`
--

LOCK TABLES `QRTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_admin`
--

DROP TABLE IF EXISTS `sc_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sc_admin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `username` varchar(30) NOT NULL COMMENT '账号',
  `password` varchar(100) NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='管理员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_admin`
--

LOCK TABLES `sc_admin` WRITE;
/*!40000 ALTER TABLE `sc_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `sc_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_class`
--

DROP TABLE IF EXISTS `sc_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sc_class` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '班级ID',
  `name` varchar(50) NOT NULL COMMENT '班级名称',
  `major_id` int DEFAULT NULL COMMENT '所属专业',
  PRIMARY KEY (`id`),
  KEY `fk_class_major` (`major_id`),
  CONSTRAINT `fk_class_major` FOREIGN KEY (`major_id`) REFERENCES `sc_major` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='班级表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_class`
--

LOCK TABLES `sc_class` WRITE;
/*!40000 ALTER TABLE `sc_class` DISABLE KEYS */;
INSERT INTO `sc_class` VALUES (2,'计科2404',1),(3,'1',1);
/*!40000 ALTER TABLE `sc_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_college`
--

DROP TABLE IF EXISTS `sc_college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sc_college` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '学院ID',
  `name` varchar(50) NOT NULL COMMENT '学院名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='学院表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_college`
--

LOCK TABLES `sc_college` WRITE;
/*!40000 ALTER TABLE `sc_college` DISABLE KEYS */;
INSERT INTO `sc_college` VALUES (2,'计算机学院'),(3,'11'),(4,'1231');
/*!40000 ALTER TABLE `sc_college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_course`
--

DROP TABLE IF EXISTS `sc_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sc_course` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '课程ID',
  `course_no` varchar(20) NOT NULL COMMENT '课程编号',
  `name` varchar(50) NOT NULL COMMENT '课程名称',
  `credit` decimal(3,1) DEFAULT NULL COMMENT '学分',
  PRIMARY KEY (`id`),
  UNIQUE KEY `course_no` (`course_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='课程表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_course`
--

LOCK TABLES `sc_course` WRITE;
/*!40000 ALTER TABLE `sc_course` DISABLE KEYS */;
INSERT INTO `sc_course` VALUES (2,'1','1',1.0),(3,'n','n',NULL);
/*!40000 ALTER TABLE `sc_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_enrollment`
--

DROP TABLE IF EXISTS `sc_enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sc_enrollment` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '选课ID',
  `student_id` int NOT NULL COMMENT '学生ID',
  `teaching_id` int NOT NULL COMMENT '授课ID',
  PRIMARY KEY (`id`),
  KEY `fk_enrollment_student` (`student_id`),
  KEY `fk_enrollment_teaching` (`teaching_id`),
  CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `sc_student` (`id`),
  CONSTRAINT `fk_enrollment_teaching` FOREIGN KEY (`teaching_id`) REFERENCES `sc_teaching` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='选课表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_enrollment`
--

LOCK TABLES `sc_enrollment` WRITE;
/*!40000 ALTER TABLE `sc_enrollment` DISABLE KEYS */;
INSERT INTO `sc_enrollment` VALUES (5,2,2);
/*!40000 ALTER TABLE `sc_enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_major`
--

DROP TABLE IF EXISTS `sc_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sc_major` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '专业ID',
  `name` varchar(50) NOT NULL COMMENT '专业名称',
  `college_id` int DEFAULT NULL COMMENT '所属学院',
  PRIMARY KEY (`id`),
  KEY `fk_major_college` (`college_id`),
  CONSTRAINT `fk_major_college` FOREIGN KEY (`college_id`) REFERENCES `sc_college` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='专业表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_major`
--

LOCK TABLES `sc_major` WRITE;
/*!40000 ALTER TABLE `sc_major` DISABLE KEYS */;
INSERT INTO `sc_major` VALUES (1,'CS',2),(4,'111',NULL),(5,'abc',2);
/*!40000 ALTER TABLE `sc_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_score`
--

DROP TABLE IF EXISTS `sc_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sc_score` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '成绩ID',
  `enrollment_id` int NOT NULL COMMENT '选课ID',
  `usual_score` decimal(5,2) DEFAULT NULL COMMENT '平时成绩',
  `mid_score` decimal(5,2) DEFAULT NULL COMMENT '期中成绩',
  `final_score` decimal(5,2) DEFAULT NULL COMMENT '期末成绩',
  `total_score` decimal(5,2) DEFAULT NULL COMMENT '总评成绩',
  PRIMARY KEY (`id`),
  KEY `fk_score_enrollment` (`enrollment_id`),
  CONSTRAINT `fk_score_enrollment` FOREIGN KEY (`enrollment_id`) REFERENCES `sc_enrollment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='成绩表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_score`
--

LOCK TABLES `sc_score` WRITE;
/*!40000 ALTER TABLE `sc_score` DISABLE KEYS */;
INSERT INTO `sc_score` VALUES (1,5,90.00,90.00,90.00,90.00);
/*!40000 ALTER TABLE `sc_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_student`
--

DROP TABLE IF EXISTS `sc_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sc_student` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '学生ID',
  `student_no` varchar(20) NOT NULL COMMENT '学号',
  `name` varchar(20) NOT NULL COMMENT '姓名',
  `gender` char(1) DEFAULT NULL COMMENT '性别',
  `class_id` int DEFAULT NULL COMMENT '所属班级',
  `enrollment_year` year DEFAULT NULL COMMENT '入学年份',
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_no` (`student_no`),
  KEY `fk_student_class` (`class_id`),
  CONSTRAINT `fk_student_class` FOREIGN KEY (`class_id`) REFERENCES `sc_class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='学生表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_student`
--

LOCK TABLES `sc_student` WRITE;
/*!40000 ALTER TABLE `sc_student` DISABLE KEYS */;
INSERT INTO `sc_student` VALUES (2,'123','李华','男',2,NULL);
/*!40000 ALTER TABLE `sc_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_teacher`
--

DROP TABLE IF EXISTS `sc_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sc_teacher` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '教师ID',
  `teacher_no` varchar(20) NOT NULL COMMENT '工号',
  `name` varchar(20) NOT NULL COMMENT '姓名',
  `title` varchar(20) DEFAULT NULL COMMENT '职称',
  `college_id` int DEFAULT NULL COMMENT '所属学院',
  PRIMARY KEY (`id`),
  UNIQUE KEY `teacher_no` (`teacher_no`),
  KEY `fk_teacher_college` (`college_id`),
  CONSTRAINT `fk_teacher_college` FOREIGN KEY (`college_id`) REFERENCES `sc_college` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='教师表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_teacher`
--

LOCK TABLES `sc_teacher` WRITE;
/*!40000 ALTER TABLE `sc_teacher` DISABLE KEYS */;
INSERT INTO `sc_teacher` VALUES (1,'1','teacher','教授',2),(2,'112','1111',NULL,NULL);
/*!40000 ALTER TABLE `sc_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sc_teaching`
--

DROP TABLE IF EXISTS `sc_teaching`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sc_teaching` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '授课ID',
  `teacher_id` int NOT NULL COMMENT '教师ID',
  `course_id` int NOT NULL COMMENT '课程ID',
  `semester` varchar(20) DEFAULT NULL COMMENT '学期',
  PRIMARY KEY (`id`),
  KEY `fk_teaching_teacher` (`teacher_id`),
  KEY `fk_teaching_course` (`course_id`),
  CONSTRAINT `fk_teaching_course` FOREIGN KEY (`course_id`) REFERENCES `sc_course` (`id`),
  CONSTRAINT `fk_teaching_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `sc_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='授课表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sc_teaching`
--

LOCK TABLES `sc_teaching` WRITE;
/*!40000 ALTER TABLE `sc_teaching` DISABLE KEYS */;
INSERT INTO `sc_teaching` VALUES (2,1,2,'1');
/*!40000 ALTER TABLE `sc_teaching` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2025-11-23 11:00:15','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2025-11-23 11:00:15','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2025-11-23 11:00:15','',NULL,'深色主题theme-dark，浅色主题theme-light'),(4,'账号自助-验证码开关','sys.account.captchaEnabled','false','Y','admin','2025-11-23 11:00:15','admin','2025-11-23 17:19:40','是否开启验证码功能（true开启，false关闭）'),(5,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2025-11-23 11:00:15','',NULL,'是否开启注册用户功能（true开启，false关闭）'),(6,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2025-11-23 11:00:15','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）'),(7,'用户管理-初始密码修改策略','sys.account.initPasswordModify','1','Y','admin','2025-11-23 11:00:15','',NULL,'0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框'),(8,'用户管理-账号密码更新周期','sys.account.passwordValidateDays','0','Y','admin','2025-11-23 11:00:15','',NULL,'密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2025-11-23 11:00:14','',NULL),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2025-11-23 11:00:14','',NULL),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2025-11-23 11:00:14','',NULL),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2025-11-23 11:00:14','',NULL),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2025-11-23 11:00:14','',NULL),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2025-11-23 11:00:14','',NULL),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2025-11-23 11:00:14','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2025-11-23 11:00:14','',NULL),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2025-11-23 11:00:14','',NULL),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2025-11-23 11:00:14','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2025-11-23 11:00:15','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2025-11-23 11:00:15','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2025-11-23 11:00:15','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2025-11-23 11:00:15','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2025-11-23 11:00:15','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2025-11-23 11:00:15','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2025-11-23 11:00:15','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2025-11-23 11:00:15','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2025-11-23 11:00:15','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2025-11-23 11:00:15','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2025-11-23 11:00:15','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2025-11-23 11:00:15','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2025-11-23 11:00:15','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2025-11-23 11:00:15','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2025-11-23 11:00:15','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2025-11-23 11:00:15','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2025-11-23 11:00:15','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2025-11-23 11:00:15','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2025-11-23 11:00:15','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2025-11-23 11:00:15','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2025-11-23 11:00:15','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2025-11-23 11:00:15','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2025-11-23 11:00:15','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2025-11-23 11:00:15','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2025-11-23 11:00:15','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2025-11-23 11:00:15','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2025-11-23 11:00:15','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2025-11-23 11:00:15','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2025-11-23 11:00:15','',NULL,'停用状态');
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2025-11-23 11:00:15','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2025-11-23 11:00:15','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2025-11-23 11:00:15','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2025-11-23 11:00:15','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2025-11-23 11:00:15','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2025-11-23 11:00:15','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2025-11-23 11:00:15','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2025-11-23 11:00:15','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2025-11-23 11:00:15','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2025-11-23 11:00:15','',NULL,'登录状态列表');
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2025-11-23 11:00:15','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2025-11-23 11:00:15','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2025-11-23 11:00:15','',NULL,'');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','登录成功','2025-11-23 11:50:43'),(101,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','登录成功','2025-11-23 15:11:35'),(102,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','登录成功','2025-11-23 15:31:08'),(103,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','登录成功','2025-11-23 16:44:20'),(104,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','登录成功','2025-11-23 17:17:44'),(105,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','退出成功','2025-11-23 17:19:43'),(106,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','登录成功','2025-11-23 17:19:45'),(107,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','登录成功','2026-01-14 13:50:20'),(108,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','登录成功','2026-01-14 15:07:36'),(109,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','登录成功','2026-01-14 18:00:15'),(110,'admin','127.0.0.1','内网IP','Chrome 13','Mac OS X','0','登录成功','2026-01-14 18:00:28'),(111,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','退出成功','2026-01-14 18:25:52'),(112,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','登录成功','2026-01-14 18:25:53'),(113,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','退出成功','2026-01-14 18:26:06'),(114,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','登录成功','2026-01-14 18:27:40'),(115,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','退出成功','2026-01-14 18:27:47'),(116,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','登录成功','2026-01-14 18:27:48'),(117,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','退出成功','2026-01-14 18:28:42'),(118,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','登录成功','2026-01-14 18:29:32'),(119,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','登录成功','2026-01-14 19:32:20'),(120,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','登录成功','2026-01-14 19:33:30'),(121,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','登录成功','2026-01-14 20:03:31'),(122,'admin','183.157.133.16','XX XX','Chrome 14','Windows 10','0','登录成功','2026-01-14 21:17:00'),(123,'admin','39.144.124.185','XX XX','Chrome Mobile','Android 1.x','0','登录成功','2026-01-14 21:30:21'),(124,'admin','183.247.9.179','XX XX','Chrome 13','Windows 10','0','登录成功','2026-01-14 21:31:56'),(125,'admin','183.247.9.142','XX XX','Chrome 13','Windows 10','0','登录成功','2026-01-14 21:35:43'),(126,'admin','183.247.9.179','XX XX','Chrome 13','Windows 10','0','退出成功','2026-01-14 21:37:14'),(127,'admin','183.247.9.179','XX XX','Chrome 13','Windows 10','0','登录成功','2026-01-14 21:37:28'),(128,'admin','125.120.110.58','XX XX','Chrome 14','Mac OS X','0','登录成功','2026-01-14 21:38:49'),(129,'admin','112.17.241.244','XX XX','Chrome Mobile','Android 1.x','0','登录成功','2026-01-14 21:40:45'),(130,'admin','112.17.241.244','XX XX','Chrome Mobile','Android 1.x','0','退出成功','2026-01-14 21:41:55'),(131,'admin','183.247.9.179','XX XX','Chrome 13','Windows 10','0','退出成功','2026-01-14 21:45:18'),(132,'admin','112.17.241.244','XX XX','Chrome Mobile','Android 1.x','0','登录成功','2026-01-14 21:48:23'),(133,'admin','112.17.241.244','XX XX','Chrome Mobile','Android 1.x','0','退出成功','2026-01-14 22:07:57'),(134,'admin','112.17.241.244','XX XX','Chrome Mobile','Android 1.x','0','登录成功','2026-01-14 22:08:00'),(135,'admin','127.0.0.1','内网IP','Chrome 14','Mac OS X','0','登录成功','2026-01-15 16:14:56');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) DEFAULT '' COMMENT '路由名称',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2066 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,100,'system',NULL,'','',1,0,'M','0','0','','system','admin','2025-11-23 11:00:14','admin','2026-01-14 16:24:45','系统管理目录'),(2,'系统监控',0,200,'monitor',NULL,'','',1,0,'M','0','0','','monitor','admin','2025-11-23 11:00:14','admin','2026-01-14 16:24:49','系统监控目录'),(3,'系统工具',0,300,'tool',NULL,'','',1,0,'M','0','0','','tool','admin','2025-11-23 11:00:14','admin','2026-01-14 16:24:55','系统工具目录'),(4,'若依官网',0,400,'http://ruoyi.vip',NULL,'','',0,0,'M','0','0','','guide','admin','2025-11-23 11:00:14','admin','2026-01-14 16:24:59','若依官网地址'),(100,'用户管理',1,1,'user','system/user/index','','',1,0,'C','0','0','system:user:list','user','admin','2025-11-23 11:00:14','',NULL,'用户管理菜单'),(101,'角色管理',1,2,'role','system/role/index','','',1,0,'C','0','0','system:role:list','peoples','admin','2025-11-23 11:00:14','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'menu','system/menu/index','','',1,0,'C','0','0','system:menu:list','tree-table','admin','2025-11-23 11:00:14','',NULL,'菜单管理菜单'),(103,'部门管理',1,4,'dept','system/dept/index','','',1,0,'C','0','0','system:dept:list','tree','admin','2025-11-23 11:00:14','',NULL,'部门管理菜单'),(104,'岗位管理',1,5,'post','system/post/index','','',1,0,'C','0','0','system:post:list','post','admin','2025-11-23 11:00:14','',NULL,'岗位管理菜单'),(105,'字典管理',1,6,'dict','system/dict/index','','',1,0,'C','0','0','system:dict:list','dict','admin','2025-11-23 11:00:14','',NULL,'字典管理菜单'),(106,'参数设置',1,7,'config','system/config/index','','',1,0,'C','0','0','system:config:list','edit','admin','2025-11-23 11:00:14','',NULL,'参数设置菜单'),(107,'通知公告',1,8,'notice','system/notice/index','','',1,0,'C','0','0','system:notice:list','message','admin','2025-11-23 11:00:14','',NULL,'通知公告菜单'),(108,'日志管理',1,9,'log','','','',1,0,'M','0','0','','log','admin','2025-11-23 11:00:14','',NULL,'日志管理菜单'),(109,'在线用户',2,1,'online','monitor/online/index','','',1,0,'C','0','0','monitor:online:list','online','admin','2025-11-23 11:00:14','',NULL,'在线用户菜单'),(110,'定时任务',2,2,'job','monitor/job/index','','',1,0,'C','0','0','monitor:job:list','job','admin','2025-11-23 11:00:14','',NULL,'定时任务菜单'),(111,'数据监控',2,3,'druid','monitor/druid/index','','',1,0,'C','0','0','monitor:druid:list','druid','admin','2025-11-23 11:00:14','',NULL,'数据监控菜单'),(112,'服务监控',2,4,'server','monitor/server/index','','',1,0,'C','0','0','monitor:server:list','server','admin','2025-11-23 11:00:14','',NULL,'服务监控菜单'),(113,'缓存监控',2,5,'cache','monitor/cache/index','','',1,0,'C','0','0','monitor:cache:list','redis','admin','2025-11-23 11:00:14','',NULL,'缓存监控菜单'),(114,'缓存列表',2,6,'cacheList','monitor/cache/list','','',1,0,'C','0','0','monitor:cache:list','redis-list','admin','2025-11-23 11:00:14','',NULL,'缓存列表菜单'),(115,'表单构建',3,1,'build','tool/build/index','','',1,0,'C','0','0','tool:build:list','build','admin','2025-11-23 11:00:14','',NULL,'表单构建菜单'),(116,'代码生成',3,2,'gen','tool/gen/index','','',1,0,'C','0','0','tool:gen:list','code','admin','2025-11-23 11:00:14','',NULL,'代码生成菜单'),(117,'系统接口',3,3,'swagger','tool/swagger/index','','',1,0,'C','0','0','tool:swagger:list','swagger','admin','2025-11-23 11:00:14','',NULL,'系统接口菜单'),(500,'操作日志',108,1,'operlog','monitor/operlog/index','','',1,0,'C','0','0','monitor:operlog:list','form','admin','2025-11-23 11:00:14','',NULL,'操作日志菜单'),(501,'登录日志',108,2,'logininfor','monitor/logininfor/index','','',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2025-11-23 11:00:14','',NULL,'登录日志菜单'),(1000,'用户查询',100,1,'','','','',1,0,'F','0','0','system:user:query','#','admin','2025-11-23 11:00:14','',NULL,''),(1001,'用户新增',100,2,'','','','',1,0,'F','0','0','system:user:add','#','admin','2025-11-23 11:00:14','',NULL,''),(1002,'用户修改',100,3,'','','','',1,0,'F','0','0','system:user:edit','#','admin','2025-11-23 11:00:14','',NULL,''),(1003,'用户删除',100,4,'','','','',1,0,'F','0','0','system:user:remove','#','admin','2025-11-23 11:00:14','',NULL,''),(1004,'用户导出',100,5,'','','','',1,0,'F','0','0','system:user:export','#','admin','2025-11-23 11:00:14','',NULL,''),(1005,'用户导入',100,6,'','','','',1,0,'F','0','0','system:user:import','#','admin','2025-11-23 11:00:14','',NULL,''),(1006,'重置密码',100,7,'','','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2025-11-23 11:00:14','',NULL,''),(1007,'角色查询',101,1,'','','','',1,0,'F','0','0','system:role:query','#','admin','2025-11-23 11:00:14','',NULL,''),(1008,'角色新增',101,2,'','','','',1,0,'F','0','0','system:role:add','#','admin','2025-11-23 11:00:14','',NULL,''),(1009,'角色修改',101,3,'','','','',1,0,'F','0','0','system:role:edit','#','admin','2025-11-23 11:00:14','',NULL,''),(1010,'角色删除',101,4,'','','','',1,0,'F','0','0','system:role:remove','#','admin','2025-11-23 11:00:14','',NULL,''),(1011,'角色导出',101,5,'','','','',1,0,'F','0','0','system:role:export','#','admin','2025-11-23 11:00:14','',NULL,''),(1012,'菜单查询',102,1,'','','','',1,0,'F','0','0','system:menu:query','#','admin','2025-11-23 11:00:14','',NULL,''),(1013,'菜单新增',102,2,'','','','',1,0,'F','0','0','system:menu:add','#','admin','2025-11-23 11:00:14','',NULL,''),(1014,'菜单修改',102,3,'','','','',1,0,'F','0','0','system:menu:edit','#','admin','2025-11-23 11:00:14','',NULL,''),(1015,'菜单删除',102,4,'','','','',1,0,'F','0','0','system:menu:remove','#','admin','2025-11-23 11:00:14','',NULL,''),(1016,'部门查询',103,1,'','','','',1,0,'F','0','0','system:dept:query','#','admin','2025-11-23 11:00:14','',NULL,''),(1017,'部门新增',103,2,'','','','',1,0,'F','0','0','system:dept:add','#','admin','2025-11-23 11:00:14','',NULL,''),(1018,'部门修改',103,3,'','','','',1,0,'F','0','0','system:dept:edit','#','admin','2025-11-23 11:00:14','',NULL,''),(1019,'部门删除',103,4,'','','','',1,0,'F','0','0','system:dept:remove','#','admin','2025-11-23 11:00:14','',NULL,''),(1020,'岗位查询',104,1,'','','','',1,0,'F','0','0','system:post:query','#','admin','2025-11-23 11:00:14','',NULL,''),(1021,'岗位新增',104,2,'','','','',1,0,'F','0','0','system:post:add','#','admin','2025-11-23 11:00:14','',NULL,''),(1022,'岗位修改',104,3,'','','','',1,0,'F','0','0','system:post:edit','#','admin','2025-11-23 11:00:14','',NULL,''),(1023,'岗位删除',104,4,'','','','',1,0,'F','0','0','system:post:remove','#','admin','2025-11-23 11:00:14','',NULL,''),(1024,'岗位导出',104,5,'','','','',1,0,'F','0','0','system:post:export','#','admin','2025-11-23 11:00:14','',NULL,''),(1025,'字典查询',105,1,'#','','','',1,0,'F','0','0','system:dict:query','#','admin','2025-11-23 11:00:14','',NULL,''),(1026,'字典新增',105,2,'#','','','',1,0,'F','0','0','system:dict:add','#','admin','2025-11-23 11:00:14','',NULL,''),(1027,'字典修改',105,3,'#','','','',1,0,'F','0','0','system:dict:edit','#','admin','2025-11-23 11:00:14','',NULL,''),(1028,'字典删除',105,4,'#','','','',1,0,'F','0','0','system:dict:remove','#','admin','2025-11-23 11:00:14','',NULL,''),(1029,'字典导出',105,5,'#','','','',1,0,'F','0','0','system:dict:export','#','admin','2025-11-23 11:00:14','',NULL,''),(1030,'参数查询',106,1,'#','','','',1,0,'F','0','0','system:config:query','#','admin','2025-11-23 11:00:14','',NULL,''),(1031,'参数新增',106,2,'#','','','',1,0,'F','0','0','system:config:add','#','admin','2025-11-23 11:00:14','',NULL,''),(1032,'参数修改',106,3,'#','','','',1,0,'F','0','0','system:config:edit','#','admin','2025-11-23 11:00:14','',NULL,''),(1033,'参数删除',106,4,'#','','','',1,0,'F','0','0','system:config:remove','#','admin','2025-11-23 11:00:14','',NULL,''),(1034,'参数导出',106,5,'#','','','',1,0,'F','0','0','system:config:export','#','admin','2025-11-23 11:00:14','',NULL,''),(1035,'公告查询',107,1,'#','','','',1,0,'F','0','0','system:notice:query','#','admin','2025-11-23 11:00:14','',NULL,''),(1036,'公告新增',107,2,'#','','','',1,0,'F','0','0','system:notice:add','#','admin','2025-11-23 11:00:14','',NULL,''),(1037,'公告修改',107,3,'#','','','',1,0,'F','0','0','system:notice:edit','#','admin','2025-11-23 11:00:14','',NULL,''),(1038,'公告删除',107,4,'#','','','',1,0,'F','0','0','system:notice:remove','#','admin','2025-11-23 11:00:14','',NULL,''),(1039,'操作查询',500,1,'#','','','',1,0,'F','0','0','monitor:operlog:query','#','admin','2025-11-23 11:00:14','',NULL,''),(1040,'操作删除',500,2,'#','','','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2025-11-23 11:00:14','',NULL,''),(1041,'日志导出',500,3,'#','','','',1,0,'F','0','0','monitor:operlog:export','#','admin','2025-11-23 11:00:14','',NULL,''),(1042,'登录查询',501,1,'#','','','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2025-11-23 11:00:14','',NULL,''),(1043,'登录删除',501,2,'#','','','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2025-11-23 11:00:14','',NULL,''),(1044,'日志导出',501,3,'#','','','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2025-11-23 11:00:14','',NULL,''),(1045,'账户解锁',501,4,'#','','','',1,0,'F','0','0','monitor:logininfor:unlock','#','admin','2025-11-23 11:00:14','',NULL,''),(1046,'在线查询',109,1,'#','','','',1,0,'F','0','0','monitor:online:query','#','admin','2025-11-23 11:00:14','',NULL,''),(1047,'批量强退',109,2,'#','','','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2025-11-23 11:00:14','',NULL,''),(1048,'单条强退',109,3,'#','','','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2025-11-23 11:00:14','',NULL,''),(1049,'任务查询',110,1,'#','','','',1,0,'F','0','0','monitor:job:query','#','admin','2025-11-23 11:00:14','',NULL,''),(1050,'任务新增',110,2,'#','','','',1,0,'F','0','0','monitor:job:add','#','admin','2025-11-23 11:00:14','',NULL,''),(1051,'任务修改',110,3,'#','','','',1,0,'F','0','0','monitor:job:edit','#','admin','2025-11-23 11:00:14','',NULL,''),(1052,'任务删除',110,4,'#','','','',1,0,'F','0','0','monitor:job:remove','#','admin','2025-11-23 11:00:14','',NULL,''),(1053,'状态修改',110,5,'#','','','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2025-11-23 11:00:14','',NULL,''),(1054,'任务导出',110,6,'#','','','',1,0,'F','0','0','monitor:job:export','#','admin','2025-11-23 11:00:14','',NULL,''),(1055,'生成查询',116,1,'#','','','',1,0,'F','0','0','tool:gen:query','#','admin','2025-11-23 11:00:14','',NULL,''),(1056,'生成修改',116,2,'#','','','',1,0,'F','0','0','tool:gen:edit','#','admin','2025-11-23 11:00:14','',NULL,''),(1057,'生成删除',116,3,'#','','','',1,0,'F','0','0','tool:gen:remove','#','admin','2025-11-23 11:00:14','',NULL,''),(1058,'导入代码',116,4,'#','','','',1,0,'F','0','0','tool:gen:import','#','admin','2025-11-23 11:00:14','',NULL,''),(1059,'预览代码',116,5,'#','','','',1,0,'F','0','0','tool:gen:preview','#','admin','2025-11-23 11:00:14','',NULL,''),(1060,'生成代码',116,6,'#','','','',1,0,'F','0','0','tool:gen:code','#','admin','2025-11-23 11:00:14','',NULL,''),(2006,'管理员',0,0,'adminofSc','system/adminofSc/index',NULL,'',1,1,'C','0','0','system:adminofSc:list','#','admin','2026-01-14 15:14:12','admin','2026-01-14 16:23:01','管理员菜单'),(2007,'管理员查询',2006,1,'#','',NULL,'',1,0,'F','0','0','system:adminofSc:query','#','admin','2026-01-14 15:14:12','',NULL,''),(2008,'管理员新增',2006,2,'#','',NULL,'',1,0,'F','0','0','system:adminofSc:add','#','admin','2026-01-14 15:14:13','',NULL,''),(2009,'管理员修改',2006,3,'#','',NULL,'',1,0,'F','0','0','system:adminofSc:edit','#','admin','2026-01-14 15:14:13','',NULL,''),(2010,'管理员删除',2006,4,'#','',NULL,'',1,0,'F','0','0','system:adminofSc:remove','#','admin','2026-01-14 15:14:13','',NULL,''),(2011,'管理员导出',2006,5,'#','',NULL,'',1,0,'F','0','0','system:adminofSc:export','#','admin','2026-01-14 15:14:13','',NULL,''),(2012,'班级',0,2,'classofSc','system/classofSc/index',NULL,'',1,1,'C','0','0','system:classofSc:list','#','admin','2026-01-14 15:22:23','admin','2026-01-14 16:23:32','班级菜单'),(2013,'班级查询',2012,1,'#','',NULL,'',1,0,'F','0','0','system:classofSc:query','#','admin','2026-01-14 15:22:23','',NULL,''),(2014,'班级新增',2012,2,'#','',NULL,'',1,0,'F','0','0','system:classofSc:add','#','admin','2026-01-14 15:22:23','',NULL,''),(2015,'班级修改',2012,3,'#','',NULL,'',1,0,'F','0','0','system:classofSc:edit','#','admin','2026-01-14 15:22:23','',NULL,''),(2016,'班级删除',2012,4,'#','',NULL,'',1,0,'F','0','0','system:classofSc:remove','#','admin','2026-01-14 15:22:23','',NULL,''),(2017,'班级导出',2012,5,'#','',NULL,'',1,0,'F','0','0','system:classofSc:export','#','admin','2026-01-14 15:22:23','',NULL,''),(2018,'学院',0,1,'collegeofSc','system/collegeofSc/index',NULL,'',1,1,'C','0','0','system:collegeofSc:list','#','admin','2026-01-14 15:38:49','admin','2026-01-14 16:23:23','学院菜单'),(2019,'学院查询',2018,1,'#','',NULL,'',1,0,'F','0','0','system:collegeofSc:query','#','admin','2026-01-14 15:38:49','',NULL,''),(2020,'学院新增',2018,2,'#','',NULL,'',1,0,'F','0','0','system:collegeofSc:add','#','admin','2026-01-14 15:38:49','',NULL,''),(2021,'学院修改',2018,3,'#','',NULL,'',1,0,'F','0','0','system:collegeofSc:edit','#','admin','2026-01-14 15:38:49','',NULL,''),(2022,'学院删除',2018,4,'#','',NULL,'',1,0,'F','0','0','system:collegeofSc:remove','#','admin','2026-01-14 15:38:49','',NULL,''),(2023,'学院导出',2018,5,'#','',NULL,'',1,0,'F','0','0','system:collegeofSc:export','#','admin','2026-01-14 15:38:49','',NULL,''),(2024,'课程',0,7,'courseofSc','system/courseofSc/index',NULL,'',1,1,'C','0','0','system:courseofSc:list','#','admin','2026-01-14 16:01:04','admin','2026-01-14 16:24:12','课程菜单'),(2025,'课程查询',2024,1,'#','',NULL,'',1,0,'F','0','0','system:courseofSc:query','#','admin','2026-01-14 16:01:04','',NULL,''),(2026,'课程新增',2024,2,'#','',NULL,'',1,0,'F','0','0','system:courseofSc:add','#','admin','2026-01-14 16:01:04','',NULL,''),(2027,'课程修改',2024,3,'#','',NULL,'',1,0,'F','0','0','system:courseofSc:edit','#','admin','2026-01-14 16:01:04','',NULL,''),(2028,'课程删除',2024,4,'#','',NULL,'',1,0,'F','0','0','system:courseofSc:remove','#','admin','2026-01-14 16:01:04','',NULL,''),(2029,'课程导出',2024,5,'#','',NULL,'',1,0,'F','0','0','system:courseofSc:export','#','admin','2026-01-14 16:01:04','',NULL,''),(2030,'选课',0,8,'enrollmentofSc','system/enrollmentofSc/index',NULL,'',1,1,'C','0','0','system:enrollmentofSc:list','#','admin','2026-01-14 16:04:26','admin','2026-01-14 16:24:16','选课菜单'),(2031,'选课查询',2030,1,'#','',NULL,'',1,0,'F','0','0','system:enrollmentofSc:query','#','admin','2026-01-14 16:04:26','',NULL,''),(2032,'选课新增',2030,2,'#','',NULL,'',1,0,'F','0','0','system:enrollmentofSc:add','#','admin','2026-01-14 16:04:26','',NULL,''),(2033,'选课修改',2030,3,'#','',NULL,'',1,0,'F','0','0','system:enrollmentofSc:edit','#','admin','2026-01-14 16:04:26','',NULL,''),(2034,'选课删除',2030,4,'#','',NULL,'',1,0,'F','0','0','system:enrollmentofSc:remove','#','admin','2026-01-14 16:04:26','',NULL,''),(2035,'选课导出',2030,5,'#','',NULL,'',1,0,'F','0','0','system:enrollmentofSc:export','#','admin','2026-01-14 16:04:26','',NULL,''),(2036,'专业',0,2,'majorofSc','system/majorofSc/index',NULL,'',1,0,'C','0','0','system:majorofSc:list','#','admin','2026-01-14 16:07:14','admin','2026-01-14 16:23:29','专业菜单'),(2037,'专业查询',2036,1,'#','',NULL,'',1,0,'F','0','0','system:majorofSc:query','#','admin','2026-01-14 16:07:15','',NULL,''),(2038,'专业新增',2036,2,'#','',NULL,'',1,0,'F','0','0','system:majorofSc:add','#','admin','2026-01-14 16:07:15','',NULL,''),(2039,'专业修改',2036,3,'#','',NULL,'',1,0,'F','0','0','system:majorofSc:edit','#','admin','2026-01-14 16:07:15','',NULL,''),(2040,'专业删除',2036,4,'#','',NULL,'',1,0,'F','0','0','system:majorofSc:remove','#','admin','2026-01-14 16:07:15','',NULL,''),(2041,'专业导出',2036,5,'#','',NULL,'',1,0,'F','0','0','system:majorofSc:export','#','admin','2026-01-14 16:07:15','',NULL,''),(2042,'成绩',0,9,'scoreofSC','system/scoreofSC/index',NULL,'',1,1,'C','0','0','system:scoreofSC:list','#','admin','2026-01-14 16:10:29','admin','2026-01-14 16:24:21','成绩菜单'),(2043,'成绩查询',2042,1,'#','',NULL,'',1,0,'F','0','0','system:scoreofSC:query','#','admin','2026-01-14 16:10:30','',NULL,''),(2044,'成绩新增',2042,2,'#','',NULL,'',1,0,'F','0','0','system:scoreofSC:add','#','admin','2026-01-14 16:10:30','',NULL,''),(2045,'成绩修改',2042,3,'#','',NULL,'',1,0,'F','0','0','system:scoreofSC:edit','#','admin','2026-01-14 16:10:30','',NULL,''),(2046,'成绩删除',2042,4,'#','',NULL,'',1,0,'F','0','0','system:scoreofSC:remove','#','admin','2026-01-14 16:10:30','',NULL,''),(2047,'成绩导出',2042,5,'#','',NULL,'',1,0,'F','0','0','system:scoreofSC:export','#','admin','2026-01-14 16:10:30','',NULL,''),(2048,'学生',0,5,'studentofSc','system/studentofSc/index',NULL,'',1,1,'C','0','0','system:studentofSc:list','#','admin','2026-01-14 16:12:41','admin','2026-01-14 16:23:59','学生菜单'),(2049,'学生查询',2048,1,'#','',NULL,'',1,0,'F','0','0','system:studentofSc:query','#','admin','2026-01-14 16:12:42','',NULL,''),(2050,'学生新增',2048,2,'#','',NULL,'',1,0,'F','0','0','system:studentofSc:add','#','admin','2026-01-14 16:12:42','',NULL,''),(2051,'学生修改',2048,3,'#','',NULL,'',1,0,'F','0','0','system:studentofSc:edit','#','admin','2026-01-14 16:12:42','',NULL,''),(2052,'学生删除',2048,4,'#','',NULL,'',1,0,'F','0','0','system:studentofSc:remove','#','admin','2026-01-14 16:12:42','',NULL,''),(2053,'学生导出',2048,5,'#','',NULL,'',1,0,'F','0','0','system:studentofSc:export','#','admin','2026-01-14 16:12:42','',NULL,''),(2054,'教师',0,6,'teacherofSc','system/teacherofSc/index',NULL,'',1,0,'C','0','0','system:teacherofSc:list','#','admin','2026-01-14 16:16:47','admin','2026-01-14 16:24:02','教师菜单'),(2055,'教师查询',2054,1,'#','',NULL,'',1,0,'F','0','0','system:teacherofSc:query','#','admin','2026-01-14 16:16:48','',NULL,''),(2056,'教师新增',2054,2,'#','',NULL,'',1,0,'F','0','0','system:teacherofSc:add','#','admin','2026-01-14 16:16:48','',NULL,''),(2057,'教师修改',2054,3,'#','',NULL,'',1,0,'F','0','0','system:teacherofSc:edit','#','admin','2026-01-14 16:16:48','',NULL,''),(2058,'教师删除',2054,4,'#','',NULL,'',1,0,'F','0','0','system:teacherofSc:remove','#','admin','2026-01-14 16:16:48','',NULL,''),(2059,'教师导出',2054,5,'#','',NULL,'',1,0,'F','0','0','system:teacherofSc:export','#','admin','2026-01-14 16:16:48','',NULL,''),(2060,'授课',0,10,'teachingofSc','system/teachingofSc/index',NULL,'',1,1,'C','0','0','system:teachingofSc:list','#','admin','2026-01-14 16:20:10','admin','2026-01-14 16:24:28','授课菜单'),(2061,'授课查询',2060,1,'#','',NULL,'',1,0,'F','0','0','system:teachingofSc:query','#','admin','2026-01-14 16:20:10','',NULL,''),(2062,'授课新增',2060,2,'#','',NULL,'',1,0,'F','0','0','system:teachingofSc:add','#','admin','2026-01-14 16:20:10','',NULL,''),(2063,'授课修改',2060,3,'#','',NULL,'',1,0,'F','0','0','system:teachingofSc:edit','#','admin','2026-01-14 16:20:10','',NULL,''),(2064,'授课删除',2060,4,'#','',NULL,'',1,0,'F','0','0','system:teachingofSc:remove','#','admin','2026-01-14 16:20:11','',NULL,''),(2065,'授课导出',2060,5,'#','',NULL,'',1,0,'F','0','0','system:teachingofSc:export','#','admin','2026-01-14 16:20:11','',NULL,'');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2',_binary '新版本内容','0','admin','2025-11-23 11:00:15','',NULL,'管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1',_binary '维护内容','0','admin','2025-11-23 11:00:15','',NULL,'管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"tb_course\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-11-23 15:15:45',176),(101,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"course\",\"className\":\"Course\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"课程id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-11-23 15:15:45\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Code\",\"columnComment\":\"课程编码\",\"columnId\":2,\"columnName\":\"code\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2025-11-23 15:15:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"code\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Subject\",\"columnComment\":\"课程学科\",\"columnId\":3,\"columnName\":\"subject\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2025-11-23 15:15:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"subject\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":4,\"columnName\":\"name\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2025-11-23 15:15:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-11-23 15:21:23',70),(102,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"course\",\"className\":\"Course\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"课程id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2025-11-23 15:15:45\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2025-11-23 15:21:23\",\"usableColumn\":false},{\"capJavaField\":\"Code\",\"columnComment\":\"课程编码\",\"columnId\":2,\"columnName\":\"code\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2025-11-23 15:15:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"code\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2025-11-23 15:21:23\",\"usableColumn\":false},{\"capJavaField\":\"Subject\",\"columnComment\":\"课程学科\",\"columnId\":3,\"columnName\":\"subject\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2025-11-23 15:15:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"subject\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2025-11-23 15:21:23\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":4,\"columnName\":\"name\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2025-11-23 15:15:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInse','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-11-23 15:32:49',129),(103,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"tb_course\"}',NULL,0,NULL,'2025-11-23 15:33:02',243),(104,'课程管理',2,'com.ruoyi.course.controller.CourseController.edit()','PUT',1,'admin','研发部门','/course/course','127.0.0.1','内网IP','{\"applicablePerson\":\"小白学员\",\"code\":\"cp123456\",\"createTime\":\"2024-04-20 17:57:35\",\"id\":1,\"info\":\"JavaSE基础\",\"name\":\"JavaSE基础\",\"params\":{},\"price\":199,\"subject\":\"javaEE121nixia\",\"updateTime\":\"2025-11-23 16:07:50\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-11-23 16:07:50',57),(105,'参数管理',2,'com.ruoyi.web.controller.system.SysConfigController.edit()','PUT',1,'admin','研发部门','/system/config','127.0.0.1','内网IP','{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"Y\",\"configValue\":\"false\",\"createBy\":\"admin\",\"createTime\":\"2025-11-23 11:00:15\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2025-11-23 17:19:41',37),(106,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/1','127.0.0.1','内网IP','[1]','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 14:18:28',175),(107,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2000','127.0.0.1','内网IP','2000','{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}',0,NULL,'2026-01-14 15:08:05',26),(108,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2001','127.0.0.1','内网IP','2001','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:08:11',77),(109,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2002','127.0.0.1','内网IP','2002','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:08:13',29),(110,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2003','127.0.0.1','内网IP','2003','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:08:15',22),(111,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2004','127.0.0.1','内网IP','2004','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:08:17',18),(112,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2005','127.0.0.1','内网IP','2005','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:08:19',27),(113,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2000','127.0.0.1','内网IP','2000','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:08:20',39),(114,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"sc_score,sc_enrollment,sc_college,sc_course,sc_class,sc_major,sc_admin,sc_student,sc_teacher,sc_teaching\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:08:48',320),(115,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sc_admin\"}',NULL,0,NULL,'2026-01-14 15:09:01',72),(116,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"adminofSc\",\"className\":\"ScAdmin\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"管理员ID\",\"columnId\":10,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Username\",\"columnComment\":\"账号\",\"columnId\":11,\"columnName\":\"username\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"username\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Password\",\"columnComment\":\"密码\",\"columnId\":12,\"columnName\":\"password\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"password\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"王超浩\",\"functionName\":\"管理员\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":1}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":1},\"parentMenuId\":1,\"sub\":false,\"tableComment\":\"管理员表\",\"tableId\":2,\"tableName\":\"sc_admin\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:11:24',111),(117,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sc_admin\"}',NULL,0,NULL,'2026-01-14 15:11:40',132),(118,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sc_admin\"}',NULL,0,NULL,'2026-01-14 15:11:47',129),(119,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"classofSc\",\"className\":\"ScClass\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"班级ID\",\"columnId\":13,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"班级名称\",\"columnId\":14,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MajorId\",\"columnComment\":\"所属专业\",\"columnId\":15,\"columnName\":\"major_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"majorId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"王超浩\",\"functionName\":\"班级\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":\\\"\\\"}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":\"\"},\"sub\":false,\"tableComment\":\"班级表\",\"tableId\":3,\"tableName\":\"sc_class\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:21:13',89),(120,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"classofSc\",\"className\":\"ScClass\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"班级ID\",\"columnId\":13,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 15:21:12\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"班级名称\",\"columnId\":14,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 15:21:12\",\"usableColumn\":false},{\"capJavaField\":\"MajorId\",\"columnComment\":\"所属专业\",\"columnId\":15,\"columnName\":\"major_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"majorId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 15:21:12\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"wch\",\"functionName\":\"班级\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":0}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":0},\"parentMenuId\":0,\"sub\":false,\"tableComment\":\"班级表\",\"tableId\":3,\"tableName\":\"sc','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:21:22',39),(121,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"classofSc\",\"className\":\"ScClass\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"班级ID\",\"columnId\":13,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 15:21:22\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"班级名称\",\"columnId\":14,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 15:21:22\",\"usableColumn\":false},{\"capJavaField\":\"MajorId\",\"columnComment\":\"所属专业\",\"columnId\":15,\"columnName\":\"major_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"majorId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 15:21:22\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"王超浩 \",\"functionName\":\"班级\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":0}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":0},\"parentMenuId\":0,\"sub\":false,\"tableComment\":\"班级表\",\"tableId\":3,\"tableName\":\"s','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:21:31',32),(122,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"classofSc\",\"className\":\"ScClass\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"班级ID\",\"columnId\":13,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 15:21:31\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"班级名称\",\"columnId\":14,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 15:21:31\",\"usableColumn\":false},{\"capJavaField\":\"MajorId\",\"columnComment\":\"所属专业\",\"columnId\":15,\"columnName\":\"major_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"majorId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 15:21:31\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"王超浩 \",\"functionName\":\"班级\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":0}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":0},\"parentMenuId\":0,\"sub\":false,\"tableComment\":\"班级表\",\"tableId\":3,\"tableName\":\"s','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:21:55',38),(123,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sc_class\"}',NULL,0,NULL,'2026-01-14 15:21:57',158),(124,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/adminofSc/index\",\"createTime\":\"2026-01-14 15:14:12\",\"icon\":\"#\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"管理员\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"adminofSc\",\"perms\":\"system:adminofSc:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:27:22',47),(125,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"collegeofSc\",\"className\":\"ScCollege\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"学院ID\",\"columnId\":16,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"学院名称\",\"columnId\":17,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"王超浩\",\"functionName\":\"学院\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":\\\"\\\"}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":\"\"},\"sub\":false,\"tableComment\":\"学院表\",\"tableId\":4,\"tableName\":\"sc_college\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:35:18',88),(126,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sc_college\"}',NULL,0,NULL,'2026-01-14 15:35:20',240),(127,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sc_admin\"}',NULL,0,NULL,'2026-01-14 15:48:41',170),(128,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/collegeofSc/index\",\"createTime\":\"2026-01-14 15:38:49\",\"icon\":\"#\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"学院\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"collegeofSc\",\"perms\":\"system:collegeofSc:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:49:29',63),(129,'管理员',1,'com.ruoyi.web.controller.ScAdminController.add()','POST',1,'admin','研发部门','/system/adminofSc','127.0.0.1','内网IP','{\"id\":1,\"params\":{},\"username\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:51:02',54),(130,'管理员',3,'com.ruoyi.web.controller.ScAdminController.remove()','DELETE',1,'admin','研发部门','/system/adminofSc/1','127.0.0.1','内网IP','[1]','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:51:05',24),(131,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sc_class\"}',NULL,0,NULL,'2026-01-14 15:51:11',244),(132,'班级',1,'com.ruoyi.web.controller.ScClassController.add()','POST',1,'admin','研发部门','/system/classofSc','127.0.0.1','内网IP','{\"majorId\":1,\"name\":\"1\",\"params\":{}}',NULL,1,'\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_class`, CONSTRAINT `fk_class_major` FOREIGN KEY (`major_id`) REFERENCES `sc_major` (`id`))\n### The error may exist in file [/Users/Zhuanz/Desktop/RuoYi/RuoYi_backend/ruoyi-system/target/classes/mapper/system/ScClassMapper.xml]\n### The error may involve com.ruoyi.system.mapper.ScClassMapper.insertScClass-Inline\n### The error occurred while setting parameters\n### SQL: insert into sc_class          ( name,             major_id )           values ( ?,             ? )\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_class`, CONSTRAINT `fk_class_major` FOREIGN KEY (`major_id`) REFERENCES `sc_major` (`id`))\n; Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_class`, CONSTRAINT `fk_class_major` FOREIGN KEY (`major_id`) REFERENCES `sc_major` (`id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_class`, CONSTRAINT `fk_class_major` FOREIGN KEY (`major_id`) REFERENCES `sc_major` (`id`))','2026-01-14 15:52:29',109),(133,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sc_college\"}',NULL,0,NULL,'2026-01-14 15:53:07',178),(134,'学院',1,'com.ruoyi.web.controller.ScCollegeController.add()','POST',1,'admin','研发部门','/system/collegeofSc','127.0.0.1','内网IP','{\"id\":1,\"name\":\"132\",\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:59:34',75),(135,'学院',2,'com.ruoyi.web.controller.ScCollegeController.edit()','PUT',1,'admin','研发部门','/system/collegeofSc','127.0.0.1','内网IP','{\"id\":1,\"name\":\"132ss\",\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:59:43',21),(136,'学院',3,'com.ruoyi.web.controller.ScCollegeController.remove()','DELETE',1,'admin','研发部门','/system/collegeofSc/1','127.0.0.1','内网IP','[1]','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 15:59:49',25),(137,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"courseofSc\",\"className\":\"ScCourse\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"课程ID\",\"columnId\":18,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CourseNo\",\"columnComment\":\"课程编号\",\"columnId\":19,\"columnName\":\"course_no\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"courseNo\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":20,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Credit\",\"columnComment\":\"学分\",\"columnId\":21,\"columnName\":\"credit\",\"columnType\":\"decimal(3,1)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"credit\",\"java','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:00:16',64),(138,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sc_course\"}',NULL,0,NULL,'2026-01-14 16:00:19',222),(139,'课程',1,'com.ruoyi.web.controller.ScCourseController.add()','POST',1,'admin','研发部门','/system/courseofSc','127.0.0.1','内网IP','{\"courseNo\":\"1\",\"credit\":1,\"id\":1,\"name\":\"1\",\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:02:53',60),(140,'课程',3,'com.ruoyi.web.controller.ScCourseController.remove()','DELETE',1,'admin','研发部门','/system/courseofSc/1','127.0.0.1','内网IP','[1]','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:03:00',33),(141,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"enrollmentofSc\",\"className\":\"ScEnrollment\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"选课ID\",\"columnId\":22,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentId\",\"columnComment\":\"学生ID\",\"columnId\":23,\"columnName\":\"student_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"studentId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TeachingId\",\"columnComment\":\"授课ID\",\"columnId\":24,\"columnName\":\"teaching_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teachingId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"王超浩 \",\"functionName\":\"选课\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":\\\"\\\"}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":\"\"},\"sub\":false,\"tableComment\":\"选课表\",\"tableId\":6,\"tableName\":\"sc_enrollment\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:03:53',70),(142,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sc_enrollment\"}',NULL,0,NULL,'2026-01-14 16:03:57',188),(143,'选课',1,'com.ruoyi.web.controller.ScEnrollmentController.add()','POST',1,'admin','研发部门','/system/enrollmentofSc','127.0.0.1','内网IP','{\"params\":{},\"studentId\":1,\"teachingId\":1}',NULL,1,'\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_enrollment`, CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `sc_student` (`id`))\n### The error may exist in file [/Users/Zhuanz/Desktop/RuoYi/RuoYi_backend/ruoyi-system/target/classes/mapper/system/ScEnrollmentMapper.xml]\n### The error may involve com.ruoyi.system.mapper.ScEnrollmentMapper.insertScEnrollment-Inline\n### The error occurred while setting parameters\n### SQL: insert into sc_enrollment          ( student_id,             teaching_id )           values ( ?,             ? )\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_enrollment`, CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `sc_student` (`id`))\n; Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_enrollment`, CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `sc_student` (`id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_enrollment`, CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `sc_student` (`id`))','2026-01-14 16:06:01',84),(144,'课程',1,'com.ruoyi.web.controller.ScCourseController.add()','POST',1,'admin','研发部门','/system/courseofSc','127.0.0.1','内网IP','{\"courseNo\":\"1\",\"credit\":1,\"id\":2,\"name\":\"1\",\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:06:06',25),(145,'选课',1,'com.ruoyi.web.controller.ScEnrollmentController.add()','POST',1,'admin','研发部门','/system/enrollmentofSc','127.0.0.1','内网IP','{\"params\":{},\"studentId\":1,\"teachingId\":1}',NULL,1,'\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_enrollment`, CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `sc_student` (`id`))\n### The error may exist in file [/Users/Zhuanz/Desktop/RuoYi/RuoYi_backend/ruoyi-system/target/classes/mapper/system/ScEnrollmentMapper.xml]\n### The error may involve com.ruoyi.system.mapper.ScEnrollmentMapper.insertScEnrollment-Inline\n### The error occurred while setting parameters\n### SQL: insert into sc_enrollment          ( student_id,             teaching_id )           values ( ?,             ? )\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_enrollment`, CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `sc_student` (`id`))\n; Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_enrollment`, CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `sc_student` (`id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_enrollment`, CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `sc_student` (`id`))','2026-01-14 16:06:12',18),(146,'选课',1,'com.ruoyi.web.controller.ScEnrollmentController.add()','POST',1,'admin','研发部门','/system/enrollmentofSc','127.0.0.1','内网IP','{\"params\":{},\"studentId\":1,\"teachingId\":1}',NULL,1,'\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_enrollment`, CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `sc_student` (`id`))\n### The error may exist in file [/Users/Zhuanz/Desktop/RuoYi/RuoYi_backend/ruoyi-system/target/classes/mapper/system/ScEnrollmentMapper.xml]\n### The error may involve com.ruoyi.system.mapper.ScEnrollmentMapper.insertScEnrollment-Inline\n### The error occurred while setting parameters\n### SQL: insert into sc_enrollment          ( student_id,             teaching_id )           values ( ?,             ? )\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_enrollment`, CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `sc_student` (`id`))\n; Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_enrollment`, CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `sc_student` (`id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_enrollment`, CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `sc_student` (`id`))','2026-01-14 16:06:16',14),(147,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"majorofSc\",\"className\":\"ScMajor\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"专业ID\",\"columnId\":25,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"专业名称\",\"columnId\":26,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CollegeId\",\"columnComment\":\"所属学院\",\"columnId\":27,\"columnName\":\"college_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"collegeId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"王超浩 \",\"functionName\":\"专业\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":\\\"\\\"}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":\"\"},\"sub\":false,\"tableComment\":\"专业表\",\"tableId\":7,\"tableName\":\"sc_major\",\"tplCategory\":\"crud\",\"tplWebType\":\"element-plus\",\"tree\":false}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:06:43',55),(148,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"majorofSc\",\"className\":\"ScMajor\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"专业ID\",\"columnId\":25,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 16:06:43\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"专业名称\",\"columnId\":26,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 16:06:43\",\"usableColumn\":false},{\"capJavaField\":\"CollegeId\",\"columnComment\":\"所属学院\",\"columnId\":27,\"columnName\":\"college_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"collegeId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 16:06:43\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"王超浩 \",\"functionName\":\"专业\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"system\",\"options\":\"{\\\"parentMenuId\\\":0}\",\"packageName\":\"com.ruoyi.system\",\"params\":{\"parentMenuId\":0},\"parentMenuId\":0,\"sub\":false,\"tableComment\":\"专业表\",\"tableId\":7,\"tableNa','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:06:48',34),(149,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sc_major\"}',NULL,0,NULL,'2026-01-14 16:06:51',151),(150,'学院',1,'com.ruoyi.web.controller.ScCollegeController.add()','POST',1,'admin','研发部门','/system/collegeofSc','127.0.0.1','内网IP','{\"id\":2,\"name\":\"计算机学院\",\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:08:40',64),(151,'专业',1,'com.ruoyi.web.controller.ScMajorController.add()','POST',1,'admin','研发部门','/system/majorofSc','127.0.0.1','内网IP','{\"collegeId\":2,\"id\":1,\"name\":\"CS\",\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:08:53',28),(152,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"scoreofSC\",\"className\":\"ScScore\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"成绩ID\",\"columnId\":28,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"EnrollmentId\",\"columnComment\":\"选课ID\",\"columnId\":29,\"columnName\":\"enrollment_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"enrollmentId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UsualScore\",\"columnComment\":\"平时成绩\",\"columnId\":30,\"columnName\":\"usual_score\",\"columnType\":\"decimal(5,2)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"usualScore\",\"javaType\":\"BigDecimal\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MidScore\",\"columnComment\":\"期中成绩\",\"columnId\":31,\"columnName\":\"mid_score\",\"columnType\":\"decimal(5,2)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:09:51',68),(153,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"scoreofSC\",\"className\":\"ScScore\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"成绩ID\",\"columnId\":28,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 16:09:51\",\"usableColumn\":false},{\"capJavaField\":\"EnrollmentId\",\"columnComment\":\"选课ID\",\"columnId\":29,\"columnName\":\"enrollment_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"enrollmentId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 16:09:51\",\"usableColumn\":false},{\"capJavaField\":\"UsualScore\",\"columnComment\":\"平时成绩\",\"columnId\":30,\"columnName\":\"usual_score\",\"columnType\":\"decimal(5,2)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"usualScore\",\"javaType\":\"BigDecimal\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 16:09:51\",\"usableColumn\":false},{\"capJavaField\":\"MidScore\",\"columnComment\":\"期中成绩\",\"columnId\":31,\"columnName\":\"mid_score\",\"columnType\":\"decimal(5,2)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"inser','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:09:58',53),(154,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sc_score\"}',NULL,0,NULL,'2026-01-14 16:10:04',191),(155,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"studentofSc\",\"className\":\"ScStudent\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"学生ID\",\"columnId\":34,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StudentNo\",\"columnComment\":\"学号\",\"columnId\":35,\"columnName\":\"student_no\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"studentNo\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":36,\"columnName\":\"name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Gender\",\"columnComment\":\"性别\",\"columnId\":37,\"columnName\":\"gender\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"gender\",\"javaType','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:12:14',131),(156,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"studentofSc\",\"className\":\"ScStudent\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"学生ID\",\"columnId\":34,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 16:12:14\",\"usableColumn\":false},{\"capJavaField\":\"StudentNo\",\"columnComment\":\"学号\",\"columnId\":35,\"columnName\":\"student_no\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"studentNo\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 16:12:14\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":36,\"columnName\":\"name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 16:12:14\",\"usableColumn\":false},{\"capJavaField\":\"Gender\",\"columnComment\":\"性别\",\"columnId\":37,\"columnName\":\"gender\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:12:19',48),(157,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sc_student\"}',NULL,0,NULL,'2026-01-14 16:12:22',447),(158,'学生',1,'com.ruoyi.web.controller.ScStudentController.add()','POST',1,'admin','研发部门','/system/studentofSc','127.0.0.1','内网IP','{\"classId\":1,\"gender\":\"男\",\"name\":\"李华\",\"params\":{},\"studentNo\":\"123\"}',NULL,1,'\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_student`, CONSTRAINT `fk_student_class` FOREIGN KEY (`class_id`) REFERENCES `sc_class` (`id`))\n### The error may exist in file [/Users/Zhuanz/Desktop/RuoYi/RuoYi_backend/ruoyi-system/target/classes/mapper/system/ScStudentMapper.xml]\n### The error may involve com.ruoyi.system.mapper.ScStudentMapper.insertScStudent-Inline\n### The error occurred while setting parameters\n### SQL: insert into sc_student          ( student_no,             name,             gender,             class_id )           values ( ?,             ?,             ?,             ? )\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_student`, CONSTRAINT `fk_student_class` FOREIGN KEY (`class_id`) REFERENCES `sc_class` (`id`))\n; Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_student`, CONSTRAINT `fk_student_class` FOREIGN KEY (`class_id`) REFERENCES `sc_class` (`id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_student`, CONSTRAINT `fk_student_class` FOREIGN KEY (`class_id`) REFERENCES `sc_class` (`id`))','2026-01-14 16:14:07',104),(159,'学生',1,'com.ruoyi.web.controller.ScStudentController.add()','POST',1,'admin','研发部门','/system/studentofSc','127.0.0.1','内网IP','{\"gender\":\"男\",\"id\":2,\"name\":\"李华\",\"params\":{},\"studentNo\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:14:10',33),(160,'班级',1,'com.ruoyi.web.controller.ScClassController.add()','POST',1,'admin','研发部门','/system/classofSc','127.0.0.1','内网IP','{\"id\":2,\"majorId\":1,\"name\":\"1\",\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:14:34',24),(161,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"teacherofSc\",\"className\":\"ScTeacher\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"教师ID\",\"columnId\":40,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TeacherNo\",\"columnComment\":\"工号\",\"columnId\":41,\"columnName\":\"teacher_no\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teacherNo\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":42,\"columnName\":\"name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"职称\",\"columnId\":43,\"columnName\":\"title\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"title\",\"java','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:16:04',202),(162,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"teacherofSc\",\"className\":\"ScTeacher\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"教师ID\",\"columnId\":40,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 16:16:04\",\"usableColumn\":false},{\"capJavaField\":\"TeacherNo\",\"columnComment\":\"工号\",\"columnId\":41,\"columnName\":\"teacher_no\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teacherNo\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 16:16:04\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"姓名\",\"columnId\":42,\"columnName\":\"name\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 16:16:04\",\"usableColumn\":false},{\"capJavaField\":\"Title\",\"columnComment\":\"职称\",\"columnId\":43,\"columnName\":\"title\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncre','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:16:09',41),(163,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sc_teacher\"}',NULL,0,NULL,'2026-01-14 16:16:11',190),(164,'教师',1,'com.ruoyi.web.controller.ScTeacherController.add()','POST',1,'admin','研发部门','/system/teacherofSc','127.0.0.1','内网IP','{\"id\":1,\"name\":\"teacher\",\"params\":{},\"teacherNo\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:17:58',50),(165,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"teachingofSc\",\"className\":\"ScTeaching\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"授课ID\",\"columnId\":45,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TeacherId\",\"columnComment\":\"教师ID\",\"columnId\":46,\"columnName\":\"teacher_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teacherId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CourseId\",\"columnComment\":\"课程ID\",\"columnId\":47,\"columnName\":\"course_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"courseId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Semester\",\"columnComment\":\"学期\",\"columnId\":48,\"columnName\":\"semester\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"semester\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:19:31',71),(166,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"teachingofSc\",\"className\":\"ScTeaching\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"授课ID\",\"columnId\":45,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 16:19:31\",\"usableColumn\":false},{\"capJavaField\":\"TeacherId\",\"columnComment\":\"教师ID\",\"columnId\":46,\"columnName\":\"teacher_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teacherId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 16:19:31\",\"usableColumn\":false},{\"capJavaField\":\"CourseId\",\"columnComment\":\"课程ID\",\"columnId\":47,\"columnName\":\"course_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"courseId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2026-01-14 16:19:31\",\"usableColumn\":false},{\"capJavaField\":\"Semester\",\"columnComment\":\"学期\",\"columnId\":48,\"columnName\":\"semester\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2026-01-14 15:08:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIn','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:19:36',37),(167,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sc_teaching\"}',NULL,0,NULL,'2026-01-14 16:19:38',104),(168,'授课',1,'com.ruoyi.web.controller.ScTeachingController.add()','POST',1,'admin','研发部门','/system/teachingofSc','127.0.0.1','内网IP','{\"courseId\":1,\"params\":{},\"teacherId\":1}',NULL,1,'\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_teaching`, CONSTRAINT `fk_teaching_course` FOREIGN KEY (`course_id`) REFERENCES `sc_course` (`id`))\n### The error may exist in file [/Users/Zhuanz/Desktop/RuoYi/RuoYi_backend/ruoyi-system/target/classes/mapper/system/ScTeachingMapper.xml]\n### The error may involve com.ruoyi.system.mapper.ScTeachingMapper.insertScTeaching-Inline\n### The error occurred while setting parameters\n### SQL: insert into sc_teaching          ( teacher_id,             course_id )           values ( ?,             ? )\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_teaching`, CONSTRAINT `fk_teaching_course` FOREIGN KEY (`course_id`) REFERENCES `sc_course` (`id`))\n; Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_teaching`, CONSTRAINT `fk_teaching_course` FOREIGN KEY (`course_id`) REFERENCES `sc_course` (`id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_teaching`, CONSTRAINT `fk_teaching_course` FOREIGN KEY (`course_id`) REFERENCES `sc_course` (`id`))','2026-01-14 16:21:48',79),(169,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/courseofSc/index\",\"createTime\":\"2026-01-14 16:01:04\",\"icon\":\"#\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2024,\"menuName\":\"课程\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"courseofSc\",\"perms\":\"system:courseofSc:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:22:38',47),(170,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/enrollmentofSc/index\",\"createTime\":\"2026-01-14 16:04:26\",\"icon\":\"#\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2030,\"menuName\":\"选课\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"enrollmentofSc\",\"perms\":\"system:enrollmentofSc:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:22:43',18),(171,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/adminofSc/index\",\"createTime\":\"2026-01-14 15:14:12\",\"icon\":\"#\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"管理员\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"adminofSc\",\"perms\":\"system:adminofSc:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:23:01',23),(172,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/collegeofSc/index\",\"createTime\":\"2026-01-14 15:38:49\",\"icon\":\"#\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"学院\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"collegeofSc\",\"perms\":\"system:collegeofSc:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:23:23',18),(173,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/majorofSc/index\",\"createTime\":\"2026-01-14 16:07:14\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2036,\"menuName\":\"专业\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"majorofSc\",\"perms\":\"system:majorofSc:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:23:29',21),(174,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/classofSc/index\",\"createTime\":\"2026-01-14 15:22:23\",\"icon\":\"#\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2012,\"menuName\":\"班级\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"classofSc\",\"perms\":\"system:classofSc:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:23:33',20),(175,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/courseofSc/index\",\"createTime\":\"2026-01-14 16:01:04\",\"icon\":\"#\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2024,\"menuName\":\"课程\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"courseofSc\",\"perms\":\"system:courseofSc:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:23:47',25),(176,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/studentofSc/index\",\"createTime\":\"2026-01-14 16:12:41\",\"icon\":\"#\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2048,\"menuName\":\"学生\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"studentofSc\",\"perms\":\"system:studentofSc:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:23:59',19),(177,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/teacherofSc/index\",\"createTime\":\"2026-01-14 16:16:47\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2054,\"menuName\":\"教师\",\"menuType\":\"C\",\"orderNum\":6,\"params\":{},\"parentId\":0,\"path\":\"teacherofSc\",\"perms\":\"system:teacherofSc:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:24:03',15),(178,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/enrollmentofSc/index\",\"createTime\":\"2026-01-14 16:04:26\",\"icon\":\"#\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2030,\"menuName\":\"选课\",\"menuType\":\"C\",\"orderNum\":8,\"params\":{},\"parentId\":0,\"path\":\"enrollmentofSc\",\"perms\":\"system:enrollmentofSc:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:24:06',24),(179,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/courseofSc/index\",\"createTime\":\"2026-01-14 16:01:04\",\"icon\":\"#\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2024,\"menuName\":\"课程\",\"menuType\":\"C\",\"orderNum\":7,\"params\":{},\"parentId\":0,\"path\":\"courseofSc\",\"perms\":\"system:courseofSc:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:24:12',18),(180,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/enrollmentofSc/index\",\"createTime\":\"2026-01-14 16:04:26\",\"icon\":\"#\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2030,\"menuName\":\"选课\",\"menuType\":\"C\",\"orderNum\":8,\"params\":{},\"parentId\":0,\"path\":\"enrollmentofSc\",\"perms\":\"system:enrollmentofSc:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:24:16',19),(181,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/scoreofSC/index\",\"createTime\":\"2026-01-14 16:10:29\",\"icon\":\"#\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2042,\"menuName\":\"成绩\",\"menuType\":\"C\",\"orderNum\":9,\"params\":{},\"parentId\":0,\"path\":\"scoreofSC\",\"perms\":\"system:scoreofSC:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:24:21',21),(182,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/teachingofSc/index\",\"createTime\":\"2026-01-14 16:20:10\",\"icon\":\"#\",\"isCache\":\"1\",\"isFrame\":\"1\",\"menuId\":2060,\"menuName\":\"授课\",\"menuType\":\"C\",\"orderNum\":10,\"params\":{},\"parentId\":0,\"path\":\"teachingofSc\",\"perms\":\"system:teachingofSc:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:24:28',24),(183,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2025-11-23 11:00:14\",\"icon\":\"system\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1,\"menuName\":\"系统管理\",\"menuType\":\"M\",\"orderNum\":100,\"params\":{},\"parentId\":0,\"path\":\"system\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:24:45',18),(184,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2025-11-23 11:00:14\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":200,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:24:49',28),(185,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2025-11-23 11:00:14\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":300,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:24:55',23),(186,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2025-11-23 11:00:14\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":400,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:24:59',16),(187,'班级',2,'com.ruoyi.web.controller.ScClassController.edit()','PUT',1,'admin','研发部门','/system/classofSc','127.0.0.1','内网IP','{\"id\":2,\"majorId\":1,\"name\":\"计科2404\",\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:25:30',35),(188,'学生',2,'com.ruoyi.web.controller.ScStudentController.edit()','PUT',1,'admin','研发部门','/system/studentofSc','127.0.0.1','内网IP','{\"classId\":3,\"gender\":\"男\",\"id\":2,\"name\":\"李华\",\"params\":{},\"studentNo\":\"123\"}',NULL,1,'\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_student`, CONSTRAINT `fk_student_class` FOREIGN KEY (`class_id`) REFERENCES `sc_class` (`id`))\n### The error may exist in file [/Users/Zhuanz/Desktop/RuoYi/RuoYi_backend/ruoyi-system/target/classes/mapper/system/ScStudentMapper.xml]\n### The error may involve com.ruoyi.system.mapper.ScStudentMapper.updateScStudent-Inline\n### The error occurred while setting parameters\n### SQL: update sc_student          SET student_no = ?,             name = ?,             gender = ?,             class_id = ?          where id = ?\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_student`, CONSTRAINT `fk_student_class` FOREIGN KEY (`class_id`) REFERENCES `sc_class` (`id`))\n; Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_student`, CONSTRAINT `fk_student_class` FOREIGN KEY (`class_id`) REFERENCES `sc_class` (`id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_student`, CONSTRAINT `fk_student_class` FOREIGN KEY (`class_id`) REFERENCES `sc_class` (`id`))','2026-01-14 16:25:47',33),(189,'学生',2,'com.ruoyi.web.controller.ScStudentController.edit()','PUT',1,'admin','研发部门','/system/studentofSc','127.0.0.1','内网IP','{\"classId\":2,\"gender\":\"男\",\"id\":2,\"name\":\"李华\",\"params\":{},\"studentNo\":\"123\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:25:49',22),(190,'教师',2,'com.ruoyi.web.controller.ScTeacherController.edit()','PUT',1,'admin','研发部门','/system/teacherofSc','127.0.0.1','内网IP','{\"collegeId\":2,\"id\":1,\"name\":\"teacher\",\"params\":{},\"teacherNo\":\"1\",\"title\":\"教授\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:26:45',22),(191,'选课',1,'com.ruoyi.web.controller.ScEnrollmentController.add()','POST',1,'admin','研发部门','/system/enrollmentofSc','127.0.0.1','内网IP','{\"params\":{},\"studentId\":1,\"teachingId\":1}',NULL,1,'\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_enrollment`, CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `sc_student` (`id`))\n### The error may exist in file [/Users/Zhuanz/Desktop/RuoYi/RuoYi_backend/ruoyi-system/target/classes/mapper/system/ScEnrollmentMapper.xml]\n### The error may involve com.ruoyi.system.mapper.ScEnrollmentMapper.insertScEnrollment-Inline\n### The error occurred while setting parameters\n### SQL: insert into sc_enrollment          ( student_id,             teaching_id )           values ( ?,             ? )\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_enrollment`, CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `sc_student` (`id`))\n; Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_enrollment`, CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `sc_student` (`id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`sc_enrollment`, CONSTRAINT `fk_enrollment_student` FOREIGN KEY (`student_id`) REFERENCES `sc_student` (`id`))','2026-01-14 16:27:03',28),(192,'授课',1,'com.ruoyi.web.controller.ScTeachingController.add()','POST',1,'admin','研发部门','/system/teachingofSc','127.0.0.1','内网IP','{\"courseId\":2,\"id\":2,\"params\":{},\"semester\":\"1\",\"teacherId\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:27:18',22),(193,'选课',1,'com.ruoyi.web.controller.ScEnrollmentController.add()','POST',1,'admin','研发部门','/system/enrollmentofSc','127.0.0.1','内网IP','{\"id\":5,\"params\":{},\"studentId\":2,\"teachingId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:27:26',9),(194,'成绩',1,'com.ruoyi.web.controller.ScScoreController.add()','POST',1,'admin','研发部门','/system/scoreofSC','127.0.0.1','内网IP','{\"enrollmentId\":5,\"finalScore\":90,\"id\":1,\"midScore\":90,\"params\":{},\"totalScore\":90,\"usualScore\":90}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 16:27:50',32),(195,'管理员',1,'com.ruoyi.web.controller.ScAdminController.add()','POST',1,'admin','研发部门','/system/adminofSc','183.157.133.16','XX XX','{\"id\":2,\"params\":{},\"username\":\"111\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 21:18:25',23),(196,'管理员',3,'com.ruoyi.web.controller.ScAdminController.remove()','DELETE',1,'admin','研发部门','/system/adminofSc/2','183.157.133.16','XX XX','[2]','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2026-01-14 21:18:28',24);
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2025-11-23 11:00:14','',NULL,''),(2,'se','项目经理',2,'0','admin','2025-11-23 11:00:14','',NULL,''),(3,'hr','人力资源',3,'0','admin','2025-11-23 11:00:14','',NULL,''),(4,'user','普通员工',4,'0','admin','2025-11-23 11:00:14','',NULL,'');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2025-11-23 11:00:14','',NULL,'超级管理员'),(2,'普通角色','common',2,'2',1,1,'0','0','admin','2025-11-23 11:00:14','',NULL,'普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (2,100),(2,101),(2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,1),(2,2),(2,3),(2,4),(2,100),(2,101),(2,102),(2,103),(2,104),(2,105),(2,106),(2,107),(2,108),(2,109),(2,110),(2,111),(2,112),(2,113),(2,114),(2,115),(2,116),(2,117),(2,500),(2,501),(2,1000),(2,1001),(2,1002),(2,1003),(2,1004),(2,1005),(2,1006),(2,1007),(2,1008),(2,1009),(2,1010),(2,1011),(2,1012),(2,1013),(2,1014),(2,1015),(2,1016),(2,1017),(2,1018),(2,1019),(2,1020),(2,1021),(2,1022),(2,1023),(2,1024),(2,1025),(2,1026),(2,1027),(2,1028),(2,1029),(2,1030),(2,1031),(2,1032),(2,1033),(2,1034),(2,1035),(2,1036),(2,1037),(2,1038),(2,1039),(2,1040),(2,1041),(2,1042),(2,1043),(2,1044),(2,1045),(2,1046),(2,1047),(2,1048),(2,1049),(2,1050),(2,1051),(2,1052),(2,1053),(2,1054),(2,1055),(2,1056),(2,1057),(2,1058),(2,1059),(2,1060);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','若依','00','ry@163.com','15888888888','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2026-01-15 16:14:57','2025-11-23 11:00:14','admin','2025-11-23 11:00:14','',NULL,'管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2025-11-23 11:00:14','2025-11-23 11:00:14','admin','2025-11-23 11:00:14','',NULL,'测试员');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-17 11:02:07
