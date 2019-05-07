-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: credit_db
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts_student`
--

DROP TABLE IF EXISTS `accounts_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `faculty` varchar(256) NOT NULL,
  `year_of_study` varchar(1) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_student`
--

LOCK TABLES `accounts_student` WRITE;
/*!40000 ALTER TABLE `accounts_student` DISABLE KEYS */;
INSERT INTO `accounts_student` VALUES (8,'aw8qw1','er8me1','awad mohamed','qwert','1','a.abdelfatah.100@gmail.com'),(9,'ab9it4','it9bd4','abdo','iti','4','a.abdelfatah.100@gmail.com');
/*!40000 ALTER TABLE `accounts_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add student',1,'add_student'),(2,'Can change student',1,'change_student'),(3,'Can delete student',1,'delete_student'),(4,'Can view student',1,'view_student'),(5,'Can add log entry',2,'add_logentry'),(6,'Can change log entry',2,'change_logentry'),(7,'Can delete log entry',2,'delete_logentry'),(8,'Can view log entry',2,'view_logentry'),(9,'Can add permission',3,'add_permission'),(10,'Can change permission',3,'change_permission'),(11,'Can delete permission',3,'delete_permission'),(12,'Can view permission',3,'view_permission'),(13,'Can add group',4,'add_group'),(14,'Can change group',4,'change_group'),(15,'Can delete group',4,'delete_group'),(16,'Can view group',4,'view_group'),(17,'Can add user',5,'add_user'),(18,'Can change user',5,'change_user'),(19,'Can delete user',5,'delete_user'),(20,'Can view user',5,'view_user'),(21,'Can add content type',6,'add_contenttype'),(22,'Can change content type',6,'change_contenttype'),(23,'Can delete content type',6,'delete_contenttype'),(24,'Can view content type',6,'view_contenttype'),(25,'Can add session',7,'add_session'),(26,'Can change session',7,'change_session'),(27,'Can delete session',7,'delete_session'),(28,'Can view session',7,'view_session'),(29,'Can add subject_ student',8,'add_subject_student'),(30,'Can change subject_ student',8,'change_subject_student'),(31,'Can delete subject_ student',8,'delete_subject_student'),(32,'Can view subject_ student',8,'view_subject_student'),(33,'Can add subject',9,'add_subject'),(34,'Can change subject',9,'change_subject'),(35,'Can delete subject',9,'delete_subject'),(36,'Can view subject',9,'view_subject');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$2AfZ7oGCGEE3$OBoWgm/I9gdE95WflbAqbXNhTwroHksSdRlNlVLos5Q=','2019-05-07 19:18:41.612636',1,'medo','','','',1,1,'2019-05-07 19:18:20.014513');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-05-07 19:18:58.247621','1','Subject object (1)',1,'[{\"added\": {}}]',9,1),(2,'2019-05-07 19:19:05.721581','2','Subject object (2)',1,'[{\"added\": {}}]',9,1),(3,'2019-05-07 19:19:12.485288','3','Subject object (3)',1,'[{\"added\": {}}]',9,1),(4,'2019-05-07 19:19:21.619783','4','Subject object (4)',1,'[{\"added\": {}}]',9,1),(5,'2019-05-07 19:20:09.151052','5','Subject object (5)',1,'[{\"added\": {}}]',9,1),(6,'2019-05-07 19:20:17.970548','6','Subject object (6)',1,'[{\"added\": {}}]',9,1),(7,'2019-05-07 19:20:26.477041','7','Subject object (7)',1,'[{\"added\": {}}]',9,1),(8,'2019-05-07 19:22:28.986948','8','sub11',1,'[{\"added\": {}}]',9,1),(9,'2019-05-07 19:22:37.756460','9','sub12',1,'[{\"added\": {}}]',9,1),(10,'2019-05-07 19:22:48.587239','10','sub13',1,'[{\"added\": {}}]',9,1),(11,'2019-05-07 19:22:58.084580','11','sub14',1,'[{\"added\": {}}]',9,1),(12,'2019-05-07 19:23:09.237856','12','sub15',1,'[{\"added\": {}}]',9,1),(13,'2019-05-07 19:23:18.980654','13','sub16',1,'[{\"added\": {}}]',9,1),(14,'2019-05-07 21:21:10.579165','14','sub90',1,'[{\"added\": {}}]',9,1),(15,'2019-05-07 21:24:38.354011','15','sub30',1,'[{\"added\": {}}]',9,1),(16,'2019-05-07 21:24:50.513834','16','sub40',1,'[{\"added\": {}}]',9,1),(17,'2019-05-07 21:25:03.369274','17','sub120',1,'[{\"added\": {}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'accounts','student'),(2,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(6,'contenttypes','contenttype'),(7,'sessions','session'),(9,'subject','subject'),(8,'subject','subject_student');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'accounts','0001_initial','2019-05-07 15:02:33.689301'),(2,'contenttypes','0001_initial','2019-05-07 15:02:33.827390'),(3,'auth','0001_initial','2019-05-07 15:02:34.338669'),(4,'admin','0001_initial','2019-05-07 15:02:35.838026'),(5,'admin','0002_logentry_remove_auto_add','2019-05-07 15:02:36.190995'),(6,'admin','0003_logentry_add_action_flag_choices','2019-05-07 15:02:36.214309'),(7,'contenttypes','0002_remove_content_type_name','2019-05-07 15:02:36.460826'),(8,'auth','0002_alter_permission_name_max_length','2019-05-07 15:02:36.486661'),(9,'auth','0003_alter_user_email_max_length','2019-05-07 15:02:36.512289'),(10,'auth','0004_alter_user_username_opts','2019-05-07 15:02:36.523815'),(11,'auth','0005_alter_user_last_login_null','2019-05-07 15:02:36.640433'),(12,'auth','0006_require_contenttypes_0002','2019-05-07 15:02:36.648352'),(13,'auth','0007_alter_validators_add_error_messages','2019-05-07 15:02:36.663313'),(14,'auth','0008_alter_user_username_max_length','2019-05-07 15:02:36.687699'),(15,'auth','0009_alter_user_last_name_max_length','2019-05-07 15:02:36.715121'),(16,'auth','0010_alter_group_name_max_length','2019-05-07 15:02:36.743640'),(17,'auth','0011_update_proxy_permissions','2019-05-07 15:02:36.783975'),(18,'sessions','0001_initial','2019-05-07 15:02:36.855883'),(19,'accounts','0002_student_email','2019-05-07 15:33:38.570972'),(20,'accounts','0003_auto_20190507_1826','2019-05-07 18:26:43.678021'),(21,'subject','0001_initial','2019-05-07 19:14:12.156703'),(22,'subject','0002_subject_semester_number','2019-05-07 19:21:50.897944'),(23,'subject','0003_auto_20190507_2052','2019-05-07 20:52:39.904487');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6ytpawnwylhv2zuo0be0eqotcngul25e','NjQ1MTYzZTMzNmQ2ZDgyYzEwOWEwMDcxMTQ2MDE2ZDY4NjJjYTAxMDp7fQ==','2019-05-21 22:36:00.775872'),('zkjxk4w9x4r7gp1wq9hjfe9wcwwrrc6c','MmFhODBkZDljMzcxZjExZDhmNTJlOWUwYjc0NmZlYTBmZjMwMzA1MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5NmMwMTAxMzAwZWQ2YmQ1MWVlMzBlNWQ1MDMyM2FkMDBhYjU0NzkxIn0=','2019-05-21 19:18:41.630614');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_subject`
--

DROP TABLE IF EXISTS `subject_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `number_of_hours` int(11) NOT NULL,
  `semester_number` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_subject`
--

LOCK TABLES `subject_subject` WRITE;
/*!40000 ALTER TABLE `subject_subject` DISABLE KEYS */;
INSERT INTO `subject_subject` VALUES (1,'sub1',4,1),(2,'sub2',1,1),(3,'sub3',2,1),(4,'sub4',5,1),(5,'sub5',4,1),(6,'sub6',6,1),(7,'sub7',7,1),(8,'sub11',11,2),(9,'sub12',12,2),(10,'sub13',13,2),(11,'sub14',14,2),(12,'sub15',15,1),(13,'sub16',16,2),(14,'sub90',90,1),(15,'sub30',30,2),(16,'sub40',40,2),(17,'sub120',120,2);
/*!40000 ALTER TABLE `subject_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_subject_student`
--

DROP TABLE IF EXISTS `subject_subject_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_subject_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `semester_number` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_subject_stud_student_id_9ebf2c56_fk_accounts_` (`student_id`),
  KEY `subject_subject_stud_subject_id_d6cb750b_fk_subject_s` (`subject_id`),
  CONSTRAINT `subject_subject_stud_student_id_9ebf2c56_fk_accounts_` FOREIGN KEY (`student_id`) REFERENCES `accounts_student` (`id`),
  CONSTRAINT `subject_subject_stud_subject_id_d6cb750b_fk_subject_s` FOREIGN KEY (`subject_id`) REFERENCES `subject_subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_subject_student`
--

LOCK TABLES `subject_subject_student` WRITE;
/*!40000 ALTER TABLE `subject_subject_student` DISABLE KEYS */;
INSERT INTO `subject_subject_student` VALUES (42,1,8,1),(44,1,8,3),(45,1,8,2),(46,1,8,14),(47,2,8,8),(48,2,8,15),(49,2,8,10),(50,2,8,11),(52,1,9,2),(53,1,9,3),(54,1,9,4),(55,1,9,5),(56,1,9,1),(57,2,9,8),(58,2,9,9),(59,2,9,10);
/*!40000 ALTER TABLE `subject_subject_student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-08  0:43:35
