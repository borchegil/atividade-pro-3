# ************************************************************
# Sequel Ace SQL dump
# Version 20062
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 8.1.0)
# Database: filmes
# Generation Time: 2023-12-10 00:26:45 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table auth_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;

INSERT INTO `auth_group` (`id`, `name`)
VALUES
	(1,'Gerentes');

/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_group_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`)
VALUES
	(1,1,29),
	(2,1,30),
	(3,1,31);

/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`)
VALUES
	(1,'Can add log entry',1,'add_logentry'),
	(2,'Can change log entry',1,'change_logentry'),
	(3,'Can delete log entry',1,'delete_logentry'),
	(4,'Can view log entry',1,'view_logentry'),
	(5,'Can add permission',2,'add_permission'),
	(6,'Can change permission',2,'change_permission'),
	(7,'Can delete permission',2,'delete_permission'),
	(8,'Can view permission',2,'view_permission'),
	(9,'Can add group',3,'add_group'),
	(10,'Can change group',3,'change_group'),
	(11,'Can delete group',3,'delete_group'),
	(12,'Can view group',3,'view_group'),
	(13,'Can add user',4,'add_user'),
	(14,'Can change user',4,'change_user'),
	(15,'Can delete user',4,'delete_user'),
	(16,'Can view user',4,'view_user'),
	(17,'Can add content type',5,'add_contenttype'),
	(18,'Can change content type',5,'change_contenttype'),
	(19,'Can delete content type',5,'delete_contenttype'),
	(20,'Can view content type',5,'view_contenttype'),
	(21,'Can add session',6,'add_session'),
	(22,'Can change session',6,'change_session'),
	(23,'Can delete session',6,'delete_session'),
	(24,'Can view session',6,'view_session'),
	(25,'Can add Ator',7,'add_ator'),
	(26,'Can change Ator',7,'change_ator'),
	(27,'Can delete Ator',7,'delete_ator'),
	(28,'Can view Ator',7,'view_ator'),
	(29,'Can add cinema',8,'add_cinema'),
	(30,'Can change cinema',8,'change_cinema'),
	(31,'Can delete cinema',8,'delete_cinema'),
	(32,'Can view cinema',8,'view_cinema'),
	(33,'Can add Diretor',9,'add_diretor'),
	(34,'Can change Diretor',9,'change_diretor'),
	(35,'Can delete Diretor',9,'delete_diretor'),
	(36,'Can view Diretor',9,'view_diretor'),
	(37,'Can add filme',10,'add_filme'),
	(38,'Can change filme',10,'change_filme'),
	(39,'Can delete filme',10,'delete_filme'),
	(40,'Can view filme',10,'view_filme'),
	(41,'Can add Filme Estrangeiro',11,'add_filmeestrangeiro'),
	(42,'Can change Filme Estrangeiro',11,'change_filmeestrangeiro'),
	(43,'Can delete Filme Estrangeiro',11,'delete_filmeestrangeiro'),
	(44,'Can view Filme Estrangeiro',11,'view_filmeestrangeiro'),
	(45,'Can add Sessão',12,'add_sessao'),
	(46,'Can change Sessão',12,'change_sessao'),
	(47,'Can delete Sessão',12,'delete_sessao'),
	(48,'Can view Sessão',12,'view_sessao'),
	(49,'Can add Atuação',13,'add_atuacao'),
	(50,'Can change Atuação',13,'change_atuacao'),
	(51,'Can delete Atuação',13,'delete_atuacao'),
	(52,'Can view Atuação',13,'view_atuacao');

/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`)
VALUES
	(1,'pbkdf2_sha256$600000$ebzXivYDTJku09g5s6ekpD$Ppf3PmlNYUszinuVzl03gR/X2DXtasXgtbI/n0EOV3Y=','2023-12-09 22:09:20.877536',1,'admin','','','admin@admin.com',1,1,'2023-12-09 21:49:00.375573'),
	(2,'pbkdf2_sha256$600000$XltiYZahIYtcnbEHF9uFP1$TtB3feuzvooWqC+0xQtGL4f+FLJbBRjmf1vMZkWIo5E=','2023-12-09 22:52:04.558004',1,'gerente','','','',1,1,'2023-12-09 22:04:09.000000');

/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_user_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`)
VALUES
	(1,2,1);

/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table auth_user_user_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table core_ator
# ------------------------------------------------------------

DROP TABLE IF EXISTS `core_ator`;

CREATE TABLE `core_ator` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `nacionalidade` varchar(100) NOT NULL,
  `idade` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `core_ator` WRITE;
/*!40000 ALTER TABLE `core_ator` DISABLE KEYS */;

INSERT INTO `core_ator` (`id`, `nome`, `nacionalidade`, `idade`)
VALUES
	(1,'Beatriz','brasileiras',32);

