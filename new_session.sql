/*
SQLyog Community v12.4.3 (64 bit)
MySQL - 5.6.17 : Database - oapmtnte12
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`oapmtnte12` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `oapmtnte12`;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `migrations` */

insert  into `migrations`(`migration`,`batch`) values 
('2014_10_12_000000_create_users_table',1),
('2014_10_12_100000_create_password_resets_table',1),
('2017_11_06_151751_create_sessions_table',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `password_resets` */

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`user_id`,`ip_address`,`user_agent`,`payload`,`last_activity`) values 
('15f70a4a4c315278f08376310df06877d48c33b8',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','YTozOntzOjY6Il90b2tlbiI7czo0MDoibjVwZmhYdVRRNkNuOEs5QUxmRktTT0YzMG4xTVI4a3U2NU1mU2xTUiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE1MDk5ODIzMDY7czoxOiJjIjtpOjE1MDk5ODIzMDY7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1509982306),
('99bd3488c32a76a196809419eea18a342a00f79e',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.62 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVnZJbUFBV3kyMk54RzFjdUJNaXdzSk1BOEZYaGo3d2pLcFV2VHVpZyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyNzoiaHR0cDovL2RpZXQuZGV2L2dhbWUvc2VhcmNoIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTU6Imh0dHA6Ly9kaWV0LmRldiI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE1MDk5ODM2Mzc7czoxOiJjIjtpOjE1MDk5ODE1Nzg7czoxOiJsIjtzOjE6IjAiO319',1509983637),
('b3c612f59c839f3e4ff07daf3eeb6051d9eb05e5',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:58.0) Gecko/20100101 Firefox/58.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYVJrS09STzFmNERkS1dwcUFjQm5pdEpmMmZjcEJRVG95MnlWVzNGcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTU6Imh0dHA6Ly9kaWV0LmRldiI7fXM6NToiZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE1MDk5ODIzMDY7czoxOiJjIjtpOjE1MDk5ODIzMDI7czoxOiJsIjtzOjE6IjAiO319',1509982306);

/*Table structure for table `tbl_admin_login` */

DROP TABLE IF EXISTS `tbl_admin_login`;

CREATE TABLE `tbl_admin_login` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(20) NOT NULL DEFAULT 'Admin',
  `remember_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_admin_login` */

insert  into `tbl_admin_login`(`intId`,`username`,`password`,`status`,`createdate`,`role`,`remember_token`) values 
(9,'mediaorangen@gmail.com','120300_Horb','Y','2016-07-01 14:29:10','Admin',NULL),
(21,'goekhan.polat@gmail.com','120300_Horb','Y','2017-07-14 07:01:04','Admin',NULL),
(22,'goekhan.polat@cleverdiet.de','120300_Horb','Y','2017-07-14 07:03:39','Admin',NULL),
(23,'dirak','Flaschenpost0','Y','2017-07-14 08:10:20','Admin',NULL),
(24,'jabams','freelancer1','Y','2017-08-08 07:45:22','Admin',NULL),
(25,'freelancer','$2y$10$GjDZc/F9XWC8jLk6ieKM6uE.k8dhVcUJDVOYP1aJw5JaIrycLfEAO','Y','2017-09-10 03:55:29','Admin','5QJXhxcapEgjEutXnUeD1FpZbIXma4M7KnO7iGrfZNOjraGJ0ULJFTXdishB'),
(26,'asdf','$2y$10$NjiMPYQsfIac3GeDavwj5uOO/P07PF3DnDcdKdsfw.jBKk/nLucNm','Y','2017-11-03 05:40:21','Admin',NULL);

/*Table structure for table `tbl_content_alert` */

DROP TABLE IF EXISTS `tbl_content_alert`;

CREATE TABLE `tbl_content_alert` (
  `intId` int(11) NOT NULL,
  `insert_success` varchar(255) NOT NULL,
  `insert_error` varchar(255) NOT NULL,
  `delete_success` varchar(255) NOT NULL,
  `delete_error` varchar(255) NOT NULL,
  `update_success` varchar(255) NOT NULL,
  `update_error` varchar(255) NOT NULL,
  `mail_success` varchar(255) NOT NULL,
  `mail_error` varchar(255) NOT NULL,
  `status_success` varchar(255) NOT NULL,
  `status_error` varchar(255) NOT NULL,
  `password_success` varchar(255) NOT NULL,
  `password_error` varchar(255) NOT NULL,
  `service_success` varchar(255) NOT NULL,
  `service_error` varchar(255) NOT NULL,
  `post_success` varchar(255) NOT NULL,
  `post_error` varchar(255) NOT NULL,
  `apply_success` varchar(255) NOT NULL,
  `apply_error` varchar(255) NOT NULL,
  `trans_success` varchar(255) NOT NULL,
  `trans_error` varchar(255) NOT NULL,
  `alert_password_success` varchar(255) NOT NULL,
  `alert_password_error` varchar(255) NOT NULL,
  `alert_password_alphanumaric` varchar(255) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_content_alert` */

/*Table structure for table `tbl_content_email` */

DROP TABLE IF EXISTS `tbl_content_email`;

CREATE TABLE `tbl_content_email` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intPageId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `email_content` longtext NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_content_email` */

/*Table structure for table `tbl_content_email_page` */

DROP TABLE IF EXISTS `tbl_content_email_page`;

CREATE TABLE `tbl_content_email_page` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_content_email_page` */

/*Table structure for table `tbl_feedback` */

DROP TABLE IF EXISTS `tbl_feedback`;

CREATE TABLE `tbl_feedback` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intClientId` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `feedback_status` enum('U','S','C') NOT NULL,
  `status` enum('Y','N') NOT NULL,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_feedback` */

insert  into `tbl_feedback`(`intId`,`intClientId`,`title`,`description`,`createdate`,`feedback_status`,`status`) values 
(1,'53','I am just testing your website.','Martin from awethentic services, just testing your website.','2017-11-03 04:00:37','U','N');

/*Table structure for table `tbl_feedback_comment` */

DROP TABLE IF EXISTS `tbl_feedback_comment`;

CREATE TABLE `tbl_feedback_comment` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intFeedbackId` varchar(255) NOT NULL,
  `intClientId` varchar(255) NOT NULL,
  `comment` longtext NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_feedback_comment` */

/*Table structure for table `tbl_feedback_vote` */

DROP TABLE IF EXISTS `tbl_feedback_vote`;

CREATE TABLE `tbl_feedback_vote` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intFeedbackId` varchar(255) NOT NULL,
  `intClientId` varchar(2555) NOT NULL,
  `vote` varchar(255) NOT NULL,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_feedback_vote` */

/*Table structure for table `tbl_game` */

DROP TABLE IF EXISTS `tbl_game`;

CREATE TABLE `tbl_game` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameTypeId` int(11) NOT NULL,
  `intUserId` int(11) NOT NULL,
  `game_title` float NOT NULL,
  `game_desc` text NOT NULL,
  `game_image` varchar(255) NOT NULL,
  `game_start_date` varchar(255) NOT NULL,
  `game_end_date` varchar(255) NOT NULL,
  `avg_bet_amount` varchar(255) NOT NULL,
  `featured_status` enum('Y','N') NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `game_status` enum('O','R','C','CN','W') NOT NULL,
  `in_round` enum('0','1','2','3','4','5','6') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `access_type` enum('O','I') NOT NULL,
  `pleaged_amount` varchar(255) NOT NULL,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game` */

insert  into `tbl_game`(`intId`,`intGameTypeId`,`intUserId`,`game_title`,`game_desc`,`game_image`,`game_start_date`,`game_end_date`,`avg_bet_amount`,`featured_status`,`status`,`game_status`,`in_round`,`createdate`,`access_type`,`pleaged_amount`) values 
(1,1,1,0,'rr','default-game-image.jpg','2017-04-17 23:2:29','2017-05-11 23:2:29','50','Y','Y','C','0','2017-03-11 13:02:33','O','0'),
(2,1,1,0,'','default-game-image.jpg','2017-03-31 23:18:1','2017-04-24 23:18:1','35','Y','Y','CN','0','2017-03-11 13:18:18','O','0'),
(3,1,2,0,'','default-game-image.jpg','2017-03-18 20:40:22','2017-04-11 20:40:22','25','Y','Y','CN','0','2017-03-14 04:40:35','O','0'),
(4,1,9,0,'','default-game-image.jpg','2017-03-19 1:51:58','2017-04-12 1:51:58','25','Y','Y','CN','0','2017-03-15 09:52:00','O','0'),
(5,1,2,0,'','default-game-image.jpg','2017-03-24 22:46:5','2017-04-17 22:46:5','25','Y','Y','CN','0','2017-03-21 06:46:19','O','0'),
(6,1,9,0,'','default-game-image.jpg','2017-03-31 0:12:5','2017-04-24 0:12:5','25','Y','Y','CN','0','2017-03-22 08:12:09','O','0'),
(7,1,10,0,'','default-game-image.jpg','2017-04-05 20:25:7','2017-04-29 20:25:7','25','Y','Y','CN','0','2017-03-31 10:25:12','O','0'),
(8,1,10,0,'','default-game-image.jpg','2017-04-05 20:25:7','2017-04-29 20:25:7','25','Y','Y','CN','0','2017-03-31 10:25:30','O','0'),
(9,1,10,0,'','default-game-image.jpg','2017-04-07 12:19:10','2017-05-01 12:19:10','25','Y','Y','CN','0','2017-04-02 02:19:11','O','0'),
(10,1,12,0,'This is the description','default-game-image.jpg','2017-04-20 17:20:1','2017-05-14 17:20:1','25','Y','Y','CN','0','2017-04-18 07:20:05','I','0'),
(11,1,14,0,'','default-game-image.jpg','2017-04-20 20:43:7','2017-05-14 20:43:7','50','Y','Y','CN','0','2017-04-18 10:43:09','O','0'),
(12,2,0,0,'','default-game-image.jpg','2017-04-21 13:22:6','2017-10-18 13:22:6','25','Y','Y','C','6','2017-04-19 03:22:10','I','0'),
(13,2,0,0,'','default-game-image.jpg','2017-04-21 13:22:6','2017-10-18 13:22:6','25','Y','Y','C','6','2017-04-19 03:22:11','I','0'),
(14,2,0,0,'','default-game-image.jpg','2017-04-21 13:22:6','2017-10-18 13:22:6','25','Y','Y','C','6','2017-04-19 03:22:12','I','0'),
(15,2,0,0,'','default-game-image.jpg','2017-04-21 13:22:6','2017-10-18 13:22:6','25','Y','Y','C','6','2017-04-19 03:22:13','I','0'),
(16,1,12,0,'','default-game-image.jpg','2017-04-21 16:1:12','2017-05-15 16:1:12','other','Y','Y','CN','0','2017-04-19 06:01:23','I','0'),
(17,1,12,0,'','default-game-image.jpg','2017-04-21 16:7:6','2017-05-15 16:7:6','25','Y','Y','CN','0','2017-04-19 06:07:09','I','0'),
(18,1,12,0,'','default-game-image.jpg','2017-04-21 16:10:4','2017-05-15 16:10:4','25','Y','Y','CN','0','2017-04-19 06:10:09','O','0'),
(19,1,12,0,'','default-game-image.jpg','2017-04-21 16:10:4','2017-05-15 16:10:4','25','Y','Y','CN','0','2017-04-19 06:12:02','O','0'),
(20,1,12,0,'','default-game-image.jpg','2017-04-21 16:22:12','2017-05-15 16:22:12','25','Y','Y','CN','0','2017-04-19 06:22:15','O','0'),
(21,1,12,0,'','default-game-image.jpg','2017-04-21 17:15:11','2017-05-15 17:15:11','35','Y','Y','CN','0','2017-04-19 07:15:15','I','0'),
(22,1,14,0,'','default-game-image.jpg','2017-04-21 17:55:52','2017-05-15 17:55:52','35','Y','Y','CN','0','2017-04-19 07:55:54','O','0'),
(23,1,12,0,'','default-game-image.jpg','2017-04-21 17:59:35','2017-05-15 17:59:35','35','Y','Y','CN','0','2017-04-19 07:59:42','I','0'),
(24,1,12,0,'','default-game-image.jpg','2017-04-21 17:59:35','2017-05-15 17:59:35','35','Y','Y','CN','0','2017-04-19 07:59:43','I','0'),
(25,1,14,0,'','default-game-image.jpg','2017-04-21 18:4:41','2017-05-15 18:4:41','35','Y','Y','CN','0','2017-04-19 08:04:43','O','0'),
(26,1,12,0,'','default-game-image.jpg','2017-04-21 18:11:28','2017-05-15 18:11:28','50','Y','Y','CN','0','2017-04-19 08:11:30','I','0'),
(27,1,12,0,'','default-game-image.jpg','2017-04-22 21:54:1','2017-05-16 21:54:1','other','Y','Y','CN','0','2017-04-20 11:54:03','I','0'),
(28,1,12,0,'Test Diet 1 Description','default-game-image.jpg','2017-04-14 09:28:00','2017-04-22 22:58:42','35','Y','Y','W','0','2017-04-20 11:58:44','I','105'),
(29,1,12,0,'','default-game-image.jpg','2017-04-23 15:20:42','2017-05-17 15:20:42','25','Y','Y','CN','0','2017-04-21 05:20:59','O','0'),
(30,1,12,0,'','default-game-image.jpg','2017-04-28 18:13:1','2017-05-22 18:13:1','25','Y','Y','CN','0','2017-04-26 08:13:04','I','0'),
(31,1,12,0,'Test Diet 2 Description','1493269882.jpg','2017-04-28 18:13:1','2017-05-22 18:13:1','25','Y','Y','CN','0','2017-04-26 08:24:38','I','25'),
(32,1,12,0,'','default-game-image.jpg','2017-04-28 18:13:1','2017-05-22 18:13:1','25','Y','Y','CN','0','2017-04-26 08:24:39','I','0'),
(33,1,13,0,'Test Diet 3 Description','default-game-image.jpg','2017-04-26 21:46:48','2017-04-27 21:46:48','25','Y','Y','C','0','2017-04-26 11:47:56','I','50'),
(34,1,13,0,'','default-game-image.jpg','2017-04-30 22:7:58','2017-05-24 22:7:58','10','Y','Y','CN','0','2017-04-28 12:10:51','I','10'),
(35,1,12,0,'','default-game-image.jpg','2017-05-03 21:0:50','2017-05-27 21:0:50','25','Y','Y','C','0','2017-05-01 11:00:54','I','0'),
(36,1,12,0,'','default-game-image.jpg','2017-05-03 22:1:23','2017-05-27 22:1:23','25','Y','Y','C','0','2017-05-01 12:01:24','O','0'),
(37,1,12,0,'','default-game-image.jpg','2017-05-03 22:3:31','2017-05-27 22:3:31','25','Y','Y','C','0','2017-05-01 12:03:33','I','0'),
(38,1,12,0,'','default-game-image.jpg','2017-05-04 10:26:27','2017-05-28 10:26:27','35','Y','Y','CN','0','2017-05-02 00:26:28','I','0'),
(39,1,12,0,'','default-game-image.jpg','2017-05-04 10:28:43','2017-05-28 10:28:43','35','Y','Y','CN','0','2017-05-02 00:28:46','O','0'),
(40,1,18,0,'','default-game-image.jpg','2017-05-05 10:58:53','2017-05-29 10:58:53','25','Y','Y','CN','0','2017-05-03 00:58:59','O','0'),
(41,1,19,0,'','default-game-image.jpg','2017-05-05 11:1:57','2017-05-29 11:1:57','25','Y','Y','CN','0','2017-05-03 01:02:01','O','0'),
(42,1,17,0,'','default-game-image.jpg','2017-05-01 11:31:59','2017-05-02 23:50:00','35','Y','Y','W','0','2017-05-03 01:32:07','O','70'),
(43,1,9,0,'','default-game-image.jpg','2017-05-25 4:46:47','2017-06-18 4:46:47','25','Y','Y','CN','0','2017-05-03 11:46:56','O','0'),
(44,1,26,0,'','default-game-image.jpg','2017-05-06 11:34:39','2017-05-30 11:34:39','25','Y','Y','CN','0','2017-05-04 01:34:46','O','25'),
(45,1,26,0,'','default-game-image.jpg','2017-05-06 11:48:48','2017-05-30 11:48:48','25','Y','Y','CN','0','2017-05-04 01:48:54','O','0'),
(46,1,26,0,'','default-game-image.jpg','2017-05-06 12:10:53','2017-05-30 12:10:53','25','Y','Y','CN','0','2017-05-04 02:10:59','O','0'),
(47,1,26,0,'','default-game-image.jpg','2017-05-03 22:09:00','2017-05-03 22:19:16','35','Y','Y','C','0','2017-05-04 02:14:26','O','70'),
(48,1,9,0,'','default-game-image.jpg','2017-05-15 2:0:25','2017-06-08 2:0:25','25','Y','Y','CN','0','2017-05-04 09:00:27','O','0'),
(49,1,9,0,'','default-game-image.jpg','2017-05-08 2:7:12','2017-06-01 2:7:12','25','Y','Y','CN','0','2017-05-04 09:07:22','O','0'),
(50,1,29,0,'','default-game-image.jpg','2017-06-10 2:25:0','2017-07-04 2:25:0','50','Y','Y','CN','0','2017-06-07 09:24:58','O','50'),
(51,1,30,0,'','default-game-image.jpg','2017-06-16 9:13:50','2017-07-10 9:13:50','50','Y','Y','CN','0','2017-06-13 23:13:55','O','0'),
(52,1,31,0,'','default-game-image.jpg','2017-06-16 9:19:25','2017-07-10 9:19:25','35','Y','Y','CN','0','2017-06-13 23:19:30','O','35'),
(53,1,31,0,'','default-game-image.jpg','2017-06-13 16:35:00','2017-06-13 17:10:00','25','Y','Y','W','0','2017-06-13 23:34:17','O','50'),
(54,1,34,0,'','default-game-image.jpg','2017-06-17 19:59:44','2017-07-11 19:59:44','35','Y','Y','CN','0','2017-06-15 09:59:51','O','0'),
(55,1,35,0,'','default-game-image.jpg','2017-06-17 20:4:7','2017-07-11 20:4:7','35','Y','Y','CN','0','2017-06-15 10:04:14','O','0'),
(56,1,36,0,'','default-game-image.jpg','2017-06-17 21:18:30','2017-07-11 21:18:30','35','Y','Y','CN','0','2017-06-15 11:18:36','O','0'),
(57,1,37,0,'','default-game-image.jpg','2017-06-14 04:15:00','2017-06-14 04:40:00','35','Y','Y','W','0','2017-06-15 11:25:53','O','70'),
(58,1,12,0,'','default-game-image.jpg','2017-06-18 0:43:35','2017-07-12 0:43:35','25','Y','Y','CN','0','2017-06-15 14:43:35','O','25'),
(59,1,39,0,'','default-game-image.jpg','2017-06-18 0:46:48','2017-07-12 0:46:48','25','Y','Y','CN','0','2017-06-15 14:46:52','O','25'),
(60,1,40,0,'','default-game-image.jpg','2017-06-18 0:51:11','2017-07-12 0:51:11','50','Y','Y','CN','0','2017-06-15 14:51:12','O','50'),
(61,1,41,0,'','default-game-image.jpg','2017-06-18 12:59:7','2017-07-12 12:59:7','50','Y','Y','CN','0','2017-06-16 02:59:09','O','0'),
(62,1,41,0,'','default-game-image.jpg','2017-06-18 13:13:14','2017-07-12 13:13:14','50','Y','Y','CN','0','2017-06-16 03:13:14','O','0'),
(63,1,41,0,'','default-game-image.jpg','2017-06-18 13:21:7','2017-07-12 13:21:7','50','Y','Y','CN','0','2017-06-16 03:21:10','O','50'),
(64,1,41,0,'','default-game-image.jpg','2017-06-18 14:59:52','2017-07-12 14:59:52','35','Y','Y','CN','0','2017-06-16 04:59:53','O','35'),
(65,1,37,0,'','default-game-image.jpg','2017-06-20 15:16:22','2017-07-14 15:16:22','25','Y','Y','CN','0','2017-06-18 05:02:23','O','0'),
(66,1,10,0,'','default-game-image.jpg','2017-06-21 15:14:49','2017-07-15 15:14:49','25','Y','Y','CN','0','2017-06-18 05:13:12','O','0'),
(67,1,37,0,'','default-game-image.jpg','2017-06-23 15:52:1','2017-07-17 15:52:1','35','Y','Y','CN','0','2017-06-18 05:52:06','O','0'),
(68,1,41,0,'','default-game-image.jpg','2017-06-20 18:39:32','2017-07-14 18:39:32','35','Y','Y','CN','0','2017-06-18 08:39:34','O','35'),
(69,1,42,0,'','default-game-image.jpg','2017-06-24 23:31:22','2017-07-18 23:31:22','35','Y','Y','CN','0','2017-06-22 13:31:23','O','35'),
(70,1,9,0,'','default-game-image.jpg','2017-06-29 10:48:16','2017-07-23 10:48:16','25','Y','Y','CN','0','2017-06-25 17:48:20','O','0'),
(71,1,41,0,'','default-game-image.jpg','2017-06-29 22:53:37','2017-07-23 22:53:37','25','Y','Y','CN','0','2017-06-27 12:53:22','O','0'),
(72,1,41,0,'','default-game-image.jpg','2017-07-05 21:43:28','2017-07-29 21:43:28','35','Y','Y','CN','0','2017-07-02 11:44:05','O','0'),
(73,2,0,0,'','default-game-image.jpg','2017-07-09 15:10:22','2018-01-05 15:10:22','25','Y','Y','C','6','2017-07-07 05:10:23','O','0'),
(74,2,0,0,'','default-game-image.jpg','2017-07-09 15:13:31','2018-01-05 15:13:31','25','Y','Y','C','6','2017-07-07 05:13:31','O','300'),
(75,1,0,0,'','default-game-image.jpg','2017-07-06 23:00:00','2017-08-02 15:22:23','25','Y','Y','CN','0','2017-07-07 05:20:52','O','0'),
(76,1,41,0,'','default-game-image.jpg','2017-07-13 16:18:3','2017-08-06 16:18:3','25','Y','Y','CN','0','2017-07-07 06:18:05','O','0'),
(77,1,51,0,'','default-game-image.jpg','2017-07-12 11:22:58','2017-08-05 11:22:58','0','Y','Y','CN','0','2017-07-08 18:22:59','I','0'),
(78,1,52,0,'','default-game-image.jpg','2017-07-11 16:38:27','2017-08-04 16:38:27','60','Y','Y','C','0','2017-07-09 08:38:49','O','120'),
(79,1,52,0,'','default-game-image.jpg','2017-07-13 23:0:22','2017-08-06 23:0:22','35','Y','Y','CN','0','2017-07-09 15:00:54','I','0'),
(80,1,54,0,'','default-game-image.jpg','2017-07-13 13:50:23','2017-08-06 13:50:23','35','Y','Y','CN','0','2017-07-10 03:47:40','O','0'),
(81,1,54,0,'','default-game-image.jpg','2017-07-12 13:51:48','2017-08-05 13:51:48','25','Y','Y','CN','0','2017-07-10 03:51:54','O','0'),
(82,1,60,0,'','default-game-image.jpg','2017-07-17 8:3:37','2017-08-10 8:3:37','25','Y','Y','CN','0','2017-07-11 14:03:49','O','0'),
(83,1,60,0,'','default-game-image.jpg','2017-07-17 8:3:54','2017-08-10 8:3:54','25','Y','Y','CN','0','2017-07-11 14:05:47','O','0'),
(84,1,9,0,'','default-game-image.jpg','2017-07-17 13:12:44','2017-08-10 13:12:44','25','Y','Y','CN','0','2017-07-13 20:12:51','O','0'),
(85,1,9,0,'','default-game-image.jpg','2017-07-17 13:12:44','2017-08-10 13:12:44','25','Y','Y','CN','0','2017-07-13 20:14:17','O','0'),
(86,1,62,0,'','default-game-image.jpg','2017-07-23 16:46:16','2017-08-16 16:46:16','25','Y','Y','CN','0','2017-07-13 20:16:36','O','0'),
(87,1,62,0,'','default-game-image.jpg','2017-07-23 16:46:16','2017-08-16 16:46:16','25','Y','Y','CN','0','2017-07-13 20:16:39','O','0'),
(88,1,9,0,'','default-game-image.jpg','2017-07-17 13:18:21','2017-08-10 13:18:21','25','Y','Y','CN','0','2017-07-13 20:18:23','O','0'),
(89,1,62,0,'','default-game-image.jpg','2017-07-19 18:34:49','2017-08-12 18:34:49','25','Y','Y','CN','0','2017-07-13 22:04:42','O','0'),
(90,1,65,0,'','default-game-image.jpg','2017-07-18 1:31:19','2017-08-11 1:31:19','25','Y','Y','CN','0','2017-07-14 08:32:10','O','0'),
(91,1,62,0,'','default-game-image.jpg','2017-07-21 10:22:55','2017-08-14 10:22:55','25','Y','Y','CN','0','2017-07-17 13:52:56','I','0'),
(92,1,62,0,'','default-game-image.jpg','2017-07-20 15:37:3','2017-08-13 15:37:3','25','Y','Y','CN','0','2017-07-17 16:31:27','O','0'),
(93,1,41,0,'','default-game-image.jpg','2017-07-22 21:30:39','2017-08-15 21:30:39','35','Y','Y','CN','0','2017-07-20 11:30:42','O','0'),
(94,1,66,0,'','default-game-image.jpg','2017-07-25 9:36:57','2017-08-18 9:36:57','25','Y','Y','CN','0','2017-07-21 23:37:08','O','0'),
(95,1,67,0,'','default-game-image.jpg','2017-07-27 16:34:58','2017-08-20 16:34:58','','Y','Y','CN','0','2017-07-24 23:35:04','O','0'),
(96,2,0,0,'','default-game-image.jpg','2017-07-28 0:42:54','2018-01-24 0:42:54','25','Y','Y','R','2','2017-07-25 14:42:55','O','0'),
(97,2,0,0,'','default-game-image.jpg','2017-07-28 0:42:54','2018-01-24 0:42:54','25','Y','Y','R','2','2017-07-25 14:45:08','O','0'),
(98,1,0,0,'','default-game-image.jpg','2017-07-28 1:2:56','2017-08-21 1:2:56','35','Y','Y','CN','0','2017-07-25 15:02:58','O','0'),
(99,1,0,0,'','default-game-image.jpg','2017-07-28 1:2:56','2017-08-21 1:2:56','35','Y','Y','CN','0','2017-07-25 15:02:59','O','0'),
(100,2,0,0,'','default-game-image.jpg','2017-07-28 1:3:19','2018-01-24 1:3:19','25','Y','Y','R','2','2017-07-25 15:03:20','O','0'),
(101,1,9,0,'','default-game-image.jpg','2017-07-29 23:39:49','2017-08-22 23:39:49','35','Y','Y','CN','0','2017-07-26 06:39:53','O','35'),
(102,2,0,0,'','default-game-image.jpg','2017-02-01 11:17:8','2017-07-30 22:58:8','25','Y','Y','W','6','2017-07-26 12:58:11','O','200'),
(103,1,54,0,'','default-game-image.jpg','2017-08-17 10:0:52','2017-09-10 10:0:52','25','Y','Y','CN','0','2017-08-03 00:00:54','O','0'),
(104,1,41,0,'','default-game-image.jpg','2017-08-05 13:31:46','2017-08-29 13:31:46','50','Y','Y','C','0','2017-08-03 03:33:03','O','100'),
(105,2,0,0,'','default-game-image.jpg','2017-08-05 13:37:56','2018-02-01 13:37:56','25','Y','Y','R','2','2017-08-03 03:39:13','O','150'),
(106,2,0,0,'','default-game-image.jpg','2017-03-03 17:44:41','2017-08-03 17:44:41','25','Y','Y','W','6','2017-08-04 07:47:52','O','275'),
(107,2,0,0,'','default-game-image.jpg','2017-01-06 0:21:43','2017-08-01 0:21:43','25','Y','Y','W','6','2017-08-04 14:22:59','I','150'),
(108,2,0,0,'','default-game-image.jpg','2017-08-07 12:31:39','2018-02-03 12:31:39','25','Y','Y','R','2','2017-08-05 02:33:24','I','50'),
(109,2,0,0,'','default-game-image.jpg','2016-12-07 17:11:20','2017-01-03 17:11:20','25','Y','Y','C','6','2017-08-05 07:11:26','I','300'),
(110,2,0,0,'','default-game-image.jpg','2017-08-08 13:1:44','2018-02-04 13:1:44','25','Y','Y','R','2','2017-08-06 03:01:51','I','50'),
(111,2,0,0,'','default-game-image.jpg','2017-08-08 13:11:17','2018-02-04 13:11:17','25','Y','Y','R','2','2017-08-06 03:11:23','I','25'),
(112,2,0,0,'','default-game-image.jpg','2017-06-08 13:28:43','2018-02-04 13:28:43','25','Y','Y','R','4','2017-08-06 03:28:50','I','75'),
(113,2,0,0,'','default-game-image.jpg','2017-01-08 13:42:16','2017-01-04 13:42:16','25','Y','Y','C','6','2017-08-06 03:42:21','I','250'),
(114,2,0,0,'','default-game-image.jpg','2017-08-08 14:22:8','2018-02-04 14:22:8','25','Y','Y','R','2','2017-08-06 04:22:16','I','50'),
(115,2,0,0,'','default-game-image.jpg','2017-03-08 15:56:29','2018-02-04 15:56:29','25','Y','Y','R','6','2017-08-06 05:56:34','I','200'),
(116,2,0,0,'','default-game-image.jpg','2017-06-03 16:11:57','2018-02-04 16:11:57','25','Y','Y','R','4','2017-08-06 06:12:05','I','200'),
(117,2,0,0,'','default-game-image.jpg','2017-03-03 16:44:31','2017-02-04 16:44:31','25','Y','Y','W','6','2017-08-06 06:44:40','I','300'),
(118,1,9,0,'','default-game-image.jpg','2017-08-10 23:56:28','2017-09-03 23:56:28','25','Y','Y','CN','0','2017-08-06 06:56:33','O','0'),
(119,1,62,0,'','default-game-image.jpg','2017-08-24 16:37:6','2017-09-17 16:37:6','25','Y','Y','CN','0','2017-08-08 20:07:05','O','0'),
(120,1,62,0,'','default-game-image.jpg','2017-08-24 16:37:6','2017-09-17 16:37:6','25','Y','Y','CN','0','2017-08-08 20:07:06','O','0'),
(121,1,62,0,'','default-game-image.jpg','2017-08-24 16:37:6','2017-09-17 16:37:6','25','Y','Y','CN','0','2017-08-08 20:07:07','O','0'),
(122,1,62,0,'','default-game-image.jpg','2017-08-24 16:37:6','2017-09-17 16:37:6','25','Y','Y','CN','0','2017-08-08 20:07:07','O','0'),
(123,1,83,0,'','default-game-image.jpg','2017-08-22 8:1:20','2017-09-15 8:1:20','25','Y','Y','CN','0','2017-08-19 22:01:26','O','25'),
(124,1,65,0,'','default-game-image.jpg','2017-09-09 22:41:27','2017-10-03 22:41:27','25','Y','Y','CN','0','2017-08-31 05:41:12','O','0'),
(125,1,65,0,'','default-game-image.jpg','2017-09-08 22:44:44','2017-10-02 22:44:44','25','Y','Y','CN','0','2017-08-31 05:44:24','O','0'),
(127,1,65,0,'','default-game-image.jpg','2017-09-27 16:14:41','2017-10-21 16:14:41','25','Y','Y','O','0','2017-09-10 23:14:38','O','0'),
(141,1,65,0,'','default-game-image.jpg','2017-09-20 12:34:30','2017-10-14 12:34:30','25','Y','Y','CN','0','2017-09-17 19:34:28','O','0'),
(142,1,65,0,'','default-game-image.jpg','2017-09-20 12:34:30','2017-10-14 12:34:30','25','Y','Y','CN','0','2017-09-17 19:34:30','O','0'),
(143,1,65,0,'','default-game-image.jpg','2017-09-21 15:5:29','2017-10-15 15:5:29','25','Y','Y','CN','0','2017-09-17 22:05:27','O','0'),
(144,1,65,0,'','default-game-image.jpg','2017-09-21 16:21:48','2017-10-15 16:21:48','25','Y','Y','CN','0','2017-09-17 23:21:44','O','0'),
(145,1,65,0,'','default-game-image.jpg','2017-09-21 21:54:42','2017-10-15 21:54:42','25','Y','Y','CN','0','2017-09-18 04:54:39','O','0'),
(146,1,86,0,'','default-game-image.jpg','2017-09-30 0:26:56','2017-10-24 0:26:56','25','Y','Y','O','0','2017-09-18 14:27:10','O','0'),
(147,1,86,0,'','default-game-image.jpg','2017-09-30 0:26:56','2017-10-24 0:26:56','25','Y','Y','O','0','2017-09-18 14:27:11','O','0'),
(148,1,86,0,'','default-game-image.jpg','2017-09-30 0:26:56','2017-10-24 0:26:56','25','Y','Y','C','0','2017-09-18 14:27:12','O','25'),
(149,1,86,0,'','default-game-image.jpg','2017-09-29 0:33:27','2017-10-23 0:33:27','25','Y','Y','O','0','2017-09-18 14:33:38','O','0'),
(156,1,65,0,'','default-game-image.jpg','2017-09-22 10:57:28','2017-10-16 10:57:28','25','Y','Y','CN','0','2017-09-18 17:57:33','O','0'),
(157,1,65,0,'','default-game-image.jpg','2017-09-22 10:59:13','2017-10-16 10:59:13','25','Y','Y','CN','0','2017-09-18 17:59:15','O','0'),
(158,1,65,0,'','default-game-image.jpg','2017-09-22 11:0:1','2017-10-16 11:0:1','25','Y','Y','CN','0','2017-09-18 18:00:02','O','0'),
(161,1,65,0,'','default-game-image.jpg','2017-09-22 11:25:45','2017-10-16 11:25:45','25','Y','Y','CN','0','2017-09-18 18:25:46','O','0'),
(165,1,65,0,'','default-game-image.jpg','2017-09-22 12:20:7','2017-10-16 12:20:7','25','Y','Y','CN','0','2017-09-18 19:20:11','O','0'),
(166,1,65,0,'','default-game-image.jpg','2017-09-29 12:20:59','2017-10-23 12:20:59','25','Y','Y','O','0','2017-09-18 19:21:03','O','0'),
(168,1,97,0,'','default-game-image.jpg','2017-09-22 15:15:42','2017-10-16 15:15:42','25','Y','Y','CN','0','2017-09-18 22:15:45','O','0'),
(169,1,97,0,'','default-game-image.jpg','2017-09-22 15:16:32','2017-10-16 15:16:32','25','Y','Y','CN','0','2017-09-18 22:16:33','O','0'),
(170,1,65,0,'','default-game-image.jpg','2017-09-22 16:20:9','2017-10-16 16:20:9','25','Y','Y','CN','0','2017-09-18 23:20:12','O','0'),
(171,1,65,0,'','default-game-image.jpg','2017-09-23 18:32:35','2017-10-17 18:32:35','25','Y','Y','CN','0','2017-09-19 01:32:36','O','0'),
(172,1,65,0,'','default-game-image.jpg','2017-09-22 20:1:4','2017-10-16 20:1:4','25','Y','Y','CN','0','2017-09-19 03:01:05','O','0'),
(173,1,65,0,'','default-game-image.jpg','2017-09-22 23:11:0','2017-10-16 23:11:0','25','Y','Y','CN','0','2017-09-19 06:11:00','O','0'),
(174,1,65,0,'','default-game-image.jpg','2017-09-23 10:29:32','2017-10-17 10:29:32','25','Y','Y','CN','0','2017-09-19 17:29:37','O','0'),
(175,1,65,0,'','default-game-image.jpg','2017-09-23 12:37:52','2017-10-17 12:37:52','25','Y','Y','CN','0','2017-09-19 19:37:51','O','0'),
(177,1,44,0,'','default-game-image.jpg','2017-09-29 16:30:28','2017-10-23 16:30:28','25','Y','Y','O','0','2017-09-19 22:30:30','O','0'),
(178,1,44,0,'','default-game-image.jpg','2017-09-29 16:30:28','2017-10-23 16:30:28','25','Y','Y','O','0','2017-09-19 22:30:34','O','0'),
(179,1,65,0,'','default-game-image.jpg','2017-09-23 15:50:59','2017-10-17 15:50:59','25','Y','Y','CN','0','2017-09-19 22:51:01','O','0'),
(180,1,65,0,'','default-game-image.jpg','2017-09-23 18:4:45','2017-10-17 18:4:45','25','Y','Y','CN','0','2017-09-20 01:04:50','O','0'),
(181,1,65,0,'','default-game-image.jpg','2017-09-23 18:24:3','2017-10-17 18:24:3','25','Y','Y','CN','0','2017-09-20 01:24:05','O','0'),
(182,1,65,0,'','default-game-image.jpg','2017-09-23 19:37:28','2017-10-17 19:37:28','25','Y','Y','CN','0','2017-09-20 02:37:30','O','0'),
(183,1,65,0,'','default-game-image.jpg','2017-09-23 21:35:50','2017-10-17 21:35:50','25','Y','Y','CN','0','2017-09-20 04:35:53','O','0'),
(184,1,65,0,'','default-game-image.jpg','2017-09-25 9:30:52','2017-10-19 9:30:52','25','Y','Y','O','0','2017-09-20 16:30:54','O','0'),
(185,1,65,0,'','default-game-image.jpg','2017-09-24 10:59:41','2017-10-18 10:59:41','25','Y','Y','O','0','2017-09-20 17:59:42','O','0'),
(186,1,65,0,'','default-game-image.jpg','2017-09-24 12:0:55','2017-10-18 12:0:55','25','Y','Y','O','0','2017-09-20 19:01:00','O','0'),
(189,1,44,0,'','default-game-image.jpg','2017-09-23 16:23:55','2017-10-17 16:23:55','25','Y','Y','CN','0','2017-09-20 22:23:57','O','0'),
(190,1,44,0,'','default-game-image.jpg','2017-09-27 16:32:59','2017-10-21 16:32:59','25','Y','Y','O','0','2017-09-20 22:33:02','O','0'),
(191,1,44,0,'','default-game-image.jpg','2017-09-25 16:46:30','2017-10-19 16:46:30','25','Y','Y','O','0','2017-09-20 22:46:32','O','0'),
(192,1,65,0,'','default-game-image.jpg','2017-09-24 15:48:50','2017-10-18 15:48:50','25','Y','Y','O','0','2017-09-20 22:48:52','O','0'),
(193,1,65,0,'','default-game-image.jpg','2017-09-24 16:1:27','2017-10-18 16:1:27','25','Y','Y','O','0','2017-09-20 23:01:29','O','0'),
(194,1,65,0,'','default-game-image.jpg','2017-09-24 16:39:27','2017-10-18 16:39:27','25','Y','Y','O','0','2017-09-20 23:39:27','O','0'),
(195,1,65,0,'','default-game-image.jpg','2017-09-24 17:6:19','2017-10-18 17:6:19','25','Y','Y','O','0','2017-09-21 00:06:17','O','0'),
(196,1,65,0,'','default-game-image.jpg','2017-09-24 20:1:16','2017-10-18 20:1:16','25','Y','Y','O','0','2017-09-21 03:01:17','O','0'),
(197,1,65,0,'','default-game-image.jpg','2017-09-24 20:37:7','2017-10-18 20:37:7','25','Y','Y','O','0','2017-09-21 03:37:19','O','0'),
(198,1,65,0,'','default-game-image.jpg','2017-09-24 21:52:8','2017-10-18 21:52:8','25','Y','Y','O','0','2017-09-21 04:52:09','O','0'),
(199,1,65,0,'','default-game-image.jpg','2017-09-25 1:37:6','2017-10-19 1:37:6','25','Y','Y','O','0','2017-09-21 08:37:03','O','0'),
(200,1,65,0,'','default-game-image.jpg','2017-09-25 10:25:18','2017-10-19 10:25:18','25','Y','Y','O','0','2017-09-21 17:25:20','O','0'),
(203,1,65,0,'','default-game-image.jpg','2017-09-25 12:37:27','2017-10-19 12:37:27','25','Y','Y','O','0','2017-09-21 19:37:29','O','0'),
(204,1,65,0,'','default-game-image.jpg','2017-09-25 13:29:38','2017-10-19 13:29:38','25','Y','Y','O','0','2017-09-21 20:29:35','O','0'),
(205,1,65,0,'','default-game-image.jpg','2017-09-25 14:23:51','2017-10-19 14:23:51','25','Y','Y','O','0','2017-09-21 21:23:51','O','0'),
(206,1,65,0,'','default-game-image.jpg','2017-09-25 18:49:57','2017-10-19 18:49:57','25','Y','Y','O','0','2017-09-22 01:49:59','O','0'),
(207,1,65,0,'','default-game-image.jpg','2017-09-26 22:58:52','2017-10-20 22:58:52','25','Y','Y','O','0','2017-09-22 05:58:59','O','0'),
(208,1,65,0,'','default-game-image.jpg','2017-09-26 0:12:39','2017-10-20 0:12:39','25','Y','Y','O','0','2017-09-22 07:12:41','O','0'),
(209,1,65,0,'','default-game-image.jpg','2017-09-27 4:30:24','2017-10-21 4:30:24','25','Y','Y','O','0','2017-09-23 11:30:37','O','0'),
(210,1,65,0,'','default-game-image.jpg','2017-09-29 0:34:7','2017-10-23 0:34:7','25','Y','Y','O','0','2017-09-25 07:34:13','O','0'),
(211,1,65,0,'','default-game-image.jpg','2017-09-30 16:46:22','2017-10-24 16:46:22','25','Y','Y','O','0','2017-09-26 23:46:32','O','0'),
(212,1,65,0,'','default-game-image.jpg','2017-09-30 16:46:22','2017-10-24 16:46:22','25','Y','Y','O','0','2017-09-26 23:46:32','O','0'),
(213,1,65,0,'','default-game-image.jpg','2017-10-01 19:56:52','2017-10-25 19:56:52','25','Y','Y','O','0','2017-09-28 02:57:12','O','0'),
(214,1,105,0,'','default-game-image.jpg','2017-10-27 10:49:9','2017-11-20 10:49:9','25','Y','Y','O','0','2017-10-18 10:49:24','I','0'),
(215,1,105,0,'','default-game-image.jpg','','','50','Y','Y','O','0','2017-10-18 10:57:19','I','50'),
(216,1,9,0,'','default-game-image.jpg','2017-10-22 16:2:54','2017-11-15 16:2:54','25','Y','Y','O','0','2017-10-18 23:02:57','O','0'),
(217,1,9,0,'','default-game-image.jpg','2017-10-22 20:47:50','2017-11-15 20:47:50','25','Y','Y','O','0','2017-10-19 03:47:08','O','0'),
(218,1,83,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-19 06:12:07','O','25'),
(219,1,118,0,'','default-game-image.jpg','2017-10-26 6:44:14','2017-11-19 6:44:14','25','Y','Y','O','0','2017-10-22 12:45:52','I','0'),
(220,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-22 23:12:47','I','0'),
(221,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-22 23:22:07','I','0'),
(222,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-22 23:38:45','I','0'),
(223,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-22 23:44:07','I','0'),
(224,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-23 06:41:13','I','0'),
(225,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-23 07:33:21','I','0'),
(226,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-23 07:33:57','O','0'),
(227,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-23 07:37:27','O','0'),
(228,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-23 07:39:13','O','0'),
(229,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-23 08:03:47','O','0'),
(230,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-23 08:17:13','O','0'),
(231,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-23 08:17:46','I','0'),
(232,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-23 08:54:11','I','0'),
(233,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-23 10:43:51','O','0'),
(234,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-23 10:45:22','O','0'),
(235,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-23 13:20:56','I','0'),
(236,1,9,0,'','default-game-image.jpg','2017-10-27 10:27:2','2017-11-20 10:27:2','35','Y','Y','O','0','2017-10-23 17:27:03','O','0'),
(237,1,9,0,'','default-game-image.jpg','2017-10-27 10:27:2','2017-11-20 10:27:2','35','Y','Y','O','0','2017-10-23 17:27:04','O','0'),
(238,1,102,0,'','default-game-image.jpg','2017-10-29 17:16:56','2017-11-22 17:16:56','25','Y','Y','O','0','2017-10-23 18:17:02','I','0'),
(239,1,102,0,'','default-game-image.jpg','2017-10-29 17:16:56','2017-11-22 17:16:56','25','Y','Y','O','0','2017-10-23 18:17:03','I','0'),
(240,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-23 22:13:03','O','0'),
(241,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-23 22:51:06','O','0'),
(242,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-24 01:38:51','O','0'),
(243,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-24 02:22:31','O','0'),
(244,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-24 02:54:04','O','0'),
(245,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-24 08:41:10','O','0'),
(246,1,9,0,'','default-game-image.jpg','2017-10-28 2:9:4','2017-11-21 2:9:4','35','Y','Y','O','0','2017-10-24 09:09:07','O','0'),
(247,1,102,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-24 22:04:15','I','0'),
(248,1,9,0,'','default-game-image.jpg','2017-10-29 15:17:38','2017-11-22 15:17:38','25','Y','Y','O','0','2017-10-25 22:17:41','O','0'),
(249,1,9,0,'','default-game-image.jpg','2017-10-29 21:35:32','2017-11-22 21:35:32','25','Y','Y','O','0','2017-10-26 04:35:34','O','0'),
(250,1,9,0,'','default-game-image.jpg','2017-10-29 21:35:32','2017-11-22 21:35:32','25','Y','Y','R','0','2017-10-26 04:36:52','O','0'),
(251,1,3,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-26 04:42:05','I','0'),
(252,1,3,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-26 04:42:06','I','0'),
(253,1,102,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-27 00:10:24','I','0'),
(254,1,102,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-27 00:44:18','I','0'),
(255,1,102,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-27 00:54:32','O','0'),
(256,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-27 01:39:38','O','0'),
(257,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-10-27 01:40:22','O','0'),
(258,1,9,0,'','default-game-image.jpg','2017-10-30 20:28:26','2017-11-23 20:28:26','25','Y','Y','R','0','2017-10-27 03:27:30','O','0'),
(259,1,9,0,'','default-game-image.jpg','2017-11-16 0:46:12','2017-12-10 0:46:12','25','Y','Y','O','0','2017-11-05 08:46:20','O','0'),
(260,1,9,0,'','default-game-image.jpg','2017-11-16 23:13:40','2017-12-10 23:13:40','35','Y','Y','O','0','2017-11-06 07:13:41','O','0'),
(261,1,9,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-11-06 07:17:01','O','0'),
(262,1,102,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-11-06 07:37:29','I','0'),
(263,1,115,0,'','default-game-image.jpg','','','25','Y','Y','O','0','2017-11-06 08:48:43','I','0');

/*Table structure for table `tbl_game_comment` */

DROP TABLE IF EXISTS `tbl_game_comment`;

CREATE TABLE `tbl_game_comment` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intUserId` int(11) NOT NULL,
  `intPostId` int(11) NOT NULL,
  `comment_desc` longtext NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_comment` */

insert  into `tbl_game_comment`(`intId`,`intGameId`,`intUserId`,`intPostId`,`comment_desc`,`status`,`createdate`) values 
(1,245,115,277,'sdf','Y','2017-10-24 15:46:55'),
(2,245,115,277,'sdfdf','Y','2017-10-24 16:08:47'),
(3,245,115,277,'asdfdf','Y','2017-10-24 16:08:52');

/*Table structure for table `tbl_game_comment_like` */

DROP TABLE IF EXISTS `tbl_game_comment_like`;

CREATE TABLE `tbl_game_comment_like` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intCommentId` int(11) NOT NULL,
  `intPostId` int(11) NOT NULL,
  `intUserId` int(11) NOT NULL,
  `like_status` enum('Y','N') NOT NULL,
  `createdate` int(11) NOT NULL,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_comment_like` */

insert  into `tbl_game_comment_like`(`intId`,`intGameId`,`intCommentId`,`intPostId`,`intUserId`,`like_status`,`createdate`) values 
(1,245,1,277,115,'Y',0),
(2,245,1,277,115,'Y',0),
(3,245,1,277,115,'Y',0);

/*Table structure for table `tbl_game_invite_friends` */

DROP TABLE IF EXISTS `tbl_game_invite_friends`;

CREATE TABLE `tbl_game_invite_friends` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intSenderId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `invite_status` enum('Y','N') NOT NULL,
  `approved_status` enum('N','Y') NOT NULL,
  `join_status` enum('N','Y') NOT NULL,
  `paid_status` enum('N','Y') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_invite_friends` */

insert  into `tbl_game_invite_friends`(`intId`,`intGameId`,`intSenderId`,`name`,`email`,`invite_status`,`approved_status`,`join_status`,`paid_status`,`createdate`) values 
(1,5,2,'GÃ¶khan Polat','goekhan.polat@googlemail.com','Y','N','N','N','2017-03-21 06:48:14'),
(2,6,9,'nina','nesrine.polat@gmail.com','Y','N','N','N','2017-03-22 08:14:10'),
(3,10,0,'Adolfo 2','loayza.system@hotmail.com','Y','N','N','N','2017-04-18 07:23:21'),
(4,10,0,'Adolfo 3','ing.aloayza@outlook.com','Y','N','N','N','2017-04-18 07:23:21'),
(6,12,0,'Adolfo Loayza','loayza.system@gmail.com','Y','N','N','N','2017-04-19 03:23:18'),
(7,21,0,'Adolfo 2','loayza.system@gmail.com','Y','N','N','N','2017-04-19 07:15:30'),
(8,21,0,'Adolfo 3','ing.aloayza@outlook.com','Y','N','N','N','2017-04-19 07:16:37'),
(9,21,0,'Adolfo 2','loayza.system@hotmail.com','Y','N','N','N','2017-04-19 07:17:29'),
(10,22,14,'Adolfo 2','loayza.system@hotmail.com','Y','N','N','N','2017-04-19 07:56:27'),
(11,23,12,'Adolfo 2','loayza.system@hotmail.com','Y','N','N','N','2017-04-19 08:00:01'),
(12,25,14,'Adolfo Loayza','loayza.system@hotmail.com','Y','N','N','N','2017-04-19 08:10:06'),
(13,26,12,'Adolfo Loayza','loayza.system@hotmail.com','Y','N','N','N','2017-04-19 08:12:24'),
(14,27,12,'Adolfo Loayza','loayza.system@hotmail.com','Y','N','N','N','2017-04-20 11:54:21'),
(15,28,12,'Adolfo 2','loayza.system@hotmail.com','Y','N','N','N','2017-04-20 11:59:07'),
(16,29,12,'juan','pablogomezca@gmail.com','Y','N','N','N','2017-04-21 05:21:44'),
(17,30,12,'Adolfo Loayza','loayza.system@hotmail.com','Y','N','N','N','2017-04-26 08:24:07'),
(18,31,12,'Adolfo 2','loayza.system@hotmail.com','Y','N','N','N','2017-04-26 08:25:04'),
(19,33,13,'Adolfo','loayza.system@gmail.com','Y','N','N','N','2017-04-26 11:48:39'),
(20,34,13,'Adolfo Loayza','loayza.system@gmail.com','Y','N','N','N','2017-04-28 12:11:04'),
(21,38,12,'Adolfo 2','loayza.system@hotmail.com','Y','N','N','N','2017-05-02 00:26:52'),
(22,39,12,'Juan Pablo','pablogomezca@gmail.com','Y','N','N','N','2017-05-02 00:29:44'),
(23,39,12,'Adolfo Loayza','loayza.system@hotmail.com','Y','N','N','N','2017-05-02 00:30:01'),
(24,40,18,'Camilo N','development@efxcreative.com','Y','N','N','N','2017-05-03 01:04:27'),
(25,41,19,'Jgmez','pablogomezca@hotmail.com','Y','N','N','N','2017-05-03 01:22:47'),
(26,42,17,'gmez','pablogomezca@hotmail.com','Y','N','N','N','2017-05-03 01:32:20'),
(27,44,26,'Daniel','pcsync1@hotmail.com','Y','N','N','N','2017-05-04 01:35:52'),
(28,47,26,'paul','johnpaulrecords@gmail.com','Y','N','N','N','2017-05-04 02:14:44'),
(29,48,9,'Nes ','mediaorangen@gmail.com','Y','N','N','N','2017-05-04 09:01:06'),
(30,50,29,'gÃ¶khan','goekhan.polat@gmail.com','Y','N','N','N','2017-06-07 09:25:44'),
(31,50,29,'gÃ¶khan 2','goekhan.polat@gmail.com','Y','N','N','N','2017-06-07 09:25:52'),
(32,51,30,'Layza','loayza.system@gmail.com','Y','N','N','N','2017-06-13 23:14:51'),
(33,52,31,'loayza','loayza.system@gmail.com','Y','N','N','N','2017-06-13 23:19:43'),
(34,53,31,'jgmez12','pablogmzc@gmail.com','Y','N','N','N','2017-06-13 23:34:34'),
(35,53,31,'jgmez3','efxcreative.digital@gmail.com','Y','N','N','N','2017-06-13 23:34:53'),
(36,54,34,'jgmez2','pablogmzc@gmail.com','Y','N','N','N','2017-06-15 10:00:04'),
(37,55,35,'Jgmez2','pablogmzc@gmail.com','Y','N','N','N','2017-06-15 10:04:24'),
(38,56,36,'Jgmez2','pablogmzc@gmail.com','Y','N','N','N','2017-06-15 11:18:51'),
(39,57,37,'jgmez2','pablogmzc@gmail.com','Y','N','N','N','2017-06-15 11:26:04'),
(40,58,12,'loayza','loayza.system@hotmail.com','Y','N','N','N','2017-06-15 14:43:56'),
(41,59,39,'loayza','loayza.system@gmail.com','Y','N','N','N','2017-06-15 14:47:22'),
(42,60,40,'test','loayza.system@hotmail.com','Y','N','N','N','2017-06-15 14:51:27'),
(43,61,41,'Adolfo Loayza','loayza.system@hotmail.com','Y','N','N','N','2017-06-16 02:59:37'),
(44,62,41,'loayza','loayza.system@hotmail.com','Y','N','N','N','2017-06-16 03:13:56'),
(45,63,41,'Adolfo Loayza','loayza.system@hotmail.com','Y','N','N','N','2017-06-16 03:21:29'),
(46,64,41,'Adolfo Loayza','loayza.system@hotmail.com','Y','N','N','N','2017-06-16 05:00:11'),
(47,69,42,'Adolfo Loayza','loayza.system@gmail.com','Y','N','N','N','2017-06-22 13:31:38'),
(48,73,0,'Adolfo Loayza','loayza.system@hotmail.com','Y','N','N','N','2017-07-07 05:11:06'),
(49,73,0,'Juan Pablo Gomez','pablogomezca@gmail.com','Y','N','N','N','2017-07-07 05:11:06'),
(50,74,0,'Adolfo Loayza','loayza.system@gmail.com','Y','N','N','N','2017-07-07 05:14:23'),
(51,74,0,'Juan Pablo Gomez','pablogomezca@gmail.com','Y','N','N','N','2017-07-07 05:14:23'),
(52,78,52,'Just Testing','osppilot@mail.com','Y','N','N','N','2017-07-09 08:40:43'),
(53,78,52,'Bus Driver','transit@columnist.com','Y','N','N','N','2017-07-09 08:40:43'),
(54,78,52,'Hotel Manager','hotel@journalist.com','Y','N','N','N','2017-07-09 08:42:10'),
(55,81,54,'pablo','pablogomezca@gmail.com','Y','N','N','N','2017-07-10 03:52:17'),
(56,83,60,'GT','gokhan@gokhantoka.com','Y','N','N','N','2017-07-11 14:16:31'),
(57,83,60,'TG','tokago@yahoo.com','Y','N','N','N','2017-07-11 14:16:32'),
(58,83,60,'TT','tokago@hotmail.com','Y','N','N','N','2017-07-11 14:16:32'),
(59,83,60,'GG','tokago@gmail.com','Y','N','N','N','2017-07-11 14:16:32'),
(60,91,62,'sasas','deepa@arthinfosoft.in','Y','N','N','N','2017-07-17 13:53:34'),
(61,92,62,'ad','ad@ad.cm','Y','N','N','N','2017-07-17 19:30:00'),
(62,93,41,'Testing','loayza.system@hotmail.com','Y','N','N','N','2017-07-20 11:31:19'),
(63,101,9,'GÃ¶khan Polat','goekhan.polat@googlemail.com','Y','N','N','N','2017-07-26 06:40:10'),
(64,106,0,'Juan Pablo','pablogomezca@gmail.com','Y','N','N','N','2017-08-04 07:49:30'),
(65,163,93,'pavel','pavel@nikolov.com','Y','N','N','N','2017-09-18 19:15:08'),
(68,234,115,'aaa','sdff@sdf.com','Y','N','N','N','2017-10-23 11:20:15'),
(69,234,115,'aaa','sdf@sss.com','Y','N','N','N','2017-10-23 11:25:05'),
(70,234,115,'aaa','sdfsdf@sss.com','Y','N','N','N','2017-10-23 11:25:17'),
(71,234,115,'aaa','sdf@fff.com','Y','N','N','N','2017-10-23 11:26:26'),
(72,234,115,'aaa','jreyes216@outlook.com','Y','N','N','N','2017-10-23 11:30:02'),
(73,257,115,'aaa','LIuWeiG1111@outlook.com','Y','N','N','N','2017-10-27 01:40:37'),
(74,257,115,'aaa','LIuWeiG1111@outlook.com','Y','N','N','N','2017-10-27 01:42:30'),
(75,257,115,'aaa','LIuWeiG1111@outlook.com','Y','N','N','N','2017-10-27 01:42:38'),
(76,257,115,'aaa','LIuWeiG1111@outlook.com','Y','N','N','N','2017-10-27 01:42:40'),
(77,257,115,'aaa','LIuWeiG1111@outlook.com','Y','N','N','N','2017-10-27 01:42:42'),
(78,257,115,'aaa','LIuWeiG1111@outlook.com','Y','N','N','N','2017-10-27 01:42:43'),
(79,257,115,'aaa','LIuWeiG1111@outlook.com','Y','N','N','N','2017-10-27 01:42:45'),
(80,257,115,'aaa','LIuWeiG1111@outlook.com','Y','N','N','N','2017-10-27 01:42:48'),
(81,257,115,'aaa','dejun720@outlook.com','Y','N','N','N','2017-10-27 03:04:09'),
(82,257,115,'aaa','sdff@df.com','Y','N','N','N','2017-10-27 03:05:36');

/*Table structure for table `tbl_game_lot` */

DROP TABLE IF EXISTS `tbl_game_lot`;

CREATE TABLE `tbl_game_lot` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameTypeId` int(11) NOT NULL,
  `intUserId` int(11) NOT NULL,
  `game_title` text NOT NULL,
  `game_desc` text NOT NULL,
  `game_image` varchar(255) NOT NULL,
  `game_start_date` varchar(255) NOT NULL,
  `game_end_date` varchar(255) NOT NULL,
  `avg_bet_amount` varchar(255) NOT NULL,
  `featured_status` enum('Y','N') NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `in_round` enum('0','1','2','3','4','5','6') NOT NULL,
  `game_status` enum('O','R','C','W') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `access_type` enum('O','I') NOT NULL,
  `pleaged_amount` varchar(255) NOT NULL,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_lot` */

/*Table structure for table `tbl_game_lot_players` */

DROP TABLE IF EXISTS `tbl_game_lot_players`;

CREATE TABLE `tbl_game_lot_players` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intPlayerId` int(11) NOT NULL,
  `in_round` varchar(255) NOT NULL,
  `join_status` enum('N','Y') NOT NULL,
  `winner_status` enum('N','Y') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_lot_players` */

insert  into `tbl_game_lot_players`(`intId`,`intGameId`,`intPlayerId`,`in_round`,`join_status`,`winner_status`,`createdate`) values 
(1,74,0,'1','N','N','2017-07-07 05:15:14'),
(2,74,38,'','N','N','2017-07-07 05:50:54'),
(3,74,48,'','N','N','2017-07-07 05:53:16'),
(4,102,41,'6','Y','Y','2017-07-26 14:39:40'),
(6,102,43,'6','Y','N','2017-07-27 13:59:51'),
(8,105,41,'2','N','N','2017-08-03 03:47:48'),
(9,105,43,'2','N','N','2017-08-03 03:48:32'),
(11,106,54,'6','Y','Y','2017-08-04 07:55:09'),
(12,106,43,'6','Y','N','2017-08-04 08:01:16'),
(13,107,43,'6','Y','N','2017-08-04 15:05:39'),
(14,107,41,'6','Y','Y','2017-08-04 15:06:25'),
(15,108,43,'2','N','N','2017-08-05 02:35:33'),
(16,109,54,'6','Y','N','2017-08-05 07:15:37'),
(17,109,68,'6','Y','N','2017-08-05 07:19:25'),
(18,108,41,'2','N','N','2017-08-05 10:22:11'),
(19,110,54,'1','N','N','2017-08-06 03:03:21'),
(20,110,68,'1','N','N','2017-08-06 03:05:06'),
(21,112,70,'2','N','N','2017-08-06 03:29:47'),
(22,112,69,'2','N','N','2017-08-06 03:30:51'),
(23,113,71,'6','Y','N','2017-08-06 03:43:26'),
(24,113,72,'6','Y','N','2017-08-06 03:45:20'),
(25,114,74,'1','N','N','2017-08-06 04:23:19'),
(26,114,73,'1','N','N','2017-08-06 04:25:05'),
(27,111,43,'2','N','N','2017-08-06 04:36:40'),
(28,115,76,'6','Y','N','2017-08-06 05:57:37'),
(29,115,75,'6','Y','N','2017-08-06 05:59:22'),
(30,116,77,'3','Y','N','2017-08-06 06:13:11'),
(31,116,78,'3','Y','N','2017-08-06 06:15:00'),
(32,117,79,'6','Y','Y','2017-08-06 06:45:40'),
(33,117,80,'6','Y','N','2017-08-06 06:47:33');

/*Table structure for table `tbl_game_lot_pleaged_amount` */

DROP TABLE IF EXISTS `tbl_game_lot_pleaged_amount`;

CREATE TABLE `tbl_game_lot_pleaged_amount` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `in_round` int(11) NOT NULL,
  `pleaged_amount` varchar(255) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_lot_pleaged_amount` */

/*Table structure for table `tbl_game_lot_weight_in` */

DROP TABLE IF EXISTS `tbl_game_lot_weight_in`;

CREATE TABLE `tbl_game_lot_weight_in` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intPlayerId` int(11) NOT NULL,
  `in_round` varchar(255) NOT NULL,
  `attach_images` text NOT NULL,
  `attach_video` text NOT NULL,
  `weight` varchar(255) NOT NULL,
  `weight_type` enum('P','K') NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_lot_weight_in` */

insert  into `tbl_game_lot_weight_in`(`intId`,`intGameId`,`intPlayerId`,`in_round`,`attach_images`,`attach_video`,`weight`,`weight_type`,`status`,`createdate`) values 
(1,102,43,'1','1501135481.png','','150','K','Y','2017-07-27 15:04:43'),
(2,102,41,'1','1501135616.png','','130','K','Y','2017-07-27 15:06:59'),
(3,102,41,'2','1501140275.png','','120','K','Y','2017-07-27 16:24:37'),
(4,102,41,'3','','','80','K','Y','2017-07-28 10:51:13'),
(5,102,41,'6','1501212364.png','','70','K','Y','2017-07-28 12:26:08'),
(6,102,41,'6','1501368455.png','','70','K','Y','2017-07-30 07:47:43'),
(7,106,43,'1','','','100','K','Y','2017-08-04 08:14:27'),
(8,106,54,'1','1501802097.png','','90','K','Y','2017-08-04 08:14:58'),
(9,106,43,'1','1501802097.png','','110','K','Y','2017-08-04 08:14:59'),
(10,106,54,'1','1501802097.png','','25','K','Y','2017-08-04 08:30:56'),
(11,106,43,'1','1501803054-66-.png','','95','K','Y','2017-08-04 08:31:03'),
(12,106,43,'1','','','52','K','Y','2017-08-04 08:33:11'),
(13,106,54,'1','1501803250-69-.png','','90','K','Y','2017-08-04 08:34:12'),
(14,106,43,'1','','','59','K','Y','2017-08-04 08:34:16'),
(15,106,54,'1','1501803512-20-54.png','','78','K','Y','2017-08-04 08:38:45'),
(16,106,43,'1','1501803517-93-43.png','','59','K','Y','2017-08-04 08:38:49'),
(17,106,54,'2','1501804567-74-54.png','','444','K','Y','2017-08-04 08:56:09'),
(18,107,41,'1','1501826911-94-41.png','','100','K','Y','2017-08-04 15:08:33'),
(19,107,41,'2','1501828180-49-41.png','','92','K','Y','2017-08-04 15:29:42'),
(20,107,41,'2','1501828201-34-41.png','','90','K','Y','2017-08-04 15:30:04'),
(21,106,54,'2','1501868197-73-54.png','','60','K','Y','2017-08-05 02:36:39'),
(22,106,54,'3','','','80','K','Y','2017-08-05 02:45:22'),
(23,106,54,'3','1501868728-17-54.png','','50','K','Y','2017-08-05 02:45:36'),
(24,106,54,'3','1501868728-17-54.png','','50','K','Y','2017-08-05 02:45:36'),
(25,106,54,'3','1501868752-38-54.png','','50','K','Y','2017-08-05 02:45:53'),
(26,106,54,'5','1501870695-56-54.png','','34','K','Y','2017-08-05 03:18:21'),
(27,106,54,'6','1501870956-72-54.png','','80','K','Y','2017-08-05 03:22:59'),
(28,109,54,'1','1501885797-51-54.png','','90','K','Y','2017-08-05 07:30:00'),
(29,109,54,'6','1501887376-89-54.png','','80','K','Y','2017-08-05 07:56:18'),
(30,112,70,'1','1501958066-45-70.png','','90','K','Y','2017-08-06 03:34:28'),
(31,113,71,'1','1501958887-14-71.png','','90','K','Y','2017-08-06 03:48:10'),
(32,113,72,'1','1501958935-16-72.jpg','','120','K','Y','2017-08-06 03:48:58'),
(33,115,76,'1','1501966929-71-76.png','','90','K','Y','2017-08-06 06:02:16'),
(34,115,75,'1','1501966974-65-75.jpg','','110','K','Y','2017-08-06 06:02:58'),
(35,116,77,'1','1501967869-84-77.png','','90','K','Y','2017-08-06 06:17:53'),
(36,116,78,'1','1501967901-55-78.jpg','','110','K','Y','2017-08-06 06:18:22'),
(37,117,79,'1','1501969749-48-79.png','','90','K','Y','2017-08-06 06:49:11'),
(38,117,80,'1','1501969775-80-80.jpg','','110','K','Y','2017-08-06 06:49:36');

/*Table structure for table `tbl_game_lot_weight_out` */

DROP TABLE IF EXISTS `tbl_game_lot_weight_out`;

CREATE TABLE `tbl_game_lot_weight_out` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intPlayerId` int(11) NOT NULL,
  `in_round` varchar(255) NOT NULL,
  `attach_images` text NOT NULL,
  `attach_video` text NOT NULL,
  `weight` varchar(255) NOT NULL,
  `weight_type` enum('P','K') NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_lot_weight_out` */

insert  into `tbl_game_lot_weight_out`(`intId`,`intGameId`,`intPlayerId`,`in_round`,`attach_images`,`attach_video`,`weight`,`weight_type`,`status`,`createdate`) values 
(1,102,41,'2','','','120','K','Y','2017-07-27 16:16:15'),
(2,102,41,'6','1501468575.png','','75','K','Y','2017-07-31 11:36:25'),
(3,102,41,'6','1501468659.png','','75','K','Y','2017-07-31 11:37:41'),
(4,107,41,'6','1501829095-35-41.png','','90','K','Y','2017-08-04 15:44:57'),
(5,106,54,'6','1501871242-90-54.png','','80','K','Y','2017-08-05 03:27:27'),
(6,117,79,'6','1501970412-28-79.png','','80','K','Y','2017-08-06 07:00:17'),
(7,117,80,'6','1501970455-84-80.jpg','','105','K','Y','2017-08-06 07:00:59');

/*Table structure for table `tbl_game_lot_winner` */

DROP TABLE IF EXISTS `tbl_game_lot_winner`;

CREATE TABLE `tbl_game_lot_winner` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intPlayerId` int(11) NOT NULL,
  `in_round` varchar(255) NOT NULL,
  `amount_award` int(11) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_lot_winner` */

insert  into `tbl_game_lot_winner`(`intId`,`intGameId`,`intPlayerId`,`in_round`,`amount_award`,`createdate`) values 
(1,102,41,'6',160,'2017-07-31 11:43:37'),
(2,107,41,'6',120,'2017-08-04 15:45:55'),
(3,106,54,'6',220,'2017-08-05 03:28:32'),
(4,117,79,'6',240,'2017-08-06 07:05:39');

/*Table structure for table `tbl_game_messages` */

DROP TABLE IF EXISTS `tbl_game_messages`;

CREATE TABLE `tbl_game_messages` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intSenderId` int(11) NOT NULL,
  `intRecrId` int(11) NOT NULL,
  `intGameId` int(11) NOT NULL,
  `message_desc` longtext NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_messages` */

/*Table structure for table `tbl_game_plan_addl_gift` */

DROP TABLE IF EXISTS `tbl_game_plan_addl_gift`;

CREATE TABLE `tbl_game_plan_addl_gift` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(255) NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_plan_addl_gift` */

/*Table structure for table `tbl_game_plan_fee` */

DROP TABLE IF EXISTS `tbl_game_plan_fee`;

CREATE TABLE `tbl_game_plan_fee` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `start_range` varchar(255) NOT NULL,
  `end_range` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_plan_fee` */

insert  into `tbl_game_plan_fee`(`intId`,`start_range`,`end_range`,`amount`,`status`,`createdate`) values 
(1,'20','60','20','Y','2017-04-27 10:00:37'),
(2,'21','54','34','Y','2017-11-01 16:35:45');

/*Table structure for table `tbl_game_players` */

DROP TABLE IF EXISTS `tbl_game_players`;

CREATE TABLE `tbl_game_players` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intUserId` int(11) NOT NULL,
  `join_status` enum('N','Y') NOT NULL,
  `winner_status` enum('N','Y') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_players` */

insert  into `tbl_game_players`(`intId`,`intGameId`,`intUserId`,`join_status`,`winner_status`,`createdate`) values 
(1,1,1,'N','N','2017-03-11 13:12:57'),
(2,1,1,'N','N','2017-03-11 13:15:05'),
(3,1,1,'N','N','2017-03-11 13:15:42'),
(4,2,1,'N','N','2017-03-11 13:20:02'),
(5,10,12,'N','N','2017-04-18 07:27:52'),
(6,11,12,'N','N','2017-04-18 10:57:48'),
(7,21,12,'N','N','2017-04-19 07:48:43'),
(8,21,14,'N','N','2017-04-19 07:52:51'),
(9,23,12,'N','N','2017-04-19 08:00:37'),
(10,26,12,'N','N','2017-04-20 05:35:12'),
(11,26,13,'N','N','2017-04-20 05:38:36'),
(12,28,12,'Y','N','2017-04-20 12:00:44'),
(13,28,13,'Y','Y','2017-04-20 12:13:09'),
(14,29,11,'N','N','2017-04-21 05:26:03'),
(15,28,15,'N','N','2017-04-25 11:15:13'),
(20,28,14,'N','N','2017-04-25 11:52:22'),
(21,31,12,'N','N','2017-04-26 08:31:24'),
(22,33,13,'N','N','2017-04-26 11:50:48'),
(23,33,12,'N','Y','2017-04-27 13:01:28'),
(24,34,13,'N','N','2017-04-28 12:11:53'),
(25,37,13,'N','N','2017-05-01 12:22:41'),
(26,37,13,'N','N','2017-05-01 12:22:59'),
(27,37,13,'N','N','2017-05-01 12:29:28'),
(28,37,13,'N','N','2017-05-01 12:29:28'),
(29,36,13,'N','N','2017-05-01 12:31:31'),
(30,36,13,'N','N','2017-05-01 12:40:41'),
(31,36,13,'N','N','2017-05-01 12:40:44'),
(32,35,13,'N','N','2017-05-01 12:42:42'),
(33,35,13,'N','N','2017-05-01 12:42:49'),
(34,35,13,'N','N','2017-05-01 12:42:51'),
(35,42,17,'Y','Y','2017-05-03 01:33:15'),
(36,42,20,'Y','N','2017-05-03 01:49:24'),
(37,44,26,'N','N','2017-05-04 01:38:09'),
(38,47,26,'Y','N','2017-05-04 02:15:40'),
(39,47,27,'Y','N','2017-05-04 05:02:49'),
(40,50,29,'N','N','2017-06-07 10:52:07'),
(41,52,31,'N','N','2017-06-13 23:20:30'),
(42,53,31,'Y','Y','2017-06-13 23:35:28'),
(43,53,33,'Y','N','2017-06-13 23:38:37'),
(44,57,37,'Y','N','2017-06-15 11:26:36'),
(45,57,38,'Y','Y','2017-06-15 11:28:08'),
(46,58,12,'N','N','2017-06-15 14:44:54'),
(47,59,39,'N','N','2017-06-15 14:48:09'),
(48,60,40,'N','N','2017-06-15 14:52:31'),
(49,63,41,'N','N','2017-06-16 03:22:38'),
(50,64,41,'N','N','2017-06-16 05:02:46'),
(51,68,41,'Y','N','2017-06-18 08:41:51'),
(52,69,42,'N','N','2017-06-22 13:32:33'),
(53,74,49,'N','N','2017-07-07 05:29:24'),
(54,78,41,'N','N','2017-07-10 04:20:26'),
(55,78,55,'N','N','2017-07-10 04:36:36'),
(57,101,41,'N','N','2017-08-03 03:32:46'),
(58,104,41,'N','N','2017-08-03 03:37:23'),
(60,104,43,'N','N','2017-08-04 14:38:52'),
(61,123,83,'N','N','2017-08-19 22:01:54'),
(62,148,86,'N','N','2017-09-18 14:29:13'),
(63,215,105,'N','N','2017-10-18 10:59:29'),
(64,218,83,'N','N','2017-10-19 06:15:25'),
(65,241,115,'N','N','2017-10-23 23:21:33'),
(66,242,115,'N','N','2017-10-24 01:38:56'),
(67,243,115,'N','N','2017-10-24 02:22:36'),
(68,244,115,'N','N','2017-10-24 02:54:11'),
(69,245,115,'N','N','2017-10-24 08:41:17'),
(70,250,9,'N','N','2017-10-26 04:37:01'),
(71,251,3,'N','N','2017-10-26 04:43:28'),
(72,257,115,'N','N','2017-10-27 01:43:56'),
(73,258,9,'N','N','2017-10-27 03:27:40'),
(74,261,9,'N','N','2017-11-06 07:17:06');

/*Table structure for table `tbl_game_post` */

DROP TABLE IF EXISTS `tbl_game_post`;

CREATE TABLE `tbl_game_post` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intUserId` int(11) NOT NULL,
  `post_desc` longtext NOT NULL,
  `post_photo` text NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_post` */

insert  into `tbl_game_post`(`intId`,`intGameId`,`intUserId`,`post_desc`,`post_photo`,`status`,`createdate`) values 
(1,1,1,'created this game!','','Y','2017-03-11 13:02:33'),
(2,2,1,'created this game!','','Y','2017-03-11 13:18:18'),
(3,3,2,'created this game!','','Y','2017-03-14 04:40:35'),
(4,4,9,'created this game!','','Y','2017-03-15 09:52:00'),
(5,5,2,'created this game!','','Y','2017-03-21 06:46:19'),
(6,6,9,'created this game!','','Y','2017-03-22 08:12:09'),
(7,7,10,'created this game!','','Y','2017-03-31 10:25:12'),
(8,8,10,'created this game!','','Y','2017-03-31 10:25:30'),
(9,9,10,'created this game!','','Y','2017-04-02 02:19:11'),
(10,10,12,'created this game!','','Y','2017-04-18 07:20:05'),
(11,11,14,'created this game!','','Y','2017-04-18 10:43:09'),
(12,12,0,'created this game!','','Y','2017-04-19 03:22:10'),
(13,13,0,'created this game!','','Y','2017-04-19 03:22:11'),
(14,14,0,'created this game!','','Y','2017-04-19 03:22:12'),
(15,15,0,'created this game!','','Y','2017-04-19 03:22:13'),
(16,16,12,'created this game!','','Y','2017-04-19 06:01:23'),
(17,17,12,'created this game!','','Y','2017-04-19 06:07:09'),
(18,18,12,'created this game!','','Y','2017-04-19 06:10:09'),
(19,19,12,'created this game!','','Y','2017-04-19 06:12:03'),
(20,20,12,'created this game!','','Y','2017-04-19 06:22:15'),
(21,21,12,'created this game!','','Y','2017-04-19 07:15:15'),
(22,22,14,'created this game!','','Y','2017-04-19 07:55:54'),
(23,23,12,'created this game!','','Y','2017-04-19 07:59:42'),
(24,24,12,'created this game!','','Y','2017-04-19 07:59:43'),
(25,25,14,'created this game!','','Y','2017-04-19 08:04:43'),
(26,26,12,'created this game!','','Y','2017-04-19 08:11:30'),
(27,27,12,'created this game!','','Y','2017-04-20 11:54:03'),
(28,28,12,'created this game!','','Y','2017-04-20 11:58:45'),
(29,29,12,'created this game!','','Y','2017-04-21 05:20:59'),
(30,29,11,'okokok','','Y','2017-04-21 05:28:17'),
(31,28,13,'     This is my comment','','Y','2017-04-21 12:59:12'),
(32,28,13,'Ate something unhealthy','','Y','2017-04-23 06:27:07'),
(33,28,13,'Ate something unhealthy','','Y','2017-04-23 06:27:08'),
(34,30,12,'created this game!','','Y','2017-04-26 08:13:04'),
(35,31,12,'created this game!','','Y','2017-04-26 08:24:38'),
(36,32,12,'created this game!','','Y','2017-04-26 08:24:39'),
(37,33,13,'created this game!','','Y','2017-04-26 11:47:56'),
(38,34,13,'created this game!','','Y','2017-04-28 12:10:51'),
(39,35,12,'created this game!','','Y','2017-05-01 11:00:55'),
(40,36,12,'created this game!','','Y','2017-05-01 12:01:24'),
(41,37,12,'created this game!','','Y','2017-05-01 12:03:34'),
(42,38,12,'created this game!','','Y','2017-05-02 00:26:28'),
(43,39,12,'created this game!','','Y','2017-05-02 00:28:46'),
(44,40,18,'created this game!','','Y','2017-05-03 00:58:59'),
(45,41,19,'created this game!','','Y','2017-05-03 01:02:02'),
(46,42,17,'created this game!','','Y','2017-05-03 01:32:08'),
(47,43,9,'created this game!','','Y','2017-05-03 11:46:56'),
(48,44,26,'created this game!','','Y','2017-05-04 01:34:46'),
(49,45,26,'created this game!','','Y','2017-05-04 01:48:54'),
(50,46,26,'created this game!','','Y','2017-05-04 02:11:00'),
(51,47,26,'created this game!','','Y','2017-05-04 02:14:26'),
(52,47,27,'     hola','','Y','2017-05-04 05:04:17'),
(53,48,9,'created this game!','','Y','2017-05-04 09:00:27'),
(54,49,9,'created this game!','','Y','2017-05-04 09:07:22'),
(55,50,29,'created this game!','','Y','2017-06-07 09:24:59'),
(56,51,30,'created this game!','','Y','2017-06-13 23:13:55'),
(57,52,31,'created this game!','','Y','2017-06-13 23:19:30'),
(58,53,31,'created this game!','','Y','2017-06-13 23:34:17'),
(59,54,34,'created this game!','','Y','2017-06-15 09:59:51'),
(60,55,35,'created this game!','','Y','2017-06-15 10:04:14'),
(61,56,36,'created this game!','','Y','2017-06-15 11:18:36'),
(62,57,37,'created this game!','','Y','2017-06-15 11:25:53'),
(63,58,12,'created this game!','','Y','2017-06-15 14:43:35'),
(64,59,39,'created this game!','','Y','2017-06-15 14:46:53'),
(65,60,40,'created this game!','','Y','2017-06-15 14:51:12'),
(66,61,41,'created this game!','','Y','2017-06-16 02:59:09'),
(67,62,41,'created this game!','','Y','2017-06-16 03:13:14'),
(68,63,41,'created this game!','','Y','2017-06-16 03:21:10'),
(69,64,41,'created this game!','','Y','2017-06-16 04:59:53'),
(70,65,37,'created this game!','','Y','2017-06-18 05:02:23'),
(71,66,10,'created this game!','','Y','2017-06-18 05:13:12'),
(72,67,37,'created this game!','','Y','2017-06-18 05:52:07'),
(73,68,41,'created this game!','','Y','2017-06-18 08:39:34'),
(74,68,41,'     Test Post','','Y','2017-06-18 08:45:55'),
(75,68,41,'     Test Post','','Y','2017-06-18 08:45:59'),
(76,68,41,'     New Post','','Y','2017-06-18 08:47:13'),
(77,69,42,'created this game!','','Y','2017-06-22 13:31:23'),
(78,70,9,'created this game!','','Y','2017-06-25 17:48:20'),
(79,63,41,'     Test Profile','','Y','2017-06-27 12:31:59'),
(80,71,41,'created this game!','','Y','2017-06-27 12:53:22'),
(81,63,41,'     Comment','','Y','2017-06-27 13:06:32'),
(82,63,41,'Just skipped dessert','','Y','2017-06-27 13:06:40'),
(83,63,41,'This is a test Foto','1498536443.png','Y','2017-06-27 13:07:25'),
(84,63,41,'     Test Comment','','Y','2017-06-27 15:29:21'),
(85,63,41,'     Test Comment','','Y','2017-06-27 15:29:22'),
(86,63,41,'     Test Comment','','Y','2017-06-27 15:29:22'),
(87,63,41,'     test comment','','Y','2017-06-27 16:01:40'),
(88,63,41,'     test comment','','Y','2017-06-27 16:02:34'),
(89,63,41,'     adasdsadasd','','Y','2017-06-27 16:06:25'),
(90,63,41,'     adasdsadasd','','Y','2017-06-27 16:07:30'),
(91,63,41,'     adasdsadasd','','Y','2017-06-27 16:08:14'),
(92,63,41,'     adasdsadasd','','Y','2017-06-27 16:08:43'),
(93,63,41,'     adasdsadasd','','Y','2017-06-27 16:10:49'),
(94,72,41,'created this game!','','Y','2017-07-02 11:44:05'),
(95,73,0,'created this game!','','Y','2017-07-07 05:10:24'),
(96,74,0,'created this game!','','Y','2017-07-07 05:13:31'),
(97,75,0,'created this game!','','Y','2017-07-07 05:20:52'),
(98,76,41,'created this game!','','Y','2017-07-07 06:18:05'),
(99,77,51,'created this game!','','Y','2017-07-08 18:22:59'),
(100,78,52,'created this game!','','Y','2017-07-09 08:38:49'),
(101,79,52,'created this game!','','Y','2017-07-09 15:00:54'),
(102,80,54,'created this game!','','Y','2017-07-10 03:47:40'),
(103,81,54,'created this game!','','Y','2017-07-10 03:51:55'),
(104,82,60,'created this game!','','Y','2017-07-11 14:03:49'),
(105,83,60,'created this game!','','Y','2017-07-11 14:05:47'),
(106,84,9,'created this game!','','Y','2017-07-13 20:12:51'),
(107,85,9,'created this game!','','Y','2017-07-13 20:14:18'),
(108,86,62,'created this game!','','Y','2017-07-13 20:16:36'),
(109,87,62,'created this game!','','Y','2017-07-13 20:16:39'),
(110,88,9,'created this game!','','Y','2017-07-13 20:18:23'),
(111,89,62,'created this game!','','Y','2017-07-13 22:04:43'),
(112,90,65,'created this game!','','Y','2017-07-14 08:32:11'),
(113,91,62,'created this game!','','Y','2017-07-17 13:52:57'),
(114,92,62,'created this game!','','Y','2017-07-17 16:31:27'),
(115,93,41,'created this game!','','Y','2017-07-20 11:30:42'),
(116,94,66,'created this game!','','Y','2017-07-21 23:37:08'),
(117,95,67,'created this game!','','Y','2017-07-24 23:35:04'),
(118,96,0,'created this game!','','Y','2017-07-25 14:42:55'),
(119,97,0,'created this game!','','Y','2017-07-25 14:45:08'),
(120,98,0,'created this game!','','Y','2017-07-25 15:02:58'),
(121,99,0,'created this game!','','Y','2017-07-25 15:02:59'),
(122,100,0,'created this game!','','Y','2017-07-25 15:03:21'),
(123,101,9,'created this game!','','Y','2017-07-26 06:39:53'),
(124,102,0,'created this game!','','Y','2017-07-26 12:58:11'),
(125,102,41,'     Testing post','','Y','2017-07-26 15:05:02'),
(126,103,54,'created this game!','','Y','2017-08-03 00:00:55'),
(127,104,41,'created this game!','','Y','2017-08-03 03:33:03'),
(128,105,0,'created this game!','','Y','2017-08-03 03:39:13'),
(129,106,0,'created this game!','','Y','2017-08-04 07:47:52'),
(130,107,0,'created this game!','','Y','2017-08-04 14:22:59'),
(131,108,0,'created this game!','','Y','2017-08-05 02:33:25'),
(132,106,54,'     Ok this is my poast','','Y','2017-08-05 02:39:35'),
(133,109,0,'created this game!','','Y','2017-08-05 07:11:26'),
(134,110,0,'created this game!','','Y','2017-08-06 03:01:51'),
(135,111,0,'created this game!','','Y','2017-08-06 03:11:23'),
(136,112,0,'created this game!','','Y','2017-08-06 03:28:50'),
(137,113,0,'created this game!','','Y','2017-08-06 03:42:21'),
(138,114,0,'created this game!','','Y','2017-08-06 04:22:16'),
(139,115,0,'created this game!','','Y','2017-08-06 05:56:34'),
(140,116,0,'created this game!','','Y','2017-08-06 06:12:06'),
(141,117,0,'created this game!','','Y','2017-08-06 06:44:41'),
(142,118,9,'created this game!','','Y','2017-08-06 06:56:33'),
(143,117,79,'b','1501976881.png','Y','2017-08-06 08:48:05'),
(144,119,62,'created this game!','','Y','2017-08-08 20:07:05'),
(145,120,62,'created this game!','','Y','2017-08-08 20:07:06'),
(146,121,62,'created this game!','','Y','2017-08-08 20:07:07'),
(147,122,62,'created this game!','','Y','2017-08-08 20:07:07'),
(148,123,83,'created this game!','','Y','2017-08-19 22:01:26'),
(149,124,65,'created this game!','','Y','2017-08-31 05:41:12'),
(150,125,65,'created this game!','','Y','2017-08-31 05:44:24'),
(151,126,92,'created this game!','','Y','2017-09-10 12:57:37'),
(152,127,65,'created this game!','','Y','2017-09-10 23:14:38'),
(153,128,93,'created this game!','','Y','2017-09-16 18:02:41'),
(154,129,93,'created this game!','','Y','2017-09-16 18:04:16'),
(155,130,93,'created this game!','','Y','2017-09-16 18:35:05'),
(156,131,93,'created this game!','','Y','2017-09-16 18:35:23'),
(157,132,93,'created this game!','','Y','2017-09-16 18:37:10'),
(158,133,93,'created this game!','','Y','2017-09-16 18:44:42'),
(159,134,93,'created this game!','','Y','2017-09-16 19:58:40'),
(160,135,93,'created this game!','','Y','2017-09-16 19:59:43'),
(161,136,93,'created this game!','','Y','2017-09-16 20:55:11'),
(162,137,93,'created this game!','','Y','2017-09-16 21:01:37'),
(163,138,93,'created this game!','','Y','2017-09-16 21:01:39'),
(164,139,93,'created this game!','','Y','2017-09-16 21:04:13'),
(165,140,93,'created this game!','','Y','2017-09-16 22:44:15'),
(166,141,65,'created this game!','','Y','2017-09-17 19:34:28'),
(167,142,65,'created this game!','','Y','2017-09-17 19:34:31'),
(168,143,65,'created this game!','','Y','2017-09-17 22:05:27'),
(169,144,65,'created this game!','','Y','2017-09-17 23:21:44'),
(170,145,65,'created this game!','','Y','2017-09-18 04:54:39'),
(171,146,86,'created this game!','','Y','2017-09-18 14:27:10'),
(172,147,86,'created this game!','','Y','2017-09-18 14:27:11'),
(173,148,86,'created this game!','','Y','2017-09-18 14:27:12'),
(174,149,86,'created this game!','','Y','2017-09-18 14:33:38'),
(175,150,93,'created this game!','','Y','2017-09-18 16:04:47'),
(176,151,95,'created this game!','','Y','2017-09-18 16:10:20'),
(177,152,93,'created this game!','','Y','2017-09-18 16:11:13'),
(178,153,93,'created this game!','','Y','2017-09-18 16:16:14'),
(179,154,93,'created this game!','','Y','2017-09-18 17:43:34'),
(180,155,93,'created this game!','','Y','2017-09-18 17:46:39'),
(181,156,65,'created this game!','','Y','2017-09-18 17:57:33'),
(182,157,65,'created this game!','','Y','2017-09-18 17:59:15'),
(183,158,65,'created this game!','','Y','2017-09-18 18:00:02'),
(184,159,93,'created this game!','','Y','2017-09-18 18:04:30'),
(185,160,93,'created this game!','','Y','2017-09-18 18:21:01'),
(186,161,65,'created this game!','','Y','2017-09-18 18:25:46'),
(187,162,93,'created this game!','','Y','2017-09-18 18:32:39'),
(188,163,93,'created this game!','','Y','2017-09-18 19:14:52'),
(189,164,93,'created this game!','','Y','2017-09-18 19:14:53'),
(190,165,65,'created this game!','','Y','2017-09-18 19:20:12'),
(191,166,65,'created this game!','','Y','2017-09-18 19:21:03'),
(192,167,93,'created this game!','','Y','2017-09-18 19:26:49'),
(193,168,97,'created this game!','','Y','2017-09-18 22:15:45'),
(194,169,97,'created this game!','','Y','2017-09-18 22:16:33'),
(195,170,65,'created this game!','','Y','2017-09-18 23:20:12'),
(196,171,65,'created this game!','','Y','2017-09-19 01:32:37'),
(197,172,65,'created this game!','','Y','2017-09-19 03:01:05'),
(198,173,65,'created this game!','','Y','2017-09-19 06:11:00'),
(199,174,65,'created this game!','','Y','2017-09-19 17:29:37'),
(200,175,65,'created this game!','','Y','2017-09-19 19:37:51'),
(201,176,94,'created this game!','','Y','2017-09-19 20:48:00'),
(202,177,44,'created this game!','','Y','2017-09-19 22:30:30'),
(203,178,44,'created this game!','','Y','2017-09-19 22:30:34'),
(204,179,65,'created this game!','','Y','2017-09-19 22:51:01'),
(205,180,65,'created this game!','','Y','2017-09-20 01:04:50'),
(206,181,65,'created this game!','','Y','2017-09-20 01:24:05'),
(207,182,65,'created this game!','','Y','2017-09-20 02:37:30'),
(208,183,65,'created this game!','','Y','2017-09-20 04:35:53'),
(209,184,65,'created this game!','','Y','2017-09-20 16:30:54'),
(210,185,65,'created this game!','','Y','2017-09-20 17:59:42'),
(211,186,65,'created this game!','','Y','2017-09-20 19:01:01'),
(212,187,96,'created this game!','','Y','2017-09-20 21:08:37'),
(213,188,96,'created this game!','','Y','2017-09-20 21:10:46'),
(214,189,44,'created this game!','','Y','2017-09-20 22:23:57'),
(215,190,44,'created this game!','','Y','2017-09-20 22:33:02'),
(216,191,44,'created this game!','','Y','2017-09-20 22:46:32'),
(217,192,65,'created this game!','','Y','2017-09-20 22:48:52'),
(218,193,65,'created this game!','','Y','2017-09-20 23:01:29'),
(219,194,65,'created this game!','','Y','2017-09-20 23:39:28'),
(220,195,65,'created this game!','','Y','2017-09-21 00:06:17'),
(221,196,65,'created this game!','','Y','2017-09-21 03:01:17'),
(222,197,65,'created this game!','','Y','2017-09-21 03:37:19'),
(223,198,65,'created this game!','','Y','2017-09-21 04:52:09'),
(224,199,65,'created this game!','','Y','2017-09-21 08:37:03'),
(225,200,65,'created this game!','','Y','2017-09-21 17:25:20'),
(226,201,96,'created this game!','','Y','2017-09-21 19:08:48'),
(227,202,93,'created this game!','','Y','2017-09-21 19:15:53'),
(228,203,65,'created this game!','','Y','2017-09-21 19:37:29'),
(229,204,65,'created this game!','','Y','2017-09-21 20:29:35'),
(230,205,65,'created this game!','','Y','2017-09-21 21:23:51'),
(231,206,65,'created this game!','','Y','2017-09-22 01:49:59'),
(232,207,65,'created this game!','','Y','2017-09-22 05:58:59'),
(233,208,65,'created this game!','','Y','2017-09-22 07:12:41'),
(234,209,65,'created this game!','','Y','2017-09-23 11:30:37'),
(235,210,65,'created this game!','','Y','2017-09-25 07:34:13'),
(236,211,65,'created this game!','','Y','2017-09-26 23:46:32'),
(237,212,65,'created this game!','','Y','2017-09-26 23:46:33'),
(238,213,65,'created this game!','','Y','2017-09-28 02:57:12'),
(239,214,105,'created this game!','','Y','2017-10-18 10:49:24'),
(240,215,105,'created this game!','','Y','2017-10-18 10:57:19'),
(241,215,105,'                   hghjugj','','Y','2017-10-18 11:02:32'),
(242,215,105,'dgfg','','Y','2017-10-18 11:06:13'),
(243,216,9,'created this game!','','Y','2017-10-18 23:02:57'),
(244,217,9,'created this game!','','Y','2017-10-19 03:47:08'),
(245,218,83,'created this game!','','Y','2017-10-19 06:12:07'),
(246,219,118,'created this game!','','Y','2017-10-22 12:45:52'),
(247,220,115,'created this game!','','Y','2017-10-22 23:12:47'),
(248,221,115,'created this game!','','Y','2017-10-22 23:22:07'),
(249,222,115,'created this game!','','Y','2017-10-22 23:38:46'),
(250,223,115,'created this game!','','Y','2017-10-22 23:44:08'),
(251,224,115,'created this game!','','Y','2017-10-23 06:41:13'),
(252,225,115,'created this game!','','Y','2017-10-23 07:33:21'),
(253,226,115,'created this game!','','Y','2017-10-23 07:33:57'),
(254,227,115,'created this game!','','Y','2017-10-23 07:37:27'),
(255,228,115,'created this game!','','Y','2017-10-23 07:39:13'),
(256,229,115,'created this game!','','Y','2017-10-23 08:03:47'),
(257,230,115,'created this game!','','Y','2017-10-23 08:17:14'),
(258,231,115,'created this game!','','Y','2017-10-23 08:17:47'),
(259,232,115,'created this game!','','Y','2017-10-23 08:54:11'),
(260,233,115,'created this game!','','Y','2017-10-23 10:43:51'),
(261,234,115,'created this game!','','Y','2017-10-23 10:45:23'),
(262,235,115,'created this game!','','Y','2017-10-23 13:20:56'),
(263,236,9,'created this game!','','Y','2017-10-23 17:27:04'),
(264,237,9,'created this game!','','Y','2017-10-23 17:27:05'),
(265,238,102,'created this game!','','Y','2017-10-23 18:17:02'),
(266,239,102,'created this game!','','Y','2017-10-23 18:17:03'),
(267,240,115,'created this game!','','Y','2017-10-23 22:13:04'),
(268,241,115,'created this game!','','Y','2017-10-23 22:51:07'),
(269,242,115,'created this game!','','Y','2017-10-24 01:38:51'),
(270,243,115,'created this game!','','Y','2017-10-24 02:22:31'),
(271,244,115,'created this game!','','Y','2017-10-24 02:54:04'),
(272,245,115,'created this game!','','Y','2017-10-24 08:41:10'),
(273,246,9,'created this game!','','Y','2017-10-24 09:09:07'),
(274,245,115,'sdf','','Y','2017-10-24 15:02:53'),
(275,245,115,'sdfasdfasfd','','Y','2017-10-24 15:32:37'),
(276,245,115,'fsdf','','Y','2017-10-24 15:35:16'),
(277,245,115,'sdf','','Y','2017-10-24 15:36:23'),
(278,247,102,'created this game!','','Y','2017-10-24 22:04:15'),
(279,248,9,'created this game!','','Y','2017-10-25 22:17:42'),
(280,249,9,'created this game!','','Y','2017-10-26 04:35:34'),
(281,250,9,'created this game!','','Y','2017-10-26 04:36:52'),
(282,251,3,'created this game!','','Y','2017-10-26 04:42:05'),
(283,252,3,'created this game!','','Y','2017-10-26 04:42:06'),
(284,253,102,'created this game!','','Y','2017-10-27 00:10:24'),
(285,254,102,'created this game!','','Y','2017-10-27 00:44:19'),
(286,255,102,'created this game!','','Y','2017-10-27 00:54:32'),
(287,256,115,'created this game!','','Y','2017-10-27 01:39:38'),
(288,257,115,'created this game!','','Y','2017-10-27 01:40:23'),
(289,258,9,'created this game!','','Y','2017-10-27 03:27:30'),
(290,259,9,'created this game!','','Y','2017-11-05 08:46:20'),
(291,260,9,'created this game!','','Y','2017-11-06 07:13:41'),
(292,261,9,'created this game!','','Y','2017-11-06 07:17:01'),
(293,262,102,'created this game!','','Y','2017-11-06 07:37:30'),
(294,263,115,'created this game!','','Y','2017-11-06 08:48:43');

/*Table structure for table `tbl_game_post_like` */

DROP TABLE IF EXISTS `tbl_game_post_like`;

CREATE TABLE `tbl_game_post_like` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intPostId` int(11) NOT NULL,
  `intUserId` int(11) NOT NULL,
  `like_status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_post_like` */

insert  into `tbl_game_post_like`(`intId`,`intGameId`,`intPostId`,`intUserId`,`like_status`,`createdate`) values 
(1,201,226,96,'Y','2017-09-23 13:18:18'),
(4,245,274,115,'Y','2017-10-24 15:11:25'),
(10,245,277,115,'Y','2017-10-24 16:08:32');

/*Table structure for table `tbl_game_send_gift` */

DROP TABLE IF EXISTS `tbl_game_send_gift`;

CREATE TABLE `tbl_game_send_gift` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intSenderId` int(11) NOT NULL,
  `intRecrId` int(11) NOT NULL,
  `intGiftId` int(11) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_send_gift` */

/*Table structure for table `tbl_game_type` */

DROP TABLE IF EXISTS `tbl_game_type`;

CREATE TABLE `tbl_game_type` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `game_name` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_type` */

insert  into `tbl_game_type`(`intId`,`game_name`,`duration`,`status`,`createdate`) values 
(1,'KICKSTARTER','4 weeks','Y','2017-04-28 07:00:00'),
(2,'TRANSFORMER','6 months','Y','2017-04-28 07:00:00');

/*Table structure for table `tbl_game_weight_in` */

DROP TABLE IF EXISTS `tbl_game_weight_in`;

CREATE TABLE `tbl_game_weight_in` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intPlayerId` int(11) NOT NULL,
  `attach_images` text NOT NULL,
  `attach_video` text NOT NULL,
  `weight` int(255) NOT NULL,
  `weight_type` enum('P','K') NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_weight_in` */

insert  into `tbl_game_weight_in`(`intId`,`intGameId`,`intPlayerId`,`attach_images`,`attach_video`,`weight`,`weight_type`,`status`,`createdate`) values 
(1,28,13,'1492893986.jpg','',52,'K','Y','2017-04-23 05:46:45'),
(2,28,13,'','',80,'K','Y','2017-04-23 05:50:08'),
(3,28,13,'1493073902.jpg','',58,'K','Y','2017-04-25 07:45:25'),
(4,42,17,'1493745112.jpg','',82,'K','Y','2017-05-03 02:11:54'),
(5,47,27,'1493842430.jpg','',88,'K','Y','2017-05-04 05:14:01'),
(6,53,31,'1497365288.png','',82,'K','Y','2017-06-13 23:48:11'),
(7,53,31,'1497365408.png','',82,'K','Y','2017-06-13 23:50:10'),
(8,53,31,'1497365574.png','',83,'K','Y','2017-06-13 23:53:04'),
(9,57,37,'1497493976.png','',82,'K','Y','2017-06-15 11:32:59'),
(10,57,38,'1497494034.png','',95,'K','Y','2017-06-15 11:33:56');

/*Table structure for table `tbl_game_weight_out` */

DROP TABLE IF EXISTS `tbl_game_weight_out`;

CREATE TABLE `tbl_game_weight_out` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intPlayerId` int(11) NOT NULL,
  `attach_images` text NOT NULL,
  `attach_video` text NOT NULL,
  `weight` varchar(255) NOT NULL,
  `weight_type` enum('P','K') NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_weight_out` */

insert  into `tbl_game_weight_out`(`intId`,`intGameId`,`intPlayerId`,`attach_images`,`attach_video`,`weight`,`weight_type`,`status`,`createdate`) values 
(1,28,13,'','','33','K','Y','2017-04-26 12:24:51'),
(2,42,17,'','','72','K','Y','2017-05-03 06:53:28'),
(3,42,17,'','','72','K','Y','2017-05-03 06:56:44'),
(4,42,17,'','','50','K','Y','2017-05-03 07:05:51'),
(5,42,17,'1493763041.png','','37','K','Y','2017-05-03 07:12:09'),
(6,53,31,'1497366709.png','','70','K','Y','2017-06-14 00:11:52'),
(7,57,37,'1497494535.png','','70','K','Y','2017-06-15 11:42:19'),
(8,57,38,'1497494587.png','','68','K','Y','2017-06-15 11:43:10');

/*Table structure for table `tbl_game_winner` */

DROP TABLE IF EXISTS `tbl_game_winner`;

CREATE TABLE `tbl_game_winner` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intPlayerId` int(11) NOT NULL,
  `amount_award` varchar(255) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_game_winner` */

insert  into `tbl_game_winner`(`intId`,`intGameId`,`intPlayerId`,`amount_award`,`createdate`) values 
(1,28,13,'84','2017-04-26 12:31:19'),
(2,33,12,'40','2017-04-29 12:12:39'),
(3,42,17,'56','2017-05-03 07:15:52'),
(4,53,31,'40','2017-06-14 00:12:44'),
(5,57,38,'56','2017-06-15 11:44:08');

/*Table structure for table `tbl_gift` */

DROP TABLE IF EXISTS `tbl_gift`;

CREATE TABLE `tbl_gift` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `gift_title` text NOT NULL,
  `gift_image` text NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_gift` */

insert  into `tbl_gift`(`intId`,`gift_title`,`gift_image`,`status`,`createdate`) values 
(2,'fdfsf','','Y','2017-11-06 01:24:19');

/*Table structure for table `tbl_group_comment` */

DROP TABLE IF EXISTS `tbl_group_comment`;

CREATE TABLE `tbl_group_comment` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGroupId` int(11) NOT NULL,
  `intPostId` int(11) NOT NULL,
  `intUserId` int(11) NOT NULL,
  `comment_desc` longtext NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_group_comment` */

insert  into `tbl_group_comment`(`intId`,`intGroupId`,`intPostId`,`intUserId`,`comment_desc`,`status`,`createdate`) values 
(13,6,26,84,'repply from test','Y','2017-08-17 03:05:59'),
(14,6,25,83,'face reply2','Y','2017-08-17 03:07:41'),
(15,6,24,83,'facebook reply3','Y','2017-08-17 03:08:50'),
(16,6,27,83,'facerep','Y','2017-08-17 03:12:39'),
(17,6,27,83,'bb','Y','2017-08-17 03:15:11'),
(18,6,28,83,'nerfacerep','Y','2017-08-17 03:19:55'),
(19,6,28,83,'ccv','Y','2017-08-17 03:25:25'),
(20,6,28,83,'llll','Y','2017-08-17 03:29:23'),
(21,6,28,83,'tytytyt','Y','2017-08-17 03:32:18'),
(22,6,30,83,'hhh','Y','2017-08-17 03:32:43'),
(23,6,30,83,'bb','Y','2017-08-17 03:34:26'),
(24,6,30,83,'bb','Y','2017-08-17 03:34:29'),
(25,6,31,83,'xxxx','Y','2017-08-17 03:35:29'),
(26,6,31,83,'xxxx','Y','2017-08-17 03:35:33'),
(27,6,32,83,'ddff','Y','2017-08-17 03:36:20'),
(28,6,33,83,'nnn','Y','2017-08-17 03:38:55'),
(30,6,34,83,'uyyuyy','Y','2017-08-17 03:41:22'),
(31,6,35,83,'x','Y','2017-08-17 03:41:35'),
(32,6,35,83,'nnn','Y','2017-08-17 03:41:42'),
(33,6,37,83,'this is the reply','Y','2017-08-17 03:43:21'),
(34,6,37,83,'dddd','Y','2017-08-17 03:47:39'),
(35,6,37,83,'ddd','Y','2017-08-17 03:47:56'),
(36,6,38,83,'f','Y','2017-08-17 03:52:10'),
(50,6,44,84,'from test','Y','2017-08-19 21:50:12'),
(52,6,49,108,'fass','Y','2017-10-24 16:32:28'),
(53,6,49,108,'asdfasdf','Y','2017-10-24 16:33:03'),
(54,6,44,108,'asdfasdf','Y','2017-10-24 17:08:47'),
(55,6,54,108,'QEWR','Y','2017-10-24 17:57:09'),
(58,6,52,108,'qwefsdf','Y','2017-10-24 18:09:48'),
(59,6,54,108,'aaaaa','Y','2017-10-24 18:42:40');

/*Table structure for table `tbl_group_create` */

DROP TABLE IF EXISTS `tbl_group_create`;

CREATE TABLE `tbl_group_create` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intUserId` int(11) NOT NULL,
  `group_name` text NOT NULL,
  `group_image` text NOT NULL,
  `group_desc` longtext NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_group_create` */

insert  into `tbl_group_create`(`intId`,`intUserId`,`group_name`,`group_image`,`group_desc`,`status`,`createdate`) values 
(1,9,'Test Gruppe','1Bildschirmfoto 2017-03-22 um 00.13.41.png','Test Gruppe','Y','2017-03-22 08:16:19'),
(2,37,'group1','','aaasdfx','Y','2017-06-18 05:21:18'),
(4,53,'Test Group','4avatar-lg.jpg','Group for testing','Y','2017-07-09 08:14:48'),
(5,57,'Pooja','5002.png','test message','Y','2017-07-11 03:24:45'),
(6,60,'TOKAGO','6604px-Caspar_David_Friedrich_-_Der_Wanderer_Ã¼ber_dem_Nebelmeer.jpg','Test','Y','2017-07-11 14:47:10'),
(7,65,'test von GÃ¶khan','7only-logo-CD-transparency.png','das ist eine testgruppe','Y','2017-07-14 08:34:53'),
(8,65,'First Blog','8Bildschirmfoto 2017-09-19 um 15.54.58.png','Das ist mein erster Blog','Y','2017-09-27 23:25:28'),
(9,96,'wertwert','9com-pic.png','sdfgdfgdfgdgf','Y','2017-09-28 11:32:39');

/*Table structure for table `tbl_group_invite_friends` */

DROP TABLE IF EXISTS `tbl_group_invite_friends`;

CREATE TABLE `tbl_group_invite_friends` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGroupId` int(11) NOT NULL,
  `intPostId` int(11) NOT NULL,
  `intSenderId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `invite_status` enum('Y','N') NOT NULL,
  `approved_status` enum('N','Y') NOT NULL,
  `join_status` enum('N','Y') NOT NULL,
  `paid_status` enum('N','Y') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_group_invite_friends` */

/*Table structure for table `tbl_group_join` */

DROP TABLE IF EXISTS `tbl_group_join`;

CREATE TABLE `tbl_group_join` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGroupId` int(11) NOT NULL,
  `intUserId` int(11) NOT NULL,
  `join_status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_group_join` */

insert  into `tbl_group_join`(`intId`,`intGroupId`,`intUserId`,`join_status`,`createdate`) values 
(1,1,37,'Y','2017-06-18 05:24:05'),
(2,1,10,'Y','2017-06-18 05:26:41'),
(3,1,41,'Y','2017-06-27 12:56:49'),
(4,3,52,'Y','2017-07-09 08:45:45'),
(5,1,38,'Y','2017-07-10 03:04:57'),
(6,1,54,'Y','2017-07-10 03:32:09'),
(7,1,54,'Y','2017-07-10 03:32:19'),
(8,1,52,'Y','2017-07-10 09:56:52'),
(9,4,57,'Y','2017-07-11 03:30:36'),
(10,1,60,'Y','2017-07-11 14:45:28'),
(11,6,65,'Y','2017-07-14 08:34:05'),
(12,1,41,'Y','2017-07-20 08:10:45'),
(15,6,83,'Y','2017-08-15 12:46:42'),
(17,6,84,'Y','2017-08-15 12:53:52'),
(18,6,85,'Y','2017-08-16 07:18:34'),
(19,1,96,'Y','2017-09-23 13:21:17'),
(20,1,96,'Y','2017-09-23 13:21:19'),
(21,2,96,'Y','2017-09-25 18:41:53'),
(22,2,96,'Y','2017-09-25 18:41:53'),
(23,2,96,'Y','2017-09-25 18:41:54'),
(24,2,96,'Y','2017-09-25 18:41:54'),
(25,6,96,'Y','2017-09-25 19:41:00'),
(26,4,96,'Y','2017-09-25 20:18:35'),
(27,5,65,'Y','2017-09-27 23:23:57'),
(28,6,108,'Y','2017-10-23 13:57:37'),
(29,6,105,'Y','2017-11-06 07:27:33');

/*Table structure for table `tbl_group_like_comment` */

DROP TABLE IF EXISTS `tbl_group_like_comment`;

CREATE TABLE `tbl_group_like_comment` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGroupId` int(11) NOT NULL,
  `intUserId` int(11) NOT NULL,
  `intCommentId` int(11) NOT NULL,
  `intPostId` int(11) NOT NULL,
  `like_status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_group_like_comment` */

insert  into `tbl_group_like_comment`(`intId`,`intGroupId`,`intUserId`,`intCommentId`,`intPostId`,`like_status`,`createdate`) values 
(23,6,83,13,26,'Y','2017-08-17 03:07:07'),
(25,6,84,50,44,'Y','2017-08-19 21:50:53'),
(26,6,83,50,44,'Y','2017-08-19 21:51:05'),
(28,6,108,57,54,'Y','2017-10-24 18:02:36'),
(29,6,105,60,58,'Y','2017-11-06 08:28:11');

/*Table structure for table `tbl_group_like_post` */

DROP TABLE IF EXISTS `tbl_group_like_post`;

CREATE TABLE `tbl_group_like_post` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGroupId` int(11) NOT NULL,
  `intPostId` int(11) NOT NULL,
  `intUserId` int(11) NOT NULL,
  `like_status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_group_like_post` */

insert  into `tbl_group_like_post`(`intId`,`intGroupId`,`intPostId`,`intUserId`,`like_status`,`createdate`) values 
(26,6,44,83,'Y','2017-08-19 21:51:21'),
(27,6,44,84,'Y','2017-08-19 21:51:31'),
(28,6,47,65,'Y','2017-10-23 15:58:56'),
(31,6,53,108,'Y','2017-10-24 17:54:44'),
(34,6,54,108,'Y','2017-10-24 18:09:00'),
(36,6,58,105,'Y','2017-11-06 08:27:51');

/*Table structure for table `tbl_group_post` */

DROP TABLE IF EXISTS `tbl_group_post`;

CREATE TABLE `tbl_group_post` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `post_photo` varchar(255) NOT NULL,
  `intUserId` int(11) NOT NULL,
  `intGroupId` int(11) NOT NULL,
  `post_desc` longtext NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_group_post` */

insert  into `tbl_group_post`(`intId`,`post_photo`,`intUserId`,`intGroupId`,`post_desc`,`status`,`createdate`) values 
(24,'',83,6,'from facebook account','Y','2017-08-17 03:03:51'),
(25,'',83,6,'from facebook account','Y','2017-08-17 03:03:58'),
(26,'',83,6,'from facebook account','Y','2017-08-17 03:04:07'),
(27,'',83,6,'face','Y','2017-08-17 03:12:19'),
(28,'',83,6,'facexxx','Y','2017-08-17 03:19:35'),
(29,'',83,6,'','Y','2017-08-17 03:32:32'),
(30,'',83,6,'face','Y','2017-08-17 03:32:35'),
(31,'',83,6,'fa','Y','2017-08-17 03:35:20'),
(32,'',83,6,'mmmmm','Y','2017-08-17 03:36:05'),
(33,'',83,6,'xxx','Y','2017-08-17 03:38:21'),
(34,'',83,6,'aaa tttt','Y','2017-08-17 03:40:53'),
(35,'',83,6,'nnn','Y','2017-08-17 03:41:32'),
(36,'',83,6,'bbb','Y','2017-08-17 03:42:57'),
(37,'',83,6,'jjjj','Y','2017-08-17 03:43:09'),
(38,'',83,6,'vgfgxgb','Y','2017-08-17 03:49:46'),
(39,'',83,6,'vv','Y','2017-08-17 03:52:43'),
(40,'',83,6,'ddd','Y','2017-08-17 03:53:16'),
(41,'',83,6,'d','Y','2017-08-17 03:55:17'),
(42,'',83,6,'fff','Y','2017-08-17 03:56:57'),
(43,'',83,6,'s','Y','2017-08-17 04:03:18'),
(44,'',83,6,'sss','Y','2017-08-17 04:04:01'),
(45,'',65,5,'  \r\n     test','Y','2017-09-27 23:24:04'),
(46,'',65,5,'  \r\ndas ist ein test beitrag ','Y','2017-09-27 23:24:20'),
(47,'',65,6,'  \r\n     Test','Y','2017-09-28 08:08:21'),
(48,'',108,6,'hahahahaha','Y','2017-10-23 16:06:47'),
(49,'',108,6,'Ate a twinkie','Y','2017-10-23 16:30:41'),
(50,'',108,6,'asdf','Y','2017-10-24 17:30:43'),
(51,'',108,6,'asdfasdf','Y','2017-10-24 17:48:21'),
(52,'',108,6,'aaaaa','Y','2017-10-24 17:53:05'),
(53,'',108,6,'qqq','Y','2017-10-24 17:54:41'),
(54,'',108,6,'ASDFSADFASDF','Y','2017-10-24 17:56:51'),
(55,'',108,6,'Just worked out','Y','2017-10-24 18:38:32'),
(56,'',108,6,'123','Y','2017-10-24 18:43:52'),
(57,'',108,6,'123123123','Y','2017-10-24 18:47:08'),
(58,'',105,6,'Addfghjkkkhgfdghj','Y','2017-11-06 08:27:46');

/*Table structure for table `tbl_group_send_gift` */

DROP TABLE IF EXISTS `tbl_group_send_gift`;

CREATE TABLE `tbl_group_send_gift` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGroupId` int(11) NOT NULL,
  `intSenderId` int(11) NOT NULL,
  `intRecrId` int(11) NOT NULL,
  `intPostId` int(11) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_group_send_gift` */

insert  into `tbl_group_send_gift`(`intId`,`intGroupId`,`intSenderId`,`intRecrId`,`intPostId`,`createdate`) values 
(1,6,108,105,0,'2017-10-23 17:17:33');

/*Table structure for table `tbl_support_category` */

DROP TABLE IF EXISTS `tbl_support_category`;

CREATE TABLE `tbl_support_category` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_support_category` */

insert  into `tbl_support_category`(`intId`,`category_name`,`createdate`,`status`) values 
(1,'sdfsdf','2017-11-05 11:47:04','Y');

/*Table structure for table `tbl_support_details` */

DROP TABLE IF EXISTS `tbl_support_details`;

CREATE TABLE `tbl_support_details` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intClientId` varchar(255) NOT NULL,
  `intSubcatId` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_support_details` */

/*Table structure for table `tbl_support_subcat` */

DROP TABLE IF EXISTS `tbl_support_subcat`;

CREATE TABLE `tbl_support_subcat` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intCategoryId` varchar(255) NOT NULL,
  `subcat_name` varchar(255) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('Y','N') NOT NULL,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_support_subcat` */

/*Table structure for table `tbl_trans_extra_gift` */

DROP TABLE IF EXISTS `tbl_trans_extra_gift`;

CREATE TABLE `tbl_trans_extra_gift` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intUserId` int(11) NOT NULL,
  `intTransId` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_trans_extra_gift` */

/*Table structure for table `tbl_trans_game_join` */

DROP TABLE IF EXISTS `tbl_trans_game_join`;

CREATE TABLE `tbl_trans_game_join` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intUserId` int(11) NOT NULL,
  `intTransId` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_trans_game_join` */

insert  into `tbl_trans_game_join`(`intId`,`intGameId`,`intUserId`,`intTransId`,`amount`,`createdate`) values 
(1,1,1,'','','2017-03-11 13:12:57'),
(2,1,1,'','','2017-03-11 13:15:05'),
(3,1,1,'','','2017-03-11 13:15:42'),
(4,2,1,'','','2017-03-11 13:20:02'),
(5,10,12,'','','2017-04-18 07:27:52'),
(6,11,12,'','','2017-04-18 10:57:48'),
(7,21,12,'','','2017-04-19 07:48:43'),
(8,21,14,'','','2017-04-19 07:52:51'),
(9,23,12,'','','2017-04-19 08:00:37'),
(10,26,12,'','','2017-04-20 05:35:12'),
(11,26,13,'','','2017-04-20 05:38:36'),
(12,28,12,'','','2017-04-20 12:00:44'),
(13,28,13,'','','2017-04-20 12:13:08'),
(14,29,11,'','','2017-04-21 05:26:03'),
(15,28,15,'','','2017-04-25 11:15:13'),
(16,28,15,'','','2017-04-25 11:15:25'),
(17,28,15,'','','2017-04-25 11:15:28'),
(18,28,15,'','','2017-04-25 11:17:22'),
(19,28,15,'','35','2017-04-25 11:19:39'),
(20,28,14,'','','2017-04-25 11:52:22'),
(21,31,12,'79A53839XD6257534','25.00','2017-04-26 08:31:24'),
(22,33,13,'2C967925KY224325G','25.00','2017-04-26 11:50:48'),
(23,33,12,'77S11567XW7006948','25.00','2017-04-27 13:01:28'),
(24,34,13,'2WF9093224418784D','10.00','2017-04-28 12:11:53'),
(25,37,13,'75437-227572-5906A9D9-A9C0','25.00','2017-05-01 12:22:41'),
(26,37,13,'75437-227572-5906A9D9-A9C0','25.00','2017-05-01 12:22:58'),
(27,37,13,'75437-227572-5906A9D9-A9C0','25.00','2017-05-01 12:29:28'),
(28,37,13,'75437-227572-5906A9D9-A9C0','25.00','2017-05-01 12:29:28'),
(29,36,13,'75437-227572-5906ABF5-5B96','25.00','2017-05-01 12:31:31'),
(30,36,13,'75437-227572-5906ABF5-5B96','25.00','2017-05-01 12:40:41'),
(31,36,13,'75437-227572-5906ABF5-5B96','25.00','2017-05-01 12:40:44'),
(32,35,13,'75437-227572-5906AE79-AE77','25.00','2017-05-01 12:42:42'),
(33,35,13,'75437-227572-5906AE79-AE77','25.00','2017-05-01 12:42:49'),
(34,35,13,'75437-227572-5906AE79-AE77','25.00','2017-05-01 12:42:51'),
(35,42,17,'9105938099301910E','35.00','2017-05-03 01:33:15'),
(36,42,20,'4CL43698EK841925G','35.00','2017-05-03 01:49:24'),
(37,44,26,'5S216843F31292619','25.00','2017-05-04 01:38:09'),
(38,47,26,'62F29754YU5803230','35.00','2017-05-04 02:15:40'),
(39,47,27,'8VR6371211170824L','35.00','2017-05-04 05:02:49'),
(40,50,29,'40M069768B796862F','50.00','2017-06-07 10:52:07'),
(41,52,31,'4AX802021M208664M','35.00','2017-06-13 23:20:30'),
(42,53,31,'8UL55444PS411100F','25.00','2017-06-13 23:35:28'),
(43,53,33,'9TV118664D110143H','25.00','2017-06-13 23:38:37'),
(44,57,37,'41441561JY009874D','35.00','2017-06-15 11:26:35'),
(45,57,38,'8WT3653938596340F','35.00','2017-06-15 11:28:08'),
(46,58,12,'3GJ51517K1961002A','25.00','2017-06-15 14:44:54'),
(47,59,39,'57K21672VW3793044','25.00','2017-06-15 14:48:09'),
(48,60,40,'89S22962P8738633H','50.00','2017-06-15 14:52:31'),
(49,63,41,'17108971H9839364L','50.00','2017-06-16 03:22:38'),
(50,64,41,'9TT714847V010564K','35.00','2017-06-16 05:02:46'),
(51,68,41,'1VA16599DT251224M','35.00','2017-06-18 08:41:51'),
(52,69,42,'2FH62079TH8345434','35.00','2017-06-22 13:32:33'),
(53,74,0,'3NH75983K05620839','25.00','2017-07-07 05:15:12'),
(54,74,49,'4C1719620S619624B','25.00','2017-07-07 05:29:24'),
(55,78,41,'7LY16242T38666218','60.00','2017-07-10 04:20:26'),
(56,78,55,'3D999133YR332061X','60.00','2017-07-10 04:36:36'),
(57,101,41,'101-41-1-4076232','35','2017-08-03 03:28:29'),
(58,101,41,'101-41-1-4076233','35','2017-08-03 03:32:46'),
(59,104,41,'104-41-1-4076234','50','2017-08-03 03:37:23'),
(61,104,43,'05W61366UC761003M','50.00','2017-08-04 14:38:51'),
(62,123,83,'123-83-1-4088933','25','2017-08-19 22:01:54'),
(63,148,86,'7DA8386703756125W','25.00','2017-09-18 14:29:13'),
(64,215,105,'2DL322314H026044B','50.00','2017-10-18 10:59:29'),
(65,218,83,'96G59252L00650645','25.00','2017-10-19 06:15:25');

/*Table structure for table `tbl_trans_game_lot_join` */

DROP TABLE IF EXISTS `tbl_trans_game_lot_join`;

CREATE TABLE `tbl_trans_game_lot_join` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intUserId` int(11) NOT NULL,
  `intTransId` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `description` varchar(250) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_trans_game_lot_join` */

insert  into `tbl_trans_game_lot_join`(`intId`,`intGameId`,`intUserId`,`intTransId`,`amount`,`description`,`createdate`) values 
(1,74,38,'9U232782XR166215F','125.00','','2017-07-07 05:50:54'),
(2,74,48,'41E55670S6433612B','125.00','','2017-07-07 05:53:16'),
(3,102,41,'2NK453511C097193L','25.00','','2017-07-26 14:39:40'),
(15,102,41,'5XA64803HT942812D','25.00','','2017-07-28 12:08:10'),
(16,102,41,'5XA64803HT942812D','25.00','','2017-07-28 12:09:21'),
(17,102,41,'0MV87635NF759324D','25.00','','2017-07-28 12:14:06'),
(19,105,41,'105-41-1-4076240','25','','2017-08-03 03:47:48'),
(20,105,43,'105-43-1-4076241','125','','2017-08-03 03:48:32'),
(22,106,54,'106-54-1-4077234','25','','2017-08-04 07:55:09'),
(23,106,43,'106-43-1-4077236','125','','2017-08-04 08:01:15'),
(24,106,54,'106-54-1-4077251','25','','2017-08-04 08:47:02'),
(25,107,43,'107-43-1-4077645','25','','2017-08-04 15:05:39'),
(26,107,41,'107-41-1-4077648','125','','2017-08-04 15:06:25'),
(27,108,43,'108-43-1-4078000','25','','2017-08-05 02:35:33'),
(28,106,54,'6X783556KN934923A','25.00','','2017-08-05 02:44:21'),
(29,106,54,'106-54-1-4078003','25','','2017-08-05 02:53:35'),
(30,106,54,'106-54-1-4078005','50','','2017-08-05 03:17:37'),
(31,109,54,'109-54-1-4078021','25','','2017-08-05 07:15:37'),
(32,109,68,'109-68-1-4078022','25','','2017-08-05 07:19:25'),
(33,109,54,'109-54-1-4078023','25','','2017-08-05 07:33:36'),
(34,109,68,'109-68-1-4078024','25','','2017-08-05 07:35:18'),
(35,109,54,'30636066AV228962J','25.00','','2017-08-05 07:38:45'),
(36,109,54,'109-54-1-4078027','25','','2017-08-05 07:42:45'),
(37,109,68,'109-68-1-4078030','25','','2017-08-05 07:43:22'),
(38,109,68,'109-68-1-4078032','25','','2017-08-05 07:43:48'),
(39,109,54,'109-54-1-4078033','25','','2017-08-05 07:45:13'),
(40,109,68,'109-68-1-4078036','25','','2017-08-05 07:47:27'),
(41,109,68,'109-68-1-4078037','25','','2017-08-05 07:47:54'),
(42,109,54,'109-54-1-4078042','25','','2017-08-05 07:48:56'),
(43,108,41,'108-41-1-4078058','25','Payment Round 1','2017-08-05 10:22:11'),
(44,110,54,'110-54-1-4078419','25','Payment Round 1','2017-08-06 03:03:21'),
(45,110,68,'110-68-1-4078423','25','Payment Round 1','2017-08-06 03:05:06'),
(46,112,70,'112-70-1-4078429','25','Payment Round 1','2017-08-06 03:29:47'),
(47,112,69,'112-69-1-4078431','25','Payment Round 1','2017-08-06 03:30:51'),
(48,112,70,'112-70-1-4078433','25','Payment Round 2','2017-08-06 03:37:39'),
(49,113,71,'113-71-1-4078435','25','Payment Round 1','2017-08-06 03:43:26'),
(50,113,72,'113-72-1-4078437','25','Payment Round 1','2017-08-06 03:45:20'),
(51,113,71,'113-71-1-4078440','25','Payment Round 2','2017-08-06 03:50:26'),
(52,113,72,'113-72-1-4078443','25','Payment Round 2','2017-08-06 03:51:33'),
(53,113,71,'113-71-1-4078445','25','Payment Round 3','2017-08-06 03:52:56'),
(54,113,72,'113-72-1-4078448','25','Payment Round 3','2017-08-06 03:53:17'),
(55,113,71,'113-71-1-4078452','25','Payment Round 4','2017-08-06 03:55:27'),
(56,113,72,'113-72-1-4078455','25','Payment Round 4','2017-08-06 03:56:01'),
(57,113,71,'113-71-1-4078456','25','Payment Round 5','2017-08-06 03:57:01'),
(58,113,72,'113-72-1-4078457','25','Payment Round 5','2017-08-06 03:57:41'),
(59,114,74,'114-74-1-4078458','25','Payment Round 1','2017-08-06 04:23:18'),
(60,114,73,'114-73-1-4078460','25','Payment Round 1','2017-08-06 04:25:04'),
(61,111,43,'111-43-1-4078472','25','Payment Round 1','2017-08-06 04:36:40'),
(62,115,76,'115-76-1-4078483','25','Payment Round 1','2017-08-06 05:57:37'),
(63,115,75,'115-75-1-4078484','25','Payment Round 1','2017-08-06 05:59:22'),
(64,115,76,'115-76-1-4078486','25','Payment Round 2','2017-08-06 06:04:47'),
(65,115,75,'115-75-1-4078488','25','Payment Round 2','2017-08-06 06:05:57'),
(66,115,76,'115-76-1-4078491','25','Payment Round 3','2017-08-06 06:07:13'),
(67,115,75,'115-75-1-4078492','25','Payment Round 3','2017-08-06 06:07:43'),
(68,115,76,'115-76-1-4078493','25','Payment Round 4','2017-08-06 06:08:46'),
(69,115,75,'115-75-1-4078494','25','Payment Round 4','2017-08-06 06:09:26'),
(70,116,77,'116-77-1-4078495','25','Payment Round 1','2017-08-06 06:13:11'),
(71,116,78,'116-78-1-4078498','25','Payment Round 1','2017-08-06 06:15:00'),
(72,116,77,'116-77-1-4078499','25','Payment Round 2','2017-08-06 06:20:13'),
(73,116,78,'116-78-1-4078500','25','Payment Round 2','2017-08-06 06:20:42'),
(74,116,77,'116-77-1-4078502','25','Payment Round 3','2017-08-06 06:21:48'),
(75,116,78,'116-78-1-4078503','25','Payment Round 3','2017-08-06 06:22:21'),
(76,116,77,'116-77-1-4078506','25','Payment Round 4','2017-08-06 06:23:53'),
(77,116,78,'116-78-1-4078508','25','Payment Round 4','2017-08-06 06:24:15'),
(78,117,79,'117-79-1-4078511','25','Payment Round 1','2017-08-06 06:45:40'),
(79,117,80,'117-80-1-4078513','25','Payment Round 1','2017-08-06 06:47:33'),
(80,117,79,'117-79-1-4078514','25','Payment Round 2','2017-08-06 06:51:25'),
(81,117,80,'117-80-1-4078517','25','Payment Round 2','2017-08-06 06:51:48'),
(82,117,79,'117-79-1-4078519','25','Payment Round 3','2017-08-06 06:52:44'),
(83,117,80,'117-80-1-4078521','25','Payment Round 3','2017-08-06 06:53:17'),
(84,117,79,'117-79-1-4078522','25','Payment Round 4','2017-08-06 06:54:28'),
(85,117,80,'117-80-1-4078523','25','Payment Round 4','2017-08-06 06:54:58'),
(86,117,79,'117-79-1-4078524','25','Payment Round 5','2017-08-06 06:55:56'),
(87,117,80,'117-80-1-4078526','25','Payment Round 5','2017-08-06 06:56:20'),
(88,117,79,'117-79-1-4078529','25','Payment Round 6','2017-08-06 06:57:42'),
(89,117,80,'117-80-1-4078532','25','Payment Round 6','2017-08-06 06:58:34');

/*Table structure for table `tbl_trans_refund_user` */

DROP TABLE IF EXISTS `tbl_trans_refund_user`;

CREATE TABLE `tbl_trans_refund_user` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intUserId` int(11) NOT NULL,
  `intGameId` int(11) NOT NULL,
  `refund_amount` varchar(255) NOT NULL,
  `intTransId` varchar(255) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_trans_refund_user` */

/*Table structure for table `tbl_trans_withdrow_user` */

DROP TABLE IF EXISTS `tbl_trans_withdrow_user`;

CREATE TABLE `tbl_trans_withdrow_user` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intUserId` int(11) NOT NULL,
  `refund_amount` varchar(255) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_trans_withdrow_user` */

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `user_type` enum('N','F') NOT NULL,
  `bday` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `unit_of_measure` enum('P','K') NOT NULL,
  `weight_display` enum('Y','N') NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `user_gender` enum('M','F','O') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `auth_code` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`intId`,`fname`,`lname`,`email`,`password`,`user_type`,`bday`,`height`,`unit_of_measure`,`weight_display`,`status`,`user_gender`,`createdate`,`auth_code`,`remember_token`) values 
(2,'GÃ¶khan Polat','','faceee03@web.de','','F','','','P','Y','Y','M','2017-03-12 10:45:20','',NULL),
(3,'Nesrine','Esco','n.esco@web.de','123456','N','','','P','Y','Y','F','2017-03-14 07:09:08','','iYRRFhDPCWbQN6n08FCdEH0ztMXYbBWDVwnFIr2mn8DoDEqsBgoiS7Tq8gu0'),
(8,'Leonardo Gomez','','leomalavera@gmail.com','','F','//','.','','Y','Y','M','2017-03-14 07:35:20','',NULL),
(9,'GÃ¶khan Polat','','goekhan.polat@gmail.com','','F','','','P','Y','Y','M','2017-03-15 09:51:00','01f215882e963a517c66e8b50a401417','IJNmxFP5OeX2FbfcbvyWB0udXdoUPG1zFMOKXDzB7OoRA6FunnALgezPaxrY'),
(10,'daniel','nicholls','dirak696@gmail.com','12345','N','','','P','Y','Y','M','2017-03-31 09:59:41','ac761b67ec04146989691200b57a8426',NULL),
(28,'Edgart','Keil','edgartkeil@googlemail.com','eddy0505','N','','','P','Y','Y','M','2017-05-07 03:44:56','',NULL),
(29,'GÃ¶khan Polat','','faceee04@web.de','','F','','','P','Y','Y','M','2017-06-07 09:24:06','',NULL),
(41,'Adolfo','Loayza','loayza.system@gmail.com','123654789159','N','','','P','Y','Y','M','2017-06-16 02:58:21','',NULL),
(43,'Adolfo Javier Loayza Flores','','loayza.system@hotmail.com','','F','','','P','Y','Y','M','2017-06-23 07:11:49','',NULL),
(44,'Adolfo Javier Loayza Flores','','undefined','','F','','','P','Y','Y','M','2017-06-23 13:13:16','',NULL),
(45,'Suvamaya Dey','','infodeysuva@gmail.com','','F','','','P','Y','Y','M','2017-07-02 17:04:36','',NULL),
(46,'Mohamed','Salah','mohamed.elshoula.1@gmail.com','mido112233','N','','','P','Y','Y','M','2017-07-04 08:31:46','',NULL),
(51,'Dominik','GlÃ¤fcke','Imdodo@web.de','abc123456789','N','//','150.','K','Y','Y','M','2017-07-08 18:13:50','',NULL),
(52,'Just','Testing','tester@techie.com','123456@7','N','','','P','Y','Y','M','2017-07-09 07:54:38','',NULL),
(53,'Martin Oldridge','','moldridge@gmail.com','','F','','','P','Y','Y','M','2017-07-09 08:03:04','',NULL),
(55,'jgmez','x','johnpaulrecords@gmail.com','123456','N','','','P','Y','Y','M','2017-07-10 04:30:13','',NULL),
(56,'Ashi Sharma','','poojasharma.kec@gmail.com','','F','','','P','Y','Y','M','2017-07-11 02:51:02','',NULL),
(57,'Pooja','Sharma','poojasharma.dli@gmail.com','pooja2002','N','04/07/1989','44.','K','Y','Y','F','2017-07-11 02:55:09','',NULL),
(58,'GÃ¶khan Toka','','tokago@yahoo.com','','F','','','P','Y','Y','M','2017-07-11 04:34:42','',NULL),
(60,'Toka','Go','tokago@gmail.com','qwerty123','N','','','P','Y','Y','M','2017-07-11 13:53:11','',NULL),
(61,'a','abdulmatin','ruhul2009amin@gmail.com','121212','N','','','P','Y','Y','M','2017-07-12 06:55:26','',NULL),
(62,'Deepa','deepa','deepa@arthinfosoft.in','123456','N','','','P','Y','Y','F','2017-07-12 14:49:22','',NULL),
(63,'Nesrine Polat','','undefined','','F','','','P','Y','Y','M','2017-07-14 08:15:02','',NULL),
(64,'Ne','Seu','Movieland.herrenberg@gmail.com','12345','N','','','P','Y','Y','F','2017-07-14 08:20:06','',NULL),
(65,'GÃ¶khan Polat','','undefined','','F','','','P','Y','Y','M','2017-07-14 08:27:40','',NULL),
(67,'Test','Testmann','anwalt@schliess.de','123456','N','','','P','Y','Y','M','2017-07-24 23:30:30','',NULL),
(81,'Mladen','JabaMS','hcpd.ms@gmail.com','carina','N','//','.','','Y','Y','M','2017-08-09 20:00:03','',NULL),
(82,'a','b','efxcreative.digital@gmail.com','1234','N','','','P','Y','Y','M','2017-08-11 11:49:01','6215d76e601e5d60821d238823dea337',NULL),
(83,'Juan GÃ³mez','','pablogmzc@gmail.com','','F','//','.','','Y','Y','M','2017-08-15 12:15:32','aa8d5f56acbaa48bfb95b5689fefe88c',NULL),
(84,'test','test','test@gmail.com','123456','N','','','P','Y','Y','M','2017-08-15 12:50:54','',NULL),
(85,'test2','test2','test2@gmail.com','123456','N','','','P','Y','Y','M','2017-08-16 07:18:08','',NULL),
(86,'Juan GÃ³mez','','undefined','','F','','','P','Y','Y','M','2017-08-23 23:51:01','',NULL),
(87,'asdasdasd','hcpd.ms@gmail.com','asdasd','','N','','','P','Y','Y','','2017-08-30 21:39:53','',NULL),
(88,'GÃ¶khan','Polat','goekhan.polat@googlemail.com','','N','','','P','Y','Y','F','2017-08-31 04:53:35','',NULL),
(89,'GÃ¶khan','Polat','goekhan.polat@googlemail.com','','N','','','P','Y','Y','M','2017-08-31 05:12:33','',NULL),
(90,'GÃ¶khan','Polat','goekhan.polat@gmail.com','','N','','','P','Y','Y','M','2017-08-31 05:27:49','',NULL),
(91,'GÃ¶khan','Polat','goekhan.polat@gmail.com','','N','//','.','','Y','Y','F','2017-08-31 05:33:08','',NULL),
(97,'GÃ¶khan','Polat','goekhan.polat@gmail.com','Passwort0','N','','','P','Y','Y','M','2017-09-18 22:04:32','',NULL),
(98,'Anna','Hoffmann','schokolena@yahoo.com','test123!','N','//','.','','N','Y','F','2017-09-18 23:30:23','',NULL),
(99,'jgmez','jgmez','pablogomezca@gmail.com','123456','N','','','P','Y','Y','M','2017-09-22 19:07:18','',NULL),
(100,'ab','ab','a@a.a','123456','N','','','P','Y','Y','M','2017-09-28 22:20:05','',NULL),
(101,'Nesrine','Polat','nesrine.polat@gmail.com','12345','N','','','P','Y','Y','F','2017-09-29 05:24:58','',NULL),
(102,'LiuWei','Liu Wei','LiuWeiG1111@outlook.com','LiuWei1111G','N','','','P','Y','Y','F','2017-10-01 07:28:43','','d6bwOaVWdq3SPJp0T4Wb1KffXsS3jTxCJXbCltlv6vuLcSY7ejUFu9bScQwn'),
(103,'wliu','wliu','akiwaris56@outlook.com','123','N','','','P','Y','Y','F','2017-10-02 00:41:49','',NULL),
(104,'wliu','wliu','liuweig1111@yahoo.com','123','N','','','P','Y','Y','M','2017-10-02 00:42:32','',NULL),
(105,'ryo','yama','ry815@outlook.com','$2y$10$9VwGxzLmmUWuk0zZGbHyM.0oqWU3A4Ydac6GYWuLTQVxq7i49QRI.','N','','','P','Y','Y','M','2017-10-18 10:46:22','','4hyr4qKh5YJSqFrXbBz6SE1jgFUr9FrYXoNxEPmSDkIWX15MsOrGPqGU4L2q'),
(108,'Kevin Liu','','kevin0705liu@outlook.com','$2y$10$bjP0viOko.o0PTtUvaMYhOGXQxxYjR0lO.jgIIGvW/XkDEZRWq7GW','F','','','P','Y','Y','M','2017-10-18 13:07:39','','sAN6XNdwrfa9NySJnGDkO3Z4zMPWtHMwHpCVfEbVuI1C1wqHFwUE9bczV7Hb'),
(111,'LiuWei','Liu','TYang0928@outlook.com','$2y$10$3wQKiGfwFpymlU6ba6.VdeaFyMTZ2m9qLVZcUgG5j1Zf.vQJRqYvu','N','','','P','Y','Y','M','2017-10-18 20:09:39','','y4Q5zPE2ioP3iHwJwvnKB8BYv6rApxrxlbBmHkea7JoAgV3qBP4gqtSWQVyT'),
(114,'Mr','Moon','moon@outlook.com','$2y$10$S/hnnagu7Yyzlf08xyY9d.pQzg408HZAHBwIrbpJ3KZW25i6hOyDe','N','','','P','Y','Y','F','2017-10-22 01:09:43','',NULL),
(115,'asdf','asdf','1@1.com','$2y$10$fLdhUv6Svo6s3JwWvRRQWeFENB82ffhVmQHN6r9desUXU7Plsx0um','N','','','P','Y','Y','F','2017-10-22 03:53:36','','LihUrrC8FfZjYbvSRwsiSEBNKEjiD0Abw7S8Ei9t5DPzChwYhH5VNEFHacTE'),
(116,'Dejun Zhao','','dejun720@outlook.com','$2y$10$VRph0RVWXCamlLCqx/ha..MJNIYdtMqhpELkXL4GPejQjxXZaNCte','F','','','P','Y','Y','M','2017-10-22 04:19:35','',NULL),
(117,'Dejun Zhao','','dejun720@outlook.com','$2y$10$lbbQXy8Y8cOsrpRibP8eLeGQWr0uyHtBEh4.nSgFpCZgljkrDVIbW','F','','','P','Y','Y','M','2017-10-22 04:19:35','',NULL),
(122,'wliu@outlook.com','wliu','wliu@outlook.com','$2y$10$RF8LTe8/o8YzBwztHOTNaOQZbDTg4zWI6MOWVHGmAtezTDZomXGa6','N','','','P','Y','Y','M','2017-10-24 22:51:54','','bHCbWmjQhBtNx1OLRCLhkaqEc5EszxywX20tit7AelD6PGBxwRr77W18CMhd'),
(123,'www@outlook.com','www','www@outlook.com','$2y$10$jIZl8G/Qfuqi8lnqgBsBheeHW64N3T5bSWvzK4LceN59qc7nR4TXi','N','','','P','Y','Y','M','2017-10-24 22:56:10','',NULL),
(124,'q','test','1@1.com','$2y$10$vF.OhMI0nhgPgt9teDpqhe3eqZ2I2UAgURm.o1dEAdrTvVJbT7iiW','N','','','P','Y','Y','M','2017-10-25 02:21:20','',NULL),
(125,'tester','ttterse','q@q.com','$2y$10$urgl6JoFpa6iD.7jhtWS/uBdEWUgXOOAzP4ab.VjoXa3ZUA5rp7hO','N','','','P','Y','Y','M','2017-10-25 02:29:34','','8NQOTd4C3kvjw5i5PCfqvyLXPlzUlSGIi8LFDFglv7zqWknbChFmXRoENrQS'),
(126,'Ryo Yama','','hirofujiwara@outlook.com','$2y$10$kPrgR2YCVlEhB8rABPAhMu1r.fvG0AeL05lEak8gsFrzkgOZLP.Xu','F','','','P','Y','Y','M','2017-10-25 02:47:46','','ngyRIWi3MQmCVyND0wqNhkOuOAEaZufAjaT5LhhJRplRoA9VzC2PRZYQxjg6'),
(127,'Tim Lee','','tim_818@yahoo.com','$2y$10$Ogj50K6iHNcNx093x13fG..h4N.9WV5KMeYOq2VotP8upLEOvbAmi','F','','','P','Y','Y','M','2017-10-25 05:54:08','','p3xRzsFX1iUePf91ztEHblOCI0d1tuDLOPzKRQliQSsP4uY6aRlLhsHrUqjy');

/*Table structure for table `tbl_user_add_friends` */

DROP TABLE IF EXISTS `tbl_user_add_friends`;

CREATE TABLE `tbl_user_add_friends` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intSenderId` int(11) NOT NULL,
  `intRecrId` int(11) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user_add_friends` */

insert  into `tbl_user_add_friends`(`intId`,`intSenderId`,`intRecrId`,`createdate`) values 
(2,37,37,'2017-06-18 05:24:19'),
(4,57,57,'2017-07-11 03:48:17'),
(5,96,41,'2017-09-23 13:21:08'),
(8,0,44,'2017-09-27 16:35:25'),
(10,108,83,'2017-10-23 13:57:09');

/*Table structure for table `tbl_user_bet` */

DROP TABLE IF EXISTS `tbl_user_bet`;

CREATE TABLE `tbl_user_bet` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intUserId` int(11) NOT NULL,
  `intGameId` int(11) NOT NULL,
  `bet_amount` varchar(255) NOT NULL,
  `bet_status` enum('Y','N') NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user_bet` */

/*Table structure for table `tbl_user_blog_comment` */

DROP TABLE IF EXISTS `tbl_user_blog_comment`;

CREATE TABLE `tbl_user_blog_comment` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intBlogId` int(11) NOT NULL,
  `intUserId` int(11) NOT NULL,
  `blog_comment` longtext NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user_blog_comment` */

insert  into `tbl_user_blog_comment`(`intId`,`intBlogId`,`intUserId`,`blog_comment`,`status`,`createdate`) values 
(1,3,37,'     czxc ','Y','2017-06-18 05:29:18'),
(2,6,51,'sehr toller blog','Y','2017-07-08 19:06:48'),
(3,9,57,'     test post 2 by pooja','Y','2017-07-11 04:10:36'),
(4,7,57,'test reply by pooja','Y','2017-07-11 04:13:04'),
(5,5,57,'','Y','2017-07-11 04:15:04'),
(6,5,57,'','Y','2017-07-11 04:18:50'),
(7,10,57,'     First post on my blog.','Y','2017-07-11 04:20:50'),
(8,11,58,'     gsgfdgdsdgdgsdg','Y','2017-07-11 05:33:02'),
(9,13,65,'     test','Y','2017-07-14 08:30:28'),
(10,13,41,'     this is a test','Y','2017-07-20 08:27:23'),
(11,15,66,'     ddd','Y','2017-07-21 23:29:35'),
(12,14,83,'text blog','Y','2017-08-20 12:34:26'),
(13,14,83,'text blogxxx','Y','2017-08-20 12:38:26'),
(14,14,83,'jksdl','Y','2017-08-20 12:42:45'),
(15,14,83,'jksdl','Y','2017-08-20 12:42:52'),
(16,14,83,'test..','Y','2017-08-20 12:43:40'),
(17,14,83,'ok','Y','2017-08-20 12:46:05'),
(18,14,83,'','Y','2017-08-20 13:15:54'),
(19,14,83,'','Y','2017-08-20 13:18:03'),
(20,14,83,'','Y','2017-08-20 13:18:38'),
(21,14,83,'','Y','2017-08-20 13:19:05'),
(22,14,83,'kslfd','Y','2017-08-20 13:19:47'),
(23,14,83,'','Y','2017-08-20 13:19:55'),
(24,14,83,'','Y','2017-08-20 13:19:58'),
(25,14,93,'     ','Y','2017-09-14 20:19:13'),
(26,14,93,'     cvxdfbdb','Y','2017-09-14 20:19:15'),
(27,14,93,'     cvxdfbdb','Y','2017-09-14 20:19:16'),
(28,22,86,'Oka1','Y','2017-09-18 11:38:53'),
(29,22,86,'Oka1','Y','2017-09-18 11:38:55'),
(30,22,86,'Oka1','Y','2017-09-18 11:38:55'),
(31,22,86,'Oka1','Y','2017-09-18 11:38:56'),
(32,22,86,'Oka1','Y','2017-09-18 11:38:57'),
(33,22,86,'Oka1','Y','2017-09-18 11:38:57'),
(34,22,86,'Oka1','Y','2017-09-18 11:38:57'),
(35,22,86,'Oka1','Y','2017-09-18 11:38:57'),
(36,22,86,'Oka1','Y','2017-09-18 11:38:57'),
(37,22,86,'Oka1','Y','2017-09-18 11:38:57'),
(38,22,86,'Oka1','Y','2017-09-18 11:38:58'),
(39,22,86,'Oka1','Y','2017-09-18 11:38:58'),
(40,30,86,'Blog post test','Y','2017-09-18 14:45:57'),
(41,30,86,'     okokok','Y','2017-09-18 15:02:05'),
(42,39,102,'`safsadf`','Y','2017-10-24 06:59:09'),
(43,33,102,'`wqerqwer`','Y','2017-10-24 08:07:08'),
(44,33,102,'`asdfasdfsadf`','Y','2017-10-24 08:09:15'),
(45,40,102,'`asdfasdf`','Y','2017-10-24 08:25:07'),
(46,31,102,'`sdfasdf`','Y','2017-10-24 11:26:28'),
(47,31,102,'`asdfasdfasdf`','Y','2017-10-24 11:37:17'),
(48,41,108,'`aaaa`','Y','2017-10-24 13:14:00'),
(49,41,108,'`akskdkfilskdca`','Y','2017-10-24 13:54:36'),
(50,41,108,'`aaaaaaaaaaaa`','Y','2017-10-24 14:00:22'),
(51,41,108,'`qqqqqqqqqq`','Y','2017-10-24 14:03:23'),
(52,41,108,'`asdfasdf`','Y','2017-10-24 14:11:52'),
(53,41,108,'`thanks a lot!`','Y','2017-10-24 14:12:04'),
(54,42,122,'`asdfasdfasasdfasdfdf	asadfasdfsadfsdfasdf								`','Y','2017-10-24 23:10:35'),
(55,42,102,'`3453rtfetretetrretr ctytrdyrdfdjgiljp;\r\n]huiholhlkhl;ljlkjiuyiou[o\r\n`','Y','2017-10-25 04:34:31');

/*Table structure for table `tbl_user_blog_create` */

DROP TABLE IF EXISTS `tbl_user_blog_create`;

CREATE TABLE `tbl_user_blog_create` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intUserId` int(11) NOT NULL,
  `blog_title` text NOT NULL,
  `blog_desc` longtext NOT NULL,
  `blog_photo` varchar(255) NOT NULL,
  `featured_photo` varchar(255) NOT NULL,
  `blog_teg` varchar(255) NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user_blog_create` */

insert  into `tbl_user_blog_create`(`intId`,`intUserId`,`blog_title`,`blog_desc`,`blog_photo`,`featured_photo`,`blog_teg`,`status`,`createdate`) values 
(1,2,'','','','IMG_0225.PNG','','Y','2017-03-14 04:39:00'),
(2,9,'','','','Bildschirmfoto 2017-03-22 um 00.13.41.png','','Y','2017-03-22 08:20:25'),
(3,37,'','<p>sdfsdfds</p>','','','','Y','2017-06-18 05:29:10'),
(4,41,'Test Blog','<p>Test Description</p><p>&nbsp;</p>','','Foto Adolfo.jpg','Texto','Y','2017-07-02 11:27:35'),
(5,41,'Test Blog','<p>Test Description</p><p>&nbsp;</p>','ASP.NET MVC ePTW List.png','Foto Adolfo.jpg','Texto','Y','2017-07-02 11:29:14'),
(6,51,'Mein Erster Blogeintrag','<p>Hallo,</p><p>das ist mein erster Blog Eintrag</p>','','','','Y','2017-07-08 18:56:55'),
(7,52,'Just Testing Blog Post','<p><em><strong>This is just a test</strong></em></p><p><font><font>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed tempor and vitality, so that the labor and sorrow, some important things to do eiusmod. </font><font>Over the years, I will come, who will nostrud aliquip out of her the advantage of exercise, so that stimulus efforts if the school district and longevity. </font><font>Want to be a pain in the cupidatat cillum has been criticized in the Duis et dolore magna flee produces no resultant pleasure. </font><font>Excepteur cupidatat blacks are not excepteur, is soothing to the soul, that is, they are my toil, they deserted the general is to blame that services should be</font></font></p><ul><li>1</li><li>2</li></ul>','','avatar.jpg','Picture','Y','2017-07-09 08:24:25'),
(8,52,'Just Testing 2','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','','file000547693720.jpg','','Y','2017-07-09 08:28:00'),
(11,58,'blog test','<p><font><font>123 </font></font><strong><font><font>ads</font></font></strong></p><p>&nbsp;</p><ul><li><a href=\"http://manuphealth.com\"><strong><font><font><em>â€‹â€‹</em>dfsfsf</font></font></strong></a></li></ul>','','','test','Y','2017-07-11 05:29:48'),
(12,60,'','<p>lkllklk<a href=\"http://jkj.com\">http://jkj.com</a></p>','','','','Y','2017-07-11 16:25:41'),
(13,65,'test blog','<p>das ist ein test eintrag</p>','','','','Y','2017-07-14 08:30:05'),
(14,41,'Title Test Blog','<p>Description Test Blog</p>','','','','Y','2017-07-20 11:19:03'),
(15,66,'JTItle','<p>JDescription..</p>','','','','Y','2017-07-21 23:28:37'),
(16,93,'Competitions At The Workplace','<p>Some text here, Some text here, Some text here, Some text here, Some text here,</p>','','','ddd','Y','2017-09-14 20:16:47'),
(17,65,'','','','','','Y','2017-09-14 20:25:13'),
(18,93,'','','','','','Y','2017-09-14 20:28:34'),
(19,65,'','','','','','Y','2017-09-14 20:39:48'),
(20,65,'mein blog','','','','','Y','2017-09-14 20:40:00'),
(21,65,'','','','','','Y','2017-09-14 20:51:03'),
(22,86,'the title','<p>blogxxx1</p>','','8797941-bald-eagle (1).jpg','','Y','2017-09-18 11:37:59'),
(23,86,'jslkadfjlsdj','<p>kldjflksa</p>','','','','Y','2017-09-18 11:40:44'),
(24,86,'testxx99','<p>testx997</p>','','','','Y','2017-09-18 11:41:20'),
(25,86,'Test with images','<p>test..-____</p>','','Beautiful-Golden-Eagle-In-Flight-golden-eagles-29183845-1024-768.jpg','','Y','2017-09-18 11:44:37'),
(26,86,'test 2','<p>test2</p>','Best-top-desktop-eagle-wallpapers-hd-wallpaper-eagle-pictures-images-photos-31.jpg','EAGLE_682_1266259a.jpg','','Y','2017-09-18 12:41:31'),
(27,86,'test 3','<p>test 3 desc</p>','','','','Y','2017-09-18 12:47:17'),
(28,86,'My Blog1','<p>Description of my blog1</p>','','','','Y','2017-09-18 14:38:54'),
(29,86,'blog3','<p>blog3 description</p>','','','','Y','2017-09-18 14:40:40'),
(30,86,'test','<p>test___Xxxxxxxx</p>','','','','Y','2017-09-18 14:44:45'),
(31,86,'new blog','<p>new blog description</p>','','','','Y','2017-09-18 15:10:16'),
(32,86,'xxx','<p>_cc</p>','','','','Y','2017-09-18 22:52:36'),
(33,65,'','','','Bildschirmfoto 2017-09-19 um 15.54.58.png','','Y','2017-09-20 05:11:24'),
(34,94,'','','','','','Y','2017-09-20 11:15:33'),
(35,96,'https://cleverdiaet.de/assets/images/logo.png','<p>test 22nd September</p>','','','Tag 123','Y','2017-09-22 17:35:13'),
(36,96,'','','','','','Y','2017-09-22 17:42:30'),
(37,96,'','','','','','Y','2017-09-23 13:16:06'),
(38,96,'Some test Blog','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','','','','Y','2017-09-23 13:41:33'),
(39,65,'Test','<p>Test Blog&nbsp;</p>','','','','Y','2017-09-23 18:02:16'),
(40,65,'','','','','','Y','2017-09-24 07:51:16'),
(41,65,'','','','','','Y','2017-09-24 07:52:46'),
(42,122,'How to develop & management system','<p><strong>Big Idea and Big Processing Power.</strong></p>','155136232.jpg','arthritis-relief-miracle-user.jpg','Program','Y','2017-10-24 23:08:48');

/*Table structure for table `tbl_user_blog_like` */

DROP TABLE IF EXISTS `tbl_user_blog_like`;

CREATE TABLE `tbl_user_blog_like` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intUserId` int(11) NOT NULL,
  `intBlogId` int(11) NOT NULL,
  `like_status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user_blog_like` */

insert  into `tbl_user_blog_like`(`intId`,`intUserId`,`intBlogId`,`like_status`,`createdate`) values 
(1,51,6,'Y','2017-07-08 19:06:38'),
(2,52,7,'Y','2017-07-09 08:25:02'),
(3,57,8,'Y','2017-07-11 04:12:46'),
(5,58,8,'Y','2017-07-11 05:32:34'),
(6,83,14,'Y','2017-08-20 12:45:56'),
(7,83,13,'Y','2017-08-20 13:22:22'),
(21,102,40,'','2017-10-24 08:17:41'),
(22,102,41,'','2017-10-24 08:18:32');

/*Table structure for table `tbl_user_cheerboard` */

DROP TABLE IF EXISTS `tbl_user_cheerboard`;

CREATE TABLE `tbl_user_cheerboard` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intSenderId` int(11) NOT NULL,
  `intRecrId` int(11) NOT NULL,
  `cheer_desc` text NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user_cheerboard` */

insert  into `tbl_user_cheerboard`(`intId`,`intSenderId`,`intRecrId`,`cheer_desc`,`status`,`createdate`) values 
(1,41,41,'Testing Post','Y','2017-06-27 13:04:00'),
(2,57,57,'test cheer','Y','2017-07-11 04:04:35'),
(3,2,2,'rrr','Y','2017-07-26 07:57:12'),
(4,108,65,'asdf','Y','2017-10-24 07:00:00'),
(5,108,65,'ssdcwesc','Y','2017-10-24 07:00:00'),
(6,108,65,'cheers!','Y','2017-10-24 07:00:00'),
(7,108,65,'good goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood goodgood good','Y','2017-10-24 07:00:00'),
(8,108,108,'123','Y','2017-10-24 07:00:00');

/*Table structure for table `tbl_user_credit_card_details` */

DROP TABLE IF EXISTS `tbl_user_credit_card_details`;

CREATE TABLE `tbl_user_credit_card_details` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intUserId` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `card_month_expiry` varchar(255) NOT NULL,
  `card_year_expiry` varchar(255) NOT NULL,
  `cvv_number` varchar(255) NOT NULL,
  `card_address` text NOT NULL,
  `card_city` text NOT NULL,
  `card_state` varchar(255) NOT NULL,
  `card_country` varchar(255) NOT NULL,
  `card_phone` varchar(255) NOT NULL,
  `card_zipcode` varchar(255) NOT NULL,
  `status` enum('Y','N') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `card_type` varchar(255) NOT NULL,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user_credit_card_details` */

insert  into `tbl_user_credit_card_details`(`intId`,`intUserId`,`fname`,`lname`,`card_number`,`card_month_expiry`,`card_year_expiry`,`cvv_number`,`card_address`,`card_city`,`card_state`,`card_country`,`card_phone`,`card_zipcode`,`status`,`createdate`,`card_type`) values 
(1,12,'test','','4251356254545454','10','2027','424','Av. Primavera 484','Chincha','','Italien','986907068','','Y','2017-04-18 10:50:21',''),
(3,41,'qeqweewq','','6546546546','1','2017','asd','dasasd','assaddas','','Polen','asdasd','','Y','2017-07-04 08:33:04',''),
(4,57,'Pooja','','974398473943439477777777777777777777777777777777','04','2020','123','test1234','test','','Italien','4356465768','','Y','2017-07-11 03:05:45','');

/*Table structure for table `tbl_user_credits` */

DROP TABLE IF EXISTS `tbl_user_credits`;

CREATE TABLE `tbl_user_credits` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intUserId` int(11) NOT NULL,
  `total_credits` varchar(255) NOT NULL,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user_credits` */

insert  into `tbl_user_credits`(`intId`,`intUserId`,`total_credits`) values 
(1,1,'0'),
(2,2,'0'),
(3,3,'0'),
(4,4,'0'),
(5,5,'0'),
(6,6,'0'),
(7,7,'0'),
(8,8,'0'),
(9,9,'0'),
(10,10,'0'),
(11,11,'0'),
(12,12,'120'),
(13,13,'168'),
(14,14,'0'),
(15,15,'0'),
(16,16,'0'),
(17,17,'112'),
(18,18,'0'),
(19,19,'0'),
(20,20,'0'),
(21,21,'0'),
(22,22,'0'),
(23,23,'0'),
(24,24,'0'),
(25,25,'0'),
(26,26,'0'),
(27,27,'0'),
(28,28,'0'),
(29,29,'0'),
(30,30,'0'),
(31,31,'40'),
(32,32,'0'),
(33,33,'0'),
(34,34,'0'),
(35,35,'0'),
(36,36,'0'),
(37,37,'0'),
(38,38,'56'),
(39,39,'0'),
(40,40,'0'),
(41,41,'120'),
(42,43,'0'),
(43,44,'0'),
(45,46,'0'),
(46,47,'0'),
(47,48,'0'),
(48,49,'0'),
(49,50,'0'),
(50,51,'0'),
(51,52,'0'),
(52,53,'0'),
(53,54,'220'),
(54,55,'0'),
(55,56,'0'),
(56,57,'0'),
(57,58,'0'),
(58,59,'0'),
(59,60,'0'),
(60,61,'0'),
(61,62,'0'),
(62,63,'0'),
(63,64,'0'),
(64,65,'0'),
(65,66,'0'),
(66,67,'0'),
(67,68,'0'),
(68,69,'0'),
(69,70,'0'),
(70,71,'0'),
(71,72,'0'),
(72,73,'0'),
(73,74,'0'),
(74,75,'0'),
(75,76,'0'),
(76,77,'0'),
(77,78,'0'),
(78,79,'240'),
(79,80,'0'),
(80,81,'0'),
(81,82,'0'),
(82,83,'0'),
(83,84,'0'),
(84,85,'0'),
(85,86,'0'),
(86,87,'0'),
(87,88,'0'),
(88,89,'0'),
(89,90,'0'),
(90,91,'0'),
(91,92,'0'),
(92,93,'0'),
(93,94,'0'),
(94,95,'0'),
(95,96,'0'),
(96,97,'0'),
(97,98,'0'),
(98,99,'0'),
(99,100,'0'),
(100,101,'0'),
(101,102,'0'),
(102,103,'0'),
(103,104,'0'),
(104,105,'0'),
(107,108,'0'),
(108,109,'0'),
(109,110,'0'),
(110,111,'0'),
(113,114,'0'),
(114,115,'0'),
(115,116,'0'),
(116,117,'0'),
(117,118,'0'),
(118,119,'0'),
(119,121,'0'),
(120,120,'0'),
(121,122,'0'),
(122,123,'0'),
(123,124,'0'),
(124,125,'0'),
(125,126,'0'),
(126,127,'0');

/*Table structure for table `tbl_user_game_lot_refund_request` */

DROP TABLE IF EXISTS `tbl_user_game_lot_refund_request`;

CREATE TABLE `tbl_user_game_lot_refund_request` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intUserId` int(11) NOT NULL,
  `refund_status` enum('N','Y') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user_game_lot_refund_request` */

/*Table structure for table `tbl_user_game_refund_request` */

DROP TABLE IF EXISTS `tbl_user_game_refund_request`;

CREATE TABLE `tbl_user_game_refund_request` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intGameId` int(11) NOT NULL,
  `intUserId` int(11) NOT NULL,
  `refund_status` enum('N','Y') NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user_game_refund_request` */

/*Table structure for table `tbl_user_gift` */

DROP TABLE IF EXISTS `tbl_user_gift`;

CREATE TABLE `tbl_user_gift` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intUserId` int(11) NOT NULL,
  `gift_count` varchar(11) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user_gift` */

insert  into `tbl_user_gift`(`intId`,`intUserId`,`gift_count`,`createdate`) values 
(1,1,'5','2017-03-11 12:52:22'),
(2,2,'5','2017-03-12 10:45:21'),
(3,3,'5','2017-03-14 07:09:08'),
(4,4,'5','2017-03-14 07:10:13'),
(5,5,'5','2017-03-14 07:17:29'),
(6,6,'5','2017-03-14 07:27:20'),
(7,7,'5','2017-03-14 07:30:14'),
(8,8,'5','2017-03-14 07:35:20'),
(9,9,'5','2017-03-15 09:51:01'),
(10,10,'5','2017-03-31 09:59:41'),
(11,11,'5','2017-04-02 08:32:40'),
(12,12,'5','2017-04-18 06:35:48'),
(13,13,'5','2017-04-18 07:39:43'),
(14,14,'5','2017-04-18 08:16:06'),
(15,15,'5','2017-04-18 11:22:23'),
(16,16,'5','2017-05-03 00:39:19'),
(17,17,'5','2017-05-03 00:42:15'),
(18,18,'5','2017-05-03 00:46:56'),
(19,19,'5','2017-05-03 00:49:37'),
(20,20,'5','2017-05-03 01:48:11'),
(21,21,'5','2017-05-03 04:02:05'),
(22,22,'5','2017-05-03 06:08:56'),
(23,23,'5','2017-05-03 06:08:56'),
(24,24,'5','2017-05-03 06:13:39'),
(25,25,'5','2017-05-03 06:21:33'),
(26,26,'5','2017-05-04 01:20:05'),
(27,27,'5','2017-05-04 05:01:04'),
(28,28,'5','2017-05-07 03:44:57'),
(29,29,'5','2017-06-07 09:24:06'),
(30,30,'5','2017-06-13 23:12:59'),
(31,31,'5','2017-06-13 23:19:17'),
(32,32,'5','2017-06-13 23:29:45'),
(33,33,'5','2017-06-13 23:36:53'),
(34,34,'5','2017-06-15 09:59:35'),
(35,35,'5','2017-06-15 10:04:01'),
(36,36,'5','2017-06-15 11:18:23'),
(37,37,'5','2017-06-15 11:25:41'),
(38,38,'5','2017-06-15 11:27:33'),
(39,39,'5','2017-06-15 14:46:26'),
(40,40,'5','2017-06-15 14:50:52'),
(41,41,'5','2017-06-16 02:58:21'),
(42,43,'5','2017-06-23 07:11:49'),
(43,44,'5','2017-06-23 13:13:17'),
(44,45,'5','2017-07-02 17:04:37'),
(45,46,'5','2017-07-04 08:31:46'),
(46,47,'5','2017-07-05 00:44:50'),
(47,48,'5','2017-07-05 00:47:36'),
(48,49,'5','2017-07-07 05:20:43'),
(49,50,'5','2017-07-07 05:31:40'),
(50,51,'5','2017-07-08 18:13:50'),
(51,52,'5','2017-07-09 07:54:38'),
(52,53,'5','2017-07-09 08:03:04'),
(53,54,'5','2017-07-10 03:27:13'),
(54,55,'5','2017-07-10 04:30:13'),
(55,56,'5','2017-07-11 02:51:03'),
(56,57,'5','2017-07-11 02:55:09'),
(57,58,'5','2017-07-11 04:34:42'),
(58,59,'5','2017-07-11 08:15:55'),
(59,60,'5','2017-07-11 13:53:12'),
(60,61,'5','2017-07-12 06:55:27'),
(61,62,'5','2017-07-12 14:49:22'),
(62,63,'5','2017-07-14 08:15:04'),
(63,64,'5','2017-07-14 08:20:07'),
(64,65,'5','2017-07-14 08:27:40'),
(65,66,'5','2017-07-21 23:25:01'),
(66,67,'5','2017-07-24 23:30:30'),
(67,68,'5','2017-08-05 07:18:28'),
(68,69,'5','2017-08-06 03:27:15'),
(69,70,'5','2017-08-06 03:27:31'),
(70,71,'5','2017-08-06 03:42:43'),
(71,72,'5','2017-08-06 03:44:51'),
(72,73,'5','2017-08-06 04:21:23'),
(73,74,'5','2017-08-06 04:22:36'),
(74,75,'5','2017-08-06 04:29:28'),
(75,76,'5','2017-08-06 05:57:01'),
(76,77,'5','2017-08-06 06:12:35'),
(77,78,'5','2017-08-06 06:14:30'),
(78,79,'5','2017-08-06 06:45:07'),
(79,80,'5','2017-08-06 06:47:00'),
(80,81,'5','2017-08-09 20:00:05'),
(81,82,'5','2017-08-11 11:49:02'),
(82,83,'5','2017-08-15 12:15:33'),
(83,84,'5','2017-08-15 12:50:54'),
(84,85,'5','2017-08-16 07:18:08'),
(85,86,'5','2017-08-23 23:51:02'),
(86,87,'5','2017-08-30 21:39:53'),
(87,88,'5','2017-08-31 04:53:35'),
(88,89,'5','2017-08-31 05:12:33'),
(89,90,'5','2017-08-31 05:27:49'),
(90,91,'5','2017-08-31 05:33:08'),
(91,92,'5','2017-09-10 11:37:49'),
(92,93,'5','2017-09-12 15:45:52'),
(93,94,'5','2017-09-15 13:55:46'),
(94,95,'5','2017-09-18 16:09:46'),
(95,96,'5','2017-09-18 20:06:55'),
(96,97,'5','2017-09-18 22:04:32'),
(97,98,'5','2017-09-18 23:30:24'),
(98,99,'5','2017-09-22 19:07:19'),
(99,100,'5','2017-09-28 22:20:05'),
(100,101,'5','2017-09-29 05:24:59'),
(101,102,'5','2017-10-01 07:28:43'),
(102,103,'5','2017-10-02 00:41:50'),
(103,104,'5','2017-10-02 00:42:33'),
(104,105,'5','2017-10-18 10:46:23'),
(107,108,'4','2017-10-18 13:07:40'),
(108,109,'5','2017-10-18 13:25:00'),
(109,110,'5','2017-10-18 13:31:33'),
(110,111,'5','2017-10-18 20:09:40'),
(113,114,'5','2017-10-22 01:09:44'),
(114,115,'5','2017-10-22 03:53:38'),
(115,116,'5','2017-10-22 04:19:35'),
(116,117,'5','2017-10-22 04:19:35'),
(117,118,'5','2017-10-22 12:44:53'),
(118,119,'5','2017-10-22 12:44:53'),
(119,120,'5','2017-10-23 11:52:41'),
(120,121,'5','2017-10-23 11:52:41'),
(121,122,'5','2017-10-24 22:51:55'),
(122,123,'5','2017-10-24 22:56:11'),
(123,124,'5','2017-10-25 02:21:20'),
(124,125,'5','2017-10-25 02:29:35'),
(125,126,'5','2017-10-25 02:47:46'),
(126,127,'5','2017-10-25 05:54:09');

/*Table structure for table `tbl_user_hide_from_all` */

DROP TABLE IF EXISTS `tbl_user_hide_from_all`;

CREATE TABLE `tbl_user_hide_from_all` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intSenderId` int(11) NOT NULL,
  `intRecrId` int(11) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user_hide_from_all` */

/*Table structure for table `tbl_user_notifications` */

DROP TABLE IF EXISTS `tbl_user_notifications`;

CREATE TABLE `tbl_user_notifications` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intUserId` int(11) NOT NULL,
  `noti_desc` longtext NOT NULL,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user_notifications` */

/*Table structure for table `tbl_user_profile` */

DROP TABLE IF EXISTS `tbl_user_profile`;

CREATE TABLE `tbl_user_profile` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intUserId` int(11) NOT NULL,
  `lost_weight_desc` longtext NOT NULL,
  `charity_designation` longtext NOT NULL,
  `health_food` text NOT NULL,
  `sinful_food` text NOT NULL,
  `long_term_goal_weight` varchar(255) NOT NULL,
  `join_weight_program` varchar(255) NOT NULL,
  `diet_plan` varchar(255) NOT NULL,
  `fitness_device` varchar(255) NOT NULL,
  `exercise_apps` varchar(255) NOT NULL,
  `exercise_device` varchar(255) NOT NULL,
  `profile_photo` text NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user_profile` */

insert  into `tbl_user_profile`(`intId`,`intUserId`,`lost_weight_desc`,`charity_designation`,`health_food`,`sinful_food`,`long_term_goal_weight`,`join_weight_program`,`diet_plan`,`fitness_device`,`exercise_apps`,`exercise_device`,`profile_photo`,`createdate`) values 
(1,1,'','','','','','atkins-diet','mediterranean-diet','body-media-fit-core','','Runkeeper','1489204370.jpg','2017-03-11 12:52:21'),
(2,2,'','','','','','','','','','','1502038403.png','2017-03-12 10:45:21'),
(3,3,'','','','','','','','','','','','2017-03-14 07:09:08'),
(4,4,'','','','','','','','','','','','2017-03-14 07:10:13'),
(5,5,'','','','','','','','','','','','2017-03-14 07:17:29'),
(6,6,'','','','','','','','','','','','2017-03-14 07:27:20'),
(7,7,'','','','','','','','','','','','2017-03-14 07:30:13'),
(8,8,'','','','','','','','','','','1489672255.jpeg','2017-03-14 07:35:20'),
(9,9,'','','','','','','','','','','','2017-03-15 09:51:01'),
(10,10,'','','','','','','','','','','1499659080.jpg','2017-03-31 09:59:41'),
(11,11,'','','','','','','','','','','','2017-04-02 08:32:40'),
(12,12,'','','','','','','','','','','1493740183.jpg','2017-04-18 06:35:48'),
(13,13,'','','','','','','','','','','1492895241.png','2017-04-18 07:39:43'),
(14,14,'','','','','','','','','','','','2017-04-18 08:16:06'),
(15,15,'','','','','','','','','','','','2017-04-18 11:22:23'),
(16,16,'','','','','','','','','','','','2017-05-03 00:39:18'),
(17,17,'','','','','','','','','','','','2017-05-03 00:42:13'),
(18,18,'','','','','','','','','','','1493740299.png','2017-05-03 00:46:56'),
(19,19,'','','','','','','','','','','1493740262.png','2017-05-03 00:49:37'),
(20,20,'','','','','','','','','','','1493744154.jpg','2017-05-03 01:48:11'),
(21,21,'','','','','','','','','','','','2017-05-03 04:02:05'),
(22,22,'','','','','','','','','','','','2017-05-03 06:08:55'),
(23,23,'','','','','','','','','','','','2017-05-03 06:08:56'),
(24,24,'','','','','','','','','','','','2017-05-03 06:13:39'),
(25,25,'','','','','','','','','','','','2017-05-03 06:21:33'),
(26,26,'','','','','','','','','','','','2017-05-04 01:20:05'),
(27,27,'','','','','','','','','','','','2017-05-04 05:01:03'),
(28,28,'','','','','','','','','','','','2017-05-07 03:44:56'),
(29,29,'','','','','','','','','','','','2017-06-07 09:24:06'),
(30,30,'','','','','','','','','','','','2017-06-13 23:12:59'),
(31,31,'','','','','','','','','','','','2017-06-13 23:19:16'),
(32,32,'','','','','','','','','','','','2017-06-13 23:29:45'),
(33,33,'','','','','','','','','','','','2017-06-13 23:36:52'),
(34,34,'','','','','','','','','','','','2017-06-15 09:59:35'),
(35,35,'','','','','','','','','','','','2017-06-15 10:04:01'),
(36,36,'','','','','','','','','','','','2017-06-15 11:18:23'),
(37,37,'','','','','','','','','','','','2017-06-15 11:25:41'),
(38,38,'','','','','','','','','','','','2017-06-15 11:27:32'),
(39,39,'','','','','','','','','','','','2017-06-15 14:46:25'),
(40,40,'','','','','','','','','','','','2017-06-15 14:50:52'),
(41,41,'','','','','','','','','','','','2017-06-16 02:58:21'),
(42,43,'','','','','','','','','','','','2017-06-23 07:11:49'),
(43,44,'','','','','','','','','','','','2017-06-23 13:13:17'),
(44,45,'','','','','','','','','','','','2017-07-02 17:04:36'),
(45,46,'','','','','','','','','','','','2017-07-04 08:31:46'),
(46,47,'','','','','','','','','','','','2017-07-05 00:44:50'),
(47,48,'','','','','','','','','','','','2017-07-05 00:47:36'),
(48,49,'','','','','','','','','','','','2017-07-07 05:20:43'),
(49,50,'','','','','','','','','','','','2017-07-07 05:31:39'),
(50,51,'','','','','','','','','','','','2017-07-08 18:13:50'),
(51,52,'','','','','','','','','','','','2017-07-09 07:54:38'),
(52,53,'Diet','15%','Salad','','For better health.','none','none','fitbit','','Runkeeper','','2017-07-09 08:03:04'),
(53,54,'','','','','','','','','','','1499625525.jpg','2017-07-10 03:27:12'),
(54,55,'','','','','','','','','','','','2017-07-10 04:30:13'),
(55,56,'','','','','','','','','','','','2017-07-11 02:51:03'),
(56,57,'following diet','30%','Juices','fastfoods','To improve my overall personality','atkins-diet','glycemic-index-diet','fitbit','exercises at home','Runkeeper,Fitness','','2017-07-11 02:55:09'),
(57,58,'','','','','','','','','','','','2017-07-11 04:34:42'),
(58,59,'','','','','','','','','','','','2017-07-11 08:15:55'),
(59,60,'','','','','','','','','','','','2017-07-11 13:53:11'),
(60,61,'','','','','','','','','','','','2017-07-12 06:55:26'),
(61,62,'','','','','','','','','','','','2017-07-12 14:49:22'),
(62,63,'','','','','','','','','','','','2017-07-14 08:15:03'),
(63,64,'','','','','','','','','','','','2017-07-14 08:20:06'),
(64,65,'','','','','','','','','','','','2017-07-14 08:27:40'),
(65,66,'','','','','','','','','','','','2017-07-21 23:25:01'),
(66,67,'','','','','','','','','','','','2017-07-24 23:30:30'),
(67,68,'','','','','','','','','','','','2017-08-05 07:18:28'),
(68,69,'','','','','','','','','','','','2017-08-06 03:27:14'),
(69,70,'','','','','','','','','','','','2017-08-06 03:27:30'),
(70,71,'','','','','','','','','','','','2017-08-06 03:42:43'),
(71,72,'','','','','','','','','','','','2017-08-06 03:44:51'),
(72,73,'','','','','','','','','','','','2017-08-06 04:21:22'),
(73,74,'','','','','','','','','','','','2017-08-06 04:22:36'),
(74,75,'','','','','','','','','','','','2017-08-06 04:29:28'),
(75,76,'','','','','','','','','','','','2017-08-06 05:57:01'),
(76,77,'','','','','','','','','','','','2017-08-06 06:12:35'),
(77,78,'','','','','','','','','','','','2017-08-06 06:14:30'),
(78,79,'','','','','','','','','','','','2017-08-06 06:45:07'),
(79,80,'','','','','','','','','','','','2017-08-06 06:47:00'),
(80,81,'','','','','','','','','','','1504099555.jpg','2017-08-09 20:00:04'),
(81,82,'','','','','','','','','','','','2017-08-11 11:49:02'),
(82,83,'','','','','','','','','','','1502768742.jpg','2017-08-15 12:15:32'),
(83,84,'','','','','','','','','','','','2017-08-15 12:50:54'),
(84,85,'','','','','','','','','','','','2017-08-16 07:18:08'),
(85,86,'','','','','','','','','','','','2017-08-23 23:51:01'),
(86,87,'','','','','','','','','','','','2017-08-30 21:39:53'),
(87,88,'','','','','','','','','','','','2017-08-31 04:53:35'),
(88,89,'','','','','','','','','','','','2017-08-31 05:12:33'),
(89,90,'','','','','','','','','','','','2017-08-31 05:27:49'),
(90,91,'','','','','','','','','','','1504125285.jpg','2017-08-31 05:33:08'),
(91,92,'','','','','','','','','','','','2017-09-10 11:37:49'),
(92,93,'','','','','','','','','','','','2017-09-12 15:45:52'),
(93,94,'','','','','','','','','','','','2017-09-15 13:55:46'),
(94,95,'','','','','','','','','','','','2017-09-18 16:09:46'),
(95,96,'','10%','','','','weight-watchers','paleo-diet','garmin-forerunner','','Runkeeper,Fitness,Other','','2017-09-18 20:06:55'),
(96,97,'','','','','','','','','','','','2017-09-18 22:04:32'),
(97,98,'','','','','','','','','','','','2017-09-18 23:30:23'),
(98,99,'','','','','','','','','','','','2017-09-22 19:07:18'),
(99,100,'','','','','','','','','','','','2017-09-28 22:20:05'),
(100,101,'','','','','','','','','','','','2017-09-29 05:24:58'),
(101,102,'','','','','','','','','','','','2017-10-01 07:28:43'),
(102,103,'','','','','','','','','','','','2017-10-02 00:41:49'),
(103,104,'','','','','','','','','','','','2017-10-02 00:42:33'),
(104,105,'','','','','','','','','','','','2017-10-18 10:46:22'),
(107,108,'','','','','','','','','','','','2017-10-18 13:07:39'),
(108,109,'','','','','','','','','','','','2017-10-18 13:25:00'),
(109,110,'','','','','','','','','','','','2017-10-18 13:31:32'),
(110,111,'','','','','','','','','','','','2017-10-18 20:09:40'),
(111,112,'','','','','','','','','','','','2017-10-18 22:40:37'),
(113,114,'','','','','','','','','','','','2017-10-22 01:09:43'),
(114,115,'','','','','','','','','','','','2017-10-22 03:53:37'),
(115,116,'','','','','','','','','','','','2017-10-22 04:19:35'),
(116,117,'','','','','','','','','','','','2017-10-22 04:19:35'),
(117,118,'','','','','','','','','','','','2017-10-22 12:44:52'),
(118,119,'','','','','','','','','','','','2017-10-22 12:44:52'),
(119,121,'','','','','','','','','','','','2017-10-23 11:52:41'),
(120,120,'','','','','','','','','','','','2017-10-23 11:52:41'),
(121,122,'','','','','','','','','','','','2017-10-24 22:51:54'),
(122,123,'','','','','','','','','','','','2017-10-24 22:56:11'),
(123,124,'','','','','','','','','','','','2017-10-25 02:21:20'),
(124,125,'','','','','','','','','','','','2017-10-25 02:29:34'),
(125,126,'','','','','','','','','','','','2017-10-25 02:47:46'),
(126,127,'','','','','','','','','','','','2017-10-25 05:54:08');

/*Table structure for table `tbl_user_withdrow_request` */

DROP TABLE IF EXISTS `tbl_user_withdrow_request`;

CREATE TABLE `tbl_user_withdrow_request` (
  `intId` int(11) NOT NULL AUTO_INCREMENT,
  `intUserId` int(11) NOT NULL,
  `refund_amount` varchar(255) NOT NULL,
  `refund_type` enum('C','P') NOT NULL,
  `email` varchar(255) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`intId`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_user_withdrow_request` */

insert  into `tbl_user_withdrow_request`(`intId`,`intUserId`,`refund_amount`,`refund_type`,`email`,`createdate`) values 
(1,13,'86','P','loayza.system-buyer@hotmail.com','2017-04-27 10:14:20'),
(2,13,'84','C','','2017-04-27 10:18:47'),
(3,13,'84','P','loayza.system@hotmail.com','2017-04-27 10:19:00'),
(4,13,'84','P','loayza.system@hotmail.com','2017-04-27 10:19:00'),
(5,13,'84','P','loayza.system@hotmail.com','2017-04-27 10:19:01'),
(6,13,'84','P','loayza.system@hotmail.com','2017-04-27 10:19:02'),
(7,13,'84','P','loayza.system@hotmail.com','2017-04-27 10:19:02'),
(8,13,'84','P','loayza.system@hotmail.com','2017-04-27 10:19:02'),
(9,13,'84','P','loayza.system@hotmail.com','2017-04-27 10:19:02'),
(10,13,'84','P','loayza.system@hotmail.com','2017-04-27 10:19:02'),
(11,13,'84','P','loayza.system@hotmail.com','2017-04-27 10:19:02'),
(12,13,'84','P','loayza.system@hotmail.com','2017-04-27 10:20:49'),
(13,13,'84','P','loayza.system-buyer@hotmail.com','2017-04-27 10:21:48'),
(14,13,'84','P','loayza.system@hotmail.com','2017-04-28 07:10:30'),
(15,13,'84','P','loayza.system@hotmail.com','2017-04-28 07:12:16'),
(16,13,'84','P','loayza.system@hotmail.com','2017-04-28 07:12:19'),
(17,13,'84','P','loayza.system@hotmail.com','2017-04-28 07:13:56'),
(18,13,'84','P','loayza.system-buyer@hotmail.com','2017-04-28 07:18:37'),
(19,13,'60','P','loayza.system@hotmail.com','2017-04-28 07:29:53'),
(20,13,'30','P','loayza.system@hotmail.com','2017-04-28 08:04:09'),
(21,13,'30','P','loayza.system@hotmail.com','2017-04-28 08:05:02'),
(22,13,'30','P','loayza.system@hotmail.com','2017-04-28 08:05:59'),
(23,17,'112','P','efxcreative.digital@gmail.com','2017-05-03 07:40:26'),
(24,17,'30','P','efxcreative.digital@gmail.com','2017-05-03 07:53:54'),
(25,31,'40','P','johnpaulrecords@gmail.com','2017-06-14 00:17:00'),
(26,38,'56','P','pablogmzc@gmail.com','2017-06-15 11:45:14'),
(27,41,'550','P','loayza.system@gmail.com','2017-07-04 13:32:41'),
(28,41,'550','P','loayza.system@gmail.com','2017-07-04 13:41:08'),
(29,41,'500','P','loayza.system@gmail.com','2017-07-04 13:44:28'),
(30,41,'550','P','loayza.system@gmail.com','2017-07-04 13:44:57'),
(31,41,'550','P','loayza.system@gmail.com','2017-07-04 13:50:07'),
(32,41,'500','C','','2017-07-04 13:52:47'),
(33,41,'500','P','loayza.system@gmail.com','2017-07-04 13:53:02'),
(34,41,'550','P','loayza.system@gmail.com','2017-07-04 13:53:11'),
(35,41,'45','P','loayza.system@gmail.com','2017-07-04 14:12:34'),
(36,41,'455','P','loayza.system@gmail.com','2017-07-04 14:12:59'),
(37,41,'300','C','','2017-07-04 14:14:07'),
(38,41,'200','C','','2017-07-04 14:25:47'),
(39,41,'150','P','loayza.system@gmail.com','2017-07-04 14:26:08'),
(40,41,'25','C','','2017-07-04 14:26:26');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
