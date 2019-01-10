<<<<<<< HEAD
-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: webapp
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB-0+deb9u1
=======
-- MySQL dump 10.14  Distrib 5.5.60-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: webapp
-- ------------------------------------------------------
-- Server version	5.5.60-MariaDB
>>>>>>> bc12af8c96c87fba84749b9e39550d3fed91b21d

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
<<<<<<< HEAD
/*!40101 SET NAMES utf8mb4 */;
=======
/*!40101 SET NAMES utf8 */;
>>>>>>> bc12af8c96c87fba84749b9e39550d3fed91b21d
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `TERMS`
--

DROP TABLE IF EXISTS `TERMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TERMS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KEY_J` varchar(20) DEFAULT NULL,
  `KEY_E` varchar(20) DEFAULT NULL,
  `VAL_E` varchar(50) DEFAULT NULL,
  `VAL_J` varchar(50) DEFAULT NULL,
  `VAL_V` varchar(50) DEFAULT NULL,
  `CATEGORY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TERMS`
--

LOCK TABLES `TERMS` WRITE;
/*!40000 ALTER TABLE `TERMS` DISABLE KEYS */;
INSERT INTO `TERMS` VALUES (1,'asdf','asdf','asdf','asd','fasdf',NULL),(2,'asdf1234','asdf1234123','asdf4','asdfas','dfasdfasd234',NULL),(3,'asdfa','lkj',';lkj',';lkj',';lk',NULL),(4,'kjgjhlh','lkj','lh','lkj','hkl',NULL),(5,'industry','industry','cong nghei[','ádkjf','công nghiệp',NULL),(6,'jhg','jk','ghkj','gkj','ghkjg',NULL),(7,'asdf','asdf','asdf','asdf','asdf',NULL),(8,'hljkh','lkj','hlkj','hlkj','hljh',NULL),(9,'fghsd','fgsd','fgsdf','dfgsd','fgsdfg',NULL),(10,'sfdg','sdfg','sdfgs','sdfgsd','gsdfg',NULL),(11,'ádf','ádf','ádf','ádf','ádf',NULL),(12,'ss','ss','ss','ss','ss',NULL),(13,'ss','ss','ss','ss','ss',NULL),(14,'0','0','0','0','0',NULL);
/*!40000 ALTER TABLE `TERMS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'123');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,3),(2,1,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add group',4,'add_group'),(11,'Can change group',4,'change_group'),(12,'Can delete group',4,'delete_group'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session');
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
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$GlGlQcJzA2Xu$0KPHoutdSb09zjXqeDj8S7MreYTmVm1VE1UhecrC9Ek=','2018-11-28 08:28:27',1,'root','','','tunguyen4078@gmail.com',1,1,'2018-11-28 08:28:14');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `parentid` int(11) NOT NULL,
  `catgrade` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Giai tri',NULL,NULL,0,0),(2,'Hoc tap',NULL,NULL,0,0);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
<<<<<<< HEAD
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
=======
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
>>>>>>> bc12af8c96c87fba84749b9e39550d3fed91b21d
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-11-28 08:29:36','1','123',1,'[{\"added\": {}}]',4,1),(2,'2018-11-28 08:29:52','1','123',2,'[{\"changed\": {\"fields\": [\"permissions\"]}}]',4,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(4,'auth','group'),(2,'auth','permission'),(3,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-11-28 08:27:35'),(2,'auth','0001_initial','2018-11-28 08:27:37'),(3,'admin','0001_initial','2018-11-28 08:27:38'),(4,'admin','0002_logentry_remove_auto_add','2018-11-28 08:27:38'),(5,'contenttypes','0002_remove_content_type_name','2018-11-28 08:27:39'),(6,'auth','0002_alter_permission_name_max_length','2018-11-28 08:27:39'),(7,'auth','0003_alter_user_email_max_length','2018-11-28 08:27:40'),(8,'auth','0004_alter_user_username_opts','2018-11-28 08:27:40'),(9,'auth','0005_alter_user_last_login_null','2018-11-28 08:27:40'),(10,'auth','0006_require_contenttypes_0002','2018-11-28 08:27:40'),(11,'auth','0007_alter_validators_add_error_messages','2018-11-28 08:27:41'),(12,'auth','0008_alter_user_username_max_length','2018-11-28 08:27:41'),(13,'auth','0009_alter_user_last_name_max_length','2018-11-28 08:27:41'),(14,'sessions','0001_initial','2018-11-28 08:27:42');
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
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('qo080n17tr0zvgkolbz68sv3u6tficsu','YTZmYWU4MTY4NWZiMDRlYmQ2ZWMzMjA2Y2UyOTczZWY5YzE3NDk1Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTNlZmIyOGE5ZTA0ZTcwNjk4ZWE4ZWFhNmM5ZjY4Njg3ZmYzMzFlMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-12-12 08:28:27');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knowledge`
--

DROP TABLE IF EXISTS `knowledge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowledge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) DEFAULT '0',
  `topicid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8;
=======
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;
>>>>>>> bc12af8c96c87fba84749b9e39550d3fed91b21d
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledge`
--

LOCK TABLES `knowledge` WRITE;
/*!40000 ALTER TABLE `knowledge` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `knowledge` VALUES (4,'12','12','2018-07-03 16:20:35',0,43),(5,'khong','so easy','2018-07-03 16:20:40',0,43),(9,'meo','hoang 1','2018-07-04 09:30:03',0,45),(11,'shut down','stop business','2018-07-04 09:59:59',0,61),(12,'aftermath','hậu quả (the period of time after an event, particularly an event that has a big impact)','2018-07-04 10:00:14',0,61),(13,'outlets','thị trường, chỗ tiêu thụ, cửa hàng tiêu thụ','2018-07-04 10:00:27',0,61),(14,'Hyphens','dấu gạch nối','2018-07-04 10:00:38',0,61),(15,'run a task in background','./main.run > /dev/null 2>&1 &','2018-07-04 04:27:44',0,63),(16,'run a task in background and never diw','./main.run -> Ctr+Z -> bg -> disown -a','2018-07-05 00:08:32',0,63),(21,'get (install) session','go get github.com/gorilla/sessions','2018-07-05 23:26:07',0,70),(22,'get (install) golang mysql driver','go get -u github.com/go-sql-driver/mysql','2018-07-05 23:32:38',0,70),(23,'embed javascript','tampermonkey','2018-07-06 05:28:34',0,65),(24,'tool count source code','kazoeciao159b1_e','2018-07-06 09:45:24',0,65),(25,'git push origin master','nếu origin là tên repository, thử thay đổi hoặc tạo ra 1 cái khác origin và push thử','2018-07-12 09:18:30',0,69),(26,'khóa học git udemy: https://www.udemy.com/git-complete/learn/v4/overview','https://www.udemy.com/git-complete/learn/v4/t/lecture/1935804?start=0','2018-07-12 09:20:11',0,71),(27,'hài','https://www.youtube.com/watch?v=j3_qGCMmQOg&t=50s','2018-07-16 07:23:12',0,75),(28,'nhắn tin troll hài','https://www.youtube.com/watch?v=hLH_NK2ASzs','2018-07-16 07:31:34',0,75),(29,'số nhọ','https://www.youtube.com/watch?v=T4qGqtzG1_o','2018-07-16 08:07:54',0,75),(30,'toca toca','https://www.youtube.com/watch?v=CJbA6-KYl_s','2018-07-16 08:08:58',0,73),(31,'tik tok','https://www.youtube.com/watch?v=gZVq5Bcheos','2018-07-16 09:57:41',0,75),(33,'mereke','https://www.youtube.com/watch?v=9K8UIyH7z80','2018-07-17 03:17:40',0,73),(34,'sa ding ding','https://www.youtube.com/watch?v=l8Z8gpoF4x8','2018-07-17 03:54:59',0,73),(35,'mèo hát sa dingding','https://youtu.be/PkGy_AdvvIY?t=562','2018-07-17 03:55:51',0,75),(37,'hài','https://www.youtube.com/watch?v=5u-GNwHej98','2018-07-18 08:43:09',0,75),(38,'nhảy theo nhạc','https://youtu.be/c-yQudkurkk?t=255','2018-07-18 09:12:57',0,75),(39,'Những Video TRIỆU View Trên Tik Tok TQ ❤️ Phần 3','https://www.youtube.com/watch?v=A7dR16QdMYc','2018-07-18 09:48:38',0,75),(40,'hài','https://youtu.be/xrR9vZ5WGNA?t=20','2018-07-18 10:24:50',0,75),(41,'Làm freelancer','dục tốc bất đạt','2018-07-18 10:45:29',0,76),(42,'phim hài quân đội','https://www.facebook.com/anhchuot1997/videos/2570014923223195/','2018-07-20 07:00:12',0,75),(43,'microservice','học nó','2018-07-21 07:47:52',0,83),(44,'Siêu Xạ Thủ Rambo','https://www.youtube.com/watch?v=tnqFuzwvk-g','2018-07-21 14:43:45',0,77),(45,'baahubali','https://www.youtube.com/watch?v=wCsVOMFh1DQ','2018-07-22 03:00:21',0,77),(46,'săn lùng nội gián','https://www.youtube.com/watch?v=8Qm1C9mDzmc','2018-07-23 03:07:22',0,77),(47,'đồ ăn nhanh hà nội','http://khoaikhau.vn/dat-hang/','2018-07-25 12:48:59',0,78),(48,'generate youtube id (URL)','1','2018-07-27 00:07:23',0,69),(49,'phải master 1 cái gì đó','spring, struts, python chẳng hạn','2018-07-29 14:15:39',0,83),(50,'tìm hiểu làm web về video','cách trình chiếu video','2018-07-29 14:15:58',0,83),(51,'kỹ thuật dựng phim','?!!','2018-07-29 14:22:22',0,83),(52,'an toàn bảo mật tt','http://www.cit.ctu.edu.vn/~pnkhang/cours/atbmtt/index.html','2018-07-29 14:47:39',0,78),(53,'hài Ừ Đúng Rồi','Ừ Đúng Rồi','2018-07-29 15:33:04',0,75),(54,'sould i coding with 10 fingers','1','2018-07-30 02:59:05',0,79),(55,'TGD nguyễn mạnh hùng viettel nói chuyện','https://www.youtube.com/watch?v=Pj_M3_zQg5Q','2018-07-30 06:19:50',0,72),(57,'backup a db','mysqldump --databases webapp > webapp.sql','2018-07-30 08:49:09',0,80),(58,'ssl how to','http://tldp.org/HOWTO/SSL-Certificates-HOWTO/x64.html','2018-07-30 09:59:29',0,78),(59,'tai klhoan office 365','https://www.office.com/?auth=2','2018-07-30 15:04:10',0,78),(60,'mua ssl','https://muassl.com/DatMua/vi/detail#checkInstall','2018-07-31 12:38:13',0,78),(61,'lỗi ssl golang tls: private key does not match public key','do lấy nhầm key từ trang https://muassl.com ( cần lên và lấy key khác)','2018-08-01 09:08:39',0,81),(62,'SSL','private key, CSR có thể tự tạo, .cert file là public key (?) còn intermediate/CA Chain có thể được nối vào .cert file','2018-08-01 09:43:42',0,76),(63,'cài đặt ssl','tròn 2 ngày (16h)','2018-08-01 11:52:49',0,82),(64,'VMEO video host / youtube','tìm hiểu cách làm','2018-08-01 12:11:50',0,83),(65,'(search) dạy con , dạy em học toán','(hài)','2018-08-02 02:55:51',0,72),(66,'(search) pho viet nam, ha noi','học tiếng anh','2018-08-02 02:56:10',0,72),(67,'hài vl chị google đọc tin nhắn','https://www.youtube.com/watch?v=RB1VebJ52XM','2018-08-02 03:56:54',0,75),(68,'5 minus craft tips','https://www.facebook.com/5Minute.Crafts.Girly/videos/2111251962449378/','2018-08-02 04:08:42',0,72),(69,'mua và cài ssl','không biết -> search hoặc tìm người để hỏi (trường hợp pivate key, do lấy nhầm private key chứ không phải lỗi kỹ thuật => hỏi người bán)','2018-08-02 05:41:32',0,84),(70,'mua và cài ssl','search không thấy => dễ, không nên lo lắng','2018-08-02 05:42:04',0,84),(71,'Thực đơn bữa trưa của học sinh Việt Nam và các nước có gì khác?','https://www.youtube.com/watch?v=L4B-0pAzeFE','2018-08-02 15:09:08',0,69),(72,'Người Tây Đọc Câu Cực Khó Việt Nam Và Ngược Lại','https://www.youtube.com/watch?v=0gmGv6AZ1EI','2018-08-03 09:36:40',0,75),(73,'tam cam thoi a cong','https://www.youtube.com/watch?v=Jy6Hu5_c-V8','2018-08-06 02:13:11',0,75),(74,'holyday (t ara)','https://www.youtube.com/watch?v=m8N6udkh9ug','2018-08-06 03:30:28',0,73),(75,'kiot viet, coc coc, VP bank','học ko giám sát, ghi leader, process nhiều vào','2018-08-06 03:36:11',0,85),(76,'RPX','Red Pulse (0.02 fee)','2018-08-06 04:50:48',0,86),(77,'QLC','QLC (0.06 fee)','2018-08-06 04:51:17',0,86),(78,'XLM','stelar lumen (0.01 fee) min 21 (5$)','2018-08-06 07:52:53',0,86),(79,'là phúc thì không là họa, là họa thì không tránh nổi','1','2018-08-06 14:39:51',0,87),(80,'đố troll','https://youtu.be/1vPBoXCbJxI?t=113','2018-08-07 04:23:50',0,75),(81,'chuyện vợ chồng hài hước','1','2018-08-07 04:57:27',0,75),(82,'Siêu Hài Canada','https://www.youtube.com/watch?v=PBRrAjhJZng','2018-08-07 04:58:35',0,75),(83,'Những Khoảnh Khắc Hiếm Gặp Ngoài Đời Thực','https://www.youtube.com/watch?v=4h4zL23o414','2018-08-07 06:14:09',0,75),(84,'hài dân tộc','https://www.youtube.com/watch?v=ksIg1llPtwM','2018-08-07 06:27:59',0,75),(85,'do i need to implement all algorithm when learning AI','1','2018-08-08 00:10:35',0,69),(86,'I understand but I can not implement algorithm','1','2018-08-08 00:10:54',0,69),(87,'implement alpha beta algorithm','in python','2018-08-08 02:08:39',0,69),(88,'link hay, của sách tri tue nhan tao','http://aima.cs.berkeley.edu/','2018-08-08 14:05:45',0,88),(89,'solution of the book','https://www.chegg.com/homework-help/artificial-intelligence-a-modern-approach-2nd-edition-chapter-13-solutions-9780137903955','2018-08-08 14:26:36',0,88),(90,'Artificial Intelligence: A Modern Approach','https://people.eecs.berkeley.edu/~russell/aima1e.html','2018-08-12 03:58:00',0,78),(91,'video 10 thói quen phải bỏ','https://www.youtube.com/watch?v=aTab4KmiSas','2018-08-15 03:44:17',0,89),(92,'co gang','https://www.facebook.com/biquyetthanhcong.edumall/videos/976623585854423/','2018-08-16 00:30:04',0,72),(93,'tư thế nghủ tốt','https://www.facebook.com/khotailieuyduoc/videos/1777666795686568/','2018-08-18 08:43:25',0,72),(94,'tư thế nghủ tốt','https://www.facebook.com/khotailieuyduoc/videos/1777666795686568/','2018-08-18 08:43:39',0,89),(95,'ăn ngủ dạ dày','http://dantri.com.vn/tu-van/an-dung-cach-cho-nguoi-dau-da-day-1401253515.htm','2018-08-19 03:54:49',0,89),(96,'dạ dày','https://big.vn/benh-dau-da-day-nen-an-va-khong-nen-an-hoa-qua-rau-cu-gi-tot-nhat.html','2018-08-19 03:55:01',0,89),(97,'ung thư tuổi 33','http://vietnamnet.vn/vn/giai-tri/the-gioi-sao/xot-xa-hoan-canh-dien-vien-mai-phuong-ung-thu-giai-doan-cuoi-o-tuoi-33-471821.html','2018-08-19 03:55:45',0,90),(98,'thực đơn mẫu cho người dạ dày','các bệnh khác tương tự','2018-08-21 03:50:20',0,69),(99,'gọi http://khoaikhau.vn/','từ 2:46 -> 15:13 (30 phút)','2018-08-21 07:46:15',0,82),(100,'tai nạn','https://www.facebook.com/beatvn.page/videos/1108984062598770/','2018-08-21 09:27:26',0,72),(101,'Xe kiên cường','Mỹ đình về: 2h:30 -> 5h','2018-08-24 07:27:27',0,82),(102,'ghi tiền','1','2018-08-26 03:50:49',0,95),(103,'Siti Badriah - Lagi Syantik','https://www.youtube.com/watch?v=Tet6_BlStEM','2018-08-26 14:18:47',0,73),(104,'Aku Mah Apa Atuh - Cita Citata','https://www.youtube.com/watch?v=RyEn3QLb61U','2018-08-26 14:24:54',0,73),(105,'Ed Sheeran - Shape of You','https://www.youtube.com/watch?v=JGwWNGJdvx8','2018-08-26 14:31:57',0,73),(106,'gais','https://youtu.be/toxE8kn4cWM?t=590','2018-08-27 02:05:11',0,75),(107,'Turun Naik Oles Trus','https://www.youtube.com/watch?v=rQ2zMa6hQHU','2018-08-27 02:06:39',0,73),(108,'mua baeldung','1','2018-08-27 03:28:05',0,95),(109,'đi lấy sổ bao hiểm','1','2018-08-27 03:28:20',0,95),(110,'tài liệu bk hà nội','http://bkgallery.me/cac-mon-chuyen-nganh/','2018-08-27 06:28:20',0,78),(111,'Education costs money. But then so does ignorance.','–Sir Claus Moser','2018-08-28 03:08:56',0,87),(114,'Guide to Java Exception Handling Best Practices','http://www.javaguides.net/2018/06/guide-to-java-exception-handling-best-practices.html?spref=fb','2018-08-29 14:42:27',0,92),(115,'Lê Thẩm Dương Đào tạo quản trị doanh nghiệp tài chính tại Hawee','https://www.youtube.com/watch?v=A2cGPO-l5P4','2018-08-29 15:38:13',0,72),(116,'AI kit intel','https://software.intel.com/ai-academy/students/kits?cid&utm_content=Machine_Learning_Developer&utm_medium=Banner_Ad&utm_source=Facebook&utm_campaign=AI_Developer_APAC_2H_18_MixedMedia','2018-08-30 01:33:09',0,92),(117,'nghe 30 bài','https://www.ucan.vn/video/playlist/detail/id/8/video-id/4119?utm_source=fb&utm_campaign=23842869157250408+-+NT+-+Traffic+-+Luy%E1%BB%87n+nghe&utm_medium=23842869157300408+-+30+b%C3%A0i+nghe+pro','2018-08-30 03:22:41',0,93),(118,'Những Điều THAI NHI Mong Mỏi Nhất Ở Bố','https://phunuhiendai.info/ba-bau/nhung-dieu-thai-nhi-mong-moi-nhat-o-bo-dac-biet-la-dieu-thu-7-me-chang-lam-thay-duoc-dau-nen-bo-chiu-kho-vi-con-nhe/','2018-08-30 04:21:55',0,91),(119,'Top 10 câu hỏi phỏng vấn Java thường gặp','https://techtalk.vn/top-10-cau-hoi-phong-van-java-thuong-gap.html','2018-08-30 13:14:12',0,92),(120,'Thói quen khiến hiệu suất công việc của bạn trì trệ','https://techtalk.vn/thoi-quen-khien-hieu-suat-cong-viec-cua-ban-tri-tre.html','2018-08-30 13:23:28',0,90),(121,'best blockchain programming book','1','2018-09-01 11:45:00',0,69),(122,'blockchain book','https://github.com/Noviato/awesome-blockchain','2018-09-02 00:24:51',0,78),(123,'khóa học CNTT','https://www.commonlounge.com','2018-09-02 15:30:51',0,78),(124,'ngoi tua song dao vtv24','https://www.facebook.com/tintucvtv24/videos/458829584638984/','2018-09-06 00:57:04',0,72),(125,'Video youtube downloader online','https://y2mate.com/youtube/GtNdmEPGIPI','2018-09-10 01:50:40',0,78),(126,'Khó tiêu chức năng','1','2018-09-11 04:16:42',0,69),(127,'ăn ít dạ dày có nhỏ lại, bất ngờ ăn no?','1','2018-09-11 04:17:01',0,69),(128,'javaswing BFS animation','1','2018-09-11 05:03:20',0,69),(129,'tìm từ khóa trên voz','1','2018-09-13 01:53:42',0,69),(130,'1','https://pages.awscloud.com/aws-quickstart-series-registration.html','2018-09-14 05:43:29',0,78),(131,'thành phần và dinh dưỡng, tác dụng mật ong','1','2018-09-14 05:53:54',0,69),(132,'Đàn ong có 3 loại','https://www.facebook.com/hoctiengtrungquoc/videos/1630878383701106/','2018-09-14 08:23:17',0,72),(133,'python related site...','1','2018-09-17 05:08:49',0,69),(135,'thuốc sinus plus','quân y','2018-09-19 04:40:01',0,69),(136,'gym cho ng dạ dày, gai l5','1','2018-09-23 12:47:42',0,69),(137,'quảng cáo nvqs','https://www.facebook.com/taobien/videos/2049959418404359/','2018-10-06 00:24:13',0,75),(138,'soi dạ dày','https://www.facebook.com/100004243144259/videos/1178711658946928/','2018-10-08 07:29:06',0,72),(139,'does my digest work when i sleep','1','2018-10-11 11:29:30',0,69),(140,'do people need to noon sleep','1','2018-10-11 11:30:24',0,69),(141,'long stress make my digest die','1','2018-10-11 12:54:04',0,69),(142,'What Will A Programmer Job Be Like In 20-30 Years?','1','2018-10-13 06:30:32',0,69),(143,'watch tv, study, walk after meal','1','2018-10-13 06:30:55',0,69),(144,'discrete-mathematics-with-applications-7th-edition solution','http://www.slader.com/textbook/9780073383095-discrete-mathematics-with-applications-7th-edition/','2018-10-13 15:44:29',0,78),(145,'machine learning tome michell','http://www.cs.cmu.edu/~tom/','2018-10-16 04:13:57',0,78),(146,'hoc may co ban','https://fundaml.com/','2018-10-17 15:06:33',0,88),(147,'thu thach ban than 30 ngay','https://www.facebook.com/TS.LeThamDuong/videos/186642778903428/','2018-10-23 01:47:35',0,72),(148,'đi vs ra nhiều ph','1','2018-10-24 03:39:05',0,69),(149,'ăn uống cho ng tập thể hình','1','2018-10-24 03:39:17',0,69),(150,'Đổi số mắt bão','1','2018-10-30 02:49:37',0,91),(151,'Will coding still be relevant in 2025?','1','2018-10-30 14:54:17',0,92),(154,'1','https://users.soict.hust.edu.vn/trungtt/?Resource___Slides___L%E1%BA%ADp_tr%C3%ACnh_h%C6%B0%E1%BB%9Bng_%C4%91%E1%BB%91i_t%C6%B0%E1%BB%A3ng','2018-10-30 14:54:43',0,92),(155,'1','https://vietjack.com/cau_hoi_phong_van_java/phan_4.jsp','2018-10-30 14:54:58',0,92),(156,'computer science next decade','1','2018-10-30 14:55:31',0,69),(157,'1','https://www.facebook.com/welaxvideo/videos/276413696399971/','2018-11-02 09:30:34',0,75),(159,'reading scientific papers course','1','2018-11-04 04:01:15',0,69),(160,'zunea-zunea-cleopatra-stratan.','https://www.nhaccuatui.com/bai-hat/zunea-zunea-cleopatra-stratan.LsUUwEjsez.html','2018-11-09 08:14:53',0,73),(161,'easy_install django==2.1','cai dat django','2018-11-10 03:42:22',0,96),(162,'django-admin --version','v','2018-11-10 03:42:50',0,96),(163,'django-admin startproject ChaoDjangoCMD','1','2018-11-10 03:44:39',0,96),(164,'python manage.py startapp music','1','2018-11-10 04:08:48',0,96),(165,'manage.py runserver','1','2018-11-10 04:09:11',0,96),(167,'python manage.py migrate','1','2018-11-10 04:38:17',0,96),(169,'thực đơn mẫu','tiếng anh','2018-11-10 09:56:33',0,69),(170,'1','https://www.menvisinhvn.com/trieu-chung-di-ngoai-phan-song-o-nguoi-lon.html/','2018-11-10 09:57:17',0,69),(171,'HowToReadSciArticle','1','2018-11-10 09:57:30',0,69),(172,'1','http://www.effbot.org/zone/librarybook-index.htm','2018-11-10 09:57:51',0,69),(173,'pip install wheel','cai mysqlclient (1)','2018-11-11 14:35:25',0,96),(174,'download from http://www.lfd.uci.edu/~gohlke/pythonlibs/#mysql-python','2','2018-11-11 14:35:35',0,96),(175,'pip install mysqlclient-1.3.8-cp36-cp36m-win_amd64.whl','3','2018-11-11 14:35:45',0,96),(176,'https://dev.mysql.com/doc/connector-c/en/connector-c-installation.html','2','2018-11-11 14:44:36',0,96),(177,'Gastric antrum inflammation','https://hellodoktor.com/disease/gastric-antrum-inflammation/','2018-11-15 12:03:37',0,89),(179,'1','https://cadao.me/dong-dao/xe-dat-de-di-ia/','2018-11-26 03:15:39',0,75),(180,'12','https://www.youtube.com/watch?v=ohPEnmTXNTI','2018-11-26 08:43:31',0,77),(181,'GRANT ALL PRIVILEGES ON *.* TO root@my_ip IDENTIFIED BY ‘root_password‘ WITH GRANT OPTION;','1','2018-11-28 07:50:54',0,80),(182,'1','bạn phải tái khám lại liền sau khi hết thuốc,để bs điều trị theo phác đồ.có thể uống thuốc đến vài tháng cơ,phải cố mới mong trị hết bệnh.phải theo toa bs rồi mới uống kèm nghệ đen với mật ong.tôi cũng bị bao tử mười mấy năm nay cũng do sợ thuốc mà uống r','2018-12-03 04:21:03',0,89),(183,'1','- mẹ em kiêng hoàn toàn các loại gia vị: tiêu, ớt, gừng, tỏi; kiêng chua. - không ăn quá mặn. - hạn chế tối đa đường, dầu mỡ (vì đây là những chất khó tiêu hóa bởi cấu trúc phân tử của chúng bền.. ai học hóa sẽ rõ). - kiêng sữa ( đi bs bảo kiêng). - không','2018-12-03 10:30:53',0,89),(184,'mong chờ-mc thúy ngân','https://www.youtube.com/watch?v=LiurGd7Lesk','2018-12-09 11:04:29',0,73),(185,'1','utf-8-sig','2018-12-09 11:29:08',0,96),(186,'search youtube','Machine learning với OpenCV python - Bài 5','2018-12-12 09:32:52',0,69),(187,'1','How to config Django using pymysql as driver?','2018-12-14 05:56:46',0,96),(188,'mysql installation command','https://linoxide.com/linux-how-to/install-use-mariadb-ubuntu/','2018-12-17 07:22:46',0,80),(189,'cant connect as root','https://stackoverflow.com/questions/25777943/failed-to-connect-to-mysql-at-127-0-0-13306-with-user-root-access-denied-for-us','2018-12-17 09:18:14',0,80),(190,'todo after install ubuntu','https://itsfoss.com/free-up-space-ubuntu-linux/','2018-12-17 11:28:19',0,63),(191,'1','/usr/bin/python3.6 manage.py runserver','2018-12-17 15:08:12',0,96),(192,'5 vòng vàng kỳ ảo','1','2018-12-18 04:42:03',0,97),(193,'netstat -anp | grep 4444','tìm process id biết cổng','2018-12-19 01:26:33',0,63),(194,'/usr/bin/python3.6 manage.py runserver','1','2018-12-19 02:57:08',0,96),(195,'Em đang nghiên cứu thuật toán phân cụm kmean và đang mắc ở chỗ làm sao để biểu diễn dữ liệu thành nhiều chiều, em mới biểu diễn được dữ liệu ở mức hai chiều thôi ạ, anh chị nào biết giúp em với ! help help','1','2018-12-19 11:03:02',0,98),(196,'không gõ đc tiếng việt trong chromium ubuntu dùng ibus unikey','do cài phải chromium bản snap','2018-12-19 11:20:18',0,81),(197,'change jupyter notebook startup folder','https://stackoverflow.com/questions/35254852/how-to-change-the-jupyter-start-up-folder','2018-12-20 00:10:15',0,96),(198,'sudo chsh -s /bin/bash <username>','/bin/bash as its login shell  user ubuntu (lỗi arrow key ubuntu)','2018-12-20 16:05:25',0,63),(199,'nautilus folder','open folder using cmd','2018-12-20 16:29:17',0,63),(200,'sudo apt install lightdm','lỗi swich user thì bị treo ubuntu','2018-12-21 04:09:25',0,63),(201,'(tensorflow)','cur -O https://github.com/lakshayg/tensorflow-build/releases/download/tf1.12.0-ubuntu18.04-py2-py3/tensorflow-1.12.0-cp36-cp36m-linux_x86_64.whl','2018-12-23 04:20:15',0,96),(202,'(tensorflow)','pip3 install tensorflow-1.12.0-cp36-cp36m-linux_x86_64.whl','2018-12-23 04:21:05',0,96),(203,'(tensorflow)','pip3 install --ignore-installed --upgrade \"Download URL\"','2018-12-23 04:21:35',0,96),(204,'how to master something','1','2018-12-28 23:52:55',0,69),(205,'how long debian iss supported','1','2018-12-28 23:53:08',0,69);
=======
INSERT INTO `knowledge` VALUES (4,'12','12','2018-07-03 16:20:35',0,43),(5,'khong','so easy','2018-07-03 16:20:40',0,43),(9,'meo','hoang 1','2018-07-04 09:30:03',0,45),(11,'shut down','stop business','2018-07-04 09:59:59',0,61),(12,'aftermath','hậu quả (the period of time after an event, particularly an event that has a big impact)','2018-07-04 10:00:14',0,61),(13,'outlets','thị trường, chỗ tiêu thụ, cửa hàng tiêu thụ','2018-07-04 10:00:27',0,61),(14,'Hyphens','dấu gạch nối','2018-07-04 10:00:38',0,61),(15,'run a task in background','./main.run > /dev/null 2>&1 &','2018-07-04 04:27:44',0,63),(16,'run a task in background and never diw','./main.run -> Ctr+Z -> bg -> disown -a','2018-07-05 00:08:32',0,63),(21,'get (install) session','go get github.com/gorilla/sessions','2018-07-05 23:26:07',0,70),(22,'get (install) golang mysql driver','go get -u github.com/go-sql-driver/mysql','2018-07-05 23:32:38',0,70),(23,'embed javascript','tampermonkey','2018-07-06 05:28:34',0,65),(24,'tool count source code','kazoeciao159b1_e','2018-07-06 09:45:24',0,65),(25,'git push origin master','nếu origin là tên repository, thử thay đổi hoặc tạo ra 1 cái khác origin và push thử','2018-07-12 09:18:30',0,69),(26,'khóa học git udemy: https://www.udemy.com/git-complete/learn/v4/overview','https://www.udemy.com/git-complete/learn/v4/t/lecture/1935804?start=0','2018-07-12 09:20:11',0,71),(27,'hài','https://www.youtube.com/watch?v=j3_qGCMmQOg&t=50s','2018-07-16 07:23:12',0,75),(28,'nhắn tin troll hài','https://www.youtube.com/watch?v=hLH_NK2ASzs','2018-07-16 07:31:34',0,75),(29,'số nhọ','https://www.youtube.com/watch?v=T4qGqtzG1_o','2018-07-16 08:07:54',0,75),(30,'toca toca','https://www.youtube.com/watch?v=CJbA6-KYl_s','2018-07-16 08:08:58',0,73),(31,'tik tok','https://www.youtube.com/watch?v=gZVq5Bcheos','2018-07-16 09:57:41',0,75),(33,'mereke','https://www.youtube.com/watch?v=9K8UIyH7z80','2018-07-17 03:17:40',0,73),(34,'sa ding ding','https://www.youtube.com/watch?v=l8Z8gpoF4x8','2018-07-17 03:54:59',0,73),(35,'mèo hát sa dingding','https://youtu.be/PkGy_AdvvIY?t=562','2018-07-17 03:55:51',0,75),(37,'hài','https://www.youtube.com/watch?v=5u-GNwHej98','2018-07-18 08:43:09',0,75),(38,'nhảy theo nhạc','https://youtu.be/c-yQudkurkk?t=255','2018-07-18 09:12:57',0,75),(39,'Những Video TRIỆU View Trên Tik Tok TQ ❤️ Phần 3','https://www.youtube.com/watch?v=A7dR16QdMYc','2018-07-18 09:48:38',0,75),(40,'hài','https://youtu.be/xrR9vZ5WGNA?t=20','2018-07-18 10:24:50',0,75),(41,'Làm freelancer','dục tốc bất đạt','2018-07-18 10:45:29',0,76),(42,'phim hài quân đội','https://www.facebook.com/anhchuot1997/videos/2570014923223195/','2018-07-20 07:00:12',0,75),(43,'microservice','học nó','2018-07-21 07:47:52',0,83),(44,'Siêu Xạ Thủ Rambo','https://www.youtube.com/watch?v=tnqFuzwvk-g','2018-07-21 14:43:45',0,77),(45,'baahubali','https://www.youtube.com/watch?v=wCsVOMFh1DQ','2018-07-22 03:00:21',0,77),(46,'săn lùng nội gián','https://www.youtube.com/watch?v=8Qm1C9mDzmc','2018-07-23 03:07:22',0,77),(47,'đồ ăn nhanh hà nội','http://khoaikhau.vn/dat-hang/','2018-07-25 12:48:59',0,78),(48,'generate youtube id (URL)','1','2018-07-27 00:07:23',0,69),(49,'phải master 1 cái gì đó','spring, struts, python chẳng hạn','2018-07-29 14:15:39',0,83),(50,'tìm hiểu làm web về video','cách trình chiếu video','2018-07-29 14:15:58',0,83),(51,'kỹ thuật dựng phim','?!!','2018-07-29 14:22:22',0,83),(52,'an toàn bảo mật tt','http://www.cit.ctu.edu.vn/~pnkhang/cours/atbmtt/index.html','2018-07-29 14:47:39',0,78),(53,'hài Ừ Đúng Rồi','Ừ Đúng Rồi','2018-07-29 15:33:04',0,75),(54,'sould i coding with 10 fingers','1','2018-07-30 02:59:05',0,79),(55,'TGD nguyễn mạnh hùng viettel nói chuyện','https://www.youtube.com/watch?v=Pj_M3_zQg5Q','2018-07-30 06:19:50',0,72),(57,'backup a db','mysqldump --databases webapp > webapp.sql','2018-07-30 08:49:09',0,80),(58,'ssl how to','http://tldp.org/HOWTO/SSL-Certificates-HOWTO/x64.html','2018-07-30 09:59:29',0,78),(59,'tai klhoan office 365','https://www.office.com/?auth=2','2018-07-30 15:04:10',0,78),(60,'mua ssl','https://muassl.com/DatMua/vi/detail#checkInstall','2018-07-31 12:38:13',0,78),(61,'lỗi ssl golang tls: private key does not match public key','do lấy nhầm key từ trang https://muassl.com ( cần lên và lấy key khác)','2018-08-01 09:08:39',0,81),(62,'SSL','private key, CSR có thể tự tạo, .cert file là public key (?) còn intermediate/CA Chain có thể được nối vào .cert file','2018-08-01 09:43:42',0,76),(63,'cài đặt ssl','tròn 2 ngày (16h)','2018-08-01 11:52:49',0,82),(64,'VMEO video host / youtube','tìm hiểu cách làm','2018-08-01 12:11:50',0,83),(65,'(search) dạy con , dạy em học toán','(hài)','2018-08-02 02:55:51',0,72),(66,'(search) pho viet nam, ha noi','học tiếng anh','2018-08-02 02:56:10',0,72),(67,'hài vl chị google đọc tin nhắn','https://www.youtube.com/watch?v=RB1VebJ52XM','2018-08-02 03:56:54',0,75),(68,'5 minus craft tips','https://www.facebook.com/5Minute.Crafts.Girly/videos/2111251962449378/','2018-08-02 04:08:42',0,72),(69,'mua và cài ssl','không biết -> search hoặc tìm người để hỏi (trường hợp pivate key, do lấy nhầm private key chứ không phải lỗi kỹ thuật => hỏi người bán)','2018-08-02 05:41:32',0,84),(70,'mua và cài ssl','search không thấy => dễ, không nên lo lắng','2018-08-02 05:42:04',0,84),(71,'Thực đơn bữa trưa của học sinh Việt Nam và các nước có gì khác?','https://www.youtube.com/watch?v=L4B-0pAzeFE','2018-08-02 15:09:08',0,69),(72,'Người Tây Đọc Câu Cực Khó Việt Nam Và Ngược Lại','https://www.youtube.com/watch?v=0gmGv6AZ1EI','2018-08-03 09:36:40',0,75),(73,'tam cam thoi a cong','https://www.youtube.com/watch?v=Jy6Hu5_c-V8','2018-08-06 02:13:11',0,75),(74,'holyday (t ara)','https://www.youtube.com/watch?v=m8N6udkh9ug','2018-08-06 03:30:28',0,73),(75,'kiot viet, coc coc, VP bank','học ko giám sát, ghi leader, process nhiều vào','2018-08-06 03:36:11',0,85),(76,'RPX','Red Pulse (0.02 fee)','2018-08-06 04:50:48',0,86),(77,'QLC','QLC (0.06 fee)','2018-08-06 04:51:17',0,86),(78,'XLM','stelar lumen (0.01 fee) min 21 (5$)','2018-08-06 07:52:53',0,86),(79,'là phúc thì không là họa, là họa thì không tránh nổi','1','2018-08-06 14:39:51',0,87),(80,'đố troll','https://youtu.be/1vPBoXCbJxI?t=113','2018-08-07 04:23:50',0,75),(81,'chuyện vợ chồng hài hước','1','2018-08-07 04:57:27',0,75),(82,'Siêu Hài Canada','https://www.youtube.com/watch?v=PBRrAjhJZng','2018-08-07 04:58:35',0,75),(83,'Những Khoảnh Khắc Hiếm Gặp Ngoài Đời Thực','https://www.youtube.com/watch?v=4h4zL23o414','2018-08-07 06:14:09',0,75),(84,'hài dân tộc','https://www.youtube.com/watch?v=ksIg1llPtwM','2018-08-07 06:27:59',0,75),(85,'do i need to implement all algorithm when learning AI','1','2018-08-08 00:10:35',0,69),(86,'I understand but I can not implement algorithm','1','2018-08-08 00:10:54',0,69),(87,'implement alpha beta algorithm','in python','2018-08-08 02:08:39',0,69),(88,'link hay, của sách tri tue nhan tao','http://aima.cs.berkeley.edu/','2018-08-08 14:05:45',0,88),(89,'solution of the book','https://www.chegg.com/homework-help/artificial-intelligence-a-modern-approach-2nd-edition-chapter-13-solutions-9780137903955','2018-08-08 14:26:36',0,88),(90,'Artificial Intelligence: A Modern Approach','https://people.eecs.berkeley.edu/~russell/aima1e.html','2018-08-12 03:58:00',0,78),(91,'video 10 thói quen phải bỏ','https://www.youtube.com/watch?v=aTab4KmiSas','2018-08-15 03:44:17',0,89),(92,'co gang','https://www.facebook.com/biquyetthanhcong.edumall/videos/976623585854423/','2018-08-16 00:30:04',0,72),(93,'tư thế nghủ tốt','https://www.facebook.com/khotailieuyduoc/videos/1777666795686568/','2018-08-18 08:43:25',0,72),(94,'tư thế nghủ tốt','https://www.facebook.com/khotailieuyduoc/videos/1777666795686568/','2018-08-18 08:43:39',0,89),(95,'ăn ngủ dạ dày','http://dantri.com.vn/tu-van/an-dung-cach-cho-nguoi-dau-da-day-1401253515.htm','2018-08-19 03:54:49',0,89),(96,'dạ dày','https://big.vn/benh-dau-da-day-nen-an-va-khong-nen-an-hoa-qua-rau-cu-gi-tot-nhat.html','2018-08-19 03:55:01',0,89),(97,'ung thư tuổi 33','http://vietnamnet.vn/vn/giai-tri/the-gioi-sao/xot-xa-hoan-canh-dien-vien-mai-phuong-ung-thu-giai-doan-cuoi-o-tuoi-33-471821.html','2018-08-19 03:55:45',0,90),(98,'thực đơn mẫu cho người dạ dày','các bệnh khác tương tự','2018-08-21 03:50:20',0,69),(99,'gọi http://khoaikhau.vn/','từ 2:46 -> 15:13 (30 phút)','2018-08-21 07:46:15',0,82),(100,'tai nạn','https://www.facebook.com/beatvn.page/videos/1108984062598770/','2018-08-21 09:27:26',0,72),(101,'Xe kiên cường','Mỹ đình về: 2h:30 -> 5h','2018-08-24 07:27:27',0,82),(102,'ghi tiền','1','2018-08-26 03:50:49',0,95),(103,'Siti Badriah - Lagi Syantik','https://www.youtube.com/watch?v=Tet6_BlStEM','2018-08-26 14:18:47',0,73),(104,'Aku Mah Apa Atuh - Cita Citata','https://www.youtube.com/watch?v=RyEn3QLb61U','2018-08-26 14:24:54',0,73),(105,'Ed Sheeran - Shape of You','https://www.youtube.com/watch?v=JGwWNGJdvx8','2018-08-26 14:31:57',0,73),(106,'gais','https://youtu.be/toxE8kn4cWM?t=590','2018-08-27 02:05:11',0,75),(107,'Turun Naik Oles Trus','https://www.youtube.com/watch?v=rQ2zMa6hQHU','2018-08-27 02:06:39',0,73),(108,'mua baeldung','1','2018-08-27 03:28:05',0,95),(109,'đi lấy sổ bao hiểm','1','2018-08-27 03:28:20',0,95),(110,'tài liệu bk hà nội','http://bkgallery.me/cac-mon-chuyen-nganh/','2018-08-27 06:28:20',0,78),(111,'Education costs money. But then so does ignorance.','–Sir Claus Moser','2018-08-28 03:08:56',0,87),(114,'Guide to Java Exception Handling Best Practices','http://www.javaguides.net/2018/06/guide-to-java-exception-handling-best-practices.html?spref=fb','2018-08-29 14:42:27',0,92),(115,'Lê Thẩm Dương Đào tạo quản trị doanh nghiệp tài chính tại Hawee','https://www.youtube.com/watch?v=A2cGPO-l5P4','2018-08-29 15:38:13',0,72),(116,'AI kit intel','https://software.intel.com/ai-academy/students/kits?cid&utm_content=Machine_Learning_Developer&utm_medium=Banner_Ad&utm_source=Facebook&utm_campaign=AI_Developer_APAC_2H_18_MixedMedia','2018-08-30 01:33:09',0,92),(117,'nghe 30 bài','https://www.ucan.vn/video/playlist/detail/id/8/video-id/4119?utm_source=fb&utm_campaign=23842869157250408+-+NT+-+Traffic+-+Luy%E1%BB%87n+nghe&utm_medium=23842869157300408+-+30+b%C3%A0i+nghe+pro','2018-08-30 03:22:41',0,93),(118,'Những Điều THAI NHI Mong Mỏi Nhất Ở Bố','https://phunuhiendai.info/ba-bau/nhung-dieu-thai-nhi-mong-moi-nhat-o-bo-dac-biet-la-dieu-thu-7-me-chang-lam-thay-duoc-dau-nen-bo-chiu-kho-vi-con-nhe/','2018-08-30 04:21:55',0,91),(119,'Top 10 câu hỏi phỏng vấn Java thường gặp','https://techtalk.vn/top-10-cau-hoi-phong-van-java-thuong-gap.html','2018-08-30 13:14:12',0,92),(120,'Thói quen khiến hiệu suất công việc của bạn trì trệ','https://techtalk.vn/thoi-quen-khien-hieu-suat-cong-viec-cua-ban-tri-tre.html','2018-08-30 13:23:28',0,90),(121,'best blockchain programming book','1','2018-09-01 11:45:00',0,69),(122,'blockchain book','https://github.com/Noviato/awesome-blockchain','2018-09-02 00:24:51',0,78),(123,'khóa học CNTT','https://www.commonlounge.com','2018-09-02 15:30:51',0,78),(124,'ngoi tua song dao vtv24','https://www.facebook.com/tintucvtv24/videos/458829584638984/','2018-09-06 00:57:04',0,72),(125,'Video youtube downloader online','https://y2mate.com/youtube/GtNdmEPGIPI','2018-09-10 01:50:40',0,78),(126,'Khó tiêu chức năng','1','2018-09-11 04:16:42',0,69),(127,'ăn ít dạ dày có nhỏ lại, bất ngờ ăn no?','1','2018-09-11 04:17:01',0,69),(128,'javaswing BFS animation','1','2018-09-11 05:03:20',0,69),(129,'tìm từ khóa trên voz','1','2018-09-13 01:53:42',0,69),(130,'1','https://pages.awscloud.com/aws-quickstart-series-registration.html','2018-09-14 05:43:29',0,78),(131,'thành phần và dinh dưỡng, tác dụng mật ong','1','2018-09-14 05:53:54',0,69),(132,'Đàn ong có 3 loại','https://www.facebook.com/hoctiengtrungquoc/videos/1630878383701106/','2018-09-14 08:23:17',0,72),(133,'python related site...','1','2018-09-17 05:08:49',0,69),(135,'thuốc sinus plus','quân y','2018-09-19 04:40:01',0,69),(136,'gym cho ng dạ dày, gai l5','1','2018-09-23 12:47:42',0,69),(137,'quảng cáo nvqs','https://www.facebook.com/taobien/videos/2049959418404359/','2018-10-06 00:24:13',0,75),(138,'soi dạ dày','https://www.facebook.com/100004243144259/videos/1178711658946928/','2018-10-08 07:29:06',0,72),(139,'does my digest work when i sleep','1','2018-10-11 11:29:30',0,69),(140,'do people need to noon sleep','1','2018-10-11 11:30:24',0,69),(141,'long stress make my digest die','1','2018-10-11 12:54:04',0,69),(142,'What Will A Programmer Job Be Like In 20-30 Years?','1','2018-10-13 06:30:32',0,69),(143,'watch tv, study, walk after meal','1','2018-10-13 06:30:55',0,69),(144,'discrete-mathematics-with-applications-7th-edition solution','http://www.slader.com/textbook/9780073383095-discrete-mathematics-with-applications-7th-edition/','2018-10-13 15:44:29',0,78),(145,'machine learning tome michell','http://www.cs.cmu.edu/~tom/','2018-10-16 04:13:57',0,78),(146,'hoc may co ban','https://fundaml.com/','2018-10-17 15:06:33',0,88),(147,'thu thach ban than 30 ngay','https://www.facebook.com/TS.LeThamDuong/videos/186642778903428/','2018-10-23 01:47:35',0,72),(148,'đi vs ra nhiều ph','1','2018-10-24 03:39:05',0,69),(149,'ăn uống cho ng tập thể hình','1','2018-10-24 03:39:17',0,69),(150,'Đổi số mắt bão','1','2018-10-30 02:49:37',0,91),(151,'Will coding still be relevant in 2025?','1','2018-10-30 14:54:17',0,92),(154,'1','https://users.soict.hust.edu.vn/trungtt/?Resource___Slides___L%E1%BA%ADp_tr%C3%ACnh_h%C6%B0%E1%BB%9Bng_%C4%91%E1%BB%91i_t%C6%B0%E1%BB%A3ng','2018-10-30 14:54:43',0,92),(155,'1','https://vietjack.com/cau_hoi_phong_van_java/phan_4.jsp','2018-10-30 14:54:58',0,92),(156,'computer science next decade','1','2018-10-30 14:55:31',0,69),(157,'1','https://www.facebook.com/welaxvideo/videos/276413696399971/','2018-11-02 09:30:34',0,75),(159,'reading scientific papers course','1','2018-11-04 04:01:15',0,69),(160,'zunea-zunea-cleopatra-stratan.','https://www.nhaccuatui.com/bai-hat/zunea-zunea-cleopatra-stratan.LsUUwEjsez.html','2018-11-09 08:14:53',0,73),(161,'easy_install django==2.1','cai dat django','2018-11-10 03:42:22',0,96),(162,'django-admin --version','v','2018-11-10 03:42:50',0,96),(163,'django-admin startproject ChaoDjangoCMD','1','2018-11-10 03:44:39',0,96),(164,'python manage.py startapp music','1','2018-11-10 04:08:48',0,96),(165,'manage.py runserver','1','2018-11-10 04:09:11',0,96),(167,'python manage.py migrate','1','2018-11-10 04:38:17',0,96),(169,'thực đơn mẫu','tiếng anh','2018-11-10 09:56:33',0,69),(170,'1','https://www.menvisinhvn.com/trieu-chung-di-ngoai-phan-song-o-nguoi-lon.html/','2018-11-10 09:57:17',0,69),(171,'HowToReadSciArticle','1','2018-11-10 09:57:30',0,69),(172,'1','http://www.effbot.org/zone/librarybook-index.htm','2018-11-10 09:57:51',0,69),(173,'pip install wheel','cai mysqlclient (1)','2018-11-11 14:35:25',0,96),(174,'download from http://www.lfd.uci.edu/~gohlke/pythonlibs/#mysql-python','2','2018-11-11 14:35:35',0,96),(175,'pip install mysqlclient-1.3.8-cp36-cp36m-win_amd64.whl','3','2018-11-11 14:35:45',0,96),(176,'https://dev.mysql.com/doc/connector-c/en/connector-c-installation.html','2','2018-11-11 14:44:36',0,96),(177,'Gastric antrum inflammation','https://hellodoktor.com/disease/gastric-antrum-inflammation/','2018-11-15 12:03:37',0,89),(179,'1','https://cadao.me/dong-dao/xe-dat-de-di-ia/','2018-11-26 03:15:39',0,75),(180,'12','https://www.youtube.com/watch?v=ohPEnmTXNTI','2018-11-26 08:43:31',0,77),(181,'GRANT ALL PRIVILEGES ON *.* TO root@my_ip IDENTIFIED BY ‘root_password‘ WITH GRANT OPTION;','1','2018-11-28 07:50:54',0,80),(182,'1','bạn phải tái khám lại liền sau khi hết thuốc,để bs điều trị theo phác đồ.có thể uống thuốc đến vài tháng cơ,phải cố mới mong trị hết bệnh.phải theo toa bs rồi mới uống kèm nghệ đen với mật ong.tôi cũng bị bao tử mười mấy năm nay cũng do sợ thuốc mà uống r','2018-12-03 04:21:03',0,89),(183,'1','- mẹ em kiêng hoàn toàn các loại gia vị: tiêu, ớt, gừng, tỏi; kiêng chua. - không ăn quá mặn. - hạn chế tối đa đường, dầu mỡ (vì đây là những chất khó tiêu hóa bởi cấu trúc phân tử của chúng bền.. ai học hóa sẽ rõ). - kiêng sữa ( đi bs bảo kiêng). - không','2018-12-03 10:30:53',0,89),(184,'mong chờ-mc thúy ngân','https://www.youtube.com/watch?v=LiurGd7Lesk','2018-12-09 11:04:29',0,73),(185,'1','utf-8-sig','2018-12-09 11:29:08',0,96),(186,'search youtube','Machine learning với OpenCV python - Bài 5','2018-12-12 09:32:52',0,69),(187,'1','How to config Django using pymysql as driver?','2018-12-14 05:56:46',0,96),(188,'mysql installation command','https://linoxide.com/linux-how-to/install-use-mariadb-ubuntu/','2018-12-17 07:22:46',0,80),(189,'cant connect as root','https://stackoverflow.com/questions/25777943/failed-to-connect-to-mysql-at-127-0-0-13306-with-user-root-access-denied-for-us','2018-12-17 09:18:14',0,80),(190,'todo after install ubuntu','https://itsfoss.com/free-up-space-ubuntu-linux/','2018-12-17 11:28:19',0,63),(191,'1','/usr/bin/python3.6 manage.py runserver','2018-12-17 15:08:12',0,96),(192,'5 vòng vàng kỳ ảo','1','2018-12-18 04:42:03',0,97),(193,'netstat -anp | grep 4444','tìm process id biết cổng','2018-12-19 01:26:33',0,63),(194,'/usr/bin/python3.6 manage.py runserver','1','2018-12-19 02:57:08',0,96),(195,'Em đang nghiên cứu thuật toán phân cụm kmean và đang mắc ở chỗ làm sao để biểu diễn dữ liệu thành nhiều chiều, em mới biểu diễn được dữ liệu ở mức hai chiều thôi ạ, anh chị nào biết giúp em với ! help help','1','2018-12-19 11:03:02',0,98),(196,'không gõ đc tiếng việt trong chromium ubuntu dùng ibus unikey','do cài phải chromium bản snap','2018-12-19 11:20:18',0,81),(197,'change jupyter notebook startup folder','https://stackoverflow.com/questions/35254852/how-to-change-the-jupyter-start-up-folder','2018-12-20 00:10:15',0,96),(198,'sudo chsh -s /bin/bash <username>','/bin/bash as its login shell  user ubuntu (lỗi arrow key ubuntu)','2018-12-20 16:05:25',0,63),(199,'nautilus folder','open folder using cmd','2018-12-20 16:29:17',0,63),(200,'sudo apt install lightdm','lỗi swich user thì bị treo ubuntu','2018-12-21 04:09:25',0,63),(201,'(tensorflow)','cur -O https://github.com/lakshayg/tensorflow-build/releases/download/tf1.12.0-ubuntu18.04-py2-py3/tensorflow-1.12.0-cp36-cp36m-linux_x86_64.whl','2018-12-23 04:20:15',0,96),(202,'(tensorflow)','pip3 install tensorflow-1.12.0-cp36-cp36m-linux_x86_64.whl','2018-12-23 04:21:05',0,96),(203,'(tensorflow)','pip3 install --ignore-installed --upgrade \"Download URL\"','2018-12-23 04:21:35',0,96),(204,'how to master something','1','2018-12-28 23:52:55',0,69),(205,'how long debian is supported','1','2018-12-28 23:53:08',0,69),(206,'CREATE DATABASE mydatabase CHARACTER SET utf8 COLLATE utf8_general_ci;','1','2018-12-30 00:30:44',0,80),(207,'sudo mysqldump -uroot  webapp > webapp.sql','1','2018-12-30 00:31:54',0,80),(208,'mysql -u username -p database_name < file.sql','1','2018-12-30 00:35:58',0,80),(209,'export GOROOT=/usr/local/go','1','2018-12-30 00:44:01',0,70),(210,'export GOPATH=$HOME/Projects/Proj1','1','2018-12-30 00:44:08',0,70),(211,'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH','1','2018-12-30 00:44:14',0,70),(212,'How would you learn multiple things simultaneously','1','2019-01-01 15:18:00',0,69);
>>>>>>> bc12af8c96c87fba84749b9e39550d3fed91b21d
/*!40000 ALTER TABLE `knowledge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms`
--

DROP TABLE IF EXISTS `terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KEY_J` varchar(20) DEFAULT NULL,
  `KEY_E` varchar(20) DEFAULT NULL,
  `VAL_E` varchar(50) DEFAULT NULL,
  `VAL_J` varchar(50) DEFAULT NULL,
  `VAL_V` varchar(50) DEFAULT NULL,
  `CATEGORY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms`
--

LOCK TABLES `terms` WRITE;
/*!40000 ALTER TABLE `terms` DISABLE KEYS */;
INSERT INTO `terms` VALUES (1,'ads','adsf','asdf','asdf','asdf',1),(2,'ssaaaa','asdf3','23','①','',1),(3,'komento','comment','comment','作成する\r\n','Ghi chú',2),(4,'enoduya','end user ','end user','ch','người dùng cuối',2);
/*!40000 ALTER TABLE `terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test2`
--

DROP TABLE IF EXISTS `test2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test2` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test2`
--

LOCK TABLES `test2` WRITE;
/*!40000 ALTER TABLE `test2` DISABLE KEYS */;
/*!40000 ALTER TABLE `test2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `datecreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `topic` VALUES (61,'Vocabulary','từ vựng tiếng anh','2018-07-03 15:52:10',NULL,0),(63,'Linux','Command and linux knowledge','2018-07-04 04:26:37',NULL,0),(65,'Others','knowledge which has not been categoried','2018-07-04 06:49:24',NULL,0),(67,'Docker','docker command','2018-07-05 02:47:27',NULL,0),(69,'To be search','to search on google','2018-07-05 14:23:14',NULL,0),(70,'Golang','cmd and tip','2018-07-05 23:25:40',NULL,0),(71,'Watching course video','udemy or youtube course','2018-07-12 09:19:25',NULL,0),(72,'(Giải trí) Video hay ý nghĩa','video hay','2018-07-16 07:23:02',NULL,0),(73,'(Giải trí) Nhạc','video, mp3 nhạc','2018-07-16 08:08:47',NULL,0),(75,'(Giải trí) video hài, tiktok','video hài','2018-07-18 09:48:33',NULL,0),(76,'Ghi nhớ','cần ôn đi ôn lại thường xuyên','2018-07-18 10:44:45',NULL,0),(77,'(Giải trí) Phim','phim hay ý nghĩa','2018-07-21 14:43:01',NULL,0),(78,'danh bạ web','website cần nhớ','2018-07-25 12:48:46',NULL,0),(79,'Đã search','đã search','2018-07-30 02:58:45',NULL,0),(80,'mysql','cmd, ...','2018-07-30 08:48:58',NULL,0),(81,'Lỗi','tổng hợp lỗi','2018-08-01 09:07:46',NULL,0),(82,'Lịch sử - thời gian','1','2018-08-01 11:52:23',NULL,0),(83,'Cần nghiên cứu','1','2018-08-01 12:10:20',NULL,0),(84,'Kinh nghiệm','1','2018-08-02 04:35:19',NULL,0),(85,'Tuyển dụng','liên quan đến tuyển dụng','2018-08-06 03:35:44',NULL,0),(86,'Z-Kucoin-bnb-less fee','1','2018-08-06 04:50:19',NULL,0),(87,'Danh ngôn','1','2018-08-06 14:39:29',NULL,0),(88,'Trí tuệ nhân tạo','1','2018-08-08 14:05:35',NULL,0),(89,'Sức khỏe','1','2018-08-15 03:44:01',NULL,0),(90,'Động lực','1','2018-08-19 03:55:34',NULL,0),(91,'Cần làm-ngắn hạn','1','2018-08-26 03:48:27',NULL,0),(92,'Tutorial-bài viết','1','2018-08-30 00:27:53',NULL,0),(93,'English','1','2018-08-30 03:22:33',NULL,0),(94,'BTC','1','2018-09-17 23:36:13',NULL,0),(95,'Đã làm ngắn hạn','1','2018-10-30 02:49:25',NULL,0),(96,'Python','Học python','2018-11-09 00:51:40',NULL,0),(97,'Game show','1','2018-12-18 04:41:48',NULL,0),(98,'Ask BML','1','2018-12-19 11:02:45',NULL,0);
=======
INSERT INTO `topic` VALUES (61,'Vocabulary','từ vựng tiếng anh','2018-07-03 15:52:10',NULL,0),(63,'Linux','Command and linux knowledge','2018-07-04 04:26:37',NULL,0),(65,'Others','knowledge which has not been categoried','2018-07-04 06:49:24',NULL,0),(67,'Docker','docker command','2018-07-05 02:47:27',NULL,0),(69,'To be search','to search on google','2018-07-05 14:23:14',NULL,0),(70,'Golang','cmd and tip','2018-07-05 23:25:40',NULL,0),(71,'Watching course video','udemy or youtube course','2018-07-12 09:19:25',NULL,0),(72,'(Giải trí) Video hay ý nghĩa','video hay','2018-07-16 07:23:02',NULL,0),(73,'(Giải trí) Nhạc','video, mp3 nhạc','2018-07-16 08:08:47',NULL,0),(75,'(Giải trí) video hài, tiktok','video hài','2018-07-18 09:48:33',NULL,0),(76,'Ghi nhớ','cần ôn đi ôn lại thường xuyên','2018-07-18 10:44:45',NULL,0),(77,'(Giải trí) Phim','phim hay ý nghĩa','2018-07-21 14:43:01',NULL,0),(78,'danh bạ web','website cần nhớ','2018-07-25 12:48:46',NULL,0),(79,'Đã search','đã search','2018-07-30 02:58:45',NULL,0),(80,'mysql','cmd, ...','2018-07-30 08:48:58',NULL,0),(81,'Lỗi','tổng hợp lỗi','2018-08-01 09:07:46',NULL,0),(82,'Lịch sử - thời gian','1','2018-08-01 11:52:23',NULL,0),(83,'Cần nghiên cứu','1','2018-08-01 12:10:20',NULL,0),(84,'Kinh nghiệm','1','2018-08-02 04:35:19',NULL,0),(85,'Tuyển dụng','liên quan đến tuyển dụng','2018-08-06 03:35:44',NULL,0),(86,'Z-Kucoin-bnb-less fee','1','2018-08-06 04:50:19',NULL,0),(87,'Danh ngôn','1','2018-08-06 14:39:29',NULL,0),(88,'Trí tuệ nhân tạo','1','2018-08-08 14:05:35',NULL,0),(89,'Sức khỏe','1','2018-08-15 03:44:01',NULL,0),(90,'Động lực','1','2018-08-19 03:55:34',NULL,0),(91,'Cần làm-ngắn hạn','1','2018-08-26 03:48:27',NULL,0),(92,'Tutorial-bài viết','1','2018-08-30 00:27:53',NULL,0),(93,'English','1','2018-08-30 03:22:33',NULL,0),(94,'BTC','1','2018-09-17 23:36:13',NULL,0),(95,'Đã làm ngắn hạn','1','2018-10-30 02:49:25',NULL,0),(96,'Python','Học python','2018-11-09 00:51:40',NULL,0),(97,'(Giải trí) Game show','1','2018-12-18 04:41:48',NULL,0),(98,'Ask BML','1','2018-12-19 11:02:45',NULL,0);
>>>>>>> bc12af8c96c87fba84749b9e39550d3fed91b21d
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

<<<<<<< HEAD
-- Dump completed on 2019-01-10 14:36:31
=======
-- Dump completed on 2019-01-02  3:06:12
>>>>>>> bc12af8c96c87fba84749b9e39550d3fed91b21d