/*!40000 ALTER TABLE `core_ator` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table core_atuacao
# ------------------------------------------------------------

DROP TABLE IF EXISTS `core_atuacao`;

CREATE TABLE `core_atuacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `papel` varchar(100) NOT NULL,
  `classe` varchar(100) NOT NULL,
  `ator_id` bigint NOT NULL,
  `filme_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_atuacao_ator_id_3712058a_fk_core_ator_id` (`ator_id`),
  KEY `core_atuacao_filme_id_2bc54b3a_fk_core_filme_id` (`filme_id`),
  CONSTRAINT `core_atuacao_ator_id_3712058a_fk_core_ator_id` FOREIGN KEY (`ator_id`) REFERENCES `core_ator` (`id`),
  CONSTRAINT `core_atuacao_filme_id_2bc54b3a_fk_core_filme_id` FOREIGN KEY (`filme_id`) REFERENCES `core_filme` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table core_cinema
# ------------------------------------------------------------

DROP TABLE IF EXISTS `core_cinema`;

CREATE TABLE `core_cinema` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `localizacao` varchar(200) NOT NULL,
  `capacidade` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `core_cinema` WRITE;
/*!40000 ALTER TABLE `core_cinema` DISABLE KEYS */;

INSERT INTO `core_cinema` (`id`, `nome`, `localizacao`, `capacidade`)
VALUES
	(1,'ASQ Cine','Ariquemes',20);

/*!40000 ALTER TABLE `core_cinema` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table core_diretor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `core_diretor`;

CREATE TABLE `core_diretor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `nacionalidade` varchar(100) NOT NULL,
  `idade` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `core_diretor` WRITE;
/*!40000 ALTER TABLE `core_diretor` DISABLE KEYS */;

INSERT INTO `core_diretor` (`id`, `nome`, `nacionalidade`, `idade`)
VALUES
	(1,'Bob Esponja','japonesa',45);

/*!40000 ALTER TABLE `core_diretor` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table core_filme
# ------------------------------------------------------------

DROP TABLE IF EXISTS `core_filme`;

CREATE TABLE `core_filme` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `genero` varchar(100) NOT NULL,
  `duracao` int NOT NULL,
  `diretor_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_filme_diretor_id_9684168a_fk_core_diretor_id` (`diretor_id`),
  CONSTRAINT `core_filme_diretor_id_9684168a_fk_core_diretor_id` FOREIGN KEY (`diretor_id`) REFERENCES `core_diretor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `core_filme` WRITE;
/*!40000 ALTER TABLE `core_filme` DISABLE KEYS */;

INSERT INTO `core_filme` (`id`, `titulo`, `genero`, `duracao`, `diretor_id`)
VALUES
	(2,'2012','Ação',120,1);

/*!40000 ALTER TABLE `core_filme` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table core_filmeestrangeiro
# ------------------------------------------------------------

DROP TABLE IF EXISTS `core_filmeestrangeiro`;

CREATE TABLE `core_filmeestrangeiro` (
  `filme_ptr_id` bigint NOT NULL,
  `titulo_ingles` varchar(200) NOT NULL,
  `pais_origem` varchar(100) NOT NULL,
  PRIMARY KEY (`filme_ptr_id`),
  CONSTRAINT `core_filmeestrangeiro_filme_ptr_id_9acfdfff_fk_core_filme_id` FOREIGN KEY (`filme_ptr_id`) REFERENCES `core_filme` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `core_filmeestrangeiro` WRITE;
/*!40000 ALTER TABLE `core_filmeestrangeiro` DISABLE KEYS */;

INSERT INTO `core_filmeestrangeiro` (`filme_ptr_id`, `titulo_ingles`, `pais_origem`)
VALUES
	(2,'2012','USA');

/*!40000 ALTER TABLE `core_filmeestrangeiro` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table core_sessao
# ------------------------------------------------------------

DROP TABLE IF EXISTS `core_sessao`;

CREATE TABLE `core_sessao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `horario` datetime(6) NOT NULL,
  `publico` tinyint(1) NOT NULL,
  `cinema_id` bigint NOT NULL,
  `filme_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_sessao_cinema_id_c212034e_fk_core_cinema_id` (`cinema_id`),
  KEY `core_sessao_filme_id_266224f1_fk_core_filme_id` (`filme_id`),
  CONSTRAINT `core_sessao_cinema_id_c212034e_fk_core_cinema_id` FOREIGN KEY (`cinema_id`) REFERENCES `core_cinema` (`id`),
  CONSTRAINT `core_sessao_filme_id_266224f1_fk_core_filme_id` FOREIGN KEY (`filme_id`) REFERENCES `core_filme` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `core_sessao` WRITE;
/*!40000 ALTER TABLE `core_sessao` DISABLE KEYS */;

INSERT INTO `core_sessao` (`id`, `horario`, `publico`, `cinema_id`, `filme_id`)
VALUES
	(1,'2023-12-09 21:55:10.000000',0,1,2);

/*!40000 ALTER TABLE `core_sessao` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_admin_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`)
VALUES
	(1,'2023-12-09 21:52:53.844130','1','Beatriz',1,'[{\"added\": {}}]',7,1),
	(2,'2023-12-09 21:53:13.193522','1','Bob Esponja',1,'[{\"added\": {}}]',9,1),
	(3,'2023-12-09 21:53:44.606915','1','ASQ Cine',1,'[{\"added\": {}}]',8,1),
	(4,'2023-12-09 21:54:17.463482','1','Mala Amarela',1,'[{\"added\": {}}]',10,1),
	(5,'2023-12-09 21:55:00.964463','2','2012',1,'[{\"added\": {}}]',11,1),
	(6,'2023-12-09 21:55:35.231840','1','Sessao object (1)',1,'[{\"added\": {}}]',12,1),
	(7,'2023-12-09 22:04:09.449617','2','gerentes',1,'[{\"added\": {}}]',4,1),
	(8,'2023-12-09 22:05:53.289297','1','Gerentes',1,'[{\"added\": {}}]',3,1),
	(9,'2023-12-09 22:06:17.706867','2','gerentes',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),
	(10,'2023-12-09 22:08:49.650681','2','gerente',2,'[{\"changed\": {\"fields\": [\"Username\", \"Staff status\", \"Superuser status\"]}}]',4,1);

/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_content_type
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;

INSERT INTO `django_content_type` (`id`, `app_label`, `model`)
VALUES
	(1,'admin','logentry'),
	(3,'auth','group'),
	(2,'auth','permission'),
	(4,'auth','user'),
	(5,'contenttypes','contenttype'),
	(7,'core','ator'),
	(13,'core','atuacao'),
	(8,'core','cinema'),
	(9,'core','diretor'),
	(10,'core','filme'),
	(11,'core','filmeestrangeiro'),
	(12,'core','sessao'),
	(6,'sessions','session');

/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`)
VALUES
	(1,'contenttypes','0001_initial','2023-12-09 21:48:37.383680'),
	(2,'auth','0001_initial','2023-12-09 21:48:37.503007'),
	(3,'admin','0001_initial','2023-12-09 21:48:37.527552'),
	(4,'admin','0002_logentry_remove_auto_add','2023-12-09 21:48:37.530848'),
	(5,'admin','0003_logentry_add_action_flag_choices','2023-12-09 21:48:37.535710'),
	(6,'contenttypes','0002_remove_content_type_name','2023-12-09 21:48:37.552084'),
	(7,'auth','0002_alter_permission_name_max_length','2023-12-09 21:48:37.563715'),
	(8,'auth','0003_alter_user_email_max_length','2023-12-09 21:48:37.571393'),
	(9,'auth','0004_alter_user_username_opts','2023-12-09 21:48:37.574910'),
	(10,'auth','0005_alter_user_last_login_null','2023-12-09 21:48:37.585361'),
	(11,'auth','0006_require_contenttypes_0002','2023-12-09 21:48:37.586174'),
	(12,'auth','0007_alter_validators_add_error_messages','2023-12-09 21:48:37.589086'),
	(13,'auth','0008_alter_user_username_max_length','2023-12-09 21:48:37.602488'),
	(14,'auth','0009_alter_user_last_name_max_length','2023-12-09 21:48:37.615667'),
	(15,'auth','0010_alter_group_name_max_length','2023-12-09 21:48:37.621797'),
	(16,'auth','0011_update_proxy_permissions','2023-12-09 21:48:37.624790'),
	(17,'auth','0012_alter_user_first_name_max_length','2023-12-09 21:48:37.637344'),
	(18,'core','0001_initial','2023-12-09 21:48:37.707451'),
	(19,'sessions','0001_initial','2023-12-09 21:48:37.714741');

/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table django_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`)
VALUES
	('z6oxf20okw6tatqumoz546a5mk6cqusn','.eJxVjMsOwiAQRf-FtSHMIJ3i0n2_gTA8pGogKe3K-O_apAvd3nPOfQnnt7W4rafFzVFcBIrT78Y-PFLdQbz7emsytLouM8tdkQftcmoxPa-H-3dQfC_fmlhpZQl9joHIhKxIowFOrIlsJjNCHgyRYrCIqIIdEKI14GkE1mfx_gDCqTaJ:1rC6B2:csnQ46rBiQpUZzIfbAbosok3GHV-lr4heavgos8plc8','2023-12-23 22:52:04.559369');

/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
