BEGIN TRANSACTION;
CREATE TABLE "auth_permission" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(50) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" varchar(100) NOT NULL,
    UNIQUE ("content_type_id", "codename")
);
INSERT INTO "auth_permission" VALUES(1,'Can add permission',1,'add_permission');
INSERT INTO "auth_permission" VALUES(2,'Can change permission',1,'change_permission');
INSERT INTO "auth_permission" VALUES(3,'Can delete permission',1,'delete_permission');
INSERT INTO "auth_permission" VALUES(4,'Can add group',2,'add_group');
INSERT INTO "auth_permission" VALUES(5,'Can change group',2,'change_group');
INSERT INTO "auth_permission" VALUES(6,'Can delete group',2,'delete_group');
INSERT INTO "auth_permission" VALUES(7,'Can add user',3,'add_user');
INSERT INTO "auth_permission" VALUES(8,'Can change user',3,'change_user');
INSERT INTO "auth_permission" VALUES(9,'Can delete user',3,'delete_user');
INSERT INTO "auth_permission" VALUES(10,'Can add message',4,'add_message');
INSERT INTO "auth_permission" VALUES(11,'Can change message',4,'change_message');
INSERT INTO "auth_permission" VALUES(12,'Can delete message',4,'delete_message');
INSERT INTO "auth_permission" VALUES(13,'Can add content type',5,'add_contenttype');
INSERT INTO "auth_permission" VALUES(14,'Can change content type',5,'change_contenttype');
INSERT INTO "auth_permission" VALUES(15,'Can delete content type',5,'delete_contenttype');
INSERT INTO "auth_permission" VALUES(16,'Can add session',6,'add_session');
INSERT INTO "auth_permission" VALUES(17,'Can change session',6,'change_session');
INSERT INTO "auth_permission" VALUES(18,'Can delete session',6,'delete_session');
INSERT INTO "auth_permission" VALUES(19,'Can add site',7,'add_site');
INSERT INTO "auth_permission" VALUES(20,'Can change site',7,'change_site');
INSERT INTO "auth_permission" VALUES(21,'Can delete site',7,'delete_site');
INSERT INTO "auth_permission" VALUES(22,'Can add log entry',8,'add_logentry');
INSERT INTO "auth_permission" VALUES(23,'Can change log entry',8,'change_logentry');
INSERT INTO "auth_permission" VALUES(24,'Can delete log entry',8,'delete_logentry');
INSERT INTO "auth_permission" VALUES(25,'Can add flat page',9,'add_flatpage');
INSERT INTO "auth_permission" VALUES(26,'Can change flat page',9,'change_flatpage');
INSERT INTO "auth_permission" VALUES(27,'Can delete flat page',9,'delete_flatpage');
INSERT INTO "auth_permission" VALUES(28,'Can add sponsor',10,'add_sponsor');
INSERT INTO "auth_permission" VALUES(29,'Can change sponsor',10,'change_sponsor');
INSERT INTO "auth_permission" VALUES(30,'Can delete sponsor',10,'delete_sponsor');
INSERT INTO "auth_permission" VALUES(31,'Can add soloist',11,'add_soloist');
INSERT INTO "auth_permission" VALUES(32,'Can change soloist',11,'change_soloist');
INSERT INTO "auth_permission" VALUES(33,'Can delete soloist',11,'delete_soloist');
INSERT INTO "auth_permission" VALUES(34,'Can add piece',12,'add_piece');
INSERT INTO "auth_permission" VALUES(35,'Can change piece',12,'change_piece');
INSERT INTO "auth_permission" VALUES(36,'Can delete piece',12,'delete_piece');
INSERT INTO "auth_permission" VALUES(37,'Can add composer',13,'add_composer');
INSERT INTO "auth_permission" VALUES(38,'Can change composer',13,'change_composer');
INSERT INTO "auth_permission" VALUES(39,'Can delete composer',13,'delete_composer');
INSERT INTO "auth_permission" VALUES(40,'Can add season',14,'add_season');
INSERT INTO "auth_permission" VALUES(41,'Can change season',14,'change_season');
INSERT INTO "auth_permission" VALUES(42,'Can delete season',14,'delete_season');
INSERT INTO "auth_permission" VALUES(43,'Can add location',15,'add_location');
INSERT INTO "auth_permission" VALUES(44,'Can change location',15,'change_location');
INSERT INTO "auth_permission" VALUES(45,'Can delete location',15,'delete_location');
INSERT INTO "auth_permission" VALUES(46,'Can add event',16,'add_event');
INSERT INTO "auth_permission" VALUES(47,'Can change event',16,'change_event');
INSERT INTO "auth_permission" VALUES(48,'Can delete event',16,'delete_event');
INSERT INTO "auth_permission" VALUES(49,'Can add pre concert discussion',17,'add_preconcertdiscussion');
INSERT INTO "auth_permission" VALUES(50,'Can change pre concert discussion',17,'change_preconcertdiscussion');
INSERT INTO "auth_permission" VALUES(51,'Can delete pre concert discussion',17,'delete_preconcertdiscussion');
INSERT INTO "auth_permission" VALUES(52,'Can add instrument',18,'add_instrument');
INSERT INTO "auth_permission" VALUES(53,'Can change instrument',18,'change_instrument');
INSERT INTO "auth_permission" VALUES(54,'Can delete instrument',18,'delete_instrument');
INSERT INTO "auth_permission" VALUES(55,'Can add orchestra member',19,'add_orchestramember');
INSERT INTO "auth_permission" VALUES(56,'Can change orchestra member',19,'change_orchestramember');
INSERT INTO "auth_permission" VALUES(57,'Can delete orchestra member',19,'delete_orchestramember');
INSERT INTO "auth_permission" VALUES(58,'Can add news',21,'add_news');
INSERT INTO "auth_permission" VALUES(59,'Can change news',21,'change_news');
INSERT INTO "auth_permission" VALUES(60,'Can delete news',21,'delete_news');
CREATE TABLE "auth_group_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("group_id", "permission_id")
);
INSERT INTO "auth_group_permissions" VALUES(1,1,25);
INSERT INTO "auth_group_permissions" VALUES(2,1,26);
INSERT INTO "auth_group_permissions" VALUES(3,1,27);
INSERT INTO "auth_group_permissions" VALUES(4,1,28);
INSERT INTO "auth_group_permissions" VALUES(5,1,29);
INSERT INTO "auth_group_permissions" VALUES(6,1,30);
INSERT INTO "auth_group_permissions" VALUES(7,1,31);
INSERT INTO "auth_group_permissions" VALUES(8,1,32);
INSERT INTO "auth_group_permissions" VALUES(9,1,33);
INSERT INTO "auth_group_permissions" VALUES(10,1,34);
INSERT INTO "auth_group_permissions" VALUES(11,1,35);
INSERT INTO "auth_group_permissions" VALUES(12,1,36);
INSERT INTO "auth_group_permissions" VALUES(13,1,37);
INSERT INTO "auth_group_permissions" VALUES(14,1,38);
INSERT INTO "auth_group_permissions" VALUES(15,1,39);
INSERT INTO "auth_group_permissions" VALUES(16,1,40);
INSERT INTO "auth_group_permissions" VALUES(17,1,41);
INSERT INTO "auth_group_permissions" VALUES(18,1,42);
INSERT INTO "auth_group_permissions" VALUES(19,1,43);
INSERT INTO "auth_group_permissions" VALUES(20,1,44);
INSERT INTO "auth_group_permissions" VALUES(21,1,45);
INSERT INTO "auth_group_permissions" VALUES(22,1,46);
INSERT INTO "auth_group_permissions" VALUES(23,1,47);
INSERT INTO "auth_group_permissions" VALUES(24,1,48);
INSERT INTO "auth_group_permissions" VALUES(25,1,49);
INSERT INTO "auth_group_permissions" VALUES(26,1,50);
INSERT INTO "auth_group_permissions" VALUES(27,1,51);
INSERT INTO "auth_group_permissions" VALUES(28,1,52);
INSERT INTO "auth_group_permissions" VALUES(29,1,53);
INSERT INTO "auth_group_permissions" VALUES(30,1,54);
INSERT INTO "auth_group_permissions" VALUES(31,1,55);
INSERT INTO "auth_group_permissions" VALUES(32,1,56);
INSERT INTO "auth_group_permissions" VALUES(33,1,57);
INSERT INTO "auth_group_permissions" VALUES(34,1,58);
INSERT INTO "auth_group_permissions" VALUES(35,1,59);
INSERT INTO "auth_group_permissions" VALUES(36,1,60);
CREATE TABLE "auth_group" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(80) NOT NULL UNIQUE
);
INSERT INTO "auth_group" VALUES(1,'Content Authors');
CREATE TABLE "auth_user_user_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("user_id", "permission_id")
);
INSERT INTO "auth_user_user_permissions" VALUES(73,2,1);
INSERT INTO "auth_user_user_permissions" VALUES(74,2,2);
INSERT INTO "auth_user_user_permissions" VALUES(75,2,3);
INSERT INTO "auth_user_user_permissions" VALUES(76,2,7);
INSERT INTO "auth_user_user_permissions" VALUES(77,2,8);
INSERT INTO "auth_user_user_permissions" VALUES(78,2,9);
INSERT INTO "auth_user_user_permissions" VALUES(79,2,25);
INSERT INTO "auth_user_user_permissions" VALUES(80,2,26);
INSERT INTO "auth_user_user_permissions" VALUES(81,2,27);
INSERT INTO "auth_user_user_permissions" VALUES(82,2,28);
INSERT INTO "auth_user_user_permissions" VALUES(83,2,29);
INSERT INTO "auth_user_user_permissions" VALUES(84,2,30);
INSERT INTO "auth_user_user_permissions" VALUES(85,2,31);
INSERT INTO "auth_user_user_permissions" VALUES(86,2,32);
INSERT INTO "auth_user_user_permissions" VALUES(87,2,33);
INSERT INTO "auth_user_user_permissions" VALUES(88,2,34);
INSERT INTO "auth_user_user_permissions" VALUES(89,2,35);
INSERT INTO "auth_user_user_permissions" VALUES(90,2,36);
INSERT INTO "auth_user_user_permissions" VALUES(91,2,37);
INSERT INTO "auth_user_user_permissions" VALUES(92,2,38);
INSERT INTO "auth_user_user_permissions" VALUES(93,2,39);
INSERT INTO "auth_user_user_permissions" VALUES(94,2,40);
INSERT INTO "auth_user_user_permissions" VALUES(95,2,41);
INSERT INTO "auth_user_user_permissions" VALUES(96,2,42);
INSERT INTO "auth_user_user_permissions" VALUES(97,2,43);
INSERT INTO "auth_user_user_permissions" VALUES(98,2,44);
INSERT INTO "auth_user_user_permissions" VALUES(99,2,45);
INSERT INTO "auth_user_user_permissions" VALUES(100,2,46);
INSERT INTO "auth_user_user_permissions" VALUES(101,2,47);
INSERT INTO "auth_user_user_permissions" VALUES(102,2,48);
INSERT INTO "auth_user_user_permissions" VALUES(103,2,49);
INSERT INTO "auth_user_user_permissions" VALUES(104,2,50);
INSERT INTO "auth_user_user_permissions" VALUES(105,2,51);
INSERT INTO "auth_user_user_permissions" VALUES(106,2,52);
INSERT INTO "auth_user_user_permissions" VALUES(107,2,53);
INSERT INTO "auth_user_user_permissions" VALUES(108,2,54);
INSERT INTO "auth_user_user_permissions" VALUES(109,2,55);
INSERT INTO "auth_user_user_permissions" VALUES(110,2,56);
INSERT INTO "auth_user_user_permissions" VALUES(111,2,57);
INSERT INTO "auth_user_user_permissions" VALUES(112,3,25);
INSERT INTO "auth_user_user_permissions" VALUES(113,3,26);
INSERT INTO "auth_user_user_permissions" VALUES(114,3,27);
INSERT INTO "auth_user_user_permissions" VALUES(115,3,28);
INSERT INTO "auth_user_user_permissions" VALUES(116,3,29);
INSERT INTO "auth_user_user_permissions" VALUES(117,3,30);
INSERT INTO "auth_user_user_permissions" VALUES(118,3,31);
INSERT INTO "auth_user_user_permissions" VALUES(119,3,32);
INSERT INTO "auth_user_user_permissions" VALUES(120,3,33);
INSERT INTO "auth_user_user_permissions" VALUES(121,3,34);
INSERT INTO "auth_user_user_permissions" VALUES(122,3,35);
INSERT INTO "auth_user_user_permissions" VALUES(123,3,36);
INSERT INTO "auth_user_user_permissions" VALUES(124,3,37);
INSERT INTO "auth_user_user_permissions" VALUES(125,3,38);
INSERT INTO "auth_user_user_permissions" VALUES(126,3,39);
INSERT INTO "auth_user_user_permissions" VALUES(127,3,40);
INSERT INTO "auth_user_user_permissions" VALUES(128,3,41);
INSERT INTO "auth_user_user_permissions" VALUES(129,3,42);
INSERT INTO "auth_user_user_permissions" VALUES(130,3,43);
INSERT INTO "auth_user_user_permissions" VALUES(131,3,44);
INSERT INTO "auth_user_user_permissions" VALUES(132,3,45);
INSERT INTO "auth_user_user_permissions" VALUES(133,3,46);
INSERT INTO "auth_user_user_permissions" VALUES(134,3,47);
INSERT INTO "auth_user_user_permissions" VALUES(135,3,48);
INSERT INTO "auth_user_user_permissions" VALUES(136,3,49);
INSERT INTO "auth_user_user_permissions" VALUES(137,3,50);
INSERT INTO "auth_user_user_permissions" VALUES(138,3,51);
INSERT INTO "auth_user_user_permissions" VALUES(139,3,52);
INSERT INTO "auth_user_user_permissions" VALUES(140,3,53);
INSERT INTO "auth_user_user_permissions" VALUES(141,3,54);
INSERT INTO "auth_user_user_permissions" VALUES(142,3,55);
INSERT INTO "auth_user_user_permissions" VALUES(143,3,56);
INSERT INTO "auth_user_user_permissions" VALUES(144,3,57);
INSERT INTO "auth_user_user_permissions" VALUES(145,5,19);
INSERT INTO "auth_user_user_permissions" VALUES(146,5,20);
INSERT INTO "auth_user_user_permissions" VALUES(147,5,21);
INSERT INTO "auth_user_user_permissions" VALUES(148,5,25);
INSERT INTO "auth_user_user_permissions" VALUES(149,5,26);
INSERT INTO "auth_user_user_permissions" VALUES(150,5,27);
INSERT INTO "auth_user_user_permissions" VALUES(151,5,28);
INSERT INTO "auth_user_user_permissions" VALUES(152,5,29);
INSERT INTO "auth_user_user_permissions" VALUES(153,5,30);
INSERT INTO "auth_user_user_permissions" VALUES(154,5,31);
INSERT INTO "auth_user_user_permissions" VALUES(155,5,32);
INSERT INTO "auth_user_user_permissions" VALUES(156,5,33);
INSERT INTO "auth_user_user_permissions" VALUES(157,5,34);
INSERT INTO "auth_user_user_permissions" VALUES(158,5,35);
INSERT INTO "auth_user_user_permissions" VALUES(159,5,36);
INSERT INTO "auth_user_user_permissions" VALUES(160,5,37);
INSERT INTO "auth_user_user_permissions" VALUES(161,5,38);
INSERT INTO "auth_user_user_permissions" VALUES(162,5,39);
INSERT INTO "auth_user_user_permissions" VALUES(163,5,40);
INSERT INTO "auth_user_user_permissions" VALUES(164,5,41);
INSERT INTO "auth_user_user_permissions" VALUES(165,5,42);
INSERT INTO "auth_user_user_permissions" VALUES(166,5,43);
INSERT INTO "auth_user_user_permissions" VALUES(167,5,44);
INSERT INTO "auth_user_user_permissions" VALUES(168,5,45);
INSERT INTO "auth_user_user_permissions" VALUES(169,5,46);
INSERT INTO "auth_user_user_permissions" VALUES(170,5,47);
INSERT INTO "auth_user_user_permissions" VALUES(171,5,48);
INSERT INTO "auth_user_user_permissions" VALUES(172,5,49);
INSERT INTO "auth_user_user_permissions" VALUES(173,5,50);
INSERT INTO "auth_user_user_permissions" VALUES(174,5,51);
INSERT INTO "auth_user_user_permissions" VALUES(175,5,52);
INSERT INTO "auth_user_user_permissions" VALUES(176,5,53);
INSERT INTO "auth_user_user_permissions" VALUES(177,5,54);
INSERT INTO "auth_user_user_permissions" VALUES(178,5,55);
INSERT INTO "auth_user_user_permissions" VALUES(179,5,56);
INSERT INTO "auth_user_user_permissions" VALUES(180,5,57);
INSERT INTO "auth_user_user_permissions" VALUES(181,6,19);
INSERT INTO "auth_user_user_permissions" VALUES(182,6,20);
INSERT INTO "auth_user_user_permissions" VALUES(183,6,21);
INSERT INTO "auth_user_user_permissions" VALUES(184,6,25);
INSERT INTO "auth_user_user_permissions" VALUES(185,6,26);
INSERT INTO "auth_user_user_permissions" VALUES(186,6,27);
INSERT INTO "auth_user_user_permissions" VALUES(187,6,28);
INSERT INTO "auth_user_user_permissions" VALUES(188,6,29);
INSERT INTO "auth_user_user_permissions" VALUES(189,6,30);
INSERT INTO "auth_user_user_permissions" VALUES(190,6,31);
INSERT INTO "auth_user_user_permissions" VALUES(191,6,32);
INSERT INTO "auth_user_user_permissions" VALUES(192,6,33);
INSERT INTO "auth_user_user_permissions" VALUES(193,6,34);
INSERT INTO "auth_user_user_permissions" VALUES(194,6,35);
INSERT INTO "auth_user_user_permissions" VALUES(195,6,36);
INSERT INTO "auth_user_user_permissions" VALUES(196,6,37);
INSERT INTO "auth_user_user_permissions" VALUES(197,6,38);
INSERT INTO "auth_user_user_permissions" VALUES(198,6,39);
INSERT INTO "auth_user_user_permissions" VALUES(199,6,40);
INSERT INTO "auth_user_user_permissions" VALUES(200,6,41);
INSERT INTO "auth_user_user_permissions" VALUES(201,6,42);
INSERT INTO "auth_user_user_permissions" VALUES(202,6,43);
INSERT INTO "auth_user_user_permissions" VALUES(203,6,44);
INSERT INTO "auth_user_user_permissions" VALUES(204,6,45);
INSERT INTO "auth_user_user_permissions" VALUES(205,6,46);
INSERT INTO "auth_user_user_permissions" VALUES(206,6,47);
INSERT INTO "auth_user_user_permissions" VALUES(207,6,48);
INSERT INTO "auth_user_user_permissions" VALUES(208,6,49);
INSERT INTO "auth_user_user_permissions" VALUES(209,6,50);
INSERT INTO "auth_user_user_permissions" VALUES(210,6,51);
INSERT INTO "auth_user_user_permissions" VALUES(211,6,52);
INSERT INTO "auth_user_user_permissions" VALUES(212,6,53);
INSERT INTO "auth_user_user_permissions" VALUES(213,6,54);
INSERT INTO "auth_user_user_permissions" VALUES(214,6,55);
INSERT INTO "auth_user_user_permissions" VALUES(215,6,56);
INSERT INTO "auth_user_user_permissions" VALUES(216,6,57);
CREATE TABLE "auth_user_groups" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL,
    "group_id" integer NOT NULL REFERENCES "auth_group" ("id"),
    UNIQUE ("user_id", "group_id")
);
INSERT INTO "auth_user_groups" VALUES(2,2,1);
INSERT INTO "auth_user_groups" VALUES(3,3,1);
INSERT INTO "auth_user_groups" VALUES(4,5,1);
INSERT INTO "auth_user_groups" VALUES(5,6,1);
INSERT INTO "auth_user_groups" VALUES(6,7,1);
CREATE TABLE "auth_user" (
    "id" integer NOT NULL PRIMARY KEY,
    "username" varchar(30) NOT NULL UNIQUE,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "email" varchar(75) NOT NULL,
    "password" varchar(128) NOT NULL,
    "is_staff" bool NOT NULL,
    "is_active" bool NOT NULL,
    "is_superuser" bool NOT NULL,
    "last_login" datetime NOT NULL,
    "date_joined" datetime NOT NULL
);
INSERT INTO "auth_user" VALUES(1,'ewelker','','','ewelker@cdepot.com','sha1$17872$ed010e2b63a304878bdddb72fd11df8f6d5dd1cb',1,1,1,'2011-07-16 18:15:14.978466','2010-06-12 00:14:25.526220');
INSERT INTO "auth_user" VALUES(2,'jlmus07','','','','sha1$29c82$9ff62190f9086058c7a911baba830c633cb3d81c',1,1,0,'2011-09-11 18:03:54.196951','2010-07-28 15:19:18');
INSERT INTO "auth_user" VALUES(3,'vacosta','Viviana','Acosta','viviana.acosta@gmail.com','sha1$38960$c084b2329ed3bc01a54aed6157e18e317b50d4f3',1,1,0,'2011-08-29 15:25:09.311445','2010-09-27 11:55:12');
INSERT INTO "auth_user" VALUES(4,'jason','General','Users','','sha1$aec97$e06b18619fafa8f3a187ef8b1044e32bca06d46a',0,1,0,'2010-10-23 16:18:40','2010-10-23 16:18:40');
INSERT INTO "auth_user" VALUES(5,'paulli','Paul','Li','','sha1$91bfa$b09be0ef17e91c03b80a91b8885b3d3e88240b70',1,1,0,'2011-08-29 22:50:07.865228','2010-10-28 20:31:44');
INSERT INTO "auth_user" VALUES(6,'jsoulen','Jeff','Soulen','','sha1$316fe$269d5c7c4efd9519af5ca6b879e2601a2c306bd3',1,1,0,'2010-10-30 15:11:49.290456','2010-10-28 21:33:04');
INSERT INTO "auth_user" VALUES(7,'fakeuser','','','','sha1$092dd$81ae5c8592b76e3f4d51bc401eb488ec392604d7',1,1,0,'2010-12-28 00:36:53.288009','2010-12-28 00:36:26');
CREATE TABLE "auth_message" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL REFERENCES "auth_user" ("id"),
    "message" text NOT NULL
);
CREATE TABLE "django_content_type" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "app_label" varchar(100) NOT NULL,
    "model" varchar(100) NOT NULL,
    UNIQUE ("app_label", "model")
);
INSERT INTO "django_content_type" VALUES(1,'permission','auth','permission');
INSERT INTO "django_content_type" VALUES(2,'group','auth','group');
INSERT INTO "django_content_type" VALUES(3,'user','auth','user');
INSERT INTO "django_content_type" VALUES(4,'message','auth','message');
INSERT INTO "django_content_type" VALUES(5,'content type','contenttypes','contenttype');
INSERT INTO "django_content_type" VALUES(6,'session','sessions','session');
INSERT INTO "django_content_type" VALUES(7,'site','sites','site');
INSERT INTO "django_content_type" VALUES(8,'log entry','admin','logentry');
INSERT INTO "django_content_type" VALUES(9,'flat page','flatpages','flatpage');
INSERT INTO "django_content_type" VALUES(10,'sponsor','sponsors','sponsor');
INSERT INTO "django_content_type" VALUES(11,'soloist','soloists','soloist');
INSERT INTO "django_content_type" VALUES(12,'piece','pieces','piece');
INSERT INTO "django_content_type" VALUES(13,'composer','pieces','composer');
INSERT INTO "django_content_type" VALUES(14,'season','events','season');
INSERT INTO "django_content_type" VALUES(15,'location','events','location');
INSERT INTO "django_content_type" VALUES(16,'event','events','event');
INSERT INTO "django_content_type" VALUES(17,'pre concert discussion','events','preconcertdiscussion');
INSERT INTO "django_content_type" VALUES(18,'instrument','roster','instrument');
INSERT INTO "django_content_type" VALUES(19,'orchestra member','roster','orchestramember');
INSERT INTO "django_content_type" VALUES(20,'file','uploader','file');
INSERT INTO "django_content_type" VALUES(21,'news','news','news');
CREATE TABLE "django_session" (
    "session_key" varchar(40) NOT NULL PRIMARY KEY,
    "session_data" text NOT NULL,
    "expire_date" datetime NOT NULL
);
INSERT INTO "django_session" VALUES('9b3794ee1521511f1cc9eac75b37547b','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-06-26 00:14:57.964014');
INSERT INTO "django_session" VALUES('42f916209fb2c7af37f1da09711a1bf3','gAJ9cQEuNmY4NzZmMDJjODkyYjUyOTMxZTE4YzI1NjUxMjY4NGI=
','2010-06-27 14:54:08.549923');
INSERT INTO "django_session" VALUES('9886b0b47d9907d8d469dc59fe783398','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-06-27 15:13:46.617085');
INSERT INTO "django_session" VALUES('e7590b714370298bedb8953d692863ea','gAJ9cQEuNmY4NzZmMDJjODkyYjUyOTMxZTE4YzI1NjUxMjY4NGI=
','2010-06-28 13:11:57.697539');
INSERT INTO "django_session" VALUES('db96a34ba261a1869f877dbcc0d44406','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-06-28 21:10:10.466442');
INSERT INTO "django_session" VALUES('d50d56f81623a062474a5eb7057e9945','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-06-28 23:35:09.093565');
INSERT INTO "django_session" VALUES('2a69c20d40f24a487fd20e8715fe1bc2','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-06-30 09:43:41.618243');
INSERT INTO "django_session" VALUES('2cb0622d8a3a11521d43eec47c143018','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLmY0NGE5MzA4NmNkOWQ3NDY5MWZjZGU3MWM3
ODcxYWUy
','2010-07-02 19:04:34.757516');
INSERT INTO "django_session" VALUES('0005e94e82852217d5937f75875d4400','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-07-12 22:50:36.896558');
INSERT INTO "django_session" VALUES('6e09f8915c52ae7e22c1b9196749982c','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-07-23 12:30:18.027083');
INSERT INTO "django_session" VALUES('18f24f7d55d7b610e01af5cb4d38ecc7','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLmY0NGE5MzA4NmNkOWQ3NDY5MWZjZGU3MWM3
ODcxYWUy
','2010-08-03 00:41:06.104714');
INSERT INTO "django_session" VALUES('a06d8ed0d1a82305e9b9dfa6ea9030f0','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLmY0NGE5MzA4NmNkOWQ3NDY5MWZjZGU3MWM3
ODcxYWUy
','2010-08-03 00:41:18.004561');
INSERT INTO "django_session" VALUES('ed8a0b7f62b29598bc4ca53056baede0','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-08-10 16:03:31.004162');
INSERT INTO "django_session" VALUES('e118446bf73fc1b0ad490bc4eaa26d7a','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-08-11 15:18:28.723610');
INSERT INTO "django_session" VALUES('4b3283104e6efae59ec94bbc94672c48','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2010-08-11 15:21:09.959557');
INSERT INTO "django_session" VALUES('db753b4077cb44560b0ae4efc150183a','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLmY0NGE5MzA4NmNkOWQ3NDY5MWZjZGU3MWM3
ODcxYWUy
','2010-08-14 11:05:31.334947');
INSERT INTO "django_session" VALUES('6542c919b629602fa07c5f265ede987a','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLmY0NGE5MzA4NmNkOWQ3NDY5MWZjZGU3MWM3
ODcxYWUy
','2010-08-14 11:05:37.971660');
INSERT INTO "django_session" VALUES('bf0ce7dc9a759af8b6c44cb64bb6dd67','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-08-18 00:19:30.212850');
INSERT INTO "django_session" VALUES('e0b5762ec31e026c9da61a6ee2b207ab','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-08-22 11:09:11.926136');
INSERT INTO "django_session" VALUES('5fd351605fb0e6c640be2ffbb392c7e7','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2010-08-25 15:53:46.490016');
INSERT INTO "django_session" VALUES('2c5c2b30d8b74d9062ba0fb2626be4f9','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLmY0NGE5MzA4NmNkOWQ3NDY5MWZjZGU3MWM3
ODcxYWUy
','2010-09-21 18:10:14.632663');
INSERT INTO "django_session" VALUES('5f227970eaa63108937d55c316c5d869','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2010-09-09 20:04:26.676813');
INSERT INTO "django_session" VALUES('5b7f8354482258c7eabb1294c87283e8','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-09-10 17:37:06.480624');
INSERT INTO "django_session" VALUES('da3d2506d804bfbff34fa50f208ff517','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-10-01 14:20:43.203660');
INSERT INTO "django_session" VALUES('94e31cb3e53ed473976cc1192e4904ea','gAJ9cQEuNmY4NzZmMDJjODkyYjUyOTMxZTE4YzI1NjUxMjY4NGI=
','2010-10-01 17:23:33.428837');
INSERT INTO "django_session" VALUES('7d34a8f6a9ed188f028bb9b2dcbf474b','gAJ9cQEuNmY4NzZmMDJjODkyYjUyOTMxZTE4YzI1NjUxMjY4NGI=
','2010-10-01 17:23:33.467547');
INSERT INTO "django_session" VALUES('98ed8d853812e12143e9c02e926df8c4','gAJ9cQEuNmY4NzZmMDJjODkyYjUyOTMxZTE4YzI1NjUxMjY4NGI=
','2010-10-01 17:23:33.521703');
INSERT INTO "django_session" VALUES('054ea99e3281126d4427035beb09faed','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-10-02 11:53:58.943490');
INSERT INTO "django_session" VALUES('b456332ca44dbd1fd30768208b0398a3','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2010-10-04 18:50:27.399208');
INSERT INTO "django_session" VALUES('dccff2e456844b188286967a211782ed','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-10-11 11:54:40.981085');
INSERT INTO "django_session" VALUES('539062d5ed4eace6c90882395b27b8bb','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2010-10-14 20:08:41.693966');
INSERT INTO "django_session" VALUES('3dbbb4929c59b4f48f5b3f63db6e79bd','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2010-10-14 20:57:57.017673');
INSERT INTO "django_session" VALUES('3e8087cea93213bf0d77be11a77146a2','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2010-10-21 14:11:40.544337');
INSERT INTO "django_session" VALUES('9d15444624967edbb178b1f13a9d3611','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-10-24 15:50:10.999848');
INSERT INTO "django_session" VALUES('27ada8a0d5fb1c972802e593797c1a28','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1LjI3NGFmOGRlZTRjOTgyMTVlZmRi
YTQwMWU5NDAxYmEy
','2010-10-29 14:44:58.103925');
INSERT INTO "django_session" VALUES('2d9c60d71651f074f75206fb110458a1','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-11-05 17:35:55.683378');
INSERT INTO "django_session" VALUES('8596896fbcc5afc43a3177680f7961f3','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2010-11-05 20:52:06.333642');
INSERT INTO "django_session" VALUES('7d6f8cbcab0e20ec020ff49bbca8a366','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-11-11 20:30:04.924285');
INSERT INTO "django_session" VALUES('f88689e59c7f5331dd83d40d8b0b78e0','gAJ9cQEuNmY4NzZmMDJjODkyYjUyOTMxZTE4YzI1NjUxMjY4NGI=
','2010-11-13 15:17:17.126249');
INSERT INTO "django_session" VALUES('07f06295be158aaab46234178148b2ac','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1LjI3NGFmOGRlZTRjOTgyMTVlZmRi
YTQwMWU5NDAxYmEy
','2010-11-14 17:42:48.100019');
INSERT INTO "django_session" VALUES('1dd4c6ff048fed5c9947b512abf11dd0','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2010-11-15 23:14:51.271926');
INSERT INTO "django_session" VALUES('7ddfea3d4c6ee8b9d7c1a8532bdeee2b','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2010-11-19 21:13:56.720941');
INSERT INTO "django_session" VALUES('e2dffb4dc871c8435b710075d4a42c75','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-11-24 23:20:47.036416');
INSERT INTO "django_session" VALUES('be51939a2b45aa4f9841754259ed0732','gAJ9cQEuNmY4NzZmMDJjODkyYjUyOTMxZTE4YzI1NjUxMjY4NGI=
','2010-11-25 06:32:05.260439');
INSERT INTO "django_session" VALUES('8ae86b94c8fbefdc84027a87813b47d4','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLmY0NGE5MzA4NmNkOWQ3NDY5MWZjZGU3MWM3
ODcxYWUy
','2010-11-28 16:44:40.748128');
INSERT INTO "django_session" VALUES('9244ba00b83894d389ba6ffc11097ee9','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1LjI3NGFmOGRlZTRjOTgyMTVlZmRi
YTQwMWU5NDAxYmEy
','2010-11-29 02:54:11.044175');
INSERT INTO "django_session" VALUES('3a00486ddc89c4c4982490cce0ab70db','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1LjI3NGFmOGRlZTRjOTgyMTVlZmRi
YTQwMWU5NDAxYmEy
','2010-11-30 04:01:18.901607');
INSERT INTO "django_session" VALUES('b5a6c5ac02724bc784bddcca78cc1d0e','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2010-12-03 23:25:04.179575');
INSERT INTO "django_session" VALUES('0c693355218c522696ebb77e30384e5f','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2010-12-03 23:29:53.875497');
INSERT INTO "django_session" VALUES('5c35658615bccbfc84d924bdeaeba76b','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2010-12-03 23:31:15.508306');
INSERT INTO "django_session" VALUES('deb81d336569f4ee4062bd5e86740a98','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2010-12-06 09:53:02.545039');
INSERT INTO "django_session" VALUES('0ddfcd0f9f99ffdc52480ee6f82d6e21','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-12-12 10:13:27.416556');
INSERT INTO "django_session" VALUES('ffeb88972e6f5c1deefe2bd2320f37ef','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-12-12 10:46:09.403695');
INSERT INTO "django_session" VALUES('6985d2afef316a356c5d6a4e01ada38d','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-12-12 12:09:03.817326');
INSERT INTO "django_session" VALUES('37cb11ad9674cd7f8ac28041953b90a0','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2010-12-20 18:21:45.740863');
INSERT INTO "django_session" VALUES('c8af3fd87091826529dfb2cf20dc8694','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-12-20 21:54:46.541626');
INSERT INTO "django_session" VALUES('a86299c4e3b1a3ebd34f341546177786','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2010-12-21 22:34:11.689704');
INSERT INTO "django_session" VALUES('ff1caa4a8abeaa9ecf1aabb7466605c2','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1LjI3NGFmOGRlZTRjOTgyMTVlZmRi
YTQwMWU5NDAxYmEy
','2010-12-27 13:17:58.383219');
INSERT INTO "django_session" VALUES('2d14ab6f1aff957302f5845a6a3e4af3','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2011-01-05 12:59:25.074859');
INSERT INTO "django_session" VALUES('647fe5b05a0670c20d05261d7bf5f6c3','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-01-07 11:57:52.634758');
INSERT INTO "django_session" VALUES('09c559ea4ea5b9ad60812a513761eb2a','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLmY0NGE5MzA4NmNkOWQ3NDY5MWZjZGU3MWM3
ODcxYWUy
','2011-01-09 19:27:39.965356');
INSERT INTO "django_session" VALUES('dd8b4cc827e4a019daec2ece48f65928','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2011-01-11 00:37:07.850216');
INSERT INTO "django_session" VALUES('7fac38115a692a32b34cd14584842c40','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2011-01-21 21:56:05.865637');
INSERT INTO "django_session" VALUES('a24716b6d1bc5a47be5f15aa6cf79cd9','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-01-22 08:26:58.786893');
INSERT INTO "django_session" VALUES('04f6e917469485d27b228421119963aa','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1LjI3NGFmOGRlZTRjOTgyMTVlZmRi
YTQwMWU5NDAxYmEy
','2011-01-24 15:20:41.550505');
INSERT INTO "django_session" VALUES('fd9ee7bb63bd9fb1f62820d39c914631','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLmY0NGE5MzA4NmNkOWQ3NDY5MWZjZGU3MWM3
ODcxYWUy
','2011-01-26 13:35:04.461029');
INSERT INTO "django_session" VALUES('5872ad1858d50a780a568561cc72c284','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLmY0NGE5MzA4NmNkOWQ3NDY5MWZjZGU3MWM3
ODcxYWUy
','2011-01-27 07:25:15.146665');
INSERT INTO "django_session" VALUES('e763998a022d241836cd270002a6661e','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2011-01-28 11:22:51.320073');
INSERT INTO "django_session" VALUES('39cb4c220e6ff5b0a840a6a202f98a4c','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-02-07 18:44:06.263435');
INSERT INTO "django_session" VALUES('451de50e54e8297c925df1a2d7c3213c','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2011-02-14 13:44:50.471171');
INSERT INTO "django_session" VALUES('ec8c6b779c6323e6f70fd6e998b11eec','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2011-02-26 12:33:45.704161');
INSERT INTO "django_session" VALUES('7031f7a6bc29428a186869d440f67301','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-02-27 23:15:44.474487');
INSERT INTO "django_session" VALUES('36e19a66fa810fbdbbd29590216f895a','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2011-02-28 17:17:20.111130');
INSERT INTO "django_session" VALUES('903796693e627847c2510f924a7c6670','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1LjI3NGFmOGRlZTRjOTgyMTVlZmRi
YTQwMWU5NDAxYmEy
','2011-03-06 22:00:36.609087');
INSERT INTO "django_session" VALUES('c5bf51d9f9e0ce1b1ed03acbf4863bb0','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-03-14 22:31:29.625697');
INSERT INTO "django_session" VALUES('01148bde0b931f1466555024304a4a60','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-03-28 22:50:08.655957');
INSERT INTO "django_session" VALUES('427580c015ca5c70d7331ea35be86473','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2011-03-30 11:24:50.440917');
INSERT INTO "django_session" VALUES('5c1f6d05b0483cf902aeb95e7da07a2d','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2011-03-30 12:24:01.433301');
INSERT INTO "django_session" VALUES('7dda2dda1b154e2e3feeea46e8d4fa9b','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2011-03-31 15:06:25.683641');
INSERT INTO "django_session" VALUES('4c3575feeab6b4e5162a37be704d4df0','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLmY0NGE5MzA4NmNkOWQ3NDY5MWZjZGU3MWM3
ODcxYWUy
','2011-04-10 19:19:10.198684');
INSERT INTO "django_session" VALUES('598c9a79ca149753da43e7e1cec07540','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1LjI3NGFmOGRlZTRjOTgyMTVlZmRi
YTQwMWU5NDAxYmEy
','2011-04-11 00:12:22.217582');
INSERT INTO "django_session" VALUES('002757d538e43cbbd4d1ab059a5505e0','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-04-12 07:34:28.513774');
INSERT INTO "django_session" VALUES('ed57950cf0aa36351122498713dcf7b8','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1LjI3NGFmOGRlZTRjOTgyMTVlZmRi
YTQwMWU5NDAxYmEy
','2011-04-16 07:43:39.407159');
INSERT INTO "django_session" VALUES('5b0f1ac354a7e2dbb18b59ac2ac6e18f','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2011-04-17 22:49:45.165907');
INSERT INTO "django_session" VALUES('2a346bf501dfe2fd2bdac54457cf6bc8','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2011-04-21 09:39:51.744496');
INSERT INTO "django_session" VALUES('95cdb8354316847dc253c1e10a516ef1','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-04-26 19:48:26.840786');
INSERT INTO "django_session" VALUES('44e71bc421787fff373e237dc9f1b2a2','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2011-05-11 13:59:14.386159');
INSERT INTO "django_session" VALUES('f48866506bd20e6c84e9ba1a8ea75233','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-05-11 17:43:40.922895');
INSERT INTO "django_session" VALUES('01239328f1e3e7a33973c84738ad6d57','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1LjI3NGFmOGRlZTRjOTgyMTVlZmRi
YTQwMWU5NDAxYmEy
','2011-05-15 17:04:36.073724');
INSERT INTO "django_session" VALUES('1da7d56fe277e88da3e208780e19f6bf','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-05-25 20:16:15.936112');
INSERT INTO "django_session" VALUES('1278332a30e19864aaa4d1f8d2a49498','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-06-11 10:19:33.672117');
INSERT INTO "django_session" VALUES('0b6c4c91f2a95e8d3170b7e5203d8094','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-06-18 10:32:08.220781');
INSERT INTO "django_session" VALUES('a59fa1c7c9cf4177541112d416877abf','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-06-18 10:49:50.930874');
INSERT INTO "django_session" VALUES('30dcad6772a21d7e53e88de0544f893c','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1LjI3NGFmOGRlZTRjOTgyMTVlZmRi
YTQwMWU5NDAxYmEy
','2011-06-18 12:30:29.792654');
INSERT INTO "django_session" VALUES('bca08bb760676ef7d54a7d691be0e5a1','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2011-06-19 08:53:41.224630');
INSERT INTO "django_session" VALUES('0ab24951b7571f9b88e59cdbd0f14f3e','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2011-07-03 22:56:17.263147');
INSERT INTO "django_session" VALUES('68c2f96a359bba89f70fba471766bfa5','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2011-07-04 11:05:39.083047');
INSERT INTO "django_session" VALUES('5eecff609b4c2217433e291c1fac8ac5','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2011-07-12 12:39:12.422600');
INSERT INTO "django_session" VALUES('11de24031be05c7247c679b5c22c260f','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-07-12 23:24:40.950829');
INSERT INTO "django_session" VALUES('a481790b3781fda14d571a8c05140c3a','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-07-15 21:42:13.567181');
INSERT INTO "django_session" VALUES('db6aee0e67ad808a2f02e89b50028937','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2011-07-18 11:21:10.407353');
INSERT INTO "django_session" VALUES('1ef98879a37fa1f7d6104a00152245c4','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLmY0NGE5MzA4NmNkOWQ3NDY5MWZjZGU3MWM3
ODcxYWUy
','2011-07-18 12:01:50.332328');
INSERT INTO "django_session" VALUES('a5e5609d3b899d47429e8620cb017bc8','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2011-07-22 20:57:38.441274');
INSERT INTO "django_session" VALUES('36532c16fd2a7c5ae51272d917d17488','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1LjI3NGFmOGRlZTRjOTgyMTVlZmRi
YTQwMWU5NDAxYmEy
','2011-07-26 18:40:14.355251');
INSERT INTO "django_session" VALUES('9ec7e47502506bb6e68f02c380267af2','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2011-07-30 18:15:14.995794');
INSERT INTO "django_session" VALUES('91eafe195e462594bdf0d07db9844e18','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-07-30 18:16:50.085783');
INSERT INTO "django_session" VALUES('4fe2ef39fb4514d00ed39af4a468364f','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLmY0NGE5MzA4NmNkOWQ3NDY5MWZjZGU3MWM3
ODcxYWUy
','2011-08-03 07:40:56.362282');
INSERT INTO "django_session" VALUES('d02872db9be896372cb0b41794b21256','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-08-11 07:59:24.673812');
INSERT INTO "django_session" VALUES('f21dec3503fc7e53391e8db42f9ccae3','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2011-08-11 10:44:10.337970');
INSERT INTO "django_session" VALUES('bc25fa5fa4021ca9045e388fbcb61434','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLmY0NGE5MzA4NmNkOWQ3NDY5MWZjZGU3MWM3
ODcxYWUy
','2011-08-21 05:08:46.839731');
INSERT INTO "django_session" VALUES('28c23d3a1d9df750fd5706bae5a67d82','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLmY0NGE5MzA4NmNkOWQ3NDY5MWZjZGU3MWM3
ODcxYWUy
','2011-08-21 05:08:47.430786');
INSERT INTO "django_session" VALUES('77c59e6515b33318f51811f70364572b','gAJ9cQFVCnRlc3Rjb29raWVxAlUGd29ya2VkcQNzLmY0NGE5MzA4NmNkOWQ3NDY5MWZjZGU3MWM3
ODcxYWUy
','2011-08-21 05:08:48.065781');
INSERT INTO "django_session" VALUES('c1eb5ab2cbacd0b277e7dea758959011','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-08-25 21:39:00.980202');
INSERT INTO "django_session" VALUES('03819494c0784032c1d05a8cfe8df272','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2011-08-26 10:47:13.722503');
INSERT INTO "django_session" VALUES('cabb47360a93bc8242479c0c47527b70','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1LjI3NGFmOGRlZTRjOTgyMTVlZmRi
YTQwMWU5NDAxYmEy
','2011-08-28 10:17:26.730879');
INSERT INTO "django_session" VALUES('a6d95576a691f3fe17ca02190fe0158c','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1LjI3NGFmOGRlZTRjOTgyMTVlZmRi
YTQwMWU5NDAxYmEy
','2011-09-05 18:31:44.736087');
INSERT INTO "django_session" VALUES('801a11cda39033ac8643f005135b3fa8','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2011-09-09 11:19:32.703411');
INSERT INTO "django_session" VALUES('5155f7e10f8c5cfed6a921109412413f','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwN1LjI3NGFmOGRlZTRjOTgyMTVlZmRi
YTQwMWU5NDAxYmEy
','2011-09-12 15:25:09.325791');
INSERT INTO "django_session" VALUES('76dc034365d3b9d7679277e46e5863c8','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwV1LjMwYzkzZmI3NDZlYTg1NTdhYzE3
NmE1N2E2YzQ2Njg0
','2011-09-12 22:50:07.878343');
INSERT INTO "django_session" VALUES('a493943b1832b5f96b3178d9633a7ce8','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwJ1Ljg2ZjA5ZWZkMWZlN2U3MjYwZGJi
MWJjMDVmYjA5NjBj
','2011-09-25 18:03:54.208467');
CREATE TABLE "django_site" (
    "id" integer NOT NULL PRIMARY KEY,
    "domain" varchar(100) NOT NULL,
    "name" varchar(50) NOT NULL
);
INSERT INTO "django_site" VALUES(1,'columbiaorchestra.org','columbiaorchestra.org');
CREATE TABLE "django_admin_log" (
    "id" integer NOT NULL PRIMARY KEY,
    "action_time" datetime NOT NULL,
    "user_id" integer NOT NULL REFERENCES "auth_user" ("id"),
    "content_type_id" integer REFERENCES "django_content_type" ("id"),
    "object_id" text,
    "object_repr" varchar(200) NOT NULL,
    "action_flag" smallint unsigned NOT NULL,
    "change_message" text NOT NULL
);
INSERT INTO "django_admin_log" VALUES(1,'2010-06-12 11:13:11.807221',1,16,'11','Land and Sea',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(2,'2010-06-12 11:18:25.631168',1,11,'8','Masterworks Chorale of Carroll County, Margaret Boudreaux, director',1,'');
INSERT INTO "django_admin_log" VALUES(3,'2010-06-12 11:18:59.339917',1,12,'15','Haydn, Franz Joseph - Music from The Creation',2,'Changed soloist.');
INSERT INTO "django_admin_log" VALUES(4,'2010-06-12 11:19:49.842223',1,16,'16','Creation and Destruction',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(5,'2010-06-12 11:23:21.624393',1,11,'8','Masterworks Chorale of Carroll County, Margaret Boudreaux, director',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(6,'2010-06-12 11:24:04.651182',1,11,'8','Masterworks Chorale of Carroll County, Margaret Boudreaux, director',2,'Changed slug.');
INSERT INTO "django_admin_log" VALUES(7,'2010-06-12 11:38:03.084469',1,11,'9','Stan Gilmer',1,'');
INSERT INTO "django_admin_log" VALUES(8,'2010-06-12 11:38:33.975750',1,16,'15','Symphonic Pops',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(9,'2010-06-12 13:21:16.137774',1,16,'12','Earth and Sky',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(10,'2010-06-13 11:28:26.149254',1,11,'9','Stan Gilmer',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(11,'2010-06-13 11:36:15.858282',1,11,'9','Stan Gilmer',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(12,'2010-06-13 12:43:40.305348',1,13,'29',' ',1,'');
INSERT INTO "django_admin_log" VALUES(13,'2010-06-13 12:48:19.181404',1,16,'13','Young and Eclectic',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(14,'2010-06-13 14:14:37.824373',1,16,'4','Jonathan Carney & The Rite of Spring',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(15,'2010-06-13 14:15:10.817250',1,16,'6','A Time and Place',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(16,'2010-06-13 14:15:55.820626',1,16,'8','Short Stories',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(17,'2010-06-13 14:16:20.541509',1,16,'2','The Titans',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(18,'2010-06-13 15:14:11.817395',1,9,'10','/preludes/ -- Preludes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(19,'2010-06-13 15:14:40.515680',1,9,'10','/preludes/ -- Preludes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(20,'2010-06-13 15:14:59.190532',1,9,'10','/preludes/ -- Preludes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(21,'2010-06-13 15:23:12.172942',1,9,'10','/preludes/ -- Preludes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(22,'2010-06-13 15:23:39.142727',1,9,'10','/preludes/ -- Preludes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(23,'2010-06-13 15:24:17.567739',1,9,'10','/preludes/ -- Preludes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(24,'2010-06-13 15:24:43.244764',1,9,'10','/preludes/ -- Preludes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(25,'2010-06-13 20:49:37.236886',1,7,'1','columbiaorchestra.org',2,'Changed domain and name.');
INSERT INTO "django_admin_log" VALUES(26,'2010-06-14 21:12:21.329660',1,9,'3','/history/ -- History',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(27,'2010-06-14 21:15:25.612578',1,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(28,'2010-06-14 21:16:50.009400',1,9,'6','/advertise/ -- Advertise',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(29,'2010-06-14 21:19:00.400548',1,9,'5','/donate/ -- Donate',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(30,'2010-06-14 21:51:05.002950',1,19,'90','Anne  Ward',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(31,'2010-06-14 21:55:23.787621',1,19,'103','Nancy  Smith',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(32,'2010-06-14 22:00:47.760766',1,19,'45','Penny  Zahn',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(33,'2010-06-14 22:02:18.912494',1,19,'100','Randolph  Capone',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(34,'2010-06-14 22:05:07.492922',1,19,'30','Sheila  Hrapchak',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(35,'2010-06-14 23:35:50.936737',1,19,'3','Edward Jean Welker',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(36,'2010-06-16 09:43:55.688049',1,9,'3','/history/ -- History',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(37,'2010-06-22 23:07:02.479957',1,9,'4','/amazon/ -- Amazon',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(38,'2010-06-22 23:09:44.153442',1,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(39,'2010-06-22 23:14:48.130939',1,9,'8','/composer_competition/ -- Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(40,'2010-06-22 23:18:34.215295',1,9,'8','/composer_competition/ -- Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(41,'2010-06-28 22:51:19.584772',1,19,'61','Devona Lee Schiller',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(42,'2010-06-28 22:52:43.762901',1,11,'8','Masterworks Chorale of Carroll County, Margaret Boudreaux, director',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(43,'2010-06-28 22:58:59.748255',1,19,'99','Randy  Malm',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(44,'2010-06-28 23:34:13.222890',1,19,'112','Suzanne  Sherwood',1,'');
INSERT INTO "django_admin_log" VALUES(45,'2010-06-29 00:00:22.972729',1,19,'11','Erin  Chester',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(46,'2010-06-29 00:03:10.354710',1,19,'59','Elaine  Newhall',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(47,'2010-06-29 00:06:08.204347',1,19,'108','Ken  Walton',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(48,'2010-06-29 00:07:16.599031',1,19,'1','David  Zajic',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(49,'2010-06-29 00:16:14.732460',1,19,'101','Douglas  Lee',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(50,'2010-07-09 12:30:51.682844',1,9,'13','/auditions/ -- Auditions',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(51,'2010-07-27 16:04:04.423736',1,9,'13','/auditions/ -- Auditions',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(52,'2010-07-27 16:15:18.096735',1,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(53,'2010-07-27 16:15:36.584964',1,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(54,'2010-07-27 16:18:06.054126',1,9,'6','/advertise/ -- Advertise',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(55,'2010-07-27 16:25:21.696709',1,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(56,'2010-07-28 15:19:18.240664',1,3,'2','jlmus07',1,'');
INSERT INTO "django_admin_log" VALUES(57,'2010-07-28 15:20:54.291355',1,3,'2','jlmus07',2,'Changed is_staff and user_permissions.');
INSERT INTO "django_admin_log" VALUES(58,'2010-07-28 15:23:45.232258',2,9,'3','/history/ -- History',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(59,'2010-07-28 16:25:30.968937',2,9,'3','/history/ -- History',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(60,'2010-07-28 17:22:45.885487',2,12,'6','Chen Gang and He Zhanhao - Butterfly Lovers'' Violin Concerto',2,'Changed title.');
INSERT INTO "django_admin_log" VALUES(61,'2010-07-28 17:27:31.608094',2,19,'26','Jacquelyn  DeBella',2,'Changed last_name.');
INSERT INTO "django_admin_log" VALUES(62,'2010-07-28 17:42:36.928764',2,11,'8','Masterworks Chorale of Carroll County, Margaret Boudreaux, Director',2,'Changed name.');
INSERT INTO "django_admin_log" VALUES(63,'2010-07-28 17:51:29.330120',2,9,'9','/contact_us/ -- Contact Us',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(64,'2010-07-28 17:54:45.145374',2,9,'12','/mailing_list/ -- Mailing List',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(65,'2010-07-28 18:01:53.850192',2,18,'28','Executive Director',1,'');
INSERT INTO "django_admin_log" VALUES(66,'2010-07-28 18:04:52.448626',2,19,'113','Tedd  Griepentrog',1,'');
INSERT INTO "django_admin_log" VALUES(67,'2010-07-28 18:10:16.463886',2,9,'14','/about_the_orchestra/ -- About The Orchestra',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(68,'2010-07-28 18:11:18.774715',2,9,'14','/about_the_orchestra/ -- About The Orchestra',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(69,'2010-07-30 20:59:34.290781',2,9,'13','/auditions/ -- Auditions',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(70,'2010-08-08 11:09:44.554814',1,9,'17','/member_schedule/ -- Member Schedule',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(71,'2010-08-09 18:48:29.048795',2,11,'10','Colin Eaton',1,'');
INSERT INTO "django_admin_log" VALUES(72,'2010-08-09 18:56:33.460418',2,11,'11','Meghan McCall',1,'');
INSERT INTO "django_admin_log" VALUES(73,'2010-08-09 18:56:50.999005',2,11,'9','Stan Gilmer',2,'Changed instrument.');
INSERT INTO "django_admin_log" VALUES(74,'2010-08-09 19:03:16.107697',2,11,'12','Jonathan Bailey Holland',1,'');
INSERT INTO "django_admin_log" VALUES(75,'2010-08-09 19:18:10.965663',2,11,'11','Meghan McCall',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(76,'2010-08-09 19:19:18.248403',2,11,'11','Meghan McCall',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(77,'2010-08-09 19:24:10.137770',2,11,'12','Jonathan Bailey Holland',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(78,'2010-08-09 21:57:24.280270',2,11,'6','Jason Shafer',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(79,'2010-08-11 14:48:30.807178',2,9,'17','/member_schedule/ -- Member Schedule',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(80,'2010-08-11 16:11:05.265541',2,11,'12','Jonathan Bailey Holland',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(81,'2010-08-12 22:09:09.704777',2,19,'6','Arthur  Fleming',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(82,'2010-08-12 22:10:03.094276',2,19,'24','Viviana  Acosta',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(83,'2010-08-12 22:20:27.707549',2,19,'85','Roy  Leierzapf',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(84,'2010-08-12 22:20:59.748536',2,19,'85','Roy  Leierzapf',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(85,'2010-08-12 22:23:29.931714',2,19,'17','Sara  Reimers',2,'Changed first_name, bio and photo.');
INSERT INTO "django_admin_log" VALUES(86,'2010-08-12 22:26:24.380656',2,19,'31','Jeeyun  Kim',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(87,'2010-08-12 22:30:13.981590',2,19,'73','Matthew  Gunderson',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(88,'2010-08-12 22:36:18.978224',2,19,'62','Cassandra Miranda Valladares',2,'Changed last_name, bio and photo.');
INSERT INTO "django_admin_log" VALUES(89,'2010-08-12 22:41:59.247030',2,19,'56','Yoshiaki  Horiguchi',2,'Changed last_name.');
INSERT INTO "django_admin_log" VALUES(90,'2010-08-16 17:10:29.614316',2,16,'16','Creation and Destruction',2,'Changed description and pieces.');
INSERT INTO "django_admin_log" VALUES(91,'2010-08-16 17:11:53.434092',2,16,'16','Creation and Destruction',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(92,'2010-08-17 15:44:40.685274',2,19,'76','Monica  Schwartz',2,'Changed last_name and bio.');
INSERT INTO "django_admin_log" VALUES(93,'2010-08-17 15:49:50.243987',2,19,'90','Anne  Ward',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(94,'2010-08-17 15:51:41.346383',2,19,'90','Anne  Ward',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(95,'2010-08-18 00:58:55.605276',1,12,'2','Holland, Jonathan Bailey - Motor City Dance Mix',2,'Changed soloist.');
INSERT INTO "django_admin_log" VALUES(96,'2010-08-18 01:00:58.290822',1,11,'12','Jonathan Bailey Holland',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(97,'2010-08-18 01:15:41.693163',1,16,'15','Symphonic Pops',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(98,'2010-08-18 01:26:13.169774',1,11,'12','Jonathan Bailey Holland',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(99,'2010-08-18 01:26:42.144188',1,11,'12','Jonathan Bailey Holland',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(100,'2010-08-19 15:02:23.277506',2,9,'20','/press_room/ -- Press Room',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(101,'2010-08-19 15:07:03.464835',2,9,'20','/press_room/ -- Press Room',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(102,'2010-08-19 15:09:09.320259',2,9,'20','/press_room/ -- Press Room',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(103,'2010-08-19 15:10:04.836587',2,9,'20','/press_room/ -- Press Room',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(104,'2010-08-19 15:26:19.941173',2,11,'13','Ah Hong',1,'');
INSERT INTO "django_admin_log" VALUES(105,'2010-08-19 15:38:29.953700',2,11,'5','Neil Ewachiw',2,'Changed bio and image.');
INSERT INTO "django_admin_log" VALUES(106,'2010-08-19 16:10:42.364276',2,11,'14','Rolando Sanz',1,'');
INSERT INTO "django_admin_log" VALUES(107,'2010-08-19 16:12:59.382933',2,16,'16','Creation and Destruction',2,'Changed pieces and soloists.');
INSERT INTO "django_admin_log" VALUES(108,'2010-08-19 16:14:26.266800',2,16,'16','Creation and Destruction',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(109,'2010-08-19 17:25:14.220326',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(110,'2010-08-19 18:01:28.945782',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(111,'2010-08-20 15:16:15.214671',2,16,'16','Creation and Destruction',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(112,'2010-08-20 15:17:03.159735',2,16,'16','Creation and Destruction',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(113,'2010-08-20 17:22:02.646480',2,16,'11','Land and Sea',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(114,'2010-08-20 17:23:26.976088',2,16,'11','Land and Sea',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(115,'2010-08-22 13:28:00.623000',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(116,'2010-08-22 15:54:34.342949',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(117,'2010-08-22 15:55:55.988881',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(118,'2010-08-23 00:12:29.842244',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(119,'2010-08-23 09:37:26.890922',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(120,'2010-08-23 15:53:13.863311',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(121,'2010-08-26 21:03:21.209872',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(122,'2010-08-26 21:04:07.460075',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(123,'2010-08-27 15:55:53.474957',2,19,'8','Alison  Candela',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(124,'2010-08-27 15:56:19.352706',2,19,'55','Matthew  Carroll',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(125,'2010-08-27 15:56:45.027765',2,19,'67','Elizabeth  Eber',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(126,'2010-08-27 15:57:03.360999',2,19,'81','Melissa  Feliciano',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(127,'2010-08-27 15:57:18.006723',2,19,'88','Mario  Fuentes',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(128,'2010-08-27 15:57:41.014643',2,19,'79','Chris  Holtzem',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(129,'2010-08-27 15:57:56.666885',2,19,'11','Erin  Chester',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(130,'2010-08-27 15:58:16.687563',2,19,'74','Edna  Huang',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(131,'2010-08-27 15:58:28.821193',2,19,'68','Kelly  Klomparens',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(132,'2010-08-27 15:58:46.643259',2,19,'107','Greg  Herron',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(133,'2010-08-27 15:59:07.177506',2,19,'96','Jessica  Hughes',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(134,'2010-08-27 15:59:21.081341',2,19,'70','Kelly  Klomparens',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(135,'2010-08-27 15:59:33.824065',2,19,'102','Sarah  Knapp',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(136,'2010-08-27 15:59:46.098498',2,19,'14','Casey  Kraft',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(137,'2010-08-27 16:00:01.155588',2,19,'93','Rebecca  Lantz',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(138,'2010-08-27 16:00:15.316587',2,19,'72','Bobby  Lapinski',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(139,'2010-08-27 16:00:35.117576',2,19,'106','Gretchen   McCracken',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(140,'2010-08-27 16:00:53.507409',2,19,'57','Colin  O''Bryan',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(141,'2010-08-27 16:01:07.095294',2,19,'51','Dave  Pumplin',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(142,'2010-08-27 16:01:28.102544',2,19,'97','Pamela  Scheuermann',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(143,'2010-08-27 16:01:44.780082',2,19,'63','Susan  Schultz',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(144,'2010-08-27 16:02:18.942112',2,19,'110','Randall  Stewart',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(145,'2010-08-27 16:02:33.209962',2,19,'87','Andrew  Strempek',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(146,'2010-08-27 16:02:49.494980',2,19,'43','Pamela  Truitt',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(147,'2010-08-27 16:03:04.791268',2,19,'62','Cassandra Miranda Valladares',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(148,'2010-08-27 16:04:00.863238',2,19,'78','Stacy  Hultzman',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(149,'2010-08-27 16:05:10.426190',2,19,'109','Jane  Creagan',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(150,'2010-08-27 16:05:36.927336',2,19,'114','Greg  Tsalikis',1,'');
INSERT INTO "django_admin_log" VALUES(151,'2010-08-27 16:06:15.550943',2,19,'95','Nancy  Corporon',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(152,'2010-08-27 16:07:06.397009',2,9,'14','/about_the_orchestra/ -- About The Orchestra',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(153,'2010-08-27 16:10:19.213140',2,19,'115','Elizabeth  Horst',1,'');
INSERT INTO "django_admin_log" VALUES(154,'2010-08-27 16:10:36.219850',2,19,'116','Doug  Dean',1,'');
INSERT INTO "django_admin_log" VALUES(155,'2010-08-27 16:12:25.353029',2,19,'117','Erin  Hedden',1,'');
INSERT INTO "django_admin_log" VALUES(156,'2010-08-27 16:12:42.016041',2,19,'118','Jessica  Liberati',1,'');
INSERT INTO "django_admin_log" VALUES(157,'2010-08-27 16:13:08.703937',2,19,'119','Adam  Waickman',1,'');
INSERT INTO "django_admin_log" VALUES(158,'2010-08-27 16:13:54.953247',2,19,'120','Esther Wagner Yuan',1,'');
INSERT INTO "django_admin_log" VALUES(159,'2010-08-27 16:14:12.993176',2,19,'121','Kate  Harvey',1,'');
INSERT INTO "django_admin_log" VALUES(160,'2010-08-27 16:14:38.593503',2,19,'122','Dami  Soh',1,'');
INSERT INTO "django_admin_log" VALUES(161,'2010-08-27 19:46:03.525359',2,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(162,'2010-08-28 15:22:00.121720',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(163,'2010-08-28 15:28:57.489564',2,19,'20','Annette  Szawan',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(164,'2010-08-28 15:29:29.465637',2,18,'29','Flute',1,'');
INSERT INTO "django_admin_log" VALUES(165,'2010-08-28 15:29:44.639700',2,18,'30','E-Flat, Bass Clarinets',1,'');
INSERT INTO "django_admin_log" VALUES(166,'2010-08-28 15:30:11.933799',2,19,'59','Elaine  Newhall',2,'Changed instrument.');
INSERT INTO "django_admin_log" VALUES(167,'2010-08-28 15:30:34.378079',2,19,'60','Kathrin  Kucharski',2,'Changed instrument.');
INSERT INTO "django_admin_log" VALUES(168,'2010-08-28 15:31:20.104456',2,19,'61','Devona Lee Schiller',2,'Changed instrument.');
INSERT INTO "django_admin_log" VALUES(169,'2010-08-28 15:33:45.140847',2,19,'123','Devona Lee Schiller',1,'');
INSERT INTO "django_admin_log" VALUES(170,'2010-08-28 15:34:10.874638',2,18,'31','Piccolo',1,'');
INSERT INTO "django_admin_log" VALUES(171,'2010-08-28 15:35:05.908751',2,19,'123','Devona Lee Schiller',2,'Changed instrument.');
INSERT INTO "django_admin_log" VALUES(172,'2010-08-28 15:37:30.670358',2,19,'123','Devona Lee Schiller',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(173,'2010-08-28 15:38:30.699722',2,19,'75','Lori  Fowser',2,'Changed instrument.');
INSERT INTO "django_admin_log" VALUES(174,'2010-08-28 15:38:51.878544',2,19,'124','Lori  Fowser',1,'');
INSERT INTO "django_admin_log" VALUES(175,'2010-08-29 21:24:33.523341',2,19,'125','Shari  Rolnick',1,'');
INSERT INTO "django_admin_log" VALUES(176,'2010-08-29 21:25:24.523064',2,19,'126','Patricia  DeOrio',1,'');
INSERT INTO "django_admin_log" VALUES(177,'2010-08-29 21:26:26.142338',2,19,'127','Kristin  Huza',1,'');
INSERT INTO "django_admin_log" VALUES(178,'2010-08-29 21:27:23.849140',2,19,'128','Tracey  Grasty',1,'');
INSERT INTO "django_admin_log" VALUES(179,'2010-08-29 21:28:26.337943',2,19,'129','Amy  Sexauer',1,'');
INSERT INTO "django_admin_log" VALUES(180,'2010-08-29 21:30:15.424650',2,19,'126','Patricia  DeOrio',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(181,'2010-08-29 22:07:14.637342',2,19,'20','Annette  Szawan',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(182,'2010-08-29 22:13:15.141539',2,19,'20','Annette  Szawan',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(183,'2010-08-30 12:19:21.382039',2,19,'130','Katie  Kimble',1,'');
INSERT INTO "django_admin_log" VALUES(184,'2010-08-31 10:38:49.102474',2,9,'21','/employment/ -- Employment',1,'');
INSERT INTO "django_admin_log" VALUES(185,'2010-08-31 10:49:00.351594',2,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(186,'2010-08-31 10:51:06.935189',2,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(187,'2010-08-31 10:55:22.961631',2,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(188,'2010-08-31 10:55:56.996811',2,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(189,'2010-08-31 10:57:23.008376',2,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(190,'2010-08-31 11:01:25.952535',2,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(191,'2010-08-31 11:06:30.641881',2,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(192,'2010-08-31 11:07:07.734729',2,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(193,'2010-08-31 11:08:00.303218',2,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(194,'2010-08-31 11:08:38.175598',2,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(195,'2010-08-31 11:09:26.141827',2,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(196,'2010-08-31 11:18:03.720887',2,19,'119','Adam  Waickman',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(197,'2010-09-02 10:35:20.450445',2,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(198,'2010-09-02 10:36:47.784973',2,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(199,'2010-09-02 10:38:23.828966',2,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(200,'2010-09-02 11:38:59.423172',2,16,'14','Peter and the Wolf ... and Friends',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(201,'2010-09-03 15:35:12.058895',2,9,'17','/member_schedule/ -- Member Schedule',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(202,'2010-09-04 01:53:33.148548',1,16,'16','Creation and Destruction',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(203,'2010-09-04 01:57:31.549636',1,11,'14','Rolando Sanz',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(204,'2010-09-04 01:58:42.246899',1,11,'14','Rolando Sanz',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(205,'2010-09-04 10:11:16.389996',2,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(206,'2010-09-04 12:36:36.805165',2,19,'105','Jeffrey   Soulen',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(207,'2010-09-04 12:40:10.178947',2,19,'105','Jeffrey   Soulen',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(208,'2010-09-04 12:41:19.974173',2,19,'105','Jeffrey   Soulen',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(209,'2010-09-05 12:03:37.418201',2,19,'105','Jeffrey   Soulen',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(210,'2010-09-06 15:16:00.210309',2,11,'15','Kinetics Sance Theatre, Priscilla Kaufhold,Artistic Director',1,'');
INSERT INTO "django_admin_log" VALUES(211,'2010-09-06 15:23:27.638423',2,11,'15','Kinetics Dance Theatre, Priscilla Kaufhold, Artistic Director',2,'Changed name.');
INSERT INTO "django_admin_log" VALUES(212,'2010-09-06 15:25:30.406424',2,16,'14','Peter and the Wolf ... and Friends',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(213,'2010-09-06 15:45:37.405012',2,16,'17','Chamber Concert One',1,'');
INSERT INTO "django_admin_log" VALUES(214,'2010-09-06 15:46:35.930731',2,16,'18','Chamber Concert Two',1,'');
INSERT INTO "django_admin_log" VALUES(215,'2010-09-06 15:48:33.587269',2,16,'19','Chamber Concert Three',1,'');
INSERT INTO "django_admin_log" VALUES(216,'2010-09-06 15:50:08.293154',2,16,'19','Chamber Concert Three',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(217,'2010-09-06 15:52:18.647666',2,11,'12','Jonathan Bailey Holland',2,'Changed instrument.');
INSERT INTO "django_admin_log" VALUES(218,'2010-09-07 15:23:38.688439',2,16,'19','Chamber Concert Three',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(219,'2010-09-17 14:21:50.637337',1,18,'1','First Violin',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(220,'2010-09-17 14:22:01.051741',1,18,'2','Second Violin',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(221,'2010-09-17 14:24:51.893698',1,18,'3','Viola',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(222,'2010-09-17 14:25:00.204486',1,18,'4','Cello',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(223,'2010-09-17 14:25:13.332273',1,18,'5','Bass',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(224,'2010-09-17 14:26:06.488370',1,18,'5','Bass',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(225,'2010-09-17 14:26:24.664383',1,18,'29','Flute',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(226,'2010-09-17 14:26:31.294852',1,18,'31','Piccolo',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(227,'2010-09-17 14:27:00.264353',1,18,'23','Alto Flute',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(228,'2010-09-17 14:27:11.556674',1,18,'7','Oboe',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(229,'2010-09-17 14:27:25.648453',1,18,'8','English Horn',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(230,'2010-09-17 14:27:41.051548',1,18,'9','Clarinet',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(231,'2010-09-17 14:28:22.310886',1,18,'10','E-Flat Clarinet',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(232,'2010-09-17 14:28:44.561385',1,18,'30','E-Flat, Bass Clarinets',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(233,'2010-09-17 14:28:58.523056',1,18,'11','Bass Clarinet',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(234,'2010-09-17 14:30:19.785466',1,18,'32','Soprano Saxophone',1,'');
INSERT INTO "django_admin_log" VALUES(235,'2010-09-17 14:30:41.337095',1,18,'33','Alto Saxophone',1,'');
INSERT INTO "django_admin_log" VALUES(236,'2010-09-17 14:30:53.255867',1,18,'25','Tenor Saxophone',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(237,'2010-09-17 14:31:07.042215',1,18,'34','Baritone Saxophone',1,'');
INSERT INTO "django_admin_log" VALUES(238,'2010-09-17 14:31:20.521568',1,18,'12','Bassoon',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(239,'2010-09-17 14:31:28.005104',1,18,'13','Contrabassoon',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(240,'2010-09-17 14:31:34.766310',1,18,'14','French Horn',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(241,'2010-09-17 14:31:42.777435',1,18,'15','Trumpet',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(242,'2010-09-17 14:31:56.610424',1,18,'16','Bass Trumpet',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(243,'2010-09-17 14:32:04.504975',1,18,'17','Trombone',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(244,'2010-09-17 14:32:16.385225',1,18,'18','Bass Trombone',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(245,'2010-09-17 14:32:39.274836',1,18,'35','Tenor Tuba',1,'');
INSERT INTO "django_admin_log" VALUES(246,'2010-09-17 14:32:46.929608',1,18,'19','Tuba',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(247,'2010-09-17 14:32:59.110692',1,18,'24','Harp',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(248,'2010-09-17 14:33:06.768094',1,18,'22','Piano/Keyboard',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(249,'2010-09-17 14:33:14.996547',1,18,'21','Timpani',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(250,'2010-09-17 14:33:23.272817',1,18,'20','Percussion',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(251,'2010-09-17 14:33:43.344902',1,18,'36','Music Librarian',1,'');
INSERT INTO "django_admin_log" VALUES(252,'2010-09-17 14:34:35.508041',1,18,'37','Personnel Manager (Winds, Brass, Percussion)',1,'');
INSERT INTO "django_admin_log" VALUES(253,'2010-09-17 14:34:52.233271',1,18,'38','Personnel Manager (Strings)',1,'');
INSERT INTO "django_admin_log" VALUES(254,'2010-09-17 14:36:10.867921',1,18,'26','Assistant Conductor',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(255,'2010-09-17 14:36:17.717535',1,18,'27','Music Director',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(256,'2010-09-17 14:36:27.891146',1,18,'28','Executive Director',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(257,'2010-09-17 14:43:55.660878',1,18,'6','Flute/Piccolo',3,'');
INSERT INTO "django_admin_log" VALUES(258,'2010-09-19 07:58:04.674320',2,9,'22','/young_artist_comp_2010/ -- Young Artist Competition 2010',1,'');
INSERT INTO "django_admin_log" VALUES(259,'2010-09-19 08:21:38.454402',2,9,'22','/young_artist_comp_2010/ -- Young Artist Competition 2010',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(260,'2010-09-19 08:39:57.251637',2,9,'19','/young_artist_competition/ -- Young Artist Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(261,'2010-09-19 08:43:08.135539',2,9,'19','/young_artist_competition/ -- Young Artist Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(262,'2010-09-19 08:44:59.240314',2,9,'19','/young_artist_competition/ -- Young Artist Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(263,'2010-09-19 08:45:58.956030',2,9,'22','/young_artist_comp_2010/ -- Young Artist Competition 2010',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(264,'2010-09-19 08:48:53.414187',2,9,'19','/young_artist_competition/ -- Young Artist Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(265,'2010-09-19 08:50:43.301744',2,9,'19','/young_artist_competition/ -- Young Artist Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(266,'2010-09-19 09:15:46.905467',2,9,'19','/young_artist_competition/ -- Young Artist Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(267,'2010-09-19 13:13:19.172958',2,9,'17','/member_schedule/ -- Member Schedule',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(268,'2010-09-19 15:20:45.361799',2,19,'130','Katie  Kimble',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(269,'2010-09-19 15:22:34.164137',2,19,'94','Jeffrey  Girdler',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(270,'2010-09-19 15:23:54.457699',2,19,'94','Jeffrey  Girdler',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(271,'2010-09-19 15:27:59.919701',2,19,'44','Dottie  Wayne',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(272,'2010-09-20 10:47:05.902114',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(273,'2010-09-21 12:54:34.222474',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(274,'2010-09-26 17:08:39.437542',2,19,'105','Jeffrey   Soulen',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(275,'2010-09-27 11:55:12.131325',1,3,'3','vacosta',1,'');
INSERT INTO "django_admin_log" VALUES(276,'2010-09-27 11:56:44.087309',1,2,'1','Content Authors',1,'');
INSERT INTO "django_admin_log" VALUES(277,'2010-09-27 11:56:48.082324',1,3,'3','vacosta',2,'Changed first_name, last_name, email, is_staff, user_permissions and groups.');
INSERT INTO "django_admin_log" VALUES(278,'2010-09-27 11:56:54.487336',1,3,'2','jlmus07',2,'Changed groups.');
INSERT INTO "django_admin_log" VALUES(279,'2010-09-27 12:01:53.513875',1,3,'3','vacosta',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(280,'2010-09-30 20:32:43.763298',2,14,'3','2008-2008 Season',1,'');
INSERT INTO "django_admin_log" VALUES(281,'2010-09-30 20:35:00.831228',2,14,'3','2008-2008 Season',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(282,'2010-09-30 21:16:35.406181',2,9,'23','/seasons/2008-2008_Season/ -- 2008-2009 Season',1,'');
INSERT INTO "django_admin_log" VALUES(283,'2010-09-30 21:17:27.979527',2,9,'23','/seasons/2008-2009_Season/ -- 2008-2009 Season',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(284,'2010-09-30 21:18:29.411223',2,14,'3','2008-2009 Season',2,'Changed name.');
INSERT INTO "django_admin_log" VALUES(285,'2010-09-30 21:18:51.799683',2,14,'3','2008-2009 Season',2,'Changed slug.');
INSERT INTO "django_admin_log" VALUES(286,'2010-09-30 21:19:35.807921',2,9,'23','/seasons/2008-2009_Season/ -- 2008-2009 Season',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(287,'2010-09-30 21:21:05.255565',2,9,'23','/seasons/2008-2009_Season/ -- 2008-2009 Season',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(288,'2010-09-30 21:21:39.471011',2,9,'23','/seasons/2008-2009_Season/ -- 2008-2009 Season',3,'');
INSERT INTO "django_admin_log" VALUES(289,'2010-09-30 21:25:41.635644',2,16,'20','Romeo and Juliet',1,'');
INSERT INTO "django_admin_log" VALUES(290,'2010-09-30 21:28:09.778479',2,13,'30','Golijov, Osvaldo ',1,'');
INSERT INTO "django_admin_log" VALUES(291,'2010-09-30 21:28:24.974882',2,13,'24','Dvořák, Antonín Leopold',2,'Added piece "Dvořák, Antonín Leopold - Carnival Overture, Op. 92".');
INSERT INTO "django_admin_log" VALUES(292,'2010-09-30 21:29:54.724160',2,11,'16','actors from the Chesapeake Shakespeare Company',1,'');
INSERT INTO "django_admin_log" VALUES(293,'2010-09-30 21:30:00.144839',2,13,'31','Prokofiev, Sergei ',1,'');
INSERT INTO "django_admin_log" VALUES(294,'2010-09-30 21:30:54.251076',2,16,'20','Romeo and Juliet',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(295,'2010-09-30 21:32:43.345527',2,16,'20','Romeo and Juliet',3,'');
INSERT INTO "django_admin_log" VALUES(296,'2010-09-30 21:33:44.527699',2,16,'20','Romeo and Juliet',1,'');
INSERT INTO "django_admin_log" VALUES(297,'2010-09-30 21:41:11.879396',2,13,'31','Prokofiev, Sergei ',2,'Added piece "Prokofiev, Sergei  - Peter and the Wolf".');
INSERT INTO "django_admin_log" VALUES(298,'2010-09-30 21:41:53.688019',2,13,'5','Tower, Joan ',2,'Added piece "Tower, Joan  - Made in America".');
INSERT INTO "django_admin_log" VALUES(299,'2010-09-30 21:43:04.305600',2,11,'17','Brenda Anna',1,'');
INSERT INTO "django_admin_log" VALUES(300,'2010-09-30 21:43:19.808043',2,11,'18','Monica DeLeon',1,'');
INSERT INTO "django_admin_log" VALUES(301,'2010-09-30 21:43:33.240322',2,11,'19','Jason Love',1,'');
INSERT INTO "django_admin_log" VALUES(302,'2010-09-30 21:43:49.678129',2,13,'15','Haydn, Franz Joseph',2,'Added piece "Haydn, Franz Joseph - Sinfonia Concertante".');
INSERT INTO "django_admin_log" VALUES(303,'2010-09-30 21:45:17.210941',2,16,'21','2008 Chamber Concert 1',1,'');
INSERT INTO "django_admin_log" VALUES(304,'2010-09-30 21:46:33.319909',2,16,'22','2008 Young People''s Concert',1,'');
INSERT INTO "django_admin_log" VALUES(305,'2010-09-30 21:50:26.462319',2,16,'22','2008 Young People''s Concert',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(306,'2010-09-30 21:51:35.070881',2,16,'23','Sebelius'' First',1,'');
INSERT INTO "django_admin_log" VALUES(307,'2010-09-30 21:57:45.043092',2,12,'35','Prokofiev, Sergei  - Music from Romeo and Juliet',2,'Changed soloist.');
INSERT INTO "django_admin_log" VALUES(308,'2010-09-30 21:58:22.787294',2,12,'38','Haydn, Franz Joseph - Sinfonia Concertante',2,'Changed soloist.');
INSERT INTO "django_admin_log" VALUES(309,'2010-09-30 21:59:00.230186',2,13,'32','Sibelius, Jean ',1,'');
INSERT INTO "django_admin_log" VALUES(310,'2010-09-30 21:59:30.693715',2,13,'16','Beethoven, Ludwig van',2,'Added piece "Beethoven, Ludwig van - Symphony No. 7 in A Major, Op. 92".');
INSERT INTO "django_admin_log" VALUES(311,'2010-09-30 22:00:00.845962',2,13,'33','Bernstein, Leonard ',1,'');
INSERT INTO "django_admin_log" VALUES(312,'2010-09-30 22:00:32.085937',2,13,'32','Sibelius, Jean ',2,'Added piece "Sibelius, Jean  - Violin Concerto, 1st movement".');
INSERT INTO "django_admin_log" VALUES(313,'2010-09-30 22:00:53.875264',2,13,'34','Arutiunian, Alexander ',1,'');
INSERT INTO "django_admin_log" VALUES(314,'2010-09-30 22:01:17.724737',2,13,'35','Boccherini, Luigi ',1,'');
INSERT INTO "django_admin_log" VALUES(315,'2010-09-30 22:02:55.821921',2,13,'36','Dun, Tan ',1,'');
INSERT INTO "django_admin_log" VALUES(316,'2010-09-30 22:03:08.416992',2,13,'11','Brahms, Johannes  ',2,'Added piece "Brahms, Johannes   - Symphony No. 4".');
INSERT INTO "django_admin_log" VALUES(317,'2010-09-30 22:03:45.856286',2,16,'21','2008 Chamber Concert One',2,'Changed name.');
INSERT INTO "django_admin_log" VALUES(318,'2010-09-30 22:04:16.002013',2,16,'23','Sebelius'' First',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(319,'2010-09-30 22:04:36.305880',2,16,'21','Chamber Concert One',2,'Changed name.');
INSERT INTO "django_admin_log" VALUES(320,'2010-09-30 22:04:47.084131',2,16,'22','Young People''s Concert',2,'Changed name.');
INSERT INTO "django_admin_log" VALUES(321,'2010-09-30 22:06:34.269506',2,16,'24','Symphonic Pops',1,'');
INSERT INTO "django_admin_log" VALUES(322,'2010-09-30 22:08:05.246817',2,16,'23','Sebelius'' First',2,'Changed description and pieces.');
INSERT INTO "django_admin_log" VALUES(323,'2010-09-30 22:08:29.621163',2,16,'24','Symphonic Pops',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(324,'2010-09-30 22:08:58.126361',2,16,'24','Symphonic Pops',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(325,'2010-09-30 22:09:48.443973',2,16,'20','Romeo and Juliet',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(326,'2010-09-30 22:10:11.181087',2,16,'22','Young People''s Concert',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(327,'2010-09-30 22:11:21.239421',2,16,'25','Chamber Concert Two',1,'');
INSERT INTO "django_admin_log" VALUES(328,'2010-09-30 22:12:18.114947',2,16,'26','From the Past to the Present',1,'');
INSERT INTO "django_admin_log" VALUES(329,'2010-09-30 22:13:20.222840',2,16,'25','Chamber Concert Two: Beethoven, Brahms ... and Benjamin',2,'Changed name.');
INSERT INTO "django_admin_log" VALUES(330,'2010-09-30 22:14:16.998345',2,16,'25','Chamber Concert Two',2,'Changed name and date.');
INSERT INTO "django_admin_log" VALUES(331,'2010-09-30 22:15:06.050390',2,16,'21','Chamber Concert One',2,'Changed date.');
INSERT INTO "django_admin_log" VALUES(332,'2010-09-30 22:15:59.693939',2,16,'27','Chamber Concert Two: : Beethoven, Brahms ... and Benjamin',1,'');
INSERT INTO "django_admin_log" VALUES(333,'2010-09-30 22:16:13.628615',2,16,'27','Chamber Concert Two: Beethoven, Brahms ... and Benjamin',2,'Changed name.');
INSERT INTO "django_admin_log" VALUES(334,'2010-09-30 22:16:21.478832',2,16,'25','Chamber Concert Three',2,'Changed name.');
INSERT INTO "django_admin_log" VALUES(335,'2010-09-30 22:18:51.659133',2,16,'28','Beethoven and Bernstein',1,'');
INSERT INTO "django_admin_log" VALUES(336,'2010-09-30 22:21:01.512010',2,16,'22','Young People''s Concert',2,'Changed alt_time.');
INSERT INTO "django_admin_log" VALUES(337,'2010-09-30 22:21:42.402427',2,16,'20','Romeo and Juliet',2,'Changed date.');
INSERT INTO "django_admin_log" VALUES(338,'2010-09-30 22:22:03.452866',2,16,'23','Sebelius'' First',2,'Changed date.');
INSERT INTO "django_admin_log" VALUES(339,'2010-09-30 22:22:23.269574',2,16,'24','Symphonic Pops',2,'Changed date.');
INSERT INTO "django_admin_log" VALUES(340,'2010-09-30 22:22:44.519415',2,16,'26','From the Past to the Present',2,'Changed date and pieces.');
INSERT INTO "django_admin_log" VALUES(341,'2010-10-04 10:50:53.682808',2,19,'84','Carl  Reynolds',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(342,'2010-10-04 11:36:54.256988',2,19,'94','Jeffrey  Girdler',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(343,'2010-10-04 15:52:46.715495',2,19,'41','Julie  Schwartz',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(344,'2010-10-10 15:52:58.641760',1,16,'11','Land and Sea',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(345,'2010-10-10 15:57:43.724347',1,16,'11','Land and Sea',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(346,'2010-10-10 15:58:50.882695',1,16,'11','Land and Sea',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(347,'2010-10-13 11:13:38.888481',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(348,'2010-10-14 08:06:34.917684',2,19,'19','Robin  Strempek',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(349,'2010-10-14 16:03:23.047041',2,9,'23','/holland_videos/ -- Jonathan Bailey Holland Video Interview',1,'');
INSERT INTO "django_admin_log" VALUES(350,'2010-10-14 16:05:50.954272',2,9,'23','/holland_videos/ -- Jonathan Bailey Holland Video Interview',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(351,'2010-10-14 16:07:48.350333',2,9,'23','/holland_videos/ -- Jonathan Bailey Holland Video Interview',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(352,'2010-10-14 16:11:23.289359',2,11,'12','Jonathan Bailey Holland',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(353,'2010-10-14 16:11:54.300815',2,11,'12','Jonathan Bailey Holland',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(354,'2010-10-14 22:33:08.196252',2,19,'131','Greg  Messa',1,'');
INSERT INTO "django_admin_log" VALUES(355,'2010-10-14 23:02:52.638013',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(356,'2010-10-15 09:56:08.725401',2,11,'12','Jonathan Bailey Holland',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(357,'2010-10-15 09:57:37.110510',2,11,'12','Jonathan Bailey Holland',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(358,'2010-10-15 10:19:17.486269',3,9,'11','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(359,'2010-10-15 10:22:29.532569',3,9,'11','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(360,'2010-10-15 10:26:55.229258',3,9,'11','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(361,'2010-10-15 10:30:33.620868',3,9,'11','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(362,'2010-10-15 10:31:11.425787',3,9,'11','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(363,'2010-10-15 10:32:57.452199',3,9,'11','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(364,'2010-10-15 10:34:20.263327',3,9,'11','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(365,'2010-10-15 14:46:00.767596',3,9,'11','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(366,'2010-10-16 12:06:08.845493',1,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(367,'2010-10-18 16:45:46.301592',2,15,'4','St. Johns Baptist Church',1,'');
INSERT INTO "django_admin_log" VALUES(368,'2010-10-18 16:53:23.482504',2,16,'29','Sounds of Praise',1,'');
INSERT INTO "django_admin_log" VALUES(369,'2010-10-22 20:54:36.582888',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(370,'2010-10-23 13:10:40.647110',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(371,'2010-10-23 14:12:08.103434',1,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(372,'2010-10-23 15:01:47.381152',2,9,'17','/member_schedule/ -- Member Schedule',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(373,'2010-10-23 15:02:44.630870',2,9,'17','/member_schedule/ -- Member Schedule',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(374,'2010-10-23 16:18:40.760643',1,3,'4','jason',1,'');
INSERT INTO "django_admin_log" VALUES(375,'2010-10-23 16:18:46.954661',1,3,'4','jason',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(376,'2010-10-23 16:19:12.913729',1,3,'4','jason',2,'Changed first_name and last_name.');
INSERT INTO "django_admin_log" VALUES(377,'2010-10-23 16:19:32.319066',1,9,'9','/contact_us/ -- Contact Us',2,'Changed registration_required.');
INSERT INTO "django_admin_log" VALUES(378,'2010-10-23 16:20:30.066529',1,9,'9','/contact_us/ -- Contact Us',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(379,'2010-10-23 16:22:06.138564',1,9,'9','/contact_us/ -- Contact Us',2,'Changed registration_required.');
INSERT INTO "django_admin_log" VALUES(380,'2010-10-27 07:55:25.548379',2,16,'17','Chamber Concert One: Spotlight on Strings',2,'Changed name and description.');
INSERT INTO "django_admin_log" VALUES(381,'2010-10-27 07:55:54.150565',2,16,'23','Sibelius'' First',2,'Changed name and slug.');
INSERT INTO "django_admin_log" VALUES(382,'2010-10-27 08:17:14.909901',2,16,'19','Chamber Concert Three',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(383,'2010-10-27 08:18:39.847885',2,16,'19','Chamber Concert Three',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(384,'2010-10-27 08:19:38.381579',2,13,'37','Ranjbaran, Behzad ',1,'');
INSERT INTO "django_admin_log" VALUES(385,'2010-10-27 08:19:44.939889',2,12,'48','Ranjbaran, Behzad  - Shiraz',1,'');
INSERT INTO "django_admin_log" VALUES(386,'2010-10-27 08:20:12.647754',2,12,'49','Beethoven, Ludwig van - Piano Trio No. 4',1,'');
INSERT INTO "django_admin_log" VALUES(387,'2010-10-27 08:20:45.680458',2,13,'38','Schumann, Robert ',1,'');
INSERT INTO "django_admin_log" VALUES(388,'2010-10-27 08:20:48.576068',2,12,'50','Schumann, Robert  - Piano Quintet',1,'');
INSERT INTO "django_admin_log" VALUES(389,'2010-10-27 08:22:01.106094',2,16,'19','Chamber Concert Three',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(390,'2010-10-27 08:26:17.721802',2,16,'19','Chamber Concert Three',2,'Changed description and image.');
INSERT INTO "django_admin_log" VALUES(391,'2010-10-27 08:33:16.247348',2,11,'20','Columbia Orchestra Piano Trio',1,'');
INSERT INTO "django_admin_log" VALUES(392,'2010-10-27 08:33:58.817747',2,16,'19','Chamber Concert Three',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(393,'2010-10-27 08:34:59.127396',2,16,'19','Chamber Concert Three',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(394,'2010-10-27 08:41:40.414799',2,16,'19','Chamber Concert Three',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(395,'2010-10-27 08:46:41.372680',2,16,'19','Chamber Concert Three',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(396,'2010-10-28 20:31:44.115436',1,3,'5','paulli',1,'');
INSERT INTO "django_admin_log" VALUES(397,'2010-10-28 20:32:59.211165',1,3,'5','paulli',2,'Changed first_name, last_name, is_staff, user_permissions and groups.');
INSERT INTO "django_admin_log" VALUES(398,'2010-10-28 21:33:04.740714',1,3,'6','jsoulen',1,'');
INSERT INTO "django_admin_log" VALUES(399,'2010-10-28 21:33:53.135288',1,3,'6','jsoulen',2,'Changed first_name, last_name, is_staff, user_permissions and groups.');
INSERT INTO "django_admin_log" VALUES(400,'2010-10-28 22:36:09.902814',5,11,'7','Qing Li',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(401,'2010-10-29 21:28:00.916784',5,19,'16','Paul  Lie',2,'Changed last_name.');
INSERT INTO "django_admin_log" VALUES(402,'2010-10-29 21:28:19.854623',5,19,'16','Paul  Li',2,'Changed last_name.');
INSERT INTO "django_admin_log" VALUES(403,'2010-10-30 05:24:31.394340',5,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(404,'2010-10-30 05:29:18.176218',5,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(405,'2010-10-30 05:40:33.429362',5,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(406,'2010-10-30 05:49:54.371841',5,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(407,'2010-10-30 15:15:46.885582',6,11,'17','Brenda Anna',2,'Changed instrument.');
INSERT INTO "django_admin_log" VALUES(408,'2010-10-31 18:04:30.576782',3,14,'4','2007-2008 Season',1,'');
INSERT INTO "django_admin_log" VALUES(409,'2010-11-02 20:44:15.041435',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(410,'2010-11-04 22:02:37.675137',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(411,'2010-11-04 22:04:12.485472',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(412,'2010-11-04 22:10:45.505016',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(413,'2010-11-04 22:15:05.336204',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(414,'2010-11-05 12:29:23.087114',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(415,'2010-11-05 20:47:05.827179',2,19,'86','Paul  Lindenmann',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(416,'2010-11-05 21:15:03.139525',2,19,'100','Randolph  Capone',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(417,'2010-11-05 21:17:59.660025',2,19,'100','Randolph  Capone',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(418,'2010-11-05 21:18:50.702552',2,19,'100','Randolph  Capone',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(419,'2010-11-05 21:19:40.254905',2,19,'100','Randolph  Capone',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(420,'2010-11-07 10:41:17.005892',2,19,'120','Esther Wagner Yuan',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(421,'2010-11-08 12:08:23.444436',2,16,'17','Chamber Concert One: Spotlight on Strings',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(422,'2010-11-08 12:25:47.658986',2,16,'17','Chamber Concert One: Spotlight on Strings',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(423,'2010-11-08 12:27:38.784853',2,16,'17','Chamber Concert One: Spotlight on Strings',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(424,'2010-11-08 12:28:09.993337',2,16,'17','Chamber Concert One: Spotlight on Strings',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(425,'2010-11-08 12:29:34.833752',2,16,'17','Chamber Concert One: Spotlight on Strings',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(426,'2010-11-08 12:30:15.237971',2,16,'17','Chamber Concert One: Spotlight on Strings',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(427,'2010-11-10 23:25:06.426567',1,16,'13','Young and Eclectic',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(428,'2010-11-10 23:30:09.630184',1,16,'13','Young and Eclectic',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(429,'2010-11-10 23:30:57.318300',1,16,'13','Young and Eclectic',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(430,'2010-11-10 23:33:51.617950',1,16,'13','Young and Eclectic',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(431,'2010-11-11 17:32:01.084146',2,11,'7','Qing Li',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(432,'2010-11-11 17:33:35.941677',2,11,'7','Qing Li',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(433,'2010-11-13 15:35:48.859691',2,19,'131','Gregory  Messa',2,'Changed first_name.');
INSERT INTO "django_admin_log" VALUES(434,'2010-11-15 18:29:03.575920',5,15,'5','The Gathering Place',1,'');
INSERT INTO "django_admin_log" VALUES(435,'2010-11-17 00:37:58.206635',1,19,'46','Bryan  Barrett',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(436,'2010-11-19 23:32:47.921220',5,14,'5','2006-2007 Season',1,'');
INSERT INTO "django_admin_log" VALUES(437,'2010-11-19 23:37:31.357027',5,13,'39','Verdi, Giuseppe ',1,'');
INSERT INTO "django_admin_log" VALUES(438,'2010-11-19 23:38:57.598529',5,13,'40','Wagner, Richard ',1,'');
INSERT INTO "django_admin_log" VALUES(439,'2010-11-19 23:39:30.386303',5,13,'11','Brahms, Johannes  ',2,'Added piece "Brahms, Johannes   - Hungarian Dances".');
INSERT INTO "django_admin_log" VALUES(440,'2010-11-19 23:39:30.906729',5,13,'11','Brahms, Johannes  ',2,'Added piece "Brahms, Johannes   - Hungarian Dances".');
INSERT INTO "django_admin_log" VALUES(441,'2010-11-19 23:41:01.985871',5,13,'41','Rodrigo, Joaquín ',1,'');
INSERT INTO "django_admin_log" VALUES(442,'2010-11-19 23:43:58.715594',5,11,'21','Paul Moeller',1,'');
INSERT INTO "django_admin_log" VALUES(443,'2010-11-19 23:44:19.626699',5,13,'41','Rodrigo, Joaquín ',2,'Changed soloist for piece "Rodrigo, Joaquín  - Concierto de Aranjuez".');
INSERT INTO "django_admin_log" VALUES(444,'2010-11-19 23:46:43.274140',5,13,'10','Ravel, Maurice ',2,'Added piece "Ravel, Maurice  - Daphnis and Chloé, Finale".');
INSERT INTO "django_admin_log" VALUES(445,'2010-11-19 23:51:29.079261',5,16,'30','Passion and Destiny',1,'');
INSERT INTO "django_admin_log" VALUES(446,'2010-11-19 23:56:59.998876',5,12,'53','Brahms, Johannes   - Hungarian Dances',3,'');
INSERT INTO "django_admin_log" VALUES(447,'2010-11-19 23:57:39.234137',5,16,'30','Passion and Destiny',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(448,'2010-11-19 23:59:54.571997',5,16,'31','A Tribute to John Denver',1,'');
INSERT INTO "django_admin_log" VALUES(449,'2010-11-20 00:01:40.774889',5,13,'14','Adams, John ',2,'Added piece "Adams, John  - Harmonielehre".');
INSERT INTO "django_admin_log" VALUES(450,'2010-11-20 00:02:56.857792',5,13,'42','Bass, Randol ',1,'');
INSERT INTO "django_admin_log" VALUES(451,'2010-11-20 00:03:40.485894',5,13,'3','Mozart, Wolfgang Amadeus',2,'Added piece "Mozart, Wolfgang Amadeus - “Coronation” Mass, K.317". Added piece "Mozart, Wolfgang Amadeus - Ave Verum Corpus, K.618 ".');
INSERT INTO "django_admin_log" VALUES(452,'2010-11-20 00:04:22.009709',5,13,'43','Britt, N. Cameron ',1,'');
INSERT INTO "django_admin_log" VALUES(453,'2010-11-20 00:06:16.542729',5,16,'32','Secrets of Grace',1,'');
INSERT INTO "django_admin_log" VALUES(454,'2010-11-20 00:07:59.467102',5,16,'32','Secrets of Grace',2,'Changed description and pieces.');
INSERT INTO "django_admin_log" VALUES(455,'2010-11-20 00:08:29.136855',5,16,'31','A Tribute to John Denver',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(456,'2010-11-20 00:08:43.170709',5,16,'30','Passion and Destiny',2,'Changed description and pieces.');
INSERT INTO "django_admin_log" VALUES(457,'2010-11-20 00:10:05.631603',5,16,'32','Secrets of Grace',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(458,'2010-11-20 00:10:33.586926',5,16,'32','Secrets of Grace',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(459,'2010-11-20 00:13:09.723192',5,16,'33','Young People''s Concert',1,'');
INSERT INTO "django_admin_log" VALUES(460,'2010-11-20 00:14:47.313728',5,13,'44','Roumain, Daniel Bernard',1,'');
INSERT INTO "django_admin_log" VALUES(461,'2010-11-20 00:15:15.523223',5,13,'16','Beethoven, Ludwig van',2,'Added piece "Beethoven, Ludwig van - Symphony No. 6, “Pastorale”".');
INSERT INTO "django_admin_log" VALUES(462,'2010-11-20 00:18:02.953121',5,13,'20','Mendelssohn, Felix ',2,'Added piece "Mendelssohn, Felix  - Concerto in e minor for violin, third movement".');
INSERT INTO "django_admin_log" VALUES(463,'2010-11-20 00:26:04.425219',5,16,'34','City and Country',1,'');
INSERT INTO "django_admin_log" VALUES(464,'2010-11-20 00:35:20.886939',5,16,'35','Pops Concert:  Of Stage and Screen',1,'');
INSERT INTO "django_admin_log" VALUES(465,'2010-11-20 00:36:38.407654',5,16,'36','Chamber Music Concert',1,'');
INSERT INTO "django_admin_log" VALUES(466,'2010-11-20 00:37:36.953845',5,13,'45','Barber, Samuel ',1,'');
INSERT INTO "django_admin_log" VALUES(467,'2010-11-20 00:38:31.497999',5,13,'46','David, Heuser ',1,'');
INSERT INTO "django_admin_log" VALUES(468,'2010-11-20 00:39:17.956649',5,13,'47','Bolcom, William ',1,'');
INSERT INTO "django_admin_log" VALUES(469,'2010-11-20 00:39:52.846623',5,13,'24','Dvořák, Antonín Leopold',2,'Added piece "Dvořák, Antonín Leopold - Symphony No. 9, “From the New World”".');
INSERT INTO "django_admin_log" VALUES(470,'2010-11-20 00:44:21.033262',5,16,'37','A New World',1,'');
INSERT INTO "django_admin_log" VALUES(471,'2010-11-20 00:44:51.166885',5,13,'46','Heuser, David ',2,'Changed first_name and last_name.');
INSERT INTO "django_admin_log" VALUES(472,'2010-11-20 00:45:56.292248',5,16,'37','A New World',2,'Changed description and pieces.');
INSERT INTO "django_admin_log" VALUES(473,'2010-11-20 00:47:44.248072',5,16,'38','Columbia Festival of the Arts: Mark O''Connor with the Columbia Orchestra',1,'');
INSERT INTO "django_admin_log" VALUES(474,'2010-11-20 00:48:20.644618',5,16,'38','Columbia Festival of the Arts: Mark O''Connor with the Columbia Orchestra',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(475,'2010-11-20 09:14:10.793898',5,11,'22','Elaine Newhall',1,'');
INSERT INTO "django_admin_log" VALUES(476,'2010-11-20 09:14:41.721687',5,11,'23','Lindsey Spear',1,'');
INSERT INTO "django_admin_log" VALUES(477,'2010-11-20 09:15:29.838767',5,11,'24','Carl Reynolds',1,'');
INSERT INTO "django_admin_log" VALUES(478,'2010-11-20 09:16:25.634960',5,13,'48','Bach, Johann Sebastian ',1,'');
INSERT INTO "django_admin_log" VALUES(479,'2010-11-20 09:18:14.949768',5,13,'49','Higdon, Jennifer ',1,'');
INSERT INTO "django_admin_log" VALUES(480,'2010-11-20 09:18:41.466593',5,13,'16','Beethoven, Ludwig van',2,'Added piece "Beethoven, Ludwig van - Symphony No. 5".');
INSERT INTO "django_admin_log" VALUES(481,'2010-11-20 09:21:37.822685',5,16,'39','Blockbusters and Discoveries:  The Agony and the Ecstasy',1,'');
INSERT INTO "django_admin_log" VALUES(482,'2010-11-20 09:22:16.132937',5,14,'6','2005-2006 Season',1,'');
INSERT INTO "django_admin_log" VALUES(483,'2010-11-20 09:22:33.842347',5,16,'39','Blockbusters and Discoveries:  The Agony and the Ecstasy',2,'Changed season and pieces.');
INSERT INTO "django_admin_log" VALUES(484,'2010-11-20 09:27:18.007106',5,16,'40','Explorations: A Tribute to John Denver',1,'');
INSERT INTO "django_admin_log" VALUES(485,'2010-11-20 09:31:33.965573',5,13,'50','Kleinsinger, George ',1,'');
INSERT INTO "django_admin_log" VALUES(486,'2010-11-20 09:32:07.612757',5,13,'51','Taylor, Deems ',1,'');
INSERT INTO "django_admin_log" VALUES(487,'2010-11-20 09:36:39.708847',5,16,'41','Explorations: Young People''s Concert',1,'');
INSERT INTO "django_admin_log" VALUES(488,'2010-11-20 09:43:21.185022',5,15,'6','Wilde Lake Interfaith Center',1,'');
INSERT INTO "django_admin_log" VALUES(489,'2010-11-20 09:44:12.101426',5,16,'41','Explorations: Young People''s Concert',2,'Changed location.');
INSERT INTO "django_admin_log" VALUES(490,'2010-11-20 09:47:05.181020',5,11,'25','John Locke',1,'');
INSERT INTO "django_admin_log" VALUES(491,'2010-11-20 09:47:23.669926',5,13,'36','Dun, Tan ',2,'Added piece "Dun, Tan  - Paper Concerto for Paper Percussion and Orchestra (2003)".');
INSERT INTO "django_admin_log" VALUES(492,'2010-11-20 09:48:01.549733',5,13,'52','Rimsky-Korsakov, Nikolai ',1,'');
INSERT INTO "django_admin_log" VALUES(493,'2010-11-20 09:49:11.279228',5,16,'42','Blockbusters and Discoveries:  Arabian Nights',1,'');
INSERT INTO "django_admin_log" VALUES(494,'2010-11-20 09:54:28.363466',5,13,'53','Britten, Benjamin ',1,'');
INSERT INTO "django_admin_log" VALUES(495,'2010-11-20 09:55:07.134050',5,11,'26','Francis Scully',1,'');
INSERT INTO "django_admin_log" VALUES(496,'2010-11-20 09:55:17.122713',5,13,'53','Britten, Benjamin ',2,'Changed soloist for piece "Britten, Benjamin  - "Four Sea Interludes" from Peter Grimes".');
INSERT INTO "django_admin_log" VALUES(497,'2010-11-20 09:57:21.937153',5,11,'27','Patricia Wnek',1,'');
INSERT INTO "django_admin_log" VALUES(498,'2010-11-20 09:57:27.430170',5,13,'54','Bruch, Max ',1,'');
INSERT INTO "django_admin_log" VALUES(499,'2010-11-20 09:58:42.182642',5,11,'28','Jennifer Leung',1,'');
INSERT INTO "django_admin_log" VALUES(500,'2010-11-20 09:58:53.820735',5,13,'21','Bloch, Ernest ',2,'Added piece "Bloch, Ernest  - Baal Shem".');
INSERT INTO "django_admin_log" VALUES(501,'2010-11-20 09:59:28.302219',5,13,'32','Sibelius, Jean ',2,'Added piece "Sibelius, Jean  - Symphony No. 2".');
INSERT INTO "django_admin_log" VALUES(502,'2010-11-20 10:02:45.551040',5,16,'43','Blockbusters and Discoveries: Perfect Storms',1,'');
INSERT INTO "django_admin_log" VALUES(503,'2010-11-20 10:06:04.529768',5,16,'44','Explorations:  COMCAST presents “By George! By Ira! By Gershwin!” ',1,'');
INSERT INTO "django_admin_log" VALUES(504,'2010-11-20 10:07:13.689432',5,11,'29','Eric Zuber',1,'');
INSERT INTO "django_admin_log" VALUES(505,'2010-11-20 10:07:19.337288',5,13,'3','Mozart, Wolfgang Amadeus',2,'Added piece "Mozart, Wolfgang Amadeus - Piano Concerto No. 20".');
INSERT INTO "django_admin_log" VALUES(506,'2010-11-20 10:11:14.569836',5,13,'8','Shostakovich, Dmitri ',2,'Added piece "Shostakovich, Dmitri  - Symphony No. 10".');
INSERT INTO "django_admin_log" VALUES(507,'2010-11-20 10:16:57.957437',5,16,'45','Blockbusters and Discoveries:  Clear and Present Danger',1,'');
INSERT INTO "django_admin_log" VALUES(508,'2010-11-20 10:17:47.450603',5,13,'3','Mozart, Wolfgang Amadeus',2,'Changed title for piece "Mozart, Wolfgang Amadeus - Piano Concerto No. 25".');
INSERT INTO "django_admin_log" VALUES(509,'2010-11-20 10:18:54.299913',5,16,'45','Blockbusters and Discoveries:  Clear and Present Danger',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(510,'2010-11-22 09:53:39.586518',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(511,'2010-11-23 21:45:15.542351',5,13,'17','Tchaikovsky, Pyotr Ilyich',2,'Added piece "Tchaikovsky, Pyotr Ilyich - Symphony No. 4".');
INSERT INTO "django_admin_log" VALUES(512,'2010-11-23 21:45:57.230246',5,13,'48','Bach, Johann Sebastian ',2,'Added piece "Bach, Johann Sebastian  - Brandenburg Concerto No. 3".');
INSERT INTO "django_admin_log" VALUES(513,'2010-11-23 21:46:48.354367',5,11,'30','Larry Williams',1,'');
INSERT INTO "django_admin_log" VALUES(514,'2010-11-23 21:46:51.796219',5,13,'55','Strauss, Richard ',1,'');
INSERT INTO "django_admin_log" VALUES(515,'2010-11-23 21:48:12.549160',5,13,'56','Ives, Charles ',1,'');
INSERT INTO "django_admin_log" VALUES(516,'2010-11-23 21:49:10.943507',5,11,'31','Brian Ganz',1,'');
INSERT INTO "django_admin_log" VALUES(517,'2010-11-23 21:49:17.653807',5,13,'11','Brahms, Johannes  ',2,'Added piece "Brahms, Johannes   - Piano Concerto No. 1".');
INSERT INTO "django_admin_log" VALUES(518,'2010-11-23 21:52:16.981494',5,11,'32','Theresa Bickham and Stephen Cramer',1,'');
INSERT INTO "django_admin_log" VALUES(519,'2010-11-23 21:54:29.971726',5,13,'57','Boudreaux, Margaret ',1,'');
INSERT INTO "django_admin_log" VALUES(520,'2010-11-23 21:55:28.767635',5,13,'16','Beethoven, Ludwig van',2,'Added piece "Beethoven, Ludwig van - Symphony No. 9".');
INSERT INTO "django_admin_log" VALUES(521,'2010-11-23 21:55:52.548449',5,13,'58','Rouse, Christopher ',1,'');
INSERT INTO "django_admin_log" VALUES(522,'2010-11-23 21:56:25.194051',5,13,'59','Mussorgsky, Modest ',1,'');
INSERT INTO "django_admin_log" VALUES(523,'2010-11-23 21:57:38.859783',5,11,'33','Alan Zhang',1,'');
INSERT INTO "django_admin_log" VALUES(524,'2010-11-23 21:57:50.246025',5,13,'60','Lalo, Edouard ',1,'');
INSERT INTO "django_admin_log" VALUES(525,'2010-11-23 21:59:15.375074',5,11,'34','Brian Kim',1,'');
INSERT INTO "django_admin_log" VALUES(526,'2010-11-23 21:59:17.273607',5,13,'61','Saint-Saens, Camille ',1,'');
INSERT INTO "django_admin_log" VALUES(527,'2010-11-23 22:02:15.133869',5,16,'46','Chamber Concert',1,'');
INSERT INTO "django_admin_log" VALUES(528,'2010-11-23 22:05:03.167972',5,16,'47','Classical Concert 4:  Pictures at an Exhibition',1,'');
INSERT INTO "django_admin_log" VALUES(529,'2010-11-23 22:06:12.575772',5,16,'48','Chamber Concert',1,'');
INSERT INTO "django_admin_log" VALUES(530,'2010-11-23 22:08:19.900248',5,16,'49','Chamber Concert',1,'');
INSERT INTO "django_admin_log" VALUES(531,'2010-11-23 22:10:17.247725',5,16,'50','Symphonic Pops',1,'');
INSERT INTO "django_admin_log" VALUES(532,'2010-11-23 22:12:41.962733',5,11,'35','Peabody Violin Choir, Christian Tremblay, Director',1,'');
INSERT INTO "django_admin_log" VALUES(533,'2010-11-23 22:12:49.697633',5,13,'53','Britten, Benjamin ',2,'Added piece "Britten, Benjamin  - Young Person''s Guide to the Orchestra".');
INSERT INTO "django_admin_log" VALUES(534,'2010-11-23 22:14:53.254866',5,16,'51','Young People''s Concert',1,'');
INSERT INTO "django_admin_log" VALUES(535,'2010-11-23 22:16:36.677500',5,16,'52','Classical Concert 2:  Ganz Plays Brahms',1,'');
INSERT INTO "django_admin_log" VALUES(536,'2010-11-23 22:19:06.510419',5,16,'53','Chamber Concert',1,'');
INSERT INTO "django_admin_log" VALUES(537,'2010-11-23 22:20:56.701896',5,16,'54','Classical Concert 1:  Tchaikovsky''s Fourth',1,'');
INSERT INTO "django_admin_log" VALUES(538,'2010-11-23 22:23:53.056251',5,16,'55','Classical Concert 3:  Embracing the Millions: A Community Arts Project',1,'');
INSERT INTO "django_admin_log" VALUES(539,'2010-11-23 22:30:49.834546',5,16,'33','Young People''s Concert',2,'Changed alt_time.');
INSERT INTO "django_admin_log" VALUES(540,'2010-11-23 22:35:17.002892',5,16,'51','Young People''s Concert',2,'Changed alt_time.');
INSERT INTO "django_admin_log" VALUES(541,'2010-11-23 22:37:14.258906',5,16,'41','Explorations: Young People''s Concert',2,'Changed alt_time.');
INSERT INTO "django_admin_log" VALUES(542,'2010-11-24 09:59:43.670690',5,13,'16','Beethoven, Ludwig van',2,'Added piece "Beethoven, Ludwig van - Overture to Coriolan".');
INSERT INTO "django_admin_log" VALUES(543,'2010-11-24 10:00:27.768274',5,11,'36','Peter Minkler',1,'');
INSERT INTO "django_admin_log" VALUES(544,'2010-11-24 10:00:29.583331',5,13,'62','Hindemith, Paul ',1,'');
INSERT INTO "django_admin_log" VALUES(545,'2010-11-24 10:01:11.039232',5,13,'63','Berlioz, Hector ',1,'');
INSERT INTO "django_admin_log" VALUES(546,'2010-11-24 10:03:43.444697',5,14,'7','2004-2005 Season',1,'');
INSERT INTO "django_admin_log" VALUES(547,'2010-11-24 10:05:28.299534',5,16,'56','Taleful Tunes',1,'');
INSERT INTO "django_admin_log" VALUES(548,'2010-11-24 10:07:03.752784',5,16,'57','Young People''s Concert',1,'');
INSERT INTO "django_admin_log" VALUES(549,'2010-11-24 10:08:14.348235',5,13,'64','Sheng, Bright ',1,'');
INSERT INTO "django_admin_log" VALUES(550,'2010-11-24 10:09:37.095083',5,13,'65','Vaughan Williams, Ralph ',1,'');
INSERT INTO "django_admin_log" VALUES(551,'2010-11-24 10:11:07.944990',5,11,'37','Ryan de Ryke',1,'');
INSERT INTO "django_admin_log" VALUES(552,'2010-11-24 10:11:13.850576',5,13,'59','Mussorgsky, Modest ',2,'Added piece "Mussorgsky, Modest  - Songs and Dances of Death (orch. Dmitri Shostakovich)".');
INSERT INTO "django_admin_log" VALUES(553,'2010-11-24 10:19:15.124575',5,13,'66','Chávez, Carlos ',1,'');
INSERT INTO "django_admin_log" VALUES(554,'2010-11-24 10:19:35.204222',5,13,'67','Bizet, George ',1,'');
INSERT INTO "django_admin_log" VALUES(555,'2010-11-24 10:21:05.340779',5,16,'58','Around the World',1,'');
INSERT INTO "django_admin_log" VALUES(556,'2010-11-24 10:22:33.292345',5,16,'58','Around the World',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(557,'2010-11-24 10:45:46.856854',5,13,'26','Wieniawski, Henryk ',2,'Added piece "Wieniawski, Henryk  - Violin Concerto No. 2 in D Minor, First Movement".');
INSERT INTO "django_admin_log" VALUES(558,'2010-11-24 10:48:14.604413',5,11,'38','Rebecca McLaughlin',1,'');
INSERT INTO "django_admin_log" VALUES(559,'2010-11-24 10:50:12.588039',5,13,'68','Strauss, Franz ',1,'');
INSERT INTO "django_admin_log" VALUES(560,'2010-11-24 10:50:55.437170',5,13,'69','Coleridge-Taylor, Samuel ',1,'');
INSERT INTO "django_admin_log" VALUES(561,'2010-11-24 10:51:45.483416',5,13,'70','Dawson, William Levi',1,'');
INSERT INTO "django_admin_log" VALUES(562,'2010-11-24 10:52:09.643323',5,13,'71','Elgar, Edward ',1,'');
INSERT INTO "django_admin_log" VALUES(563,'2010-11-24 10:54:00.117948',5,16,'59','MasterWorks Three',1,'');
INSERT INTO "django_admin_log" VALUES(564,'2010-11-24 10:57:03.394614',5,16,'60','Symphonic Pops:  Broadway, Beatles, and Beyond',1,'');
INSERT INTO "django_admin_log" VALUES(565,'2010-11-24 11:01:07.247297',5,13,'72','Dzubay, David ',1,'');
INSERT INTO "django_admin_log" VALUES(566,'2010-11-24 11:03:03.563976',5,11,'39','Eric Beach',1,'');
INSERT INTO "django_admin_log" VALUES(567,'2010-11-24 11:03:06.083678',5,13,'73','Nuyts, Frank ',1,'');
INSERT INTO "django_admin_log" VALUES(568,'2010-11-24 11:03:32.783450',5,13,'11','Brahms, Johannes  ',2,'Added piece "Brahms, Johannes   - Symphony No. 1 in C Minor, Op. 68".');
INSERT INTO "django_admin_log" VALUES(569,'2010-11-24 11:04:33.432226',5,16,'61','And the Winner Is...',1,'');
INSERT INTO "django_admin_log" VALUES(570,'2010-11-24 16:07:00.816308',5,13,'53','Britten, Benjamin ',2,'Added piece "Britten, Benjamin  - Russian Funeral".');
INSERT INTO "django_admin_log" VALUES(571,'2010-11-24 16:08:08.143454',5,11,'40','Dariusz Skoraczewski',1,'');
INSERT INTO "django_admin_log" VALUES(572,'2010-11-24 16:08:12.706007',5,13,'71','Elgar, Edward ',2,'Added piece "Elgar, Edward  - Cello Concerto in E Minor".');
INSERT INTO "django_admin_log" VALUES(573,'2010-11-24 16:08:44.895356',5,13,'17','Tchaikovsky, Pyotr Ilyich',2,'Added piece "Tchaikovsky, Pyotr Ilyich - Symphony No. 6 in B Minor, Op. 74, "Pathetique"".');
INSERT INTO "django_admin_log" VALUES(574,'2010-11-24 16:09:11.709452',5,13,'10','Ravel, Maurice ',2,'Added piece "Ravel, Maurice  - Alborada del Gracioso".');
INSERT INTO "django_admin_log" VALUES(575,'2010-11-24 16:09:45.984039',5,13,'10','Ravel, Maurice ',2,'Added piece "Ravel, Maurice  - Bolero".');
INSERT INTO "django_admin_log" VALUES(576,'2010-11-24 16:11:18.120905',5,11,'41','Winnie Au',1,'');
INSERT INTO "django_admin_log" VALUES(577,'2010-11-24 16:11:25.845530',5,13,'54','Bruch, Max ',2,'Added piece "Bruch, Max  - Concerto No. 1 in G Minor for Violin, First Movement".');
INSERT INTO "django_admin_log" VALUES(578,'2010-11-24 16:11:58.463106',5,11,'42','Kevin Qin',1,'');
INSERT INTO "django_admin_log" VALUES(579,'2010-11-24 16:12:08.466263',5,13,'10','Ravel, Maurice ',2,'Added piece "Ravel, Maurice  - Tzigane".');
INSERT INTO "django_admin_log" VALUES(580,'2010-11-24 16:12:29.755104',5,13,'74','Gershwin, George ',1,'');
INSERT INTO "django_admin_log" VALUES(581,'2010-11-24 16:13:07.120499',5,13,'75','Danielpour, Richard ',1,'');
INSERT INTO "django_admin_log" VALUES(582,'2010-11-24 16:13:54.304049',5,13,'76','Theofanidis, Christopher ',1,'');
INSERT INTO "django_admin_log" VALUES(583,'2010-11-24 16:14:55.859417',5,13,'11','Brahms, Johannes  ',2,'Added piece "Brahms, Johannes   - Piano Concerto No. 2 in B-Flat Major, Op. 83".');
INSERT INTO "django_admin_log" VALUES(584,'2010-11-24 16:15:27.719790',5,13,'3','Mozart, Wolfgang Amadeus',2,'Added piece "Mozart, Wolfgang Amadeus - Overture to the Marriage of Figaro".');
INSERT INTO "django_admin_log" VALUES(585,'2010-11-24 16:17:01.584257',5,11,'43','Igor Yuzefovich',1,'');
INSERT INTO "django_admin_log" VALUES(586,'2010-11-24 16:17:04.108730',5,13,'20','Mendelssohn, Felix ',2,'Added piece "Mendelssohn, Felix  - Concerto for Violin in E Minor, Op. 64".');
INSERT INTO "django_admin_log" VALUES(587,'2010-11-24 16:17:28.468044',5,13,'18','Stravinsky, Igor ',2,'Added piece "Stravinsky, Igor  - Petrushka".');
INSERT INTO "django_admin_log" VALUES(588,'2010-11-24 16:18:07.777180',5,13,'38','Schumann, Robert ',2,'Added piece "Schumann, Robert  - Waldszenen, Op. 82 (Forest Scenes)".');
INSERT INTO "django_admin_log" VALUES(589,'2010-11-24 16:18:40.276476',5,13,'38','Schumann, Robert ',2,'Changed soloist for piece "Schumann, Robert  - Waldszenen, Op. 82 (Forest Scenes)".');
INSERT INTO "django_admin_log" VALUES(590,'2010-11-24 16:19:07.163123',5,13,'16','Beethoven, Ludwig van',2,'Added piece "Beethoven, Ludwig van - Sonata in C, Op. 53 (Waldstein)".');
INSERT INTO "django_admin_log" VALUES(591,'2010-11-24 16:19:36.364875',5,13,'77','Chopin, Federic ',1,'');
INSERT INTO "django_admin_log" VALUES(592,'2010-11-24 16:20:21.967335',5,13,'78','Williams, John ',1,'');
INSERT INTO "django_admin_log" VALUES(593,'2010-11-24 16:21:02.591874',5,12,'128','  - Spiritual and Gospel Tunes',1,'');
INSERT INTO "django_admin_log" VALUES(594,'2010-11-24 16:21:32.216599',5,14,'8','2003-2004 Seasion',1,'');
INSERT INTO "django_admin_log" VALUES(595,'2010-11-24 16:22:49.984470',5,16,'62','MasterWorks One:  Final Words',1,'');
INSERT INTO "django_admin_log" VALUES(596,'2010-11-24 16:25:03.927441',5,16,'63','MasterWorks Two:  The French Connection',1,'');
INSERT INTO "django_admin_log" VALUES(597,'2010-11-24 16:26:21.264026',5,16,'64','Young People''s Concert',1,'');
INSERT INTO "django_admin_log" VALUES(598,'2010-11-24 16:30:26.930576',5,16,'65','MasterWorks Three:  Body, Voice and Spirit',1,'');
INSERT INTO "django_admin_log" VALUES(599,'2010-11-24 16:34:27.196924',5,16,'66','MasterWorks Four: Wolfgang, Felix, and Igor',1,'');
INSERT INTO "django_admin_log" VALUES(600,'2010-11-24 16:35:46.992736',5,16,'67','Piano recital by Brian Ganz',1,'');
INSERT INTO "django_admin_log" VALUES(601,'2010-11-24 16:36:22.349109',5,16,'67','Piano recital by Brian Ganz',2,'Changed pieces and soloists.');
INSERT INTO "django_admin_log" VALUES(602,'2010-11-24 16:36:42.184093',5,12,'126','Chopin, Federic  - Sonata No. 3 in B minor, Op. 58',2,'Changed soloist.');
INSERT INTO "django_admin_log" VALUES(603,'2010-11-24 16:36:51.482666',5,12,'125','Beethoven, Ludwig van - Sonata in C, Op. 53 (Waldstein)',2,'Changed soloist.');
INSERT INTO "django_admin_log" VALUES(604,'2010-11-24 16:37:09.824745',5,12,'124','Schumann, Robert  - Waldszenen, Op. 82 (Forest Scenes)',2,'Changed soloist.');
INSERT INTO "django_admin_log" VALUES(605,'2010-11-24 16:39:53.236328',5,16,'68','Symphonic Pops',1,'');
INSERT INTO "django_admin_log" VALUES(606,'2010-11-24 16:41:51.084436',5,14,'9','2002-2003 Season',1,'');
INSERT INTO "django_admin_log" VALUES(607,'2010-11-24 16:42:31.619248',5,13,'79','Revueltas, Silvestre ',1,'');
INSERT INTO "django_admin_log" VALUES(608,'2010-11-24 16:44:17.656698',5,11,'44','Herbert Greenberg',1,'');
INSERT INTO "django_admin_log" VALUES(609,'2010-11-24 16:44:22.338347',5,13,'54','Bruch, Max ',2,'Added piece "Bruch, Max  - Violin Concerto in G Minor, Op. 55".');
INSERT INTO "django_admin_log" VALUES(610,'2010-11-24 16:44:43.437626',5,13,'24','Dvořák, Antonín Leopold',2,'Added piece "Dvořák, Antonín Leopold - Symphony No. 8 in G Major, Op. 88".');
INSERT INTO "django_admin_log" VALUES(611,'2010-11-24 16:46:14.929012',5,11,'45','Laura Hung',1,'');
INSERT INTO "django_admin_log" VALUES(612,'2010-11-24 16:46:22.886232',5,13,'60','Lalo, Edouard ',2,'Added piece "Lalo, Edouard  - Concerto in D Minor, First Movement".');
INSERT INTO "django_admin_log" VALUES(613,'2010-11-24 16:47:11.452569',5,11,'46','Kyle Engler',1,'');
INSERT INTO "django_admin_log" VALUES(614,'2010-11-24 16:47:24.417630',5,13,'71','Elgar, Edward ',2,'Added piece "Elgar, Edward  - Sea Pictures, Op. 37".');
INSERT INTO "django_admin_log" VALUES(615,'2010-11-24 16:48:49.794186',5,13,'80','Weber, Carl Maria von',1,'');
INSERT INTO "django_admin_log" VALUES(616,'2010-11-24 16:49:37.076491',5,11,'47','Tobias Picker',1,'');
INSERT INTO "django_admin_log" VALUES(617,'2010-11-24 16:49:39.632853',5,13,'81','Picker, Tobias ',1,'');
INSERT INTO "django_admin_log" VALUES(618,'2010-11-24 16:50:45.323732',5,13,'11','Brahms, Johannes  ',2,'Added piece "Brahms, Johannes   - Academic Festival Overture, Op. 80".');
INSERT INTO "django_admin_log" VALUES(619,'2010-11-24 16:51:47.025153',5,11,'48','Anne Marie Ahn-Petersen',1,'');
INSERT INTO "django_admin_log" VALUES(620,'2010-11-24 16:51:49.753691',5,13,'54','Bruch, Max ',2,'Added piece "Bruch, Max  - Romance for Viola and Orchestra, Op. 85".');
INSERT INTO "django_admin_log" VALUES(621,'2010-11-24 16:52:25.233576',5,13,'80','Weber, Carl Maria von',2,'Added piece "Weber, Carl Maria von - Andante and Rondo ongarese, Op. 35".');
INSERT INTO "django_admin_log" VALUES(622,'2010-11-24 16:52:54.657259',5,13,'54','Bruch, Max ',2,'Changed soloist for piece "Bruch, Max  - Romance for Viola and Orchestra, Op. 85".');
INSERT INTO "django_admin_log" VALUES(623,'2010-11-24 16:53:37.126921',5,11,'49','Lee Jeon',1,'');
INSERT INTO "django_admin_log" VALUES(624,'2010-11-24 16:53:40.038447',5,13,'15','Haydn, Franz Joseph',2,'Added piece "Haydn, Franz Joseph - Concerto for Violin and Orchestra in C Major, Hob VIIa:1".');
INSERT INTO "django_admin_log" VALUES(625,'2010-11-24 16:54:12.680163',5,13,'16','Beethoven, Ludwig van',2,'Added piece "Beethoven, Ludwig van - Symphony No. 3 in E-Flat Major, Op. 55, “Eroica”".');
INSERT INTO "django_admin_log" VALUES(626,'2010-11-24 16:56:02.175613',5,16,'69','Exotic Landscapes',1,'');
INSERT INTO "django_admin_log" VALUES(627,'2010-11-24 16:57:35.083520',5,16,'70','To The Sea',1,'');
INSERT INTO "django_admin_log" VALUES(628,'2010-11-24 16:59:44.793650',5,16,'71','A Heritage of Harmony',1,'');
INSERT INTO "django_admin_log" VALUES(629,'2010-11-24 17:00:37.786733',5,11,'50','Julien Benichou',1,'');
INSERT INTO "django_admin_log" VALUES(630,'2010-11-24 17:01:02.816383',5,11,'51','Yong Ku Ahn',1,'');
INSERT INTO "django_admin_log" VALUES(631,'2010-11-24 17:01:11.116358',5,16,'71','A Heritage of Harmony',2,'Changed pieces and soloists.');
INSERT INTO "django_admin_log" VALUES(632,'2010-11-24 17:06:30.024073',5,16,'72','Young People''s Concert',1,'');
INSERT INTO "django_admin_log" VALUES(633,'2010-11-24 17:07:31.640536',5,13,'82','Schnauber, Tom ',1,'');
INSERT INTO "django_admin_log" VALUES(634,'2010-11-24 17:08:44.139051',5,11,'52','Hou Fei Yang',1,'');
INSERT INTO "django_admin_log" VALUES(635,'2010-11-24 17:08:48.365582',5,13,'83','Rachmaninov, Sergei ',1,'');
INSERT INTO "django_admin_log" VALUES(636,'2010-11-24 17:09:21.175086',5,13,'8','Shostakovich, Dmitri ',2,'Added piece "Shostakovich, Dmitri  - Symphony No. 5 in D Minor, Op. 47".');
INSERT INTO "django_admin_log" VALUES(637,'2010-11-24 17:10:57.323699',5,11,'53','Mark Lanz Weiser',1,'');
INSERT INTO "django_admin_log" VALUES(638,'2010-11-24 17:11:00.015443',5,13,'84','Weiser, Mark Lanz',1,'');
INSERT INTO "django_admin_log" VALUES(639,'2010-11-24 17:11:27.588586',5,13,'11','Brahms, Johannes  ',2,'Added piece "Brahms, Johannes   - Sonata No. 1 in E Minor, Op. 38".');
INSERT INTO "django_admin_log" VALUES(640,'2010-11-24 17:11:57.407974',5,12,'146','  - Music for Brass Quintet',1,'');
INSERT INTO "django_admin_log" VALUES(641,'2010-11-24 17:12:16.410198',5,12,'147','  - Music for Woodwind Quintet',1,'');
INSERT INTO "django_admin_log" VALUES(642,'2010-11-24 17:13:30.181678',5,13,'85','Rodgers, Richard ',1,'');
INSERT INTO "django_admin_log" VALUES(643,'2010-11-24 17:14:37.607743',5,13,'86','Ellington, Duke ',1,'');
INSERT INTO "django_admin_log" VALUES(644,'2010-11-24 17:15:50.292212',5,11,'54','Ferebee Thulman',1,'');
INSERT INTO "django_admin_log" VALUES(645,'2010-11-24 17:16:13.558972',5,13,'87','Shaw, Artie ',1,'');
INSERT INTO "django_admin_log" VALUES(646,'2010-11-24 17:16:31.547544',5,13,'78','Williams, John ',2,'Added piece "Williams, John  - Star Wars Suite".');
INSERT INTO "django_admin_log" VALUES(647,'2010-11-24 17:18:21.762547',5,16,'73','Russian Memories and American Dreams',1,'');
INSERT INTO "django_admin_log" VALUES(648,'2010-11-24 17:20:47.164543',5,16,'74','Bits and Pieces: A Chamber Music Concert',1,'');
INSERT INTO "django_admin_log" VALUES(649,'2010-11-24 17:22:11.650900',5,16,'75','Symphonic Pops',1,'');
INSERT INTO "django_admin_log" VALUES(650,'2010-11-28 10:14:50.525894',1,16,'12','Earth and Sky',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(651,'2010-11-28 10:50:36.749450',1,19,'76','Monica  Schwartz',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(652,'2010-11-28 10:53:38.009053',1,19,'6','Arthur  Fleming',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(653,'2010-11-28 10:55:19.402391',1,19,'47','John  Carter',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(654,'2010-11-28 10:55:34.488822',1,19,'50','Kathy  Hughes',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(655,'2010-11-28 10:56:26.804688',1,19,'132','Christina  Hernandez',1,'');
INSERT INTO "django_admin_log" VALUES(656,'2010-11-28 13:58:03.606161',1,19,'75','Lori  Fowser',2,'Changed second_instrument.');
INSERT INTO "django_admin_log" VALUES(657,'2010-11-28 13:58:11.528293',1,19,'124','Lori  Fowser',3,'');
INSERT INTO "django_admin_log" VALUES(658,'2010-11-28 13:58:22.993211',1,19,'123','Devona Lee Schiller',3,'');
INSERT INTO "django_admin_log" VALUES(659,'2010-11-28 13:58:35.766657',1,19,'61','Devona Lee Schiller',2,'Changed second_instrument.');
INSERT INTO "django_admin_log" VALUES(660,'2010-11-29 10:05:50.864538',2,19,'49','Carolyn  Ginnever',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(661,'2010-11-29 18:01:54.925314',5,9,'11','/program_notes_20100522/ -- Program Notes',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(662,'2010-11-29 18:05:12.281184',5,9,'24','/program_notes/ -- Program Notes',1,'');
INSERT INTO "django_admin_log" VALUES(663,'2010-11-29 18:06:58.038415',5,9,'24','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(664,'2010-11-29 18:10:28.680286',5,9,'24','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(665,'2010-11-29 18:15:24.615115',5,9,'24','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(666,'2010-11-29 18:17:58.295157',5,9,'24','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(667,'2010-11-29 22:32:01.964825',5,9,'24','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(668,'2010-12-04 11:44:29.048032',1,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(669,'2010-12-06 21:55:21.581614',1,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(670,'2010-12-07 22:38:11.618477',5,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(671,'2010-12-07 22:39:03.996557',5,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(672,'2010-12-07 22:40:07.137668',5,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(673,'2010-12-07 22:41:02.946993',5,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(674,'2010-12-07 22:41:38.548130',5,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(675,'2010-12-07 22:42:11.921668',5,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(676,'2010-12-07 22:43:45.372730',5,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(677,'2010-12-07 22:44:57.926811',5,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(678,'2010-12-07 22:45:36.130397',5,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(679,'2010-12-07 22:48:51.492103',5,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(680,'2010-12-13 07:47:58.659080',5,9,'14','/about_the_orchestra_pre20101213/ -- About The Orchestra',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(681,'2010-12-13 07:48:48.925398',5,9,'25','/about_the_orchestra/ -- About The Orchestra',1,'');
INSERT INTO "django_admin_log" VALUES(682,'2010-12-13 07:52:55.119447',5,9,'25','/about_the_orchestra/ -- About The Orchestra',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(683,'2010-12-13 07:53:43.954868',5,9,'14','/about_the_orchestra_pre20101213/ -- About The Orchestra',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(684,'2010-12-13 07:54:20.656344',5,9,'25','/about_the_orchestra/ -- About The Orchestra',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(685,'2010-12-13 07:56:47.267725',5,9,'25','/about_the_orchestra/ -- About The Orchestra',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(686,'2010-12-13 07:58:30.605944',5,9,'25','/about_the_orchestra/ -- About The Orchestra',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(687,'2010-12-13 12:13:16.849338',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(688,'2010-12-13 12:13:35.893149',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(689,'2010-12-13 12:22:23.597657',2,16,'14','Peter and the Wolf ... and Friends',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(690,'2010-12-13 13:19:01.412072',3,9,'25','/about_the_orchestra/ -- About The Orchestra',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(691,'2010-12-18 17:58:24.371764',5,9,'26','/partners_20101210/ -- Partners & Sponsors',1,'');
INSERT INTO "django_admin_log" VALUES(692,'2010-12-18 18:11:43.889208',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed url and content.');
INSERT INTO "django_admin_log" VALUES(693,'2010-12-18 18:13:15.689583',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(694,'2010-12-18 18:14:49.536275',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(695,'2010-12-18 18:15:25.821542',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(696,'2010-12-18 18:15:52.594918',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(697,'2010-12-18 18:17:36.153675',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(698,'2010-12-18 21:05:55.163006',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(699,'2010-12-18 21:07:48.357873',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(700,'2010-12-18 21:09:15.143772',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(701,'2010-12-18 21:10:43.430638',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(702,'2010-12-18 21:13:50.150893',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(703,'2010-12-18 21:15:58.284290',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(704,'2010-12-18 21:17:01.352840',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(705,'2010-12-18 21:18:24.631695',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(706,'2010-12-18 21:20:05.735827',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(707,'2010-12-18 21:21:20.439993',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(708,'2010-12-18 21:24:15.886715',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(709,'2010-12-18 21:26:29.113034',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(710,'2010-12-18 21:27:26.128403',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(711,'2010-12-18 21:28:19.605383',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(712,'2010-12-18 21:29:28.079705',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(713,'2010-12-18 21:30:59.042408',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(714,'2010-12-18 21:34:59.588015',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(715,'2010-12-18 21:36:39.090332',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(716,'2010-12-18 21:38:27.585569',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(717,'2010-12-18 21:40:31.718044',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(718,'2010-12-18 21:43:01.438973',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(719,'2010-12-18 21:43:46.858401',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(720,'2010-12-18 21:44:44.069258',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(721,'2010-12-18 21:46:05.698889',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(722,'2010-12-18 21:49:33.613499',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(723,'2010-12-18 21:50:35.378585',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(724,'2010-12-18 21:51:40.111504',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(725,'2010-12-18 21:52:38.528388',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(726,'2010-12-18 21:54:01.628014',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(727,'2010-12-18 21:57:04.511453',5,9,'26','/partners_20101204/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(728,'2010-12-18 21:58:55.291375',5,9,'16','/partners_pre20101204/ -- Partners & Sponsors',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(729,'2010-12-18 21:59:00.499247',5,9,'26','/partners/ -- Partners & Sponsors',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(730,'2010-12-18 22:01:21.181507',5,9,'26','/partners/ -- Partners & Sponsors',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(731,'2010-12-18 22:02:29.077248',5,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(732,'2010-12-18 22:04:00.475045',5,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(733,'2010-12-18 22:07:00.332523',5,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(734,'2010-12-18 22:07:52.157111',5,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(735,'2010-12-18 22:08:11.405065',5,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(736,'2010-12-18 22:09:03.595693',5,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(737,'2010-12-18 22:19:05.573659',5,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(738,'2010-12-18 22:22:35.348182',5,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(739,'2010-12-19 22:01:37.652781',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(740,'2010-12-19 22:04:28.161698',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(741,'2010-12-19 22:05:42.068408',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(742,'2010-12-20 10:25:36.645111',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(743,'2010-12-20 10:48:56.098884',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(744,'2010-12-20 10:51:22.174360',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(745,'2010-12-22 13:00:11.084220',2,19,'98','George  Werner',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(746,'2010-12-22 13:41:50.814193',2,19,'133','Eugene  Bayer',1,'');
INSERT INTO "django_admin_log" VALUES(747,'2010-12-24 11:59:53.625892',5,9,'27','/advertise_pre20101224/ -- Advertise',1,'');
INSERT INTO "django_admin_log" VALUES(748,'2010-12-24 12:03:15.170383',5,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(749,'2010-12-24 12:06:58.581209',5,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(750,'2010-12-24 12:10:37.258855',5,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(751,'2010-12-24 12:12:37.610867',5,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(752,'2010-12-24 12:18:43.497218',5,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(753,'2010-12-24 12:28:14.993173',5,9,'6','/advertise/ -- Advertise',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(754,'2010-12-24 12:30:56.438646',5,9,'28','/advertise_2/ -- Advertise',1,'');
INSERT INTO "django_admin_log" VALUES(755,'2010-12-24 12:33:46.372415',5,9,'28','/advertise_2/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(756,'2010-12-24 12:34:51.617723',5,9,'28','/advertise_2/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(757,'2010-12-24 12:38:11.973689',5,9,'28','/advertise_2/ -- Advertise',3,'');
INSERT INTO "django_admin_log" VALUES(758,'2010-12-26 17:17:12.088152',5,13,'61','Saint-Saens, Camille ',2,'Added piece "Saint-Saens, Camille  - Marche Militaire Française from Suite Algérienne, Op. 60".');
INSERT INTO "django_admin_log" VALUES(759,'2010-12-26 17:17:53.625933',5,13,'16','Beethoven, Ludwig van',2,'Added piece "Beethoven, Ludwig van - Piano Concerto no. 4 in G, op. 58 Brian Ganz, piano".');
INSERT INTO "django_admin_log" VALUES(760,'2010-12-26 17:18:31.198594',5,13,'31','Prokofiev, Sergei ',2,'Added piece "Prokofiev, Sergei  - Lieutenant Kijé Suite, Op. 60".');
INSERT INTO "django_admin_log" VALUES(761,'2010-12-26 17:19:51.428538',5,11,'55','Alice Lee',1,'');
INSERT INTO "django_admin_log" VALUES(762,'2010-12-26 17:20:08.796814',5,13,'15','Haydn, Franz Joseph',2,'Added piece "Haydn, Franz Joseph - Cello Concerto in C, Hob VIIb/1".');
INSERT INTO "django_admin_log" VALUES(763,'2010-12-26 17:22:06.982937',5,11,'56','Ahreum Kim',1,'');
INSERT INTO "django_admin_log" VALUES(764,'2010-12-26 17:22:23.656493',5,13,'88','Sarasate, Pablo ',1,'');
INSERT INTO "django_admin_log" VALUES(765,'2010-12-26 17:22:51.508945',5,13,'52','Rimsky-Korsakov, Nikolai ',2,'Added piece "Rimsky-Korsakov, Nikolai  - Capriccio Espagnol, Op. 34".');
INSERT INTO "django_admin_log" VALUES(766,'2010-12-26 17:24:56.360460',5,13,'3','Mozart, Wolfgang Amadeus',2,'Added piece "Mozart, Wolfgang Amadeus - Overture to The Magic Flute, K.620".');
INSERT INTO "django_admin_log" VALUES(767,'2010-12-26 17:26:15.755120',5,11,'57','Rebecca Henry',1,'');
INSERT INTO "django_admin_log" VALUES(768,'2010-12-26 17:26:24.613203',5,13,'3','Mozart, Wolfgang Amadeus',2,'Added piece "Mozart, Wolfgang Amadeus - Sinfonia Concertante, K. 364".');
INSERT INTO "django_admin_log" VALUES(769,'2010-12-26 17:28:28.071165',5,11,'58','Western Maryland College Choir, Margaret Boudreaux, Director',1,'');
INSERT INTO "django_admin_log" VALUES(770,'2010-12-26 17:28:41.555932',5,13,'15','Haydn, Franz Joseph',2,'Added piece "Haydn, Franz Joseph - "Winter" from The Seasons".');
INSERT INTO "django_admin_log" VALUES(771,'2010-12-26 17:30:21.396653',5,13,'33','Bernstein, Leonard ',2,'Added piece "Bernstein, Leonard  - Slava! (A Political Overture)".');
INSERT INTO "django_admin_log" VALUES(772,'2010-12-26 17:33:13.117136',5,13,'18','Stravinsky, Igor ',2,'Added piece "Stravinsky, Igor  - Firebird Suite".');
INSERT INTO "django_admin_log" VALUES(773,'2010-12-26 17:34:07.779247',5,13,'89','Gould, Morton ',1,'');
INSERT INTO "django_admin_log" VALUES(774,'2010-12-26 17:34:33.986594',5,13,'85','Rodgers, Richard ',2,'Added piece "Rodgers, Richard  - Sound of Music Medley".');
INSERT INTO "django_admin_log" VALUES(775,'2010-12-26 17:34:56.564069',5,13,'90','Anderson, Leroy ',1,'');
INSERT INTO "django_admin_log" VALUES(776,'2010-12-26 17:35:37.382387',5,13,'90','Anderson, Leroy ',2,'Added piece "Anderson, Leroy  - Trumpeter''s Lullaby".');
INSERT INTO "django_admin_log" VALUES(777,'2010-12-26 17:35:51.584163',5,13,'90','Anderson, Leroy ',2,'Added piece "Anderson, Leroy  - Bugler''s Holiday".');
INSERT INTO "django_admin_log" VALUES(778,'2010-12-26 17:36:13.284059',5,13,'86','Ellington, Duke ',2,'Added piece "Ellington, Duke  - "Martin Luther King" from Three Black Kings".');
INSERT INTO "django_admin_log" VALUES(779,'2010-12-26 17:36:51.115261',5,13,'87','Shaw, Artie ',2,'Added piece "Shaw, Artie  - Don''t Fall Asleep".');
INSERT INTO "django_admin_log" VALUES(780,'2010-12-26 17:37:26.282564',5,13,'87','Shaw, Artie ',2,'Added piece "Shaw, Artie  - Gloomy Sunday".');
INSERT INTO "django_admin_log" VALUES(781,'2010-12-26 17:37:46.417565',5,13,'87','Shaw, Artie ',2,'Added piece "Shaw, Artie  - My Heart Belongs to Daddy".');
INSERT INTO "django_admin_log" VALUES(782,'2010-12-26 17:38:11.729605',5,13,'91','Daugherty, Michael ',1,'');
INSERT INTO "django_admin_log" VALUES(783,'2010-12-26 17:38:52.383251',5,14,'9','2002-2003 Season',2,'Changed enddate.');
INSERT INTO "django_admin_log" VALUES(784,'2010-12-26 17:39:28.887309',5,14,'10','2001-2002 Season',1,'');
INSERT INTO "django_admin_log" VALUES(785,'2010-12-26 17:42:14.477305',5,16,'76','On a Grand Scale: Brian Ganz plays Beethoven',1,'');
INSERT INTO "django_admin_log" VALUES(786,'2010-12-26 17:44:35.475642',5,16,'77','Young Artists and Russian Masters',1,'');
INSERT INTO "django_admin_log" VALUES(787,'2010-12-26 17:47:15.388967',5,16,'78','Mozart and More',1,'');
INSERT INTO "django_admin_log" VALUES(788,'2010-12-26 17:53:38.408787',5,15,'7','Smith Theatre',1,'');
INSERT INTO "django_admin_log" VALUES(789,'2010-12-26 17:54:31.084875',5,16,'79','Young People''s Concert',1,'');
INSERT INTO "django_admin_log" VALUES(790,'2010-12-26 17:56:38.419480',5,16,'80','Contemporary Classics',1,'');
INSERT INTO "django_admin_log" VALUES(791,'2010-12-26 17:58:53.514593',5,16,'81','American Pops',1,'');
INSERT INTO "django_admin_log" VALUES(792,'2010-12-26 18:00:19.252033',5,12,'170','Shaw, Artie  - Gloomy Sunday',2,'Changed soloist.');
INSERT INTO "django_admin_log" VALUES(793,'2010-12-26 18:00:32.960436',5,12,'171','Shaw, Artie  - My Heart Belongs to Daddy',2,'Changed soloist.');
INSERT INTO "django_admin_log" VALUES(794,'2010-12-27 23:13:45.417124',1,21,'1','News object',1,'');
INSERT INTO "django_admin_log" VALUES(795,'2010-12-27 23:14:01.172039',1,21,'1','News object',3,'');
INSERT INTO "django_admin_log" VALUES(796,'2010-12-28 00:35:14.897753',1,2,'1','Content Authors',2,'Changed permissions.');
INSERT INTO "django_admin_log" VALUES(797,'2010-12-28 00:36:26.897488',1,3,'7','fakeuser',1,'');
INSERT INTO "django_admin_log" VALUES(798,'2010-12-28 00:36:31.859607',1,3,'7','fakeuser',2,'Changed groups.');
INSERT INTO "django_admin_log" VALUES(799,'2010-12-28 00:36:42.516298',1,3,'7','fakeuser',2,'Changed is_staff.');
INSERT INTO "django_admin_log" VALUES(800,'2011-01-07 21:57:10.048197',1,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(801,'2011-01-07 21:59:14.458440',1,21,'1','News object',1,'');
INSERT INTO "django_admin_log" VALUES(802,'2011-01-07 22:00:55.178307',1,21,'1','News object',2,'Changed body.');
INSERT INTO "django_admin_log" VALUES(803,'2011-01-07 22:01:18.963911',1,21,'1','News object',3,'');
INSERT INTO "django_admin_log" VALUES(804,'2011-01-07 22:01:43.114557',1,21,'1','News object',1,'');
INSERT INTO "django_admin_log" VALUES(805,'2011-01-07 22:03:00.678209',1,21,'1','News object',2,'Changed body.');
INSERT INTO "django_admin_log" VALUES(806,'2011-01-07 22:04:03.017086',1,21,'1','News object',2,'Changed body.');
INSERT INTO "django_admin_log" VALUES(807,'2011-01-07 22:04:48.117731',1,21,'1','News object',2,'Changed body.');
INSERT INTO "django_admin_log" VALUES(808,'2011-01-10 15:25:22.912794',3,9,'19','/young_artist_competition/ -- Young Artist Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(809,'2011-01-10 15:27:28.643207',3,9,'19','/young_artist_competition/ -- Young Artist Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(810,'2011-01-10 15:29:09.315424',3,9,'19','/young_artist_competition/ -- Young Artist Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(811,'2011-01-10 15:30:02.176676',3,9,'19','/young_artist_competition/ -- Young Artist Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(812,'2011-01-10 15:31:22.762003',3,9,'19','/young_artist_competition/ -- Young Artist Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(813,'2011-01-10 15:35:04.123923',3,9,'19','/young_artist_competition/ -- Young Artist Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(814,'2011-01-10 15:39:09.773028',3,9,'19','/young_artist_competition/ -- Young Artist Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(815,'2011-01-10 15:42:11.361904',3,9,'19','/young_artist_competition/ -- Young Artist Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(816,'2011-01-14 11:25:10.097889',2,9,'19','/young_artist_competition/ -- Young Artist Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(817,'2011-01-17 22:20:27.447939',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(818,'2011-01-17 22:22:51.617899',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(819,'2011-01-17 22:23:03.037524',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(820,'2011-01-17 22:25:37.285351',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(821,'2011-01-17 22:25:47.953897',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(822,'2011-01-22 18:27:44.616513',2,16,'15','Symphonic Pops',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(823,'2011-01-24 18:45:01.407770',5,9,'25','/about_the_orchestra/ -- About The Orchestra',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(824,'2011-01-31 13:53:09.753111',2,9,'19','/young_artist_competition/ -- Young Artist Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(825,'2011-01-31 13:54:39.236899',2,9,'19','/young_artist_competition/ -- Young Artist Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(826,'2011-02-08 21:50:54.624802',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(827,'2011-02-08 21:52:38.238142',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(828,'2011-02-12 12:35:37.999595',1,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(829,'2011-02-13 23:20:12.117688',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(830,'2011-02-13 23:20:53.298670',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(831,'2011-02-13 23:24:33.980483',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(832,'2011-02-14 17:20:07.576576',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(833,'2011-02-14 17:21:11.318812',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(834,'2011-02-16 19:20:42.415415',2,16,'13','Young and Eclectic',2,'Changed pieces and image.');
INSERT INTO "django_admin_log" VALUES(835,'2011-02-20 22:26:10.431134',3,11,'33','Alan Zhang',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(836,'2011-02-20 22:28:19.136699',3,11,'59','Sarah Kim',1,'');
INSERT INTO "django_admin_log" VALUES(837,'2011-02-20 22:30:45.516129',3,11,'60','Yaeji Shin',1,'');
INSERT INTO "django_admin_log" VALUES(838,'2011-02-20 22:32:41.881409',3,11,'59','Sarah Kim',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(839,'2011-02-20 22:35:05.926306',3,12,'32','  - Winners of the Young Artist Competition',2,'Changed soloist.');
INSERT INTO "django_admin_log" VALUES(840,'2011-02-20 22:49:54.579254',3,9,'19','/young_artist_comp_2011/ -- Young Artist Competition 2011',2,'Changed url and title.');
INSERT INTO "django_admin_log" VALUES(841,'2011-02-20 22:50:42.326833',3,9,'19','/young_artist_competition -- Young Artist Competition 2011',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(842,'2011-02-20 22:51:22.112527',3,9,'19','/young_artist_competition/ -- Young Artist Competition 2011',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(843,'2011-02-20 23:00:19.100864',3,16,'13','Young and Eclectic',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(844,'2011-02-20 23:01:28.605479',3,16,'13','Young and Eclectic',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(845,'2011-02-20 23:02:56.356579',3,16,'13','Young and Eclectic',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(846,'2011-02-20 23:07:37.661088',3,16,'13','Young and Eclectic',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(847,'2011-02-20 23:10:52.992319',3,16,'13','Young and Eclectic',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(848,'2011-02-20 23:11:54.441990',3,16,'13','Young and Eclectic',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(849,'2011-02-21 15:57:10.955747',1,16,'13','Young and Eclectic',2,'Changed description and pieces.');
INSERT INTO "django_admin_log" VALUES(850,'2011-02-21 16:06:29.355344',1,16,'13','Young and Eclectic',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(851,'2011-02-21 16:50:33.244520',1,11,'33','Alan Zhang',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(852,'2011-02-21 17:14:47.524693',3,11,'33','Alan Zhang',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(853,'2011-02-21 17:18:06.203788',3,13,'92','Vieuxtemps, Henri ',1,'');
INSERT INTO "django_admin_log" VALUES(854,'2011-02-21 17:18:14.407921',3,12,'173','Vieuxtemps, Henri  - Concerto No. 5 in A Minor',1,'');
INSERT INTO "django_admin_log" VALUES(855,'2011-02-21 17:19:30.660011',3,12,'173','Vieuxtemps, Henri  - Concerto No. 5 in A Minor',2,'Changed soloist.');
INSERT INTO "django_admin_log" VALUES(856,'2011-02-21 17:20:48.031114',3,13,'93','Doppler, Albert Franz',1,'');
INSERT INTO "django_admin_log" VALUES(857,'2011-02-21 17:23:13.283848',3,13,'11','Brahms, Johannes  ',2,'Changed soloist for piece "Brahms, Johannes   - Variations on a Theme by Haydn".');
INSERT INTO "django_admin_log" VALUES(858,'2011-02-21 18:02:45.971219',5,21,'2','News object',1,'');
INSERT INTO "django_admin_log" VALUES(859,'2011-02-21 18:06:49.179007',5,21,'2','News object',2,'Changed body.');
INSERT INTO "django_admin_log" VALUES(860,'2011-02-21 18:07:32.099047',5,21,'2','News object',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(861,'2011-02-21 18:09:00.315195',5,21,'2','News object',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(862,'2011-02-21 18:09:42.543482',5,21,'2','News object',2,'Changed body.');
INSERT INTO "django_admin_log" VALUES(863,'2011-02-21 18:14:14.728380',5,21,'2','News object',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(864,'2011-02-21 20:06:38.462311',1,15,'8','Paint Branch Unitarian Universalist Church',1,'');
INSERT INTO "django_admin_log" VALUES(865,'2011-02-21 20:07:26.600709',1,16,'82','Columbia Orchestra Piano Trio',1,'');
INSERT INTO "django_admin_log" VALUES(866,'2011-02-21 20:11:04.839138',1,16,'18','Chamber Concert Two',2,'Changed status.');
INSERT INTO "django_admin_log" VALUES(867,'2011-02-21 20:11:20.841549',1,16,'19','Chamber Concert Three',2,'Changed status.');
INSERT INTO "django_admin_log" VALUES(868,'2011-02-21 20:16:24.900351',1,12,'11','Brahms, Johannes   - Variations on a Theme by Haydn',2,'Changed soloist.');
INSERT INTO "django_admin_log" VALUES(869,'2011-02-22 07:15:27.746983',5,21,'2','News object',2,'Changed unpost_date.');
INSERT INTO "django_admin_log" VALUES(870,'2011-02-28 10:01:38.532979',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(871,'2011-02-28 10:02:32.180072',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(872,'2011-02-28 22:32:19.775602',5,16,'13','Young and Eclectic',2,'Changed description and pieces.');
INSERT INTO "django_admin_log" VALUES(873,'2011-03-08 23:26:40.218908',5,9,'28','/program_notes_20101204/ -- Program Notes',1,'');
INSERT INTO "django_admin_log" VALUES(874,'2011-03-08 23:32:22.293852',5,9,'24','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(875,'2011-03-08 23:35:31.413037',5,9,'24','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(876,'2011-03-08 23:38:21.761093',5,9,'24','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(877,'2011-03-08 23:40:52.297708',5,9,'24','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(878,'2011-03-08 23:45:53.014683',5,9,'24','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(879,'2011-03-08 23:47:40.593046',5,9,'24','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(880,'2011-03-08 23:52:14.311946',5,9,'24','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(881,'2011-03-08 23:58:50.630253',5,9,'24','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(882,'2011-03-08 23:59:24.534466',5,9,'24','/program_notes/ -- Program Notes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(883,'2011-03-14 22:52:12.600372',5,11,'59','Sarah Kim',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(884,'2011-03-16 11:25:36.209611',2,9,'25','/about_the_orchestra/ -- About The Orchestra',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(885,'2011-03-21 01:33:36.737454',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(886,'2011-03-21 01:35:23.100806',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(887,'2011-03-21 10:44:33.999924',1,19,'121','Kate  Kerr',2,'Changed last_name.');
INSERT INTO "django_admin_log" VALUES(888,'2011-03-21 11:49:14.283889',2,16,'13','Young and Eclectic',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(889,'2011-03-21 11:51:32.158654',2,16,'13','Young and Eclectic',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(890,'2011-03-21 11:51:49.671206',2,16,'13','Young and Eclectic',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(891,'2011-03-21 11:53:34.848358',2,16,'13','Young and Eclectic',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(892,'2011-03-21 23:33:04.199151',5,11,'33','Alan Zhang',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(893,'2011-03-21 23:34:50.583966',5,11,'60','Yaeji Shin',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(894,'2011-03-23 10:01:07.648723',2,9,'20','/press_room/ -- Press Room',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(895,'2011-03-24 21:45:41.080521',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(896,'2011-03-24 21:46:25.359515',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(897,'2011-03-25 09:57:37.195563',2,9,'2','/audio/ -- Audio',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(898,'2011-03-25 10:07:00.813242',2,9,'2','/audio/ -- Audio',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(899,'2011-03-25 12:29:07.111745',2,16,'18','Chamber Concert Two',2,'Changed description and image.');
INSERT INTO "django_admin_log" VALUES(900,'2011-03-25 15:39:40.723467',2,16,'18','Chamber Concert Two',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(901,'2011-03-25 15:40:20.850216',2,16,'18','Chamber Concert Two',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(902,'2011-03-25 15:43:25.029136',2,16,'18','Chamber Concert Two',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(903,'2011-03-25 15:50:26.807789',2,16,'19','Chamber Concert Three: The Light and the Dark',2,'Changed name and description.');
INSERT INTO "django_admin_log" VALUES(904,'2011-03-25 15:51:22.194679',2,12,'175','Ravel, Maurice  - Sonata for Violin, Op. posth.',1,'');
INSERT INTO "django_admin_log" VALUES(905,'2011-03-25 15:52:00.661424',2,12,'176','Shostakovich, Dmitri  - Cello Sonata, Op. 40',1,'');
INSERT INTO "django_admin_log" VALUES(906,'2011-03-25 15:55:47.812322',2,16,'19','Chamber Concert Three: The Light and the Dark',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(907,'2011-03-25 15:56:20.064529',2,12,'50','Schumann, Robert  - Piano Quintet, Op/ 44',2,'Changed title.');
INSERT INTO "django_admin_log" VALUES(908,'2011-03-25 15:57:16.460965',2,16,'19','Chamber Concert Three: The Light and the Dark',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(909,'2011-03-25 15:57:51.617538',2,12,'50','Schumann, Robert  - Piano Quintet, Op. 44',2,'Changed title.');
INSERT INTO "django_admin_log" VALUES(910,'2011-03-25 15:58:14.663190',2,16,'19','Chamber Concert Three: The Light and the Dark',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(911,'2011-03-26 13:48:33.583751',1,16,'18','Chamber Concert Two',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(912,'2011-03-26 17:15:59.369299',1,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(913,'2011-03-26 17:16:48.922363',1,9,'15','/tickets/ -- Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(914,'2011-03-28 00:17:14.246790',3,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(915,'2011-03-28 00:23:13.579074',3,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(916,'2011-03-28 00:24:36.279450',3,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(917,'2011-03-28 00:28:46.850473',3,9,'29','/support/raffle/ -- Columbia Orchestra Spring Raffle',1,'');
INSERT INTO "django_admin_log" VALUES(918,'2011-03-28 19:41:35.991707',5,9,'30','payment_test -- Payment Test Form',1,'');
INSERT INTO "django_admin_log" VALUES(919,'2011-03-28 19:41:59.629321',5,9,'30','/payment_test/ -- Payment Test Form',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(920,'2011-03-28 19:43:24.874553',5,9,'31','/thanks_test/ -- Test Thanks Page',1,'');
INSERT INTO "django_admin_log" VALUES(921,'2011-03-28 19:44:25.601251',5,9,'32','/sorry_test/ -- Test Sorry Page',1,'');
INSERT INTO "django_admin_log" VALUES(922,'2011-03-28 19:54:44.989265',5,9,'30','/payment_test/ -- Payment Test Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(923,'2011-03-28 19:57:58.553439',5,9,'30','/payment_test/ -- Payment Test Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(924,'2011-03-28 19:59:25.389073',5,9,'30','/payment_test/ -- Payment Test Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(925,'2011-03-28 20:10:22.166527',5,9,'30','/payment_test/ -- Payment Test Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(926,'2011-03-28 20:11:58.559135',5,9,'30','/payment_test/ -- Payment Test Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(927,'2011-03-29 07:34:45.223011',5,9,'31','/test/thanks/ -- Test Thanks Page',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(928,'2011-03-29 07:34:58.216366',5,9,'30','/test/payment/ -- Payment Test Form',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(929,'2011-03-29 07:35:12.454228',5,9,'32','/test/sorry/ -- Test Sorry Page',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(930,'2011-03-31 06:15:50.391629',5,16,'16','Creation and Destruction',2,'Changed description and pieces.');
INSERT INTO "django_admin_log" VALUES(931,'2011-03-31 06:16:51.808493',5,16,'16','Creation and Destruction',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(932,'2011-03-31 06:17:01.573360',5,16,'16','Creation and Destruction',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(933,'2011-03-31 21:54:48.877424',5,9,'33','/test/raffle/ -- Raffle Order Form',1,'');
INSERT INTO "django_admin_log" VALUES(934,'2011-03-31 23:35:09.275301',5,9,'33','/test/raffle/ -- Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(935,'2011-04-01 00:11:53.487608',5,9,'33','/test/raffle/ -- Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(936,'2011-04-01 00:41:15.395036',5,9,'32','/test/sorry/ -- Test Sorry Page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(937,'2011-04-01 00:43:10.267345',5,9,'32','/test/sorry/ -- Test Sorry Page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(938,'2011-04-01 00:44:48.723259',5,9,'31','/test/thanks/ -- Thank You',2,'Changed title and content.');
INSERT INTO "django_admin_log" VALUES(939,'2011-04-01 00:45:19.915113',5,9,'32','/test/sorry/ -- Test Sorry Page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(940,'2011-04-03 21:48:24.570318',3,9,'33','/test/raffle/ -- Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(941,'2011-04-03 21:49:55.834845',3,9,'33','/test/raffle/ -- Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(942,'2011-04-03 22:53:53.416867',2,9,'17','/member_schedule/ -- Member Schedule',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(943,'2011-04-03 23:12:47.344946',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(944,'2011-04-03 23:13:24.230955',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(945,'2011-04-03 23:13:55.451495',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(946,'2011-04-03 23:14:39.429803',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(947,'2011-04-04 22:45:59.520950',5,9,'29','/support/raffle/ -- Columbia Orchestra Spring Raffle',3,'');
INSERT INTO "django_admin_log" VALUES(948,'2011-04-04 22:48:08.879161',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed title and content.');
INSERT INTO "django_admin_log" VALUES(949,'2011-04-04 22:56:23.005509',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(950,'2011-04-04 23:27:30.825522',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(951,'2011-04-04 23:42:51.732806',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(952,'2011-04-04 23:45:10.495281',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(953,'2011-04-05 00:19:04.152274',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(954,'2011-04-05 00:21:46.927465',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(955,'2011-04-05 00:22:56.569108',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(956,'2011-04-05 00:25:35.870998',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(957,'2011-04-05 00:40:31.038960',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(958,'2011-04-05 00:41:53.086774',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(959,'2011-04-05 00:48:06.209582',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(960,'2011-04-06 08:10:00.052167',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(961,'2011-04-06 08:10:35.304489',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(962,'2011-04-06 08:10:35.675028',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(963,'2011-04-06 08:12:10.981174',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(964,'2011-04-06 08:14:00.399146',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(965,'2011-04-06 08:16:24.221436',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(966,'2011-04-06 08:17:29.165997',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(967,'2011-04-06 22:53:41.026559',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(968,'2011-04-06 23:15:00.181320',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(969,'2011-04-06 23:18:49.959680',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(970,'2011-04-06 23:42:44.534065',5,9,'30','/test/payment/ -- Payment Test Form',3,'');
INSERT INTO "django_admin_log" VALUES(971,'2011-04-06 23:51:49.292225',5,9,'34','/test/raffle_form/ -- Raffle Order Form',1,'');
INSERT INTO "django_admin_log" VALUES(972,'2011-04-06 23:52:32.743545',5,9,'33','/support/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(973,'2011-04-06 23:53:08.061223',5,9,'32','/support/raffle/sorry/ -- Test Sorry Page',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(974,'2011-04-06 23:53:19.679803',5,9,'31','/support/raffle/thanks/ -- Thank You',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(975,'2011-04-06 23:54:14.044922',5,9,'32','/support/raffle/sorry/ -- Online Raffle Order Not Successful',2,'Changed title.');
INSERT INTO "django_admin_log" VALUES(976,'2011-04-06 23:54:47.529579',5,9,'31','/support/raffle/thanks/ -- Thank You For Your Order',2,'Changed title.');
INSERT INTO "django_admin_log" VALUES(977,'2011-04-06 23:56:00.609936',5,9,'31','/support/raffle/thanks/ -- Thank You For Your Support',2,'Changed title and content.');
INSERT INTO "django_admin_log" VALUES(978,'2011-04-06 23:59:47.977694',5,9,'34','/test/raffle_form/ -- Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(979,'2011-04-07 00:00:58.773615',5,9,'34','/test/raffle_form/ -- Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(980,'2011-04-07 00:07:12.004842',5,9,'34','/test/raffle_form/ -- Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(981,'2011-04-07 00:09:24.752720',5,9,'34','/test/raffle_form/ -- Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(982,'2011-04-07 00:09:55.972998',5,9,'34','/test/raffle_form/ -- Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(983,'2011-04-07 00:10:54.728261',5,9,'34','/test/raffle_form/ -- Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(984,'2011-04-07 00:18:32.406387',5,9,'34','/test/raffle_form/ -- Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(985,'2011-04-07 00:19:15.154369',5,9,'34','/test/raffle_form/ -- Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(986,'2011-04-07 00:20:04.123608',5,9,'34','/test/raffle_form/ -- Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(987,'2011-04-07 00:20:20.385758',5,9,'34','/test/raffle_form/ -- Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(988,'2011-04-07 00:20:39.651729',5,9,'34','/test/raffle_form/ -- Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(989,'2011-04-07 00:21:03.508757',5,9,'34','/test/raffle_form/ -- Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(990,'2011-04-07 00:21:27.318487',5,9,'34','/test/raffle_form/ -- Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(991,'2011-04-07 00:40:35.314225',5,9,'33','/support/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(992,'2011-04-07 00:46:53.734757',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed title and content.');
INSERT INTO "django_admin_log" VALUES(993,'2011-04-07 00:47:15.901511',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(994,'2011-04-07 00:48:36.230259',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(995,'2011-04-07 00:49:39.173473',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(996,'2011-04-07 00:59:24.971505',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(997,'2011-04-07 01:04:01.229931',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(998,'2011-04-07 01:05:25.705177',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(999,'2011-04-07 01:07:52.947929',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1000,'2011-04-07 01:08:51.262867',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1001,'2011-04-07 01:09:40.262586',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1002,'2011-04-07 01:12:01.322238',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1003,'2011-04-07 01:12:42.260544',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1004,'2011-04-07 01:13:22.018622',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1005,'2011-04-07 01:17:42.509274',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1006,'2011-04-07 01:18:07.124820',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1007,'2011-04-07 01:19:06.319453',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1008,'2011-04-07 01:19:33.751541',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1009,'2011-04-07 01:21:02.076374',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1010,'2011-04-07 01:23:01.080618',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1011,'2011-04-07 01:23:43.346572',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1012,'2011-04-07 01:28:14.541210',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1013,'2011-04-07 01:34:43.655678',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1014,'2011-04-07 01:35:42.019884',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1015,'2011-04-07 01:36:31.793578',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1016,'2011-04-07 01:39:11.015303',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1017,'2011-04-07 01:44:50.430766',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1018,'2011-04-07 01:45:26.813952',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1019,'2011-04-07 01:45:42.313206',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1020,'2011-04-07 01:46:34.973843',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1021,'2011-04-07 01:46:59.449811',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1022,'2011-04-07 01:47:49.245670',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1023,'2011-04-07 01:48:34.362473',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1024,'2011-04-07 01:49:26.802749',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1025,'2011-04-07 01:49:47.886926',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1026,'2011-04-07 01:50:46.699480',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1027,'2011-04-07 01:51:09.221131',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1028,'2011-04-07 01:51:31.626474',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1029,'2011-04-07 01:51:54.139640',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1030,'2011-04-07 01:56:31.985927',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1031,'2011-04-07 01:58:59.281404',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1032,'2011-04-07 01:59:30.835438',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1033,'2011-04-07 02:00:01.086979',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1034,'2011-04-07 02:03:55.709601',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1035,'2011-04-07 02:06:10.473327',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1036,'2011-04-07 02:07:54.355444',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1037,'2011-04-07 02:08:20.417020',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1038,'2011-04-07 02:09:38.550463',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1039,'2011-04-07 02:10:12.353239',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1040,'2011-04-07 02:10:38.335212',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1041,'2011-04-07 02:11:03.764576',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1042,'2011-04-07 02:12:09.688773',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1043,'2011-04-07 02:12:30.258249',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1044,'2011-04-07 02:14:09.755684',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1045,'2011-04-07 02:19:29.496885',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1046,'2011-04-07 02:20:16.162430',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1047,'2011-04-07 02:25:01.052025',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1048,'2011-04-07 07:08:13.180649',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1049,'2011-04-07 07:08:34.985860',5,9,'33','/support/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1050,'2011-04-07 07:08:42.271701',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1051,'2011-04-07 07:09:05.429301',5,9,'33','/support/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1052,'2011-04-07 07:09:09.804220',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1053,'2011-04-07 07:10:53.980024',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1054,'2011-04-07 07:11:55.413044',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1055,'2011-04-07 07:13:45.743162',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1056,'2011-04-07 07:14:32.960633',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1057,'2011-04-07 07:15:26.073854',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1058,'2011-04-07 07:15:39.741292',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1059,'2011-04-07 07:15:55.733603',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1060,'2011-04-07 07:18:56.284094',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1061,'2011-04-07 07:27:26.337788',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1062,'2011-04-07 07:28:21.865569',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1063,'2011-04-07 07:29:08.731269',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1064,'2011-04-07 07:31:34.062970',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1065,'2011-04-07 07:31:51.403057',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1066,'2011-04-07 07:34:09.132067',5,9,'34','/test/raffle_form/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1067,'2011-04-07 07:34:24.682792',5,9,'34','/test/raffle/form/ -- Test Raffle Order Form',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1068,'2011-04-07 07:34:33.474534',5,9,'34','/test/raffle/order -- Test Raffle Order Form',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1069,'2011-04-07 07:34:52.445439',5,9,'34','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1070,'2011-04-07 07:37:15.784255',5,9,'34','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1071,'2011-04-07 07:38:50.601956',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed url and title.');
INSERT INTO "django_admin_log" VALUES(1072,'2011-04-07 07:42:36.773516',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1073,'2011-04-07 07:45:10.402595',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1074,'2011-04-07 07:48:02.785782',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1075,'2011-04-07 07:48:25.269706',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1076,'2011-04-07 07:48:57.942333',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1077,'2011-04-07 07:49:25.980876',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1078,'2011-04-07 08:06:43.486739',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',1,'');
INSERT INTO "django_admin_log" VALUES(1079,'2011-04-07 08:07:15.734382',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1080,'2011-04-07 08:08:01.733109',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1081,'2011-04-07 08:09:16.044044',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1082,'2011-04-07 08:10:01.624337',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1083,'2011-04-07 08:10:32.488103',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1084,'2011-04-07 08:11:18.407938',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1085,'2011-04-07 08:12:44.323364',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1086,'2011-04-07 08:13:33.428676',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1087,'2011-04-07 08:13:47.217699',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1088,'2011-04-07 08:14:05.351729',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1089,'2011-04-07 08:15:06.134428',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1090,'2011-04-07 08:15:53.593931',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1091,'2011-04-07 08:16:20.878150',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1092,'2011-04-07 08:16:37.394579',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1093,'2011-04-07 08:19:32.114389',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1094,'2011-04-07 08:21:58.622398',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1095,'2011-04-07 08:22:43.113908',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1096,'2011-04-07 08:24:01.280750',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1097,'2011-04-07 08:25:51.029458',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1098,'2011-04-07 08:29:28.741043',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1099,'2011-04-07 08:37:27.479192',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1100,'2011-04-09 18:18:32.933418',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1101,'2011-04-09 22:47:21.035454',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1102,'2011-04-09 22:56:37.982115',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1103,'2011-04-09 23:00:16.613615',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1104,'2011-04-09 23:13:35.622704',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1105,'2011-04-09 23:16:07.596169',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1106,'2011-04-09 23:16:57.027662',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1107,'2011-04-09 23:20:19.543524',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1108,'2011-04-09 23:24:12.946585',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1109,'2011-04-09 23:28:15.924440',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1110,'2011-04-09 23:31:06.824952',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1111,'2011-04-09 23:33:10.320297',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1112,'2011-04-09 23:34:50.387189',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1113,'2011-04-09 23:37:59.961137',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1114,'2011-04-09 23:38:40.989769',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1115,'2011-04-09 23:39:57.428416',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1116,'2011-04-09 23:40:56.415391',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1117,'2011-04-09 23:42:00.620648',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1118,'2011-04-09 23:42:49.283435',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1119,'2011-04-09 23:43:16.567351',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1120,'2011-04-09 23:45:14.173408',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1121,'2011-04-09 23:49:22.270574',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1122,'2011-04-09 23:52:23.735469',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1123,'2011-04-09 23:56:27.652940',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1124,'2011-04-10 00:06:00.451241',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1125,'2011-04-10 00:07:18.963406',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1126,'2011-04-10 00:08:38.662536',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1127,'2011-04-10 00:11:05.990396',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1128,'2011-04-10 00:17:57.196115',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1129,'2011-04-10 00:22:16.448856',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1130,'2011-04-10 00:23:40.653458',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1131,'2011-04-10 00:31:18.720326',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1132,'2011-04-10 00:35:31.073043',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1133,'2011-04-10 00:37:01.899576',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1134,'2011-04-10 00:38:33.389538',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1135,'2011-04-10 00:43:38.368881',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1136,'2011-04-10 00:45:07.164450',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1137,'2011-04-10 00:47:23.657166',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1138,'2011-04-10 00:48:30.079344',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1139,'2011-04-10 00:49:52.863627',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1140,'2011-04-10 00:52:15.512740',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1141,'2011-04-10 00:55:48.820456',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1142,'2011-04-10 00:57:54.281011',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1143,'2011-04-10 01:04:54.975388',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1144,'2011-04-10 01:07:45.860150',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1145,'2011-04-10 01:09:26.136777',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1146,'2011-04-10 01:11:15.260603',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1147,'2011-04-10 01:12:10.995750',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1148,'2011-04-10 01:13:01.262158',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1149,'2011-04-10 01:15:05.611628',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1150,'2011-04-10 01:17:08.877187',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1151,'2011-04-10 01:18:22.106238',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1152,'2011-04-10 01:23:40.501100',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1153,'2011-04-10 01:24:42.496438',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1154,'2011-04-10 01:26:54.959875',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1155,'2011-04-10 01:29:04.696371',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1156,'2011-04-10 07:34:52.241121',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1157,'2011-04-10 07:41:04.656162',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1158,'2011-04-10 07:44:14.512802',5,9,'31','/support/raffle/thanks/ -- Thank You For Your Support',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1159,'2011-04-11 13:36:55.250982',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1160,'2011-04-12 20:05:05.921078',5,9,'36','/composer_competition/faq/ -- Composer Competition FAQ',1,'');
INSERT INTO "django_admin_log" VALUES(1161,'2011-04-12 20:08:57.956294',5,9,'36','/composer_competition/faq/ -- Composer Competition FAQ',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1162,'2011-04-12 20:10:50.727217',5,9,'36','/composer_competition/faq/ -- Composer Competition FAQ',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1163,'2011-04-12 20:11:51.785647',5,9,'36','/composer_competition/faq/ -- Composer Competition FAQ',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1164,'2011-04-12 20:22:31.162374',5,9,'36','/composer_competition/faq/ -- Composer Competition FAQ',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1165,'2011-04-12 20:27:14.657868',5,9,'36','/composer_competition/faq/ -- Composer Competition FAQ',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1166,'2011-04-13 20:28:14.378799',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1167,'2011-04-13 20:28:52.923766',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1168,'2011-04-13 20:31:10.223371',5,9,'31','/support/raffle/thanks/ -- Thank You For Your Support',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1169,'2011-04-19 21:56:11.760201',5,9,'36','/composer_competition/faq/ -- Composer Competition FAQ',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1170,'2011-04-19 21:58:10.474527',5,9,'36','/composer_competition/faq/ -- Composer Competition FAQ',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1171,'2011-04-19 22:28:07.498975',5,9,'36','/composer_competition/faq/ -- Composer Competition FAQ',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1172,'2011-04-19 22:51:13.816489',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',1,'');
INSERT INTO "django_admin_log" VALUES(1173,'2011-04-19 22:52:26.940851',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1174,'2011-04-19 22:54:10.317683',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1175,'2011-04-19 22:56:05.368575',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1176,'2011-04-19 22:58:13.329607',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1177,'2011-04-19 22:58:51.340101',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1178,'2011-04-19 23:00:29.594757',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1179,'2011-04-19 23:01:50.288566',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1180,'2011-04-19 23:03:57.803162',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1181,'2011-04-19 23:04:43.293175',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1182,'2011-04-19 23:05:48.724637',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1183,'2011-04-19 23:06:06.357267',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1184,'2011-04-19 23:07:35.517630',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1185,'2011-04-19 23:08:50.251307',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1186,'2011-04-20 00:08:38.777897',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1187,'2011-04-20 00:09:40.852607',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1188,'2011-04-20 00:10:13.078706',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1189,'2011-04-20 00:13:27.655150',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1190,'2011-04-20 00:14:15.711547',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1191,'2011-04-20 00:22:32.561182',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1192,'2011-04-20 00:23:11.280123',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1193,'2011-04-20 00:23:46.945238',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1194,'2011-04-20 00:24:24.305430',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1195,'2011-04-20 00:24:55.277138',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1196,'2011-04-20 00:27:56.099720',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1197,'2011-04-20 00:29:17.474442',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1198,'2011-04-20 00:31:20.347286',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1199,'2011-04-20 00:31:34.058762',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1200,'2011-04-20 00:32:13.471540',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1201,'2011-04-20 00:32:24.325025',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1202,'2011-04-20 00:36:02.696802',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1203,'2011-04-20 00:36:45.624698',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1204,'2011-04-20 00:40:31.563259',5,9,'37','/test/composer_competition/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1205,'2011-04-20 01:25:21.327039',5,9,'8','/composer_competition/ -- Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1206,'2011-04-20 01:26:58.805424',5,9,'38','/composer_competition/past_winners/ -- American Composer Competition &mdash; Past Winners',1,'');
INSERT INTO "django_admin_log" VALUES(1207,'2011-04-20 01:27:45.346409',5,9,'38','/composer_competition/past_winners/ -- American Composer Competition &mdash; Past Winners',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1208,'2011-04-20 01:31:13.331502',5,9,'8','/composer_competition/ -- Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1209,'2011-04-20 01:31:50.310726',5,9,'8','/composer_competition/ -- Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1210,'2011-04-20 01:33:26.996399',5,9,'8','/composer_competition/ -- Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1211,'2011-04-20 01:33:44.506694',5,9,'37','/composer_competition/guidelines/ -- 2011 American Composer Competition',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1212,'2011-04-20 01:35:18.173139',5,9,'8','/composer_competition/ -- Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1213,'2011-04-20 01:37:18.736179',5,9,'8','/composer_competition/ -- Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1214,'2011-04-20 01:37:37.315076',5,9,'8','/composer_competition/ -- Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1215,'2011-04-20 01:41:23.145021',5,9,'37','/composer_competition/guidelines/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1216,'2011-04-20 01:46:02.582361',5,9,'8','/composer_competition/ -- Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1217,'2011-04-20 01:46:45.844168',5,9,'8','/composer_competition/ -- Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1218,'2011-04-20 01:48:47.419610',5,9,'37','/composer_competition/guidelines/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1219,'2011-04-27 14:01:36.240556',2,9,'25','/about_the_orchestra/ -- About The Orchestra',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1220,'2011-04-27 17:44:06.083765',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1221,'2011-04-30 06:55:52.961877',5,9,'33','/test/raffle/ -- Columbia Orchestra Spring Raffle',3,'');
INSERT INTO "django_admin_log" VALUES(1222,'2011-04-30 07:03:41.490092',5,9,'39','/test/raffle/ -- Test Raffle Order Form',1,'');
INSERT INTO "django_admin_log" VALUES(1223,'2011-04-30 07:05:34.520197',5,9,'39','/test/raffle/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1224,'2011-04-30 07:06:11.775140',5,9,'39','/test/raffle/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1225,'2011-04-30 07:35:00.824152',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1226,'2011-05-01 17:22:01.129198',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1227,'2011-05-01 17:22:37.875224',3,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1228,'2011-05-01 17:23:12.349016',3,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1229,'2011-05-01 21:59:12.411487',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1230,'2011-05-01 22:01:58.951841',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1231,'2011-05-01 22:02:21.300314',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1232,'2011-05-01 22:04:16.491745',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1233,'2011-05-01 22:07:08.519990',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1234,'2011-05-01 22:08:30.429769',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1235,'2011-05-01 22:08:56.797125',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1236,'2011-05-01 22:10:39.236900',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1237,'2011-05-01 22:10:53.322664',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1238,'2011-05-01 22:11:23.001422',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1239,'2011-05-01 22:14:05.739330',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1240,'2011-05-01 22:20:48.754020',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1241,'2011-05-01 22:21:32.855185',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1242,'2011-05-01 22:28:06.535093',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1243,'2011-05-01 22:28:36.038112',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1244,'2011-05-01 22:30:08.462870',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1245,'2011-05-01 22:30:30.286940',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1246,'2011-05-01 22:32:26.252695',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1247,'2011-05-01 22:32:52.419154',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1248,'2011-05-01 22:35:27.056358',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1249,'2011-05-01 22:47:42.286308',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1250,'2011-05-01 22:48:43.536858',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1251,'2011-05-01 22:50:25.607136',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1252,'2011-05-01 22:51:16.168974',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1253,'2011-05-01 22:55:27.441972',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1254,'2011-05-01 23:01:37.288158',5,9,'39','/test/raffle/order/ -- Test Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1255,'2011-05-01 23:04:49.750495',5,9,'39','/test/raffle/order/ -- Test Combined Order Form',2,'Changed title.');
INSERT INTO "django_admin_log" VALUES(1256,'2011-05-01 23:13:30.299960',5,9,'39','/test/raffle/order/ -- Test Combined Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1257,'2011-05-01 23:24:09.519118',5,9,'39','/test/order/ -- Test Combined Order Form',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1258,'2011-05-02 08:22:10.647326',5,9,'40','/test/donate -- test donate page',1,'');
INSERT INTO "django_admin_log" VALUES(1259,'2011-05-02 08:22:32.583842',5,9,'40','/test/donate/ -- test donate page',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1260,'2011-05-02 08:23:49.665857',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1261,'2011-05-02 08:24:51.823394',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1262,'2011-05-02 08:29:27.411161',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1263,'2011-05-02 08:34:45.492773',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1264,'2011-05-02 08:35:20.212788',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1265,'2011-05-02 08:36:12.278390',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1266,'2011-05-02 08:39:11.659141',5,9,'39','/test/order/ -- Test Combined Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1267,'2011-05-02 08:39:52.230747',5,9,'39','/test/order/ -- Test Combined Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1268,'2011-05-02 08:42:06.304576',5,9,'39','/test/order/ -- Test Combined Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1269,'2011-05-02 08:42:51.381611',5,9,'39','/test/order/ -- Test Combined Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1270,'2011-05-02 08:43:29.049522',5,9,'39','/test/order/ -- Test Combined Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1271,'2011-05-02 08:45:46.982065',5,9,'39','/test/order/ -- Test Combined Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1272,'2011-05-02 08:46:07.339044',5,9,'39','/test/order/ -- Test Combined Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1273,'2011-05-02 08:46:32.416391',5,9,'39','/test/order/ -- Test Combined Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1274,'2011-05-02 08:46:50.261595',5,9,'39','/test/order/ -- Test Combined Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1275,'2011-05-02 08:46:58.822330',5,9,'39','/test/order/ -- Test Combined Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1276,'2011-05-02 08:48:02.684040',5,9,'39','/test/order/ -- Test Combined Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1277,'2011-05-02 08:48:23.414533',5,9,'39','/test/order/ -- Test Combined Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1278,'2011-05-02 08:50:47.751729',5,9,'39','/test/order/ -- Test Combined Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1279,'2011-05-02 08:54:27.780393',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1280,'2011-05-02 08:56:58.600016',5,9,'39','/test/order/ -- Test Combined Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1281,'2011-05-02 09:02:07.573971',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1282,'2011-05-02 09:06:14.013152',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1283,'2011-05-02 09:07:14.690504',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1284,'2011-05-02 09:12:29.524474',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1285,'2011-05-05 07:01:27.056996',5,9,'37','/composer_competition/guidelines/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1286,'2011-05-05 07:23:27.185238',5,9,'37','/composer_competition/guidelines/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1287,'2011-05-05 07:29:29.978965',5,9,'37','/composer_competition/guidelines/ -- 2011 American Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1288,'2011-05-06 01:55:44.160280',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed title and content.');
INSERT INTO "django_admin_log" VALUES(1289,'2011-05-06 01:56:38.793656',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1290,'2011-05-06 01:57:35.206005',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1291,'2011-05-06 01:58:54.961751',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1292,'2011-05-06 02:01:20.525437',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1293,'2011-05-06 02:02:48.646356',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1294,'2011-05-06 02:03:17.248753',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1295,'2011-05-06 02:06:07.685286',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1296,'2011-05-06 02:11:30.689733',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1297,'2011-05-06 02:11:49.498825',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1298,'2011-05-06 02:14:41.046768',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1299,'2011-05-06 02:16:46.598708',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1300,'2011-05-06 02:17:07.332391',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1301,'2011-05-06 02:18:16.347237',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1302,'2011-05-06 02:20:43.575101',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1303,'2011-05-06 02:21:19.843388',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1304,'2011-05-06 02:23:05.959024',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1305,'2011-05-06 02:25:34.283439',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1306,'2011-05-06 02:25:53.861957',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1307,'2011-05-06 02:26:12.791271',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1308,'2011-05-06 02:26:49.012050',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1309,'2011-05-06 02:27:25.924928',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1310,'2011-05-06 02:28:12.308677',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1311,'2011-05-06 02:32:23.279988',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1312,'2011-05-06 02:34:23.757511',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1313,'2011-05-06 02:35:17.093106',5,9,'39','/test/order/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1314,'2011-05-06 02:35:39.533103',5,9,'39','/test/donate/form/ -- Online Donation Form',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1315,'2011-05-06 02:36:52.139769',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1316,'2011-05-06 02:37:43.143921',5,9,'39','/test/donate/form/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1317,'2011-05-06 02:39:01.755194',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1318,'2011-05-06 02:39:35.656422',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1319,'2011-05-06 02:42:19.067274',5,9,'39','/test/donate/form/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1320,'2011-05-06 02:42:45.202562',5,9,'39','/test/donate/form/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1321,'2011-05-06 02:44:57.427277',5,9,'39','/test/donate/form/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1322,'2011-05-06 02:45:43.115705',5,9,'39','/test/donate/form/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1323,'2011-05-06 02:45:54.546059',5,9,'39','/test/donate/form/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1324,'2011-05-09 10:26:07.017534',2,12,'177','Radiohead - Harry Patch (In Memory Of)',1,'');
INSERT INTO "django_admin_log" VALUES(1325,'2011-05-09 10:27:39.644771',2,16,'16','Creation and Destruction',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(1326,'2011-05-10 07:54:13.812845',5,9,'39','/test/donate/form/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1327,'2011-05-10 07:54:34.934547',5,9,'39','/test/donate/form/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1328,'2011-05-10 07:56:21.629335',5,9,'39','/test/donate/form/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1329,'2011-05-10 07:56:59.312686',5,9,'39','/test/donate/form/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1330,'2011-05-10 08:01:42.092234',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1331,'2011-05-10 08:05:55.895487',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1332,'2011-05-10 08:07:39.360200',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1333,'2011-05-10 08:08:34.826291',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1334,'2011-05-10 08:09:02.973949',5,9,'40','/test/donate/ -- test donate page',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1335,'2011-05-11 01:14:01.030937',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1336,'2011-05-11 01:14:34.703715',5,9,'41','/test/donate/thanks -- Thank You For Your Donation',1,'');
INSERT INTO "django_admin_log" VALUES(1337,'2011-05-11 01:14:51.521625',5,9,'41','/test/donate/thanks/ -- Thank You For Your Donation',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1338,'2011-05-11 01:15:54.206446',5,9,'42','/test/donate/sorry/ -- Donation Transaction Unsuccessful',1,'');
INSERT INTO "django_admin_log" VALUES(1339,'2011-05-11 01:16:56.417617',5,9,'39','/test/donate/form/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1340,'2011-05-11 01:17:12.329379',5,9,'42','/donate/sorry/ -- Donation Transaction Unsuccessful',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1341,'2011-05-11 01:17:21.484863',5,9,'41','/donate/thanks/ -- Thank You For Your Donation',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1342,'2011-05-11 01:24:06.583020',5,9,'39','/test/donate/form/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1343,'2011-05-11 01:25:39.763627',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1344,'2011-05-11 01:28:22.021220',5,9,'41','/donate/thanks/ -- Thank You For Your Donation',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1345,'2011-05-11 01:32:02.326799',5,9,'42','/donate/sorry/ -- Donation Transaction Unsuccessful',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1346,'2011-05-11 01:32:34.350547',5,9,'42','/donate/sorry/ -- Donation Transaction Unsuccessful',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1347,'2011-05-11 01:33:16.106880',5,9,'42','/donate/sorry/ -- Donation Transaction Unsuccessful',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1348,'2011-05-11 01:34:38.698317',5,9,'42','/donate/sorry/ -- Donation Transaction Unsuccessful',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1349,'2011-05-11 01:35:05.557585',5,9,'42','/donate/sorry/ -- Donation Transaction Unsuccessful',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1350,'2011-05-11 08:00:43.477636',5,9,'43','/test/tickets/ -- Concert Tickets',1,'');
INSERT INTO "django_admin_log" VALUES(1351,'2011-05-11 08:02:01.367713',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1352,'2011-05-11 08:02:36.882660',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1353,'2011-05-11 08:06:26.542493',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1354,'2011-05-11 08:06:43.297843',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1355,'2011-05-11 08:07:11.996315',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1356,'2011-05-11 08:09:50.548053',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1357,'2011-05-11 08:10:05.462966',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1358,'2011-05-11 08:11:00.569759',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1359,'2011-05-11 08:12:14.755628',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1360,'2011-05-11 08:13:54.714559',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1361,'2011-05-11 08:15:59.547834',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1362,'2011-05-11 08:16:11.389470',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1363,'2011-05-11 08:18:14.705291',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1364,'2011-05-11 08:18:26.227069',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1365,'2011-05-11 08:19:08.123572',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1366,'2011-05-11 08:19:20.169549',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1367,'2011-05-11 08:20:03.407830',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1368,'2011-05-11 08:21:04.181079',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1369,'2011-05-11 08:27:03.121174',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1370,'2011-05-11 08:28:04.679152',5,9,'43','/test/tickets/ -- Concert Tickets',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1371,'2011-05-11 08:32:10.062444',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1372,'2011-05-11 08:32:55.431703',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed title and content.');
INSERT INTO "django_admin_log" VALUES(1373,'2011-05-11 08:36:19.835368',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1374,'2011-05-11 08:38:39.497500',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1375,'2011-05-11 08:40:07.597577',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1376,'2011-05-11 08:41:37.711180',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1377,'2011-05-11 08:46:20.856119',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1378,'2011-05-11 08:49:08.403402',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1379,'2011-05-11 08:49:25.598672',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1380,'2011-05-11 08:50:34.869562',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1381,'2011-05-11 20:16:29.222278',5,9,'35','/support/raffle/ -- 2011 Spring Raffle',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1382,'2011-05-11 20:17:32.843469',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1383,'2011-05-11 20:22:45.952346',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1384,'2011-05-11 20:25:08.988272',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1385,'2011-05-11 20:30:45.690561',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1386,'2011-05-11 20:31:06.928663',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1387,'2011-05-11 20:31:22.752243',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1388,'2011-05-11 20:31:44.217033',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1389,'2011-05-11 20:34:03.055585',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1390,'2011-05-11 20:34:26.934590',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1391,'2011-05-11 20:42:14.274058',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1392,'2011-05-11 20:45:46.267721',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1393,'2011-05-11 20:46:07.126497',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1394,'2011-05-11 20:46:55.634504',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1395,'2011-05-11 20:47:29.029917',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1396,'2011-05-11 20:48:32.658292',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1397,'2011-05-11 20:48:58.331008',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1398,'2011-05-11 20:49:11.330822',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1399,'2011-05-11 20:50:54.166929',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1400,'2011-05-11 21:04:23.842588',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1401,'2011-05-11 21:05:47.599593',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1402,'2011-05-11 21:09:26.585314',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1403,'2011-05-11 21:11:11.294964',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1404,'2011-05-11 21:11:36.709320',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1405,'2011-05-11 21:15:23.051477',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1406,'2011-05-11 21:16:16.432602',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1407,'2011-05-11 21:17:00.408966',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1408,'2011-05-11 21:20:08.897511',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1409,'2011-05-11 21:23:53.477376',5,9,'43','/test/tickets/ -- Concert Tickets (Draft page)',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1410,'2011-05-11 21:29:06.006823',5,9,'39','/test/donate/form/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1411,'2011-05-11 21:31:21.170504',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed title and content.');
INSERT INTO "django_admin_log" VALUES(1412,'2011-05-11 21:33:19.601493',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1413,'2011-05-11 21:33:49.488354',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1414,'2011-05-11 21:34:41.294818',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1415,'2011-05-11 21:35:53.225006',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1416,'2011-05-11 21:37:16.787399',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1417,'2011-05-11 21:38:22.733732',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1418,'2011-05-11 22:23:28.338214',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1419,'2011-05-11 22:26:23.969578',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1420,'2011-05-11 22:29:52.458886',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1421,'2011-05-11 22:31:56.339664',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1422,'2011-05-11 22:33:14.550908',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1423,'2011-05-11 22:36:05.765128',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1424,'2011-05-11 22:43:43.139793',5,9,'44','/tickets/thanks/ -- Thank You',1,'');
INSERT INTO "django_admin_log" VALUES(1425,'2011-05-11 22:44:00.489716',5,9,'44','/tickets/thanks/ -- Thank You',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1426,'2011-05-11 22:44:40.699622',5,9,'43','/test/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1427,'2011-05-11 22:49:15.049372',5,9,'45','/tickets/sorry/ -- Ticket purchase not successful',1,'');
INSERT INTO "django_admin_log" VALUES(1428,'2011-05-11 22:51:17.595419',5,9,'15','/old/tickets/ -- Tickets',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1429,'2011-05-11 22:51:37.393342',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1430,'2011-05-11 22:56:05.865136',5,9,'5','/old/donate/ -- Donate',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1431,'2011-05-11 22:56:38.654192',5,9,'40','/donate/ -- Donations',2,'Changed url and title.');
INSERT INTO "django_admin_log" VALUES(1432,'2011-05-11 22:56:54.674140',5,9,'40','/donate/ -- Donations',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1433,'2011-05-11 22:57:29.263485',5,9,'39','/donate/form/ -- Online Donation Form',2,'Changed url and content.');
INSERT INTO "django_admin_log" VALUES(1434,'2011-05-11 23:19:11.955858',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1435,'2011-05-11 23:50:05.022813',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1436,'2011-05-11 23:50:22.198209',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1437,'2011-05-11 23:53:26.261682',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1438,'2011-05-11 23:53:52.558891',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1439,'2011-05-11 23:54:15.934669',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1440,'2011-05-12 00:03:15.760600',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1441,'2011-05-13 21:52:33.203074',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1442,'2011-05-13 21:53:50.061705',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1443,'2011-05-13 21:54:29.636061',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1444,'2011-05-13 21:55:06.381391',5,9,'39','/donate/form/ -- Online Donation Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1445,'2011-05-13 23:29:21.701834',5,21,'3','News object',1,'');
INSERT INTO "django_admin_log" VALUES(1446,'2011-05-13 23:29:38.716999',5,21,'3','News object',2,'Changed display_title and body.');
INSERT INTO "django_admin_log" VALUES(1447,'2011-05-13 23:30:47.940082',5,21,'3','News object',2,'Changed body.');
INSERT INTO "django_admin_log" VALUES(1448,'2011-05-13 23:31:34.816939',5,21,'3','News object',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1449,'2011-05-13 23:34:13.949097',5,21,'3','News object',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1450,'2011-05-14 09:43:25.774852',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1451,'2011-05-14 09:44:30.335105',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1452,'2011-05-14 09:45:11.959755',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1453,'2011-05-14 09:50:46.140915',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1454,'2011-05-14 09:51:01.166517',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1455,'2011-05-14 09:51:14.521048',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1456,'2011-05-14 09:59:42.057178',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1457,'2011-05-14 10:00:58.520901',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1458,'2011-05-14 10:02:09.832061',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1459,'2011-05-14 10:02:59.803236',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1460,'2011-05-14 10:06:44.593879',5,16,'19','Chamber Concert Three: The Light and the Dark',2,'Changed pieces and soloists.');
INSERT INTO "django_admin_log" VALUES(1461,'2011-05-14 10:12:54.085313',5,16,'19','Chamber Concert Three: The Light and the Dark',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(1462,'2011-05-14 10:17:01.436082',5,16,'19','Chamber Concert Three: The Light and the Dark',2,'Changed date.');
INSERT INTO "django_admin_log" VALUES(1463,'2011-05-14 10:17:15.145058',5,16,'19','Chamber Concert Three: The Light and the Dark',2,'Changed date.');
INSERT INTO "django_admin_log" VALUES(1464,'2011-05-14 10:21:03.120372',5,16,'19','Chamber Concert Three: The Light and the Dark',2,'Changed date.');
INSERT INTO "django_admin_log" VALUES(1465,'2011-05-14 10:21:17.895106',5,16,'19','Chamber Concert Three: The Light and the Dark',2,'Changed date.');
INSERT INTO "django_admin_log" VALUES(1466,'2011-05-14 10:22:16.012307',5,16,'19','Chamber Concert Three: The Light and the Dark',2,'Changed date.');
INSERT INTO "django_admin_log" VALUES(1467,'2011-05-14 10:22:28.561371',5,16,'83','Chamber Concert Three: The Light and the Dark',1,'');
INSERT INTO "django_admin_log" VALUES(1468,'2011-05-14 10:23:28.599363',5,16,'19','Chamber Concert Three: The Light and the Dark',3,'');
INSERT INTO "django_admin_log" VALUES(1469,'2011-05-16 17:50:29.525643',5,9,'24','/program_notes_20110326/ -- Program Notes',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1470,'2011-05-16 17:50:39.077013',5,9,'46','/program_notes/ -- Program Notes',1,'');
INSERT INTO "django_admin_log" VALUES(1471,'2011-05-16 18:11:45.071849',5,11,'61','William Davenport',1,'');
INSERT INTO "django_admin_log" VALUES(1472,'2011-05-16 18:14:32.170688',5,16,'16','Creation and Destruction',2,'Changed pieces and soloists.');
INSERT INTO "django_admin_log" VALUES(1473,'2011-05-16 18:15:56.755688',5,16,'16','Creation and Destruction',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(1474,'2011-05-16 18:18:24.290347',5,11,'61','William Davenport',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(1475,'2011-05-16 22:39:26.254405',5,9,'40','/donate/ -- Donations',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1476,'2011-05-16 22:46:24.938781',5,9,'40','/donate/ -- Donations',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1477,'2011-05-16 22:48:28.262840',5,11,'61','William Davenport',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(1478,'2011-05-16 22:48:49.820364',5,16,'16','Creation and Destruction',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(1479,'2011-05-16 22:50:47.532530',5,11,'61','William Davenport',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(1480,'2011-05-16 22:51:59.093167',5,11,'61','William Davenport',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(1481,'2011-05-16 23:28:11.574756',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1482,'2011-05-16 23:31:14.554599',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1483,'2011-05-16 23:41:21.421705',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1484,'2011-05-16 23:42:29.258103',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1485,'2011-05-16 23:43:36.921114',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1486,'2011-05-16 23:43:56.601784',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1487,'2011-05-17 19:48:57.790507',5,9,'14','/old/about_the_orchestra_pre20101213/ -- About The Orchestra',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1488,'2011-05-17 19:49:11.121353',5,9,'27','/old/advertise_pre20101224/ -- Advertise',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1489,'2011-05-17 19:49:28.027348',5,9,'16','/old/partners_pre20101204/ -- Partners & Sponsors',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1490,'2011-05-17 19:50:52.500554',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1491,'2011-05-28 10:22:04.867502',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1492,'2011-05-28 10:22:48.052302',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1493,'2011-05-28 10:23:46.086674',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1494,'2011-05-28 10:24:15.537305',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1495,'2011-05-28 11:28:20.658023',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1496,'2011-05-28 11:35:31.459166',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1497,'2011-06-04 10:34:15.149245',5,16,'84','Sunset Serenade Concert in the Park',1,'');
INSERT INTO "django_admin_log" VALUES(1498,'2011-06-04 10:36:41.528126',5,15,'9','Centennial Park',1,'');
INSERT INTO "django_admin_log" VALUES(1499,'2011-06-04 10:36:59.874931',5,16,'84','Sunset Serenade Concert in the Park',2,'Changed location.');
INSERT INTO "django_admin_log" VALUES(1500,'2011-06-04 10:44:47.402962',5,16,'84','Sunset Serenade Concert in the Park',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(1501,'2011-06-04 11:19:47.567753',5,15,'9','Centennial Park',2,'Changed address.');
INSERT INTO "django_admin_log" VALUES(1502,'2011-06-04 11:22:59.057340',5,15,'9','Centennial Park',2,'Changed address.');
INSERT INTO "django_admin_log" VALUES(1503,'2011-06-04 12:02:21.993146',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1504,'2011-06-04 12:02:46.128846',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1505,'2011-06-04 12:05:03.025764',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1506,'2011-06-04 12:05:48.015006',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1507,'2011-06-04 12:06:51.983150',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1508,'2011-06-04 12:07:28.511779',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1509,'2011-06-04 12:08:24.686379',5,9,'43','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1510,'2011-06-04 12:10:07.822537',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1511,'2011-06-04 12:10:35.823338',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1512,'2011-06-04 12:11:24.588182',5,9,'34','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1513,'2011-06-04 12:12:47.261189',5,9,'34','/old/support/raffle/order_pre20110604/ -- 2011 Spring Raffle Order Form',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1514,'2011-06-04 12:13:41.777579',5,9,'47','/support/raffle/order/ -- 2011 Spring Raffle Order Form',1,'');
INSERT INTO "django_admin_log" VALUES(1515,'2011-06-04 12:15:12.659950',5,9,'47','/support/raffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1516,'2011-06-04 12:16:57.898682',5,21,'3','News object',2,'Changed title and body.');
INSERT INTO "django_admin_log" VALUES(1517,'2011-06-04 12:19:03.663702',5,21,'3','News object',2,'Changed body.');
INSERT INTO "django_admin_log" VALUES(1518,'2011-06-04 12:19:34.755488',5,21,'3','News object',2,'Changed unpost_date.');
INSERT INTO "django_admin_log" VALUES(1519,'2011-06-04 12:30:04.886602',5,21,'3','News object',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1520,'2011-06-04 12:33:17.060260',3,9,'35','/old/2011SpringRaffle/ -- 2011 Spring Raffle',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1521,'2011-06-04 12:33:41.636286',3,9,'47','/old/2011SpringRaffle/order/ -- 2011 Spring Raffle Order Form',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1522,'2011-06-04 12:34:06.716260',3,9,'32','/old/2011SpringRaffle/sorry/ -- Online Raffle Order Not Successful',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1523,'2011-06-04 12:34:25.021594',3,9,'31','/old/2011SpringRaffle/thanks/ -- Thank You For Your Support',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1524,'2011-06-04 12:37:50.106853',5,21,'3','News object',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1525,'2011-06-04 12:38:12.303766',5,21,'3','News object',3,'');
INSERT INTO "django_admin_log" VALUES(1526,'2011-06-05 01:09:18.610664',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1527,'2011-06-05 08:56:35.730942',2,16,'84','Sunset Serenade Concert in the Park',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(1528,'2011-06-06 20:13:10.726024',2,16,'84','Sunset Serenade Concert in the Park',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(1529,'2011-06-06 20:36:06.951392',5,14,'2','2010-2011 Season',2,'Changed enddate.');
INSERT INTO "django_admin_log" VALUES(1530,'2011-06-06 20:39:06.062695',5,11,'62','Jason Love, conductor',1,'');
INSERT INTO "django_admin_log" VALUES(1531,'2011-06-06 20:39:27.943302',5,16,'84','Sunset Serenade Concert in the Park',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(1532,'2011-06-06 20:53:18.347532',5,16,'84','Sunset Serenade Concert in the Park',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(1533,'2011-06-06 20:57:20.271520',5,16,'84','Sunset Serenade Concert in the Park',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(1534,'2011-06-06 20:58:24.070113',5,11,'63','columbia orchestra',1,'');
INSERT INTO "django_admin_log" VALUES(1535,'2011-06-06 20:58:52.416632',5,16,'84','Sunset Serenade Concert in the Park',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(1536,'2011-06-06 20:59:30.492645',5,11,'63','The Columbia Orchestra',2,'Changed name.');
INSERT INTO "django_admin_log" VALUES(1537,'2011-06-07 11:37:25.638940',2,13,'94','Copland, Aaron ',1,'');
INSERT INTO "django_admin_log" VALUES(1538,'2011-06-07 11:37:34.341762',2,12,'178','Copland, Aaron  - Fanfare for the Common Man',1,'');
INSERT INTO "django_admin_log" VALUES(1539,'2011-06-07 11:37:56.102052',2,12,'179','Higdon, Jennifer  - Percussion Concerto',1,'');
INSERT INTO "django_admin_log" VALUES(1540,'2011-06-07 11:38:33.216299',2,12,'180','Verdi, Giuseppe  - Stabat Mater',1,'');
INSERT INTO "django_admin_log" VALUES(1541,'2011-06-07 11:39:29.180184',2,13,'95','Hailstork, Adolphus ',1,'');
INSERT INTO "django_admin_log" VALUES(1542,'2011-06-07 11:39:34.089872',2,12,'181','Hailstork, Adolphus  - I Will Lift Up Mine Eyes',1,'');
INSERT INTO "django_admin_log" VALUES(1543,'2011-06-07 11:39:57.173493',2,12,'182','Mahler, Gustav  - Adagio from Symphony No. 10',1,'');
INSERT INTO "django_admin_log" VALUES(1544,'2011-06-07 11:40:32.911358',2,12,'183','Copland, Aaron  - Applachian Spring',1,'');
INSERT INTO "django_admin_log" VALUES(1545,'2011-06-07 11:41:01.419435',2,12,'184','Dvořák, Antonín Leopold - Cello Concerto',1,'');
INSERT INTO "django_admin_log" VALUES(1546,'2011-06-07 11:42:55.495765',2,13,'24','Dvořák, Antonín ',2,'Changed middle_name. Changed title for piece "Dvořák, Antonín  - Cello Concerto in B Minor, Op. 101".');
INSERT INTO "django_admin_log" VALUES(1547,'2011-06-07 11:43:48.840719',2,12,'184','Dvořák, Antonín  - Cello Concerto',2,'Changed title.');
INSERT INTO "django_admin_log" VALUES(1548,'2011-06-07 11:44:13.708665',2,12,'185','Tchaikovsky, Pyotr Ilyich - Symphony No. 5 in E Minor',1,'');
INSERT INTO "django_admin_log" VALUES(1549,'2011-06-07 11:44:55.830378',2,12,'186','Beethoven, Ludwig van - Leonore Overture No. 3',1,'');
INSERT INTO "django_admin_log" VALUES(1550,'2011-06-07 11:46:20.004422',2,13,'96','Zhou Tian',1,'');
INSERT INTO "django_admin_log" VALUES(1551,'2011-06-07 11:46:25.703175',2,12,'187','Zhou Tian - A Thousand Years of Good Prayers',1,'');
INSERT INTO "django_admin_log" VALUES(1552,'2011-06-07 11:48:21.607537',2,12,'188','Márquez, Arturo  - Conga del Fuego',1,'');
INSERT INTO "django_admin_log" VALUES(1553,'2011-06-07 11:55:57.250542',2,14,'11','2011-2012 Season',1,'');
INSERT INTO "django_admin_log" VALUES(1554,'2011-06-17 04:01:07.386849',5,9,'48','/beta/tickets/ -- Concert Tickets',1,'');
INSERT INTO "django_admin_log" VALUES(1555,'2011-06-17 04:06:05.396153',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1556,'2011-06-17 04:06:55.431625',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1557,'2011-06-17 04:08:29.147965',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1558,'2011-06-17 04:08:50.029626',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1559,'2011-06-17 04:11:20.519810',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1560,'2011-06-17 04:11:56.990992',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1561,'2011-06-17 04:13:49.565813',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1562,'2011-06-17 04:14:50.394986',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1563,'2011-06-17 04:15:04.663833',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1564,'2011-06-17 04:15:23.383250',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1565,'2011-06-17 04:16:02.030079',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1566,'2011-06-17 04:16:57.547937',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1567,'2011-06-17 04:18:30.866550',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1568,'2011-06-17 04:19:48.966821',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1569,'2011-06-17 04:21:26.165459',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1570,'2011-06-17 04:21:52.762179',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1571,'2011-06-17 04:22:17.402843',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1572,'2011-06-17 04:23:41.456433',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1573,'2011-06-17 04:25:19.225775',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1574,'2011-06-17 04:28:48.608614',5,9,'48','/beta/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1575,'2011-06-17 04:29:32.771029',5,9,'43','/old/tickets_pre20110617/ -- Concert Tickets',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1576,'2011-06-17 04:29:40.753386',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1577,'2011-06-17 04:32:29.082812',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1578,'2011-06-17 04:39:11.118138',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1579,'2011-06-17 04:42:24.578231',5,9,'44','/tickets/thanks/ -- Thank You',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1580,'2011-06-17 04:44:22.794242',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1581,'2011-06-17 04:51:31.978396',5,16,'85','Classical Concert 1',1,'');
INSERT INTO "django_admin_log" VALUES(1582,'2011-06-17 04:53:38.114231',5,16,'86','Classical Concert 2',1,'');
INSERT INTO "django_admin_log" VALUES(1583,'2011-06-17 04:58:11.698502',5,16,'87','Classical Concert 3',1,'');
INSERT INTO "django_admin_log" VALUES(1584,'2011-06-17 05:01:23.486258',5,12,'189','Saint-Saens, Camille  - Carnivals of the Animals',1,'');
INSERT INTO "django_admin_log" VALUES(1585,'2011-06-17 05:04:08.758509',5,16,'88','Young People''s Concert',1,'');
INSERT INTO "django_admin_log" VALUES(1586,'2011-06-17 05:04:24.838518',5,16,'88','Young People''s Concert',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(1587,'2011-06-17 05:05:17.830891',5,16,'85','Classical Concert 1',2,'Changed slug.');
INSERT INTO "django_admin_log" VALUES(1588,'2011-06-17 05:05:33.921278',5,16,'86','Classical Concert 2',2,'Changed slug.');
INSERT INTO "django_admin_log" VALUES(1589,'2011-06-17 05:05:44.908974',5,16,'87','Classical Concert 3',2,'Changed slug and pieces.');
INSERT INTO "django_admin_log" VALUES(1590,'2011-06-17 05:07:18.989560',5,16,'89','Symphonic Pops',1,'');
INSERT INTO "django_admin_log" VALUES(1591,'2011-06-17 05:08:44.338412',5,12,'190','Mozart, Wolfgang Amadeus - Overture to Don Giovanni',1,'');
INSERT INTO "django_admin_log" VALUES(1592,'2011-06-17 05:10:25.421077',5,16,'90','Classical Concert 4',1,'');
INSERT INTO "django_admin_log" VALUES(1593,'2011-06-19 22:57:27.223786',2,19,'121','Kate  Kerr',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(1594,'2011-06-19 22:59:40.567961',2,19,'41','Julie  Schwartz',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(1595,'2011-06-19 23:00:30.014500',2,19,'77','Norma  Hooks',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(1596,'2011-06-19 23:00:54.512063',2,19,'118','Jessica  Liberati',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(1597,'2011-06-19 23:01:26.433297',2,19,'116','Doug  Dean',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(1598,'2011-06-19 23:02:00.250360',2,19,'12','Matthew  DeBeal',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(1599,'2011-06-19 23:02:34.354634',2,19,'40','Margaret  Pooler',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(1600,'2011-06-19 23:03:05.636734',2,19,'117','Erin  Hedden',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(1601,'2011-06-19 23:03:53.592344',2,19,'111','Brandi   Healey',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(1602,'2011-06-19 23:04:33.597986',2,19,'22','Tim  Topoleski',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(1603,'2011-06-19 23:05:21.945974',2,19,'32','Tanesha  Mitchell',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(1604,'2011-06-19 23:06:01.679230',2,19,'5','Sarah  Prindiville',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(1605,'2011-06-19 23:06:40.229721',2,19,'120','Esther Wagner Yuan',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(1606,'2011-06-19 23:07:11.340157',2,19,'71','Karen  Hopkinson',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(1607,'2011-06-19 23:48:30.797712',2,16,'85','Higdon and Tchaikovsky',2,'Changed name, description and slug.');
INSERT INTO "django_admin_log" VALUES(1608,'2011-06-19 23:49:42.857626',2,16,'85','Higdon and Tchaikovsky',2,'Changed slug.');
INSERT INTO "django_admin_log" VALUES(1609,'2011-06-19 23:58:47.031675',2,16,'86','Final Words',2,'Changed name, description and slug.');
INSERT INTO "django_admin_log" VALUES(1610,'2011-06-19 23:59:57.159671',2,16,'86','Final Words',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(1611,'2011-06-20 00:06:23.244626',2,16,'87','American Inspirations',2,'Changed name and description.');
INSERT INTO "django_admin_log" VALUES(1612,'2011-06-20 00:08:05.823195',2,12,'191','  - - Winner of the American Composer Competition',1,'');
INSERT INTO "django_admin_log" VALUES(1613,'2011-06-20 00:08:22.516262',2,12,'191','  - Winner of the American Composer Competition',2,'Changed title.');
INSERT INTO "django_admin_log" VALUES(1614,'2011-06-20 00:09:11.584989',2,12,'191','  - Winning Work from the American Composer Competition',2,'Changed title.');
INSERT INTO "django_admin_log" VALUES(1615,'2011-06-20 00:10:41.071528',2,16,'87','American Inspirations',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(1616,'2011-06-20 00:11:12.231744',2,12,'183','Copland, Aaron  - Appalachian Spring',2,'Changed title.');
INSERT INTO "django_admin_log" VALUES(1617,'2011-06-20 09:21:56.841954',2,16,'85','Higdon and Tchaikovsky',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(1618,'2011-06-20 09:23:48.748324',2,16,'85','Higdon and Tchaikovsky',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(1619,'2011-06-20 09:32:03.724428',2,16,'90','Orchestral Fireworks',2,'Changed name, description, slug and pieces.');
INSERT INTO "django_admin_log" VALUES(1620,'2011-06-20 09:34:06.721770',2,16,'88','Young People''s Concert',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(1621,'2011-06-20 09:37:33.474413',2,16,'85','Higdon and Tchaikovsky',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(1622,'2011-06-20 09:40:51.721185',2,16,'86','Final Words',2,'Changed description and pieces.');
INSERT INTO "django_admin_log" VALUES(1623,'2011-06-20 09:41:41.410263',2,16,'86','Final Words',2,'Changed description and pieces.');
INSERT INTO "django_admin_log" VALUES(1624,'2011-06-20 09:46:07.826821',2,16,'87','American Inspirations',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(1625,'2011-06-20 10:59:52.947900',2,16,'84','Sunset Serenade Concert in the Park',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(1626,'2011-06-20 11:09:40.407552',2,21,'3','News object',1,'');
INSERT INTO "django_admin_log" VALUES(1627,'2011-06-20 11:10:49.744393',2,21,'3','News object',2,'Changed body.');
INSERT INTO "django_admin_log" VALUES(1628,'2011-06-20 11:12:13.572703',2,21,'3','News object',2,'Changed body.');
INSERT INTO "django_admin_log" VALUES(1629,'2011-06-20 11:14:07.390714',2,21,'3','News object',2,'Changed body.');
INSERT INTO "django_admin_log" VALUES(1630,'2011-06-20 11:16:16.487981',1,19,'120','Esther Wagner Yuan',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(1631,'2011-06-20 11:21:17.454291',2,21,'3','News object',2,'Changed body.');
INSERT INTO "django_admin_log" VALUES(1632,'2011-06-20 11:22:42.896579',2,21,'3','News object',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1633,'2011-06-20 11:24:19.764857',2,21,'3','News object',2,'Changed body.');
INSERT INTO "django_admin_log" VALUES(1634,'2011-06-20 11:43:27.177847',2,19,'53','Jonathan  Terry',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1635,'2011-06-20 11:43:46.535273',2,19,'134','Carey  Locke',1,'');
INSERT INTO "django_admin_log" VALUES(1636,'2011-06-20 11:53:20.240737',2,19,'135','Jeremy  Davis',1,'');
INSERT INTO "django_admin_log" VALUES(1637,'2011-06-20 11:53:55.155107',2,19,'56','Yoshiaki  Horiguchi',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1638,'2011-06-20 11:54:07.694866',2,19,'57','Colin  O''Bryan',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1639,'2011-06-20 11:54:34.171198',2,19,'136','Brian  Schuler',1,'');
INSERT INTO "django_admin_log" VALUES(1640,'2011-06-26 10:47:05.237850',2,19,'120','Esther Wagner Yuan',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(1641,'2011-06-27 11:44:47.669072',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1642,'2011-06-28 23:31:44.300912',5,9,'49','/old/advertise_pre20110628/ -- Advertise',1,'');
INSERT INTO "django_admin_log" VALUES(1643,'2011-06-28 23:44:01.748781',5,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1644,'2011-06-28 23:44:29.962325',5,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1645,'2011-06-28 23:45:03.538726',5,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1646,'2011-06-28 23:53:08.432182',5,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1647,'2011-06-28 23:59:07.144076',5,15,'9','Centennial Park',2,'Changed url.');
INSERT INTO "django_admin_log" VALUES(1648,'2011-07-01 21:46:39.474932',5,19,'45','Penny  Zahn',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(1649,'2011-07-04 11:22:34.035778',2,16,'90','Orchestral Fireworks',2,'Changed date and pieces.');
INSERT INTO "django_admin_log" VALUES(1650,'2011-07-04 12:02:59.317958',1,21,'3','News object',2,'Changed body.');
INSERT INTO "django_admin_log" VALUES(1651,'2011-07-08 20:59:53.402524',1,9,'13','/auditions/ -- Auditions',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1652,'2011-07-08 23:25:02.633889',5,9,'13','/auditions/ -- Auditions',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1653,'2011-07-09 00:17:51.150548',5,9,'13','/auditions/ -- Auditions',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1654,'2011-07-09 00:19:38.375984',5,9,'13','/auditions/ -- Auditions',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1655,'2011-07-09 00:21:43.152763',5,9,'13','/auditions/ -- Auditions',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1656,'2011-07-09 00:23:17.129083',5,9,'13','/auditions/ -- Auditions',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1657,'2011-07-09 00:27:11.371850',5,19,'21','Jon  Teske',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1658,'2011-07-09 00:41:04.100494',5,19,'21','Jon  Teske',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1659,'2011-07-10 19:03:44.007309',2,11,'64','Christopher Rose',1,'');
INSERT INTO "django_admin_log" VALUES(1660,'2011-07-10 19:10:02.160835',2,12,'179','Higdon, Jennifer  - Percussion Concerto',2,'Changed soloist.');
INSERT INTO "django_admin_log" VALUES(1661,'2011-07-10 19:13:10.953190',2,19,'25','Jonathan  Chang',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1662,'2011-07-10 21:21:51.983859',5,19,'21','Jon  Teske',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1663,'2011-07-10 21:22:18.075557',5,19,'118','Jessica  Liberati',2,'Changed instrument.');
INSERT INTO "django_admin_log" VALUES(1664,'2011-07-10 21:22:35.448131',5,19,'28','Heidi  Goldberg',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1665,'2011-07-10 21:22:58.851276',5,19,'29','Ariela  Haber',2,'Changed first_name.');
INSERT INTO "django_admin_log" VALUES(1666,'2011-07-10 21:23:20.531958',5,19,'120','Esther  Wagner-Yuan',2,'Changed middle_name and last_name.');
INSERT INTO "django_admin_log" VALUES(1667,'2011-07-10 21:23:32.456887',5,19,'120','Esther  Wagner-Yuan',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1668,'2011-07-10 21:24:19.394031',5,19,'2','Andrea  Aldrich',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1669,'2011-07-10 21:24:42.060285',5,19,'34','Dorothy  Elkin',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1670,'2011-07-10 21:24:54.925273',5,19,'37','Susan  Laessig',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1671,'2011-07-10 21:25:11.308563',5,19,'112','Suzanne  Sherwood',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1672,'2011-07-10 21:25:31.380411',5,19,'53','Jonathan  Terry',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1673,'2011-07-10 21:26:43.534433',5,19,'56','Yoshiaki  Horiguchi',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1674,'2011-07-10 21:27:18.190843',5,19,'66','Peggy   White',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1675,'2011-07-10 21:28:22.161155',5,19,'137','Lynda  Aldana',1,'');
INSERT INTO "django_admin_log" VALUES(1676,'2011-07-10 21:29:54.609257',5,19,'81','Melissa  Feliciano',2,'Changed instrument, second_instrument and noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1677,'2011-07-10 21:30:49.411228',5,19,'81','Melissa  Feliciano',2,'Changed second_instrument.');
INSERT INTO "django_admin_log" VALUES(1678,'2011-07-10 21:31:07.266814',5,19,'138','Melissa  Feliciano',1,'');
INSERT INTO "django_admin_log" VALUES(1679,'2011-07-10 21:32:00.882432',5,19,'80','Andrew  Delclos',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1680,'2011-07-10 21:32:09.583485',5,19,'82','Andrew  Delclos',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1681,'2011-07-11 21:10:56.253262',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1682,'2011-07-11 21:14:57.133456',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1683,'2011-07-11 21:18:31.337937',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1684,'2011-07-11 21:22:20.043385',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1685,'2011-07-11 21:22:50.750429',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1686,'2011-07-11 21:23:10.358832',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1687,'2011-07-11 21:23:43.929748',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1688,'2011-07-11 21:25:05.999341',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1689,'2011-07-11 21:25:29.006178',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1690,'2011-07-11 21:26:46.767615',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1691,'2011-07-11 21:29:07.941160',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1692,'2011-07-11 21:29:31.831710',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1693,'2011-07-11 21:33:24.213756',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1694,'2011-07-11 21:33:54.525992',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1695,'2011-07-11 21:34:53.611242',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1696,'2011-07-11 21:36:48.735230',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1697,'2011-07-11 21:37:41.371711',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1698,'2011-07-11 21:39:45.744520',5,21,'4','News object',1,'');
INSERT INTO "django_admin_log" VALUES(1699,'2011-07-11 21:40:20.322923',5,21,'4','News object',2,'Changed post_date.');
INSERT INTO "django_admin_log" VALUES(1700,'2011-07-11 21:43:28.774879',5,21,'4','News object',2,'Changed body.');
INSERT INTO "django_admin_log" VALUES(1701,'2011-07-11 21:44:37.365359',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1702,'2011-07-12 18:42:54.602812',3,9,'17','/member_schedule/ -- Member Schedule',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1703,'2011-07-12 18:47:39.246992',3,9,'17','/member_schedule/ -- Member Schedule',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1704,'2011-07-12 19:38:03.021334',3,9,'17','/member_schedule/ -- Member Schedule',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1705,'2011-07-12 19:38:24.159978',3,9,'17','/member_schedule/ -- Member Schedule',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1706,'2011-07-12 20:26:35.191796',3,9,'25','/about_the_orchestra/ -- About The Orchestra',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1707,'2011-07-12 20:28:45.688567',3,9,'25','/about_the_orchestra/ -- About The Orchestra',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1708,'2011-07-15 18:10:55.350008',5,21,'3','News object',2,'Changed body.');
INSERT INTO "django_admin_log" VALUES(1709,'2011-07-16 18:17:40.764353',5,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1710,'2011-07-16 18:17:52.258140',5,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1711,'2011-07-16 18:19:14.776632',5,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1712,'2011-07-16 18:19:36.105683',5,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1713,'2011-07-16 18:19:46.636751',3,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1714,'2011-07-16 18:20:24.897910',5,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1715,'2011-07-16 18:20:43.108494',5,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1716,'2011-07-16 18:49:00.618283',3,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1717,'2011-07-16 18:49:21.262191',3,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1718,'2011-07-16 18:49:42.686720',3,9,'26','/partners/ -- Partners & Sponsors',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1719,'2011-07-16 19:00:33.970971',3,9,'26','/partners/ -- Partners & Sponsors',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1720,'2011-07-16 21:50:57.225068',5,19,'66','Peggy   White',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1721,'2011-07-16 21:51:32.170370',5,19,'137','Lynda  Aldana',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1722,'2011-07-16 21:53:45.906016',5,19,'56','Yoshiaki  Horiguchi',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1723,'2011-07-16 21:54:07.128149',5,19,'53','Jonathan  Terry',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1724,'2011-07-16 22:03:02.522949',5,19,'112','Suzanne  Sherwood',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1725,'2011-07-16 22:03:42.375097',5,19,'37','Susan  Laessig',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1726,'2011-07-16 22:04:17.327228',5,19,'34','Dorothy  Elkin',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1727,'2011-07-16 22:08:27.548639',5,19,'28','Heidi  Goldberg',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1728,'2011-07-16 23:10:54.641079',5,9,'9','/contact_us/ -- Contact Us',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1729,'2011-07-16 23:13:01.059300',5,9,'9','/contact_us/ -- Contact Us',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1730,'2011-07-22 16:33:17.971351',1,9,'2','/audio/ -- Audio',2,'Changed registration_required.');
INSERT INTO "django_admin_log" VALUES(1731,'2011-07-22 16:34:06.046888',1,9,'2','/audio/ -- Audio',2,'Changed registration_required.');
INSERT INTO "django_admin_log" VALUES(1732,'2011-07-27 23:40:10.030374',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1733,'2011-07-27 23:49:15.951768',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1734,'2011-07-27 23:55:55.240608',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1735,'2011-07-28 00:30:47.758882',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1736,'2011-07-28 00:31:34.205203',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1737,'2011-07-28 00:39:48.132749',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1738,'2011-07-28 00:40:32.687058',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1739,'2011-07-28 00:41:02.532163',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1740,'2011-07-28 00:41:44.179139',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1741,'2011-07-28 00:44:21.380065',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1742,'2011-07-28 00:45:04.863005',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1743,'2011-07-28 00:47:15.902897',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1744,'2011-07-28 00:48:22.460599',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1745,'2011-07-28 00:49:04.756816',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1746,'2011-07-28 00:50:21.426900',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1747,'2011-07-28 00:54:54.145067',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1748,'2011-07-28 00:55:26.245889',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1749,'2011-07-28 00:55:55.272047',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1750,'2011-07-28 00:57:38.962236',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1751,'2011-07-28 00:59:00.880678',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1752,'2011-07-28 00:59:22.962469',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1753,'2011-07-28 01:05:04.728477',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1754,'2011-07-28 01:05:32.503662',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1755,'2011-07-28 01:05:58.536335',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1756,'2011-07-28 01:07:02.383102',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1757,'2011-07-28 01:07:31.565747',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1758,'2011-07-28 01:07:46.041068',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1759,'2011-07-28 01:09:35.910198',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1760,'2011-07-28 01:18:07.399583',5,9,'48','/tickets/ -- Concert Tickets',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(1761,'2011-07-28 07:22:29.903839',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1762,'2011-07-28 07:23:38.864818',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1763,'2011-07-28 07:25:26.900548',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1764,'2011-07-28 07:25:49.119526',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1765,'2011-07-28 07:34:58.655851',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1766,'2011-07-28 07:37:27.127643',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1767,'2011-07-28 07:38:00.755420',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1768,'2011-07-28 07:38:31.705829',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1769,'2011-07-28 07:40:00.658895',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1770,'2011-07-28 07:41:57.649720',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1771,'2011-07-28 07:42:47.429329',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1772,'2011-07-28 07:43:05.845379',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1773,'2011-07-28 07:44:55.850347',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1774,'2011-07-28 07:46:26.291022',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1775,'2011-07-28 07:49:05.426923',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1776,'2011-07-28 07:53:59.506389',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1777,'2011-07-28 08:02:11.990006',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1778,'2011-07-28 08:04:51.585414',5,9,'48','/tickets/ -- Concert Tickets',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1779,'2011-07-28 10:47:39.915044',2,19,'128','Tracey  Grasty',2,'Changed photo.');
INSERT INTO "django_admin_log" VALUES(1780,'2011-07-28 10:52:42.423435',2,18,'14','Horn',2,'Changed name.');
INSERT INTO "django_admin_log" VALUES(1781,'2011-07-28 23:05:51.298083',5,11,'15','Kinetics Dance Theatre, Priscilla Kaufhold, Artistic Director',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(1782,'2011-07-28 23:18:33.615048',5,11,'15','Kinetics Dance Theatre, Priscilla Kaufhold, Artistic Director',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(1783,'2011-07-28 23:24:15.201551',5,11,'15','Kinetics Dance Theatre, Priscilla Kaufhold, Artistic Director',2,'Changed slug.');
INSERT INTO "django_admin_log" VALUES(1784,'2011-07-29 08:14:18.881686',2,19,'128','Tracey  Grasty',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(1785,'2011-07-29 08:15:56.600150',2,19,'108','Ken  Walton',2,'Changed principal.');
INSERT INTO "django_admin_log" VALUES(1786,'2011-07-29 08:16:45.932458',2,19,'83','James  Rodak',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1787,'2011-07-29 08:18:05.697718',2,19,'81','Melissa  Feliciano',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1788,'2011-07-29 08:18:20.123649',2,19,'138','Melissa  Feliciano',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1789,'2011-07-29 08:25:25.647955',2,16,'88','Young People''s Concert',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(1790,'2011-07-29 08:30:32.667739',2,19,'139','Daniel  Carter',1,'');
INSERT INTO "django_admin_log" VALUES(1791,'2011-07-29 21:35:34.949613',5,16,'88','Young People''s Concert',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(1792,'2011-07-29 21:36:00.324166',5,16,'88','Young People''s Concert',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(1793,'2011-07-29 21:36:35.105931',5,16,'88','Young People''s Concert',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(1794,'2011-08-01 08:20:12.975296',2,16,'89','Symphonic Pops',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(1795,'2011-08-01 08:20:49.771478',2,16,'90','Orchestral Fireworks',2,'Changed description and pieces.');
INSERT INTO "django_admin_log" VALUES(1796,'2011-08-01 08:27:19.391837',2,16,'87','American Inspirations',2,'Changed description and pieces.');
INSERT INTO "django_admin_log" VALUES(1797,'2011-08-01 08:31:02.541449',2,16,'87','American Inspirations',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(1798,'2011-08-01 08:32:33.827609',2,16,'88','Young People''s Concert',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(1799,'2011-08-01 08:38:14.435766',2,16,'90','Orchestral Fireworks',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(1800,'2011-08-01 08:38:48.983656',2,12,'157','Rimsky-Korsakov, Nikolai  - Capriccio Espagnol',2,'Changed title.');
INSERT INTO "django_admin_log" VALUES(1801,'2011-08-01 15:25:46.855154',2,19,'90','Anne  Ward',2,'Changed bio and photo.');
INSERT INTO "django_admin_log" VALUES(1802,'2011-08-01 15:28:18.189251',2,19,'90','Anne  Ward',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(1803,'2011-08-01 15:28:52.265771',2,19,'90','Anne  Ward',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(1804,'2011-08-04 08:55:56.936737',2,11,'65','Rachel Young',1,'');
INSERT INTO "django_admin_log" VALUES(1805,'2011-08-04 08:56:55.625614',2,16,'87','American Inspirations',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(1806,'2011-08-05 18:11:52.070983',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1807,'2011-08-11 21:41:33.814817',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1808,'2011-08-11 21:41:58.622526',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1809,'2011-08-11 21:42:55.456728',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1810,'2011-08-11 21:45:21.320328',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1811,'2011-08-12 10:50:03.398018',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1812,'2011-08-15 14:53:02.625269',2,19,'29','Ariela  Haber',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1813,'2011-08-15 14:53:54.296398',2,19,'140','Amanda  Mazzaro',1,'');
INSERT INTO "django_admin_log" VALUES(1814,'2011-08-15 15:14:51.574828',2,19,'2','Andrea  Aldrich',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1815,'2011-08-15 15:16:07.721395',2,19,'37','Susan  Laessig',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1816,'2011-08-15 23:47:12.884580',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1817,'2011-08-15 23:47:43.936698',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1818,'2011-08-15 23:48:31.226859',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1819,'2011-08-15 23:51:06.606692',5,9,'21','/employment/ -- Employment',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1820,'2011-08-16 23:08:11.550205',5,21,'5','News object',1,'');
INSERT INTO "django_admin_log" VALUES(1821,'2011-08-16 23:08:26.515942',5,21,'4','News object',2,'Changed unpost_date.');
INSERT INTO "django_admin_log" VALUES(1822,'2011-08-17 21:39:54.520459',5,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1823,'2011-08-21 12:45:14.597215',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1824,'2011-08-22 13:13:44.290401',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1825,'2011-08-22 15:01:18.880422',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1826,'2011-08-22 18:34:32.441901',3,9,'8','/composer_competition/ -- Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1827,'2011-08-22 18:37:56.308211',3,13,'97','Weiss, Christopher ',1,'');
INSERT INTO "django_admin_log" VALUES(1828,'2011-08-22 18:38:56.814427',3,16,'87','American Inspirations',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(1829,'2011-08-22 18:39:52.605764',3,9,'8','/composer_competition/ -- Composer Competition',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1830,'2011-08-24 19:09:33.119494',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1831,'2011-08-24 19:12:02.498403',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1832,'2011-08-24 19:13:06.933344',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1833,'2011-08-24 19:18:04.285084',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1834,'2011-08-24 19:21:44.799211',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1835,'2011-08-24 19:22:21.474736',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1836,'2011-08-24 19:24:35.517047',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1837,'2011-08-24 22:21:54.140778',2,11,'66','Leigh Ann Hinton',1,'');
INSERT INTO "django_admin_log" VALUES(1838,'2011-08-24 22:22:27.180951',2,16,'89','Symphonic Pops',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(1839,'2011-08-26 11:22:38.133519',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1840,'2011-08-26 11:24:46.477644',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1841,'2011-08-26 11:26:43.809527',2,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1842,'2011-08-29 15:27:03.228316',3,21,'6','News object',1,'');
INSERT INTO "django_admin_log" VALUES(1843,'2011-08-29 15:27:25.201131',3,21,'6','News object',2,'Changed post_date.');
INSERT INTO "django_admin_log" VALUES(1844,'2011-08-29 15:28:39.193745',3,21,'5','News object',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(1845,'2011-08-29 15:29:13.041829',3,21,'6','News object',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(1846,'2011-08-29 15:29:26.074749',3,21,'4','News object',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(1847,'2011-08-29 15:29:32.074623',3,21,'3','News object',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(1848,'2011-08-29 15:29:37.328201',3,21,'2','News object',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(1849,'2011-08-29 15:29:42.702904',3,21,'1','News object',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(1850,'2011-08-29 15:29:48.116681',3,21,'6','News object',2,'Changed order.');
INSERT INTO "django_admin_log" VALUES(1851,'2011-08-29 15:42:39.503851',3,21,'6','News object',2,'Changed body.');
INSERT INTO "django_admin_log" VALUES(1852,'2011-08-29 22:59:48.123591',5,11,'67','Stephen Cramer',1,'');
INSERT INTO "django_admin_log" VALUES(1853,'2011-08-29 23:00:03.295228',5,16,'89','Symphonic Pops',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(1854,'2011-08-30 19:46:06.120840',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1855,'2011-08-30 19:46:20.322564',5,9,'18','/stuff_from_jason/ -- Stuff From Jason',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(1856,'2011-09-06 08:29:00.657443',2,16,'91','Chamber Concert One',1,'');
INSERT INTO "django_admin_log" VALUES(1857,'2011-09-06 08:30:30.329059',2,16,'92','Chamber Concert Two',1,'');
INSERT INTO "django_admin_log" VALUES(1858,'2011-09-06 08:35:22.653001',2,16,'93','Chamber Concert Three: Columbia Orchestra Piano Trio',1,'');
INSERT INTO "django_admin_log" VALUES(1859,'2011-09-06 08:41:31.586364',2,16,'93','Chamber Concert Three: Columbia Orchestra Piano Trio',2,'Changed description.');
INSERT INTO "django_admin_log" VALUES(1860,'2011-09-06 08:44:58.487427',2,12,'193','Dvořák, Antonín  - Piano Quintet No. 2',1,'');
INSERT INTO "django_admin_log" VALUES(1861,'2011-09-06 08:45:28.612599',2,13,'98','Babajanian, Arno ',1,'');
INSERT INTO "django_admin_log" VALUES(1862,'2011-09-06 08:45:34.330137',2,12,'194','Babajanian, Arno  - Piano Trio',1,'');
INSERT INTO "django_admin_log" VALUES(1863,'2011-09-06 08:46:17.506946',2,13,'99','Handel-Halvorsen,  ',1,'');
INSERT INTO "django_admin_log" VALUES(1864,'2011-09-06 08:46:20.069588',2,12,'195','Handel-Halvorsen,   - Passacaglia',1,'');
INSERT INTO "django_admin_log" VALUES(1865,'2011-09-06 08:47:02.607861',2,16,'93','Chamber Concert Three: Columbia Orchestra Piano Trio',2,'Changed pieces and image.');
INSERT INTO "django_admin_log" VALUES(1866,'2011-09-06 08:48:43.633039',2,16,'91','Chamber Concert One',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(1867,'2011-09-06 08:49:09.508304',2,16,'92','Chamber Concert Two',2,'Changed image.');
INSERT INTO "django_admin_log" VALUES(1868,'2011-09-11 09:39:58.455991',5,11,'68','The Heritage Signature Chorale, Stanley Thurston, founding Music Director',1,'');
INSERT INTO "django_admin_log" VALUES(1869,'2011-09-11 09:41:22.088525',5,16,'86','Final Words',2,'Changed pieces and soloists.');
INSERT INTO "django_admin_log" VALUES(1870,'2011-09-11 09:46:16.610153',5,11,'68','The Heritage Signature Chorale, Stanley Thurston, founding Music Director',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(1871,'2011-09-11 18:05:17.330464',2,19,'80','Andrew  Delclos',2,'Changed noncurrent_member.');
INSERT INTO "django_admin_log" VALUES(1872,'2011-09-11 18:52:55.717258',2,16,'87','American Inspirations',2,'Changed pieces.');
CREATE TABLE "django_flatpage_sites" (
    "id" integer NOT NULL PRIMARY KEY,
    "flatpage_id" integer NOT NULL,
    "site_id" integer NOT NULL REFERENCES "django_site" ("id"),
    UNIQUE ("flatpage_id", "site_id")
);
INSERT INTO "django_flatpage_sites" VALUES(12,1,1);
INSERT INTO "django_flatpage_sites" VALUES(19,7,1);
INSERT INTO "django_flatpage_sites" VALUES(21,10,1);
INSERT INTO "django_flatpage_sites" VALUES(26,4,1);
INSERT INTO "django_flatpage_sites" VALUES(31,3,1);
INSERT INTO "django_flatpage_sites" VALUES(33,12,1);
INSERT INTO "django_flatpage_sites" VALUES(47,22,1);
INSERT INTO "django_flatpage_sites" VALUES(51,23,1);
INSERT INTO "django_flatpage_sites" VALUES(61,11,1);
INSERT INTO "django_flatpage_sites" VALUES(84,19,1);
INSERT INTO "django_flatpage_sites" VALUES(86,28,1);
INSERT INTO "django_flatpage_sites" VALUES(90,20,1);
INSERT INTO "django_flatpage_sites" VALUES(137,36,1);
INSERT INTO "django_flatpage_sites" VALUES(140,38,1);
INSERT INTO "django_flatpage_sites" VALUES(158,37,1);
INSERT INTO "django_flatpage_sites" VALUES(173,41,1);
INSERT INTO "django_flatpage_sites" VALUES(174,42,1);
INSERT INTO "django_flatpage_sites" VALUES(186,45,1);
INSERT INTO "django_flatpage_sites" VALUES(187,15,1);
INSERT INTO "django_flatpage_sites" VALUES(189,5,1);
INSERT INTO "django_flatpage_sites" VALUES(194,39,1);
INSERT INTO "django_flatpage_sites" VALUES(196,24,1);
INSERT INTO "django_flatpage_sites" VALUES(197,46,1);
INSERT INTO "django_flatpage_sites" VALUES(198,40,1);
INSERT INTO "django_flatpage_sites" VALUES(202,14,1);
INSERT INTO "django_flatpage_sites" VALUES(203,27,1);
INSERT INTO "django_flatpage_sites" VALUES(204,16,1);
INSERT INTO "django_flatpage_sites" VALUES(208,34,1);
INSERT INTO "django_flatpage_sites" VALUES(210,35,1);
INSERT INTO "django_flatpage_sites" VALUES(211,47,1);
INSERT INTO "django_flatpage_sites" VALUES(212,32,1);
INSERT INTO "django_flatpage_sites" VALUES(213,31,1);
INSERT INTO "django_flatpage_sites" VALUES(216,43,1);
INSERT INTO "django_flatpage_sites" VALUES(218,44,1);
INSERT INTO "django_flatpage_sites" VALUES(221,49,1);
INSERT INTO "django_flatpage_sites" VALUES(223,13,1);
INSERT INTO "django_flatpage_sites" VALUES(225,17,1);
INSERT INTO "django_flatpage_sites" VALUES(226,25,1);
INSERT INTO "django_flatpage_sites" VALUES(227,26,1);
INSERT INTO "django_flatpage_sites" VALUES(228,9,1);
INSERT INTO "django_flatpage_sites" VALUES(229,2,1);
INSERT INTO "django_flatpage_sites" VALUES(230,48,1);
INSERT INTO "django_flatpage_sites" VALUES(232,21,1);
INSERT INTO "django_flatpage_sites" VALUES(233,6,1);
INSERT INTO "django_flatpage_sites" VALUES(235,8,1);
INSERT INTO "django_flatpage_sites" VALUES(236,18,1);
CREATE TABLE "django_flatpage" (
    "id" integer NOT NULL PRIMARY KEY,
    "url" varchar(100) NOT NULL,
    "title" varchar(200) NOT NULL,
    "content" text NOT NULL,
    "enable_comments" bool NOT NULL,
    "template_name" varchar(70) NOT NULL,
    "registration_required" bool NOT NULL
);
INSERT INTO "django_flatpage" VALUES(1,'/mission/','Mission Statement','<h2>Columbia Orchestra Mission Statement</h2>
<p>
  The Mission of the Columbia Orchestra is to foster lifelong appreciation of, enthusiasm for, and participation in music. This is accomplished by:
</p>
<ul>
  <li>Providing the community with high-quality musical performances by a locally-based symphony orchestra
  </li>
  <li>Providing area students, teachers, and educational institutions with a classical music resource
  </li>
  <li>Providing local classical musicians with an opportunity to explore and perform great orchestral literature and chamber music
  </li>
</ul>',0,'',0);
INSERT INTO "django_flatpage" VALUES(2,'/audio/','Audio','<h2>Audio Clips</h2>
<ul>

<li><a href="/uploads/2010/wbjc_interview_march2011.mp3">March 2011 WBJC interview with Jason Love and Dyana Neal</a></li>

<li><a href="/uploads/2010/wbjc_interview_may2010.mp3">05/22/10 WBJC interview with Jason Love</a></li>

<li><a href="/uploads/2010/interview-091017.mp3">10/17/09 WBJC interview with Jason Love</a></li>
</p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(3,'/history/','History','<div class="history">
<h2>History of the Columbia Orchestra</h2>
<p>
  <img src="/images/Orch-80.jpg" align="right" vspace="10" hspace="10" alt="Columbia Orchestra 1980" /> In the fall of 1977, a handful of local string players began playing classical music as the Columbia Chamber Orchestra. Yong Ku Ahn became the group''s first Music Director and conductor in 1978.
</p>
<p>
  <img src="/images/Orch-88.jpg" align="right" vspace="10" hspace="10" /> Upon Ahn''s retirement in 1988, Carl Dietrich took over leadership of the orchestra. During his tenure, the membership was expanded to include winds and percussion, standard symphonic literature was programmed, and the orchestra dropped "chamber" from its name.
</p>
<p>
  <img src="/images/Orch-9798.jpg" align="right" vspace="10" hspace="10" /> Catherine Ferguson served as the Columbia Orchestra''s third Music Director from 1990 until 1999, expanding the repertoire, restructuring the annual Young Artist Competition, establishing a regular season at Howard Community College''s Smith Theatre, and leading the Columbia Orchestra''s first appearance at the Columbia Festival of the Arts.
</p>
<p>
  <img src="/images/Orch-04.jpg" align="right" vspace="10" hspace="10" /> Current Music Director Jason Love took the podium in 1999, quickly winning the hearts of orchestra members and audience alike with his humor, generosity, and consummate musicianship. Under his baton, <em>The Baltimore Sun</em> named the Columbia Orchestra "Howard County''s premier ensemble for instrumental music."
</p>
<p>
  In August 2000, the orchestra hired Tedd Griepentrog as its first Executive Director. During the 2001-2002 season, all Masterworks programs were moved to the Jim Rouse Theatre to accommodate the expanded size of the orchestra and its growing audience. The Young People''s Concert added a Musical Instrument Petting Zoo for children of all ages to see, hear, touch, and play orchestral instruments. In June 2002, the orchestra made its Kennedy Center debut in collaboration with the Tony Powell/Music & Movement dance ensemble. During its silver anniversary season, the Columbia Orchestra performed for the Maryland Music Educators Conference at the Baltimore Convention Center and announced its first biannual American Composer Competition.
</p>

<p>In 2005, the organization established an administrative office at the Howard County Center for the Arts and released its first commercial recording, <i>Flying Home: A Tribute to John Denver</i>, performing with members and songwriters of the original John Denver Band.  In June 2007, the orchestra joined renown fiddler and concert artist Mark O’Connor in a concert performed as part of the Columbia Festival of the Arts.</p>

 

<p>Celebrating it’s 30th Anniversary season, in 2008 the orchestra undertook a community arts project entitled “Embracing the Millions,” which enlisted members of the community area performing artists in exploring the questions raised by the world’s most famous symphony, Beethoven’s monumental <i>Symphony No. 9</i>.  The project culminated in the orchestra’s performance of the symphony with local choral groups in April 2008.</p>

 

<p>Now in its fourth decade, the orchestra continues its annual Young Artist Competition and its biannual American Composer Competition.  It has established a free chamber music series featuring members of the orchestra.  Popular pre-concert discussions, conducted by Howard Community College’s William Scanlan Murphy and now sponsored by Baltimore-Washington Financial Advisors, routinely draw up to 20% of the evening’s concert audience.  And the orchestra continues to perform not only the masterworks of the classical repertoire but also works by today’s new generation of composers, including Tan Dun, Osvaldo Goliov, Joan Tower, and Jonathan Leshnoff.</p>

 

<p>As it enters its 33rd season, The Columbia Orchestra is clearly matching its reputation as one of Howard Magazine’s “51 Things We Love About Living In Howard County.”</p>


</div>',0,'',0);
INSERT INTO "django_flatpage" VALUES(4,'/amazon/','Amazon','<h2>Shop AMAZON</h2>
<p>
  <a href="http://www.amazon.com/exec/obidos/redirect-home/columbiaorche-20" target="AMAZON"><img src="/images/button-amazon.gif" border="0" alt="Pop-up: Shop at Amazon.com" align="right" width="88" height="31" /></a> <strong>Go directly to AMAZON by clicking on this AMAZON button.</strong> It appears here and at the bottom of all of our web pages. AMAZON will donate a percentage of all purchases you make to the orchestra .
</p>
<p>
  Once the button has been clicked, a separate AMAZON window will appear. Use this window for your AMAZON shopping. If you close the window, no problem. Just click on any of our AMAZON buttons and a new window will open for you.
</p>
<p>
  <iframe src="http://rcm.amazon.com/e/cm?t=columbiaorche-20&o=1&p=27&l=qs1&f=ifr" width="180" height="150" frameborder="0" scrolling="no" align="right"></iframe> Make your visit to AMAZON more efficient by specifying search criteria and clicking on the gold GO button.
</p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(5,'/old/donate/','Donate','<h2>Make a Donation</h2>
<p>
  <a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Donation+-+under+quantity%2C+enter+multiple+of+%2410+%28e.g.+Qty%3D5+for+a+%2450+donation%29+and+click+on+UPDATE+CART&amount=10.00" target="paypal"><img src="/images/button-donation.gif" border="0" width="110" height="23" alt="Pop-up: Make a Donation" align="right" /></a> 
</p>
<p>
  We are grateful to our many loyal supporters, and hope you too will support the orchestra. Ticket sales cover only 25% of our expenses. Your donation helps make it possible for us to rent concert and rehearsal space, contract outstanding soloists, rent and purchase music, and keep the community informed of our activities. By contributing to the orchestra, you help to enrich our community and to sustain the priceless cultural heritage of classical music. Please help the Columbia Orchestra keep making <em>Your Community''s Music.</em>
</p>
<p>
  Contributors will be acknowledged in our programs grouped into these giving levels:
</p>
<ul>
  <li>FRIEND (up to $99)</li>
  <li>DONOR ($100-$249)</li>
  <li>PATRON ($250-$499)</li>
  <li>BENEFACTOR ($500-$999)</li>
  <li>SPONSOR ($1,000-$1,999)</li>
  <li>CONDUCTOR''S CIRCLE ($2,000 and greater)</li>
</ul>
<p>
  Thank you for your support. The Columbia Orchestra is incorporated in Maryland as a 501(c)(3) nonprofit corporation. All donations are tax-deductible. 
</p>
<p>
  <strong>How to make a donation:</strong>
</p>

<p>
  <a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Donation+-+under+quantity%2C+enter+multiple+of+%2410+%28e.g.+Qty%3D5+for+a+%2450+donation%29+and+click+on+UPDATE+CART&amount=10.00" target="paypal"><img src="/images/button-donation.gif" border="0" width="110" height="23" alt="Pop-up: Make a Donation" /></a>

<br/>

<strong>Click the button to make a donation online using a credit card</strong>.
</p>
<p>All transactions are handled on a secure server hosted by PayPal. If you do not already have a PayPal account, you will have the option to paying with or without creating one. Simply click the button and follow the instructions. You will be asked to log in to your PayPal account. If you do not have a PayPal account, that is not a problem. You will have the options of paying with or without creating one. Your donation will be confirmed by e-mail, and you will receive a written acknowledgement and thank-you by mail. If you have any comments regarding the donation, type them in the <strong>''Message to Seller (Optional)''</strong> section at the bottom of the <strong>''Billing Information''</strong> page.
</p>
<p>
  <strong>Make a donation by mail.</strong> First complete our <a class="boldlink" href="/uploads/2010/donationform.pdf" target="co_link" title="PDF Pop-up">donation form</a>. Viewing and printing this form requires Adobe Acrobat Reader; if you don''t have Acrobat Reader, you can <a class="bodylink" href="http://www.adobe.com/products/acrobat/readstep.html" target="co_link" title="Pop-up">download a free copy</a>. Then mail the form along with a check to The Columbia Orchestra, sending it to the address at the bottom of this web page.
</p>
<p>
  If you would like to make a non-cash donation to the orchestra, please contact the orchestra office at 410-465-8777. We will be happy to discuss other gifts with you.
</p>
<p>
  If you would prefer that your donation remain anonymous, just let us know and we will honor your wishes.
</p>
<p>
  The Columbia Orchestra is a 501(c)(3) organization&mdash;donations to which are tax deductible to the fullest extent allowed by law. A copy of our current financial statement is available upon request by calling our office. Documents submitted to the State of Maryland Charitable Solicitations Act are available from the Secretary of State, State House, Annapolis, MD 21401, for the cost of copying and mailing.
</p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(6,'/advertise/','Advertise','<h2>Program Underwriting</h2> 

<p>If you would like to underwrite the Columbia Orchestra''s programming, with your underwriting message seen in our 2011-2012 concert programs by thousands of concertgoers, you may either <em>sponsor</em> a specific activity (a concert, a soloist or a competition) or simply <em>take out an ad</em> in our printed concert programs. To sponsor a specific activity, please download a <a class="bodylink" href="/uploads/2011-12/CO Sponsorship Form 2011A.pdf" target="co_link" title="Pop-up">Sponsorship form in PDF format</a>. For an ad in our printed concert programs, please download an <a class="bodylink" href="/uploads/2011-12/CO Underwriting Form 2011A.pdf" target="co_link" title="Pop-up">Underwriting form in PDF format</a>.The forms are suitable for printing; simply fill out the appropriate form and return it to the address on the form. Viewing and printing these files requires <a class="bodylink" href="http://www.adobe.com/products/acrobat/readstep.html" target="co_link" title="Pop-up">Adobe Acrobat Reader</a>.</p>

<p>Please click <a class="bodylink" href="/uploads/2011-12/CO Underwriting Facts 2011A.pdf" target="co_link" title="Pop-up">here for Underwriting Facts</a> to find out more about our season, reach, and program specifications.</p>

<h3>2011-2012 Concert Season</h3>
<p><strong>See your advertisement in the following programs!</strong></p>

<ul>

<li>
<strong>Classical Concert 1</strong>
<br/>
  Saturday, October 15, 2011
  <br />
  Rouse Theatre
</li>
<li>
<strong>Classical Concert 2</strong>
<br/>
  Saturday, December 3, 2011
  <br />
  Rouse Theatre
</li>
<li>
<strong>Classical Concert 3</strong>
<br/>
  Saturday, February 4, 2012
  <br />
  Rouse Theatre
</li>
<li>
<strong>Young People''s Concert</strong>
<br/>
  Saturday, February 25, 2012
  <br />
  Rouse Theatre
</li>
<li>
<strong>Symphonic Pops Concert</strong>
<br/>
  Saturday, March 17, 2012
  <br />
  Rouse Theatre
</li>
<li>
<strong>Classical Concert 4</strong>
<br/>
  Saturday, June 2, 2012
  <br />
  Rouse Theatre
</li>
</ul>

<h3>The levels of underwriting and/or advertisement size are as follows:</h3>

<ul>
<li>
<strong>Concert Sponsor $5,000</strong><br/>
Includes corporate logo and/or company name in all season and concert press releases and printed materials pertaining to selected program, plus a full-page advertisement (6" wide x 7.5" high), website logo and link, complimentary tickets, concert banner, and lobby display.</li>

<li>
<strong>Soloist Sponsor or Concert Prelude Series Sponsor $2,500</strong><br/>
Includes company name in all press releases and printed materials pertaining to selected soloist, plus a half-page advertisement (6" wide x 3.75" high), website logo and link, complimentary tickets, and concert banner.</li>

<li>
<strong>American Composer Competition Sponsor or Chamber Music Series Sponsor $1,000</strong><br/>
Includes company name in all printed materials pertaining to selected event, plus a business-card advertisement (3.5" wide x 2" high), website link, and complimentary tickets.</li>

<li>
<strong>Back or inside cover full-page color advertisement (6" wide x 7.5" high) $650</strong><br/>
An extra 500 program covers will be printed for chamber music programs</li>

<li>
<strong>Full-page black&white advertisement (6" wide x 7.5" high) $485</strong>
</li>
<li>
<strong>Half-page black&white advertisement (6" wide x 3.75" high) $295</strong>
</li>
<li>
<strong>Business card black&white advertisement (3.5" wide x 2" high <strong>or</strong> 2" wide x 3.5" high) $185</strong>
</li>

</ul>
<p>BLACK & WHITE CAMERA-READY ARTWORK OR DIGITAL FILE DUE BY OCTOBER 3, 2011.</p>

<p>An additional fee of $50 will be assessed for any artwork that must be modified.</p>


<p>If you have any questions, please contact us at 410-465-8777 or by e-mail at <a href="mailto:execdir@columbiaorchestra.org">execdir@columbiaorchestra.org</a>. </p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(7,'/volunteer/','Volunteer','<h2>Volunteer Opportunities</h2>

<p>The Columbia Orchestra is very grateful for all the volunteers who donate their time and talents at concerts and in our office.</p>

<p>If you would like to volunteer, please <a href="mailto:volunteers@columbiaorchestra.org">send an email</a> to our Volunteer Director. 

We''d love to have you!
</p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(8,'/composer_competition/','Composer Competition','<h2>2011 American Composer Competition</h2>

<p>The Columbia Orchestra is pleased to announce the results of its 5th biennial American Composer Competition.  The winner is <b>Christopher Weiss of Portsmouth, New Hampshire for "Voice of the Unknown Soldier,"</b> composed in 2007 and premiered by the Jacksonville Symphony Orchestra.   The Columbia Orchestra will perform "Voice of the Unknown Soldier" on February 4, 2012.</p>

<p>
Finalists in the 2011 American Composer Competition include (in alphabetical order):
<ul>
<li>Dorothy Chang: Strange Air</li>
<li>Amos Gillespie: Season to Taste</li>
<li>Timothy Kramer: Party Favors</li>
<li>Ben Phelps: Overture Maximus</li>
<li>Paul Siskind: Organal Dances</li>
<li>Philip Wharton: Symphony No. 1</li>
</ul>
</p>

<p> Thank you for all your submissions!</p>

<!--
<p>We are announcing the 2011 American Composer Competition.  The postmark deadline for submissions is <b>June 3, 2011</b>.</p>
-->

<h3> American Composer Competition History</h3>

<p>The Columbia Orchestra began its American Composer Competition in 2003 to help promote new American works both locally and across the United States. The winning work receives its first, second, or third public performance, thereby expanding the performance history for music worthy to be heard again and again. The winner also receives a cash prize and an additional stipend if attendance at the concert and rehearsals is possible. </p>

<ul>
<li>
<a href="/composer_competition/guidelines">competition guidelines</a> (<a href="/uploads/2011/compcomp/AmComposerComp.pdf">PDF</a>)
</li>
<li>
application form (<a href="/uploads/2011/compcomp/compcompapp.pdf">PDF</a>)
</li>
<li>
<a href="/composer_competition/faq">frequently-asked questions</a>
</li>
<li>
<a href="/composer_competition/past_winners">past winners</a>
</li>
</ul>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(9,'/contact_us/','Contact Us','<h2>Contact Information</h2>

<p>
If you would like to keep up-to-date on Columbia Orchestra events and activities, subscribe to our mailing list.  To subscribe, just send an email to <a href="mailto:mailinglist@columbiaorchestra.org?subject=Columbia Orchestra Mailing List Request">mailinglist@columbiaorchestra.org</a> with your name, address, phone number, and email address.
</p>

<p><strong>Our Privacy Policy</strong>:  We will never share your information with any outside individuals or organizations without your permission. Period! The sole purpose of our mailing list is to provide information about Columbia Orchestra events and activities to those who have expressed interest in the orchestra.</p>

  <h3>Address:</h3>

<p>
  The Columbia Orchestra
  <br />
  Howard County Center for the Arts
  <br />
  8510 High Ridge Road
  <br />
  Ellicott City, MD 21043
</p>
  <p>
    Howard County Center for the Arts is a converted elementary school on the left side of High Ridge Road. We are located in room #16.  Once inside go in the front door, take the left hall and our office is on the left near the end.
  </p>
  <p>
<a href="/locations/howard-county-center-arts/">Detailed directions to the building are located here</a>
  </p>
</div>

<h3>Phone Numbers</h3>
<dl>
	<dt>Phone</dt>
	<dd>410-465-8777</dd>
	<dt>Fax</dt>
	<dd>410-465-8778</dd>
</dl>

<h3>Email</h3>
<dl>
	<dt>General Information</dt>
	<dd><a href="mailto:execdir@columbiaorchestra.org">execdir@columbiaorchestra.org</a></dd>
	<dt>Auditions</dt>
	<dd><a href="mailto:annesward@comcast.net">annesward@comcast.net</a></dd>
	<dt>Tickets</dt>
	<dd><a href="mailto:ticketinfo@columbiaorchestra.org">ticketinfo@columbiaorchestra.org</a></dd>
	<dt>Young Artist Competition</dt>
	<dd><a href="mailto:youngartists@columbiaorchestra.org">youngartists@columbiaorchestra.org</a></dd>
	<dt>American Composer Competition</dt>
	<dd><a href="mailto:compcomp@columbiaorchestra.org">compcomp@columbiaorchestra.org</a></dd>
</dl>

',0,'',0);
INSERT INTO "django_flatpage" VALUES(10,'/preludes/','Preludes','<h2>Preludes</h2>

<h3>Sponsored by BWFA</h3>

<a href="http://www.bwfa.com/" target="co_link"><img src="/images/logo-bwfa.jpg" alt="Baltimore-Washington Financial Advisors" style="" border="0" height="52" width="175"></a>

<p>The Columbia Orchestra 

<img src="/images/Prelude_discussion.jpg" alt="Bill Scanlan Murphy giving a Prelude lecture" style="float:right; margin:1em 0 1em 1em;">

presents a series of "Preludes," a discussion series held before each Classical Concert.  This enlightening, entertaining series allows you to experience the stories and ideas behind the concert''s selections in an interesting, informal setting. Each free session runs from 6:30-7:10 (Subscribers can still take advantage of priority seating at 7:10.)</p>

<p>Concertgoers everywhere agree that the more you know about the music you are hearing, the more you enjoy it. Our “Preludes” series is designed to offer you that knowledge in a way that is easy and fun. We hope that you will enhance your concert experience by joining us for each Prelude!</p>

<p>Join Bill Scanlan Murphy for an enlightening, entertaining pre-concert discussion.</p> 

<h3>About Bill Scanlan Murphy</h3>

<img src="/images/p-murphy.jpg" style="float: left; margin: 1em 1em 1em 0;"/>

<p>Bill Scanlan Murphy was born in Glasgow, Scotland, in 1954 and holds an MA degree from the University of Oxford. A professionally complex life has included hosting radio shows (rock, classical, and documentary) for the BBC, writing music for television dramas and working with diverse performers ranging from the BBC Scottish Symphony Orchestra to the Beach Boys and Charles Manson. “Cease To Exist,” a radio documentary on the musical life of Manson, remains the most-listened-to documentary in the history of the BBC Radio One network.</p>
 
<p>A parallel career as a naval historian has resulted in a book on early submariners and numerous articles and radio features, including one on how many composers have been naval officers. Bill Scanlan Murphy currently teaches at Howard Community College and is Director of Music at Lovely Lane United Methodist Church in Baltimore.</p>',0,'',0);
INSERT INTO "django_flatpage" VALUES(11,'/program_notes_20100522/','Program Notes','<h2> Program Notes - Concert 5/22/10</h2>
<h3>by Bill Scanlan Murphy</h3>

<br> </br>
<h3>JONATHAN BAILEY HOLLAND (born 1974)</h3>

<h4>MOTOR CITY DANCE MIX</h4>

<p>
Composed: 2005<br></br>
Premiered: Detroit, 2005
</p>

<p>Now a teacher of composition at Boston’s Berklee College of Music, Jonathan Bailey Holland is a native of Flint, Michigan. It is often instructive to see who taught any given composer, and try to spot elements of the guru in the disciple’s work. The results can be startling: who can hear Gustav Holst in the music of Elliott Carter? In the case of Jonathan Bailey Holland, the lyricism of Ned Rorem, with whom he studied at the Curtis Institute, and the steely serial sinews of the English composers Bernard Rands (his teacher at Harvard) and Robert Saxton are twisted together into a gritty but heartfelt emotional language that speaks directly to the modern American spirit. Elements of other musics flash by, only to be milled through the composer’s iron logic into the girders of entirely new musical structures. </p>

<p>Holland is fully aware of the forces acting on his music, and the paradox of the one-man polyculture which is any honest musician in the modern world:</p>

<p>I am as influenced by contemporary classical music as I am by jazz, rap, r&b, neosoul, and all other good music.  I am fascinated by color, both visually and aurally.  I strive to communicate with my music.  I do not embrace one single style for all of my compositions. I aspire to have a recognizable voice.</p>

<p>And how does he attain that voice? It is interesting to compare what Holland has to say about his own music and his teaching methods with the structure of La Mer and the other key works of modern music:</p>

<p>I think a lot of times people think about theory as random rules on how notes have to go together. I''m trying to stress that nothing is random, that everything makes sense from point A to point Z, and that everything at point A is the same as everything at point Z, just on a smaller scale. If you look at one phrase of music, everything that happens in that phrase is similar to what happens over the course of the entire piece.</p>

<p>This is the core philosophy of the music of the last hundred years in three terse sentences. Everything derives from everything else and becomes everything else. Macro is micro; the end is the beginning. Whether the origin is Berry Gordy, disco, swing or Stravinsky – and all are present, one way or another, in Motor City Dance Mix – the aim of modern musical art is to bring the listener to the same focused point. The style wars of the late 1900s are over, and everybody won. All we have to do now is listen.</p>



<h3>WOLFGANG AMADEUS MOZART (1756-1791)</h3>

<h4>CLARINET CONCERTO, K.622</h4>

<p>
Composed: 1791<br></br>
Premiered: Prague, Austria-Hungary, 1791
</p>

<p>
<i>
I  Allegro <br></br>
II  Adagio<br></br>
III  Rondo: Allegro
</i>
</p>

<p>It seems difficult to imagine now, but writing a concerto for the clarinet in 1791 was like writing a work for synthesizer now. The instrument was still some way from establishing itself in the mainstream; indeed, there was even some debate over which instrument was the definitive clarinet. Mozart’s concerto, his last completed instrumental work, was not written for the modern clarinet, but for the basset clarinet; this was a hybrid of clarinet and basset horn, with a range extending a third below the clarinet and a darker, warmer sound than the instrument we now know. One early review of the concerto took Mozart to task for writing for this “bastard woodwind,” played by the work’s dedicatee, Anton Stadler. Mozart’s publisher took fright, and tinkered with the solo part after the composer’s death to make it playable on the “modern” clarinet; the original version of the concerto was not published until the twentieth century. The situation was not helped by the strange fact that Stadler fell onto hard times even worse than the dying Mozart’s soon after Mozart’s death, and pawned the original manuscript, which was never seen again.  Nonetheless, it is the altered version for modern clarinet that has entered the repertoire, and the hearts of millions.</p>

<p>Given the imminent demise of the composer, it is easy to read foreboding and worse into Mozart’s last works, but the fact is that his late music, with few exceptions, has little to tell us of the strange storm of misery that broke over him late in 1790 and led to an unmarked grave only yards from the scenes of his musical triumphs. In the Clarinet Concerto, there is serenity rather than sadness, and more than a glimpse of the typically cheerful Mozartian allegro. The first movement’s exposition presents its famous first theme twice, with the soloist joining in on the second appearance, after which the music noticeably darkens. Strangely, there is no obvious place for a cadenza, where the soloist was originally invited to improvise intricate figurations around the movement’s material, a practice superseded (alas) by written cadenzas by about 1835; traditionally, the soloist inserts a few jeux d’esprit in a couple of gaps at the end of the exposition. Soon after this, we meet the strange phenomenon of the soloist accompanying the orchestra, playing an arpeggio figure (yes, an Alberti bass!) under the orchestra just before the recapitulation. This defiant demonstration of the wide range of this new-fangled woodwind returns just before the end of the movement.</p>

<p>The slow movement, as in so many of Mozart’s concerti, is the core of the work, presenting the simplest of material (one of Mozart’s best-known melodies) in the simplest ternary (A-B-A) form, with – finally – an opportunity for a true cadenza just before the reappearance of the main melody.</p>

<p>The finale is a typical Mozartian sonata-rondo, entirely free of the clouds that have occasionally drifted over the early movements. Herr Stadler once singled out the possibility of fast chromatic figuration as the single great advantage of the clarinet over the bucolic oboe, and here he got a chance to prove it. Both he and Mozart would soon be facing their separate demons, but this music has none.</p>


<h3>CLAUDE DEBUSSY (1862-1918)</h3>

<h4>LA MER</h4>

<p>
Composed: 1903-1905<br></br>
Premiered: Paris, France, 1905
</p>

<p>
<i>
I   De l''aube à midi sur la mer (“From dawn to noon on the sea’) - Très lent (very slow) <br></br>
II  Jeux de vagues (“Play of the waves”) - Allegro <br></br>
III Dialogue du vent et de la mer (“Dialogue of the wind and sea’) - Animé et tumultueux (Animated and tumultuous)
</i>
</p>

<p>In one of the least-known (and certainly the funniest) documents of Debussy scholarship, his English nephew Frank de Bussy describes his Uncle Claude turning up in Manchester in 1905 with his heavily-pregnant girlfriend, Emma Bardac:</p>

<p>A truly, truly ‘orrible man. Rudest man I ever met. He were (sic) married to someone else at the time, and my mother wanted nothing to do with him and his fancy woman. We parceled him off to Eastbourne, first chance we got. He said he wanted to be at the seaside, and he wanted to see France. He could have swum back for all we cared. </p>

<p> Eastbourne was, and is, a moderately seedy resort town on the English Channel coast, and a good place for the Parisian lovebirds to nest while the scandal back home died down. And there was, indeed, a scandal. Emma was also married to someone else at the time, though it seems unlikely she even knew where her husband was by 1905. She had taken up with Debussy on the rebound from Gabriel Fauré, who in turn, incredibly, had taken up with her on the rebound from her daughter Helène. Emma was, at 43, a fairly matronly femme fatale. Unlike Emma’s husband, long lost in the steaming jungles of Emma’s amours, Debussy’s wife Lily was still very much in the picture. She made this very obvious by standing in the middle of Paris’s Place de la Concorde and shooting herself. She survived. Debussy’s name, however, became mud across Paris; hence the retreat to England.</p>

<p>On August 2, 1905, Debussy’s divorce from Lily became final. He and Emma were staying at the Grand Hotel, Eastbourne, The score of La Mer – The Sea - had been sitting completed on the desk for some days, but he chose this auspicious day to sign the manuscript and declare it finished. He was free, and his masterpiece was born; a daughter, Chou-Chou, followed in October. Claude and Emma were married in 1908.</p>

<p>La Mer is the closest that Debussy ever came to writing a symphony, but he called the work “Three Symphonic Sketches,” wishing to avoid the inevitable critical fallout from a declared attempt to follow in the footsteps of Beethoven. The actual oceanic symbolism of the piece has been debated since its first performance, when Debussy’s friend Pierre Lalo sighed “I neither hear, nor see, nor feel the sea.” Like so many composers, Debussy had been interested in the sea and maritime matters since childhood. Once, when asked in a questionnaire what he would have liked to be if not a composer, he scrawled “SAILOR!!” in huge capitals and underlined it twice. His legendarily terrifying political views once inspired an astonishingly detailed plan for the French navy that showed considerable genuine marine expertise among the demands for torrents of German blood.</p>

<p>If La Mer is indeed an evocation of the sea, it uses an aquatic vocabulary quite unlike that of any composer before Debussy; this is not the world of Scheherazade, far less that of The Flying Dutchman. Debussy loathed the very concept of “impressionism,” considering it a label slapped on him by ignorant, lazy critics. He would have preferred “Turnerist,” after his hero, the English painter J.M.W. Turner, whose seascapes evoked the power and moods of the ocean without ever depicting it in formal detail. In the work of both artists, spray becomes dabs of color; waves become the merest suggestion of uncertainty underfoot.  Not a windblown arpeggio or quoted sea-shanty in sight. And look at the finale: motifs from the first movement return with a formal grandeur long familiar from the symphonies of Tchaikovsky and even more from the later symphonies of Sibelius. Close analysis of the music reveals an unmistakable organic growth of the music from material heard in the first few bars, all held together within a mathematically-derived framework derived from the Golden Section. This elusive, emotionally vague music is constructed like a watch. There is as much Cubism as Impressionism here. </p>

<p>Alas, La Mer, Debussy’s greatest orchestra work, was very nearly his last. Within a year of its completion, the cancer that would carry him off in agony during the German bombardment of Paris had begun to make its presence felt. Mercifully, he did not live to see the worst aftershock of the upheavals of 1905: less than a year after burying her husband, Emma watched their daughter Chou-Chou die of diphtheria.</p>







<hr></hr>

<h2>Program Notes - Concert 5/22/10</h2>
<h3>by Bill Scanlan Murphy</h3>

<a name="wm">
</a></font><p><font face="verdana" size="2"><a name="wm"><br>
<b><font size="3">WOLFGANG AMADEUS MOZART (1759–1792)</font>
</b></a></font></p><p>
<font face="verdana" size="2"><a name="wm"><b>PIANO CONCERTO in D Minor, K. 466<br>
</b>
COMPOSED: 1785<br>
PREMIERED: Vienna, 1785<br>
I: Allegro<br>
II: Romanza<br>
III: Allegro assai; alla breve
</a></font></p><p>
<font face="verdana" size="2"><a name="wm">This curiously dark work is one of only two of Mozart’s 27 piano concerti to be written in a minor key. That the first performance could barely be heard over the background noise in the Mehlgrube Casino probably contributed to the gloom, as did the fact that Mozart had barely finished it when he took his seat at the piano. The premiere was, in fact, a scramble. As his father wrote to Mozart’s sister Nannerl:
</a></font></p><ul>
<font face="verdana" size="2"><a name="wm">I heard an excellent new piano concerto by Wolfgang, on which the copyist was still at work when we got there, and your brother didn''t even have time to play through the rondo because he had to oversee the copying operation. 
</a></font></ul>
<font face="verdana" size="2"><a name="wm">Mozart conducted frantically from the keyboard, nodding occasionally to the terrified concertmaster, whose suspicion that the only full score was still in Mozart´s head was entirely justified. There would be similar scenes nearly 150 years later, as George Gershwin nodded to Paul Whiteman to tell him the (improvised!) piano solo sections were about to end during the first performance of <i>Rhapsody in Blue.</i> Mozart’s audience consisted of what his obsessively class-conscious father called “a vast concourse of people of rank,” hovering between his son’s music and the gaming tables. Only the previous evening, Joseph Haydn had told Leopold that Wolfgang was “the greatest composer known to me, either personally or be reputation,” yet here he was now, struggling for attention.
</a></font><p>
<font face="verdana" size="2"><a name="wm">A month earlier, the Mehlgrube’s star attraction had been the blind pianist Maria Theresia von Paradis (for whom Mozart wrote a concerto); the month before, there had been a conjurer. As always, the composer’s social standing teetered between very shaky popular adulation and the wow-but-so-what feeling that now (briefly) meets the denizens of <i>American Idol.</i> This hovering between the worlds of the courtly flunky and popular stardom (no problem at all for musicians only fifty years later) was an important factor in his ultimate impoverishment and early death. It’s therefore all the more surprising that Mozart chose an occasion like this to launch one of his darkest, most searching works.
</a></font></p><p>
<font face="verdana" size="2"><a name="wm">The first movement opens with—no, not the first subject of the inevitable sonata form opener. Instead, we hear motifs—fragments that together <i>add up</i> to thematic material, an astonishing foreshadowing of the gigantic mosaics of Wagner, set over nagging, syncopated string chords. Instead of the usual setting out of the structural shop that we expect at the opening of a Classical concerto, we instead are offered what can only be called mood-setting. It is only when the piano enters that our old friends A and B become clearly audible. There would be nothing like this again until the concertos of Beethoven, who revered this work and played it in public several times. Indeed, it is Beethoven’s cadenzas that we are hearing this evening in the first and last movements.
</a></font></p><p>
<font face="verdana" size="2"><a name="wm">Like Beethoven after him, Mozart often carried out his more outrageous formal experiments in his slow movements, and this concerto has a vivid example in its rondo structure—easily the least likely form to be expected here (not least because this movement is followed by another one). Even less likely is the dramatic lurch into G minor towards the end. Beethoven would often challenge himself (and us) with sudden plunges into distant keys, as though daring himself to find a way home; he may well have been inspired by Mozart’s leap into the tonal darkness here. Always civilized and precise, of course (it’s Mozart, after all), but with the faintest cracks and shadows in the porcelain. Nor should we forget that Mozart reserved his darkest thoughts (think of the fortieth symphony) for the key of G minor.
</a></font></p><p>
<font face="verdana" size="2"><a name="wm">The Finale is the rondo we might expect—but, once again, G minor lurks in the tonal forest. It is not hard to believe that Mozart looked at that Casino audience and saw, not the career-saving Fairy Godfather that his father saw that day, but the Wolf. The concerto’s optimistic D major ending barely dissipates the darkness. Only seven years later, Mozart would be in an unmarked grave barely ten blocks from the Casino.



</a><a name="gm">
</a></font></p><p><font face="verdana" size="2"><a name="gm"><br>
<b><font size="3">GUSTAV MAHLER (1860–1911)</font>
</b></a></font></p><p>
<font face="verdana" size="2"><a name="gm"><b>SYMPHONY No. 1 in D<br>
</b>
COMPOSED: 1884–88<br>
PREMIERED: Budapest, Hungary, 1889<br>
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">No, not the <i>Titan.</i> Mahler ditched the subtitle early in this work’s tortuous early history (read on!). His wife, the later much-married Alma, could never bear listening to the First Symphony, because she knew what it was about; few wives (and certainly not one as independent of spirit as Alma) wish to wallow in the murky history of their husband’s love lives. 
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">The Symphony began as music inspired by the soprano Johanna Richter, with whom Mahler had an absurdly one-sided non-affair in 1884. This object lesson in unrequited love resulted firstly in the doom-laden <i>Songs of a Wayfarer.</i> One of these, the deceptively chirpy <i>Ging heut’ Morgen,</i> is tested to destruction in the first movement of the Symphony. Johanna claimed, absurdly, to be related to Mahler’s favorite author, Jean-Paul Richter. Jean-Paul’s most popular novel, <i>Titan,</i> rarely left Mahler’s bedside. The book’s intimidating structure—35 chapters and 146 sub-chapters—has been cited as an arguable origin for Mahler’s later symphonic giantism, but rather more to the point is Jean-Paul’s concept of the <i>hoher Mensch,</i> the “superior man” that would eventually morph, at least for Mahler, into the Nietzschean <i>Übermensch.</i> The fact that Jean-Paul tells his tale in the form of a gargantuan, overwrought fairy-tale very nearly gives us Mahler’s musical thinking in a nutshell.
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">After Fräulein Richter ditched him, Mahler embarked on a guilt-ridden liaison with Marion Weber, the wife of Carl Maria von Weber’s grandson, made all the worse by the fact that her husband was trusting him with editing the musical heritage of his grandfather, who was one of Mahler’s heroes. Mahler was not Wagner, and, unlike the Sage of Bayreuth, had a conscience; the halting, fumbling, emotionally frantic result suggests what might have happened happen if Schiller edited <i>Peyton Place;</i> the musical spin-off was Mahler’s incidental music for Joseph Victor von Scheffel’s play <i>Der Trompeter von Säckingen.</i> This music also found its way into the Symphony, only to be thrown out again. Like Mahler himself, one might say.
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">Symphony? Not originally. Mahler launched the work as a <i>“Titan,</i> a Symphonic Poem in Two Parts.” Following Jean-Paul’s baleful example, Mahler subdivided the two parts into three and two movements respectively. The second movement, <i>Blumine,</i> was the recycled <i>Trompeter von Säckingen</i> music; traumatic events with Marion Weber house resulted in Mahler scrapping the movement after its second performance, in 1894. It would lie forgotten until resurrected by (curiously) Benjamin Britten in 1967. Not entirely helpfully, Mahler supplied the audience with detailed program notes linking the music to Jean-Paul’s epic; an unappreciative Budapest audience laughed the work off the stage. Mahler admitted at the time that he had made up the programmatic content <i>after</i> writing the music. An old story in the ever-deceptive emotional world of Romanticism.
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">It was only in 1896 that the Symphony finally appeared in its present form, minus <i>Blumine</i> and without its title. It was now the Symphony in D for Large Orchestra, and so it remains today. Ironically, the Berlin critics slammed the work for its <i>lack</i> of programmatic content.
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">This apparent indecision points to the very heart of Mahler’s music. The Funeral March of Beethoven’s <i>Eroica</i> symphony evokes—in advance—the departed Napoleon; Mahler’s Funeral March is a mangled <i>Frère Jacques,</i> and suggests the obsequies for an unfortunate puppet. This sort of irony was always going to cause Mahler problems with an audience that liked its emotions untainted; indeed, it would be the 1960s before his music achieved the popularity it deserved. Two World Wars, grimly foreseen by Nietzsche, had made the old Romanticism not merely impossible but unbearable.
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">The first movement, based largely on the song <i>Ging heut’ Morgen</i> (not so much inspired as <i>caused</i> by Johanna Richter), emerges from a drastic re-hearing of the opening of Beethoven’s Ninth, as distant fanfares and tweeting birds usher us into Mahler’s world. A symphony, he would tell Jean Sibelius, must be a world, and this is his. The <i>Wayfarer</i> song is heralded by the unmistakable sound of the cuckoo. Unmistakable, but nonstandard: Austrian cuckoos, it seems, sing a fourth, rather than the traditional third.
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">One of Mahler’s early songs, <i>Hans und Grete</i> (another love song - inspiration, mercifully, unknown) is recycled in the second movement into a vision of precisely the pan-Germanic merriment that Mahler never felt at home in. Like the peasant dance in Bartók’s Concerto for Orchestra—once described as “a man trying to dance with a foot nailed to the floor”—this is music expressing almost exactly the opposite of what it seems to be. This is the music of the outsider, who always hears from afar, even when surrounded by the musicians.
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">Mahler knew <i>Frère Jacques</i> as <i>Bruder Martin.</i> Early audiences were violently offended by its transformation into a dirge in the third movement, as though it were an affront to the very thought of childish innocence. Which is exactly what it is. Mahler is at his grimmest precisely when he is joking. A lifelong admirer of Nietzsche, he was well acquainted with the philosopher’s motto—<i>Ridendo dicere severum;</i> saying stern things with a smile. Mahler claimed that the music was inspired by a woodcut called <i>The Hunter’s Funeral Procession</i>—which may even be true. But anyone who has been through the emotional mill of Stephen Sondheim’s <i>Into The Woods</i> knows what can happen to childish materials in the hands of a master. And so it is here.
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">Mahler’s own early program note calls the last movement of the symphony “The cry of a wounded heart”—his, of course. The movement acts as the apotheosis of the early movements—the goal they never reached. The Wayfarer of the first movement finally reaches his destination (it is almost a surprise that he had one); even poor Marion Weber makes an appearance as the <i>Blumine</i> music drifts achingly by—referring back, ironically, to music that Mahler had cut. The music, all too obviously, is conjuring up an ecstasy that he never knew in the “real” world (is there one?); the blaze of brass (seven horns!) that closes the work is an invitation into the Beyond.
<op>
Jean-Paul once said, in a phrase that would echo eternally in Nietzsche, “Joy, unlike seriousness, is inexhaustible.” Mahler clearly knew what he meant; he had learned the hard way. Through his music, we can learn the same lesson. 
',0,'',0);
INSERT INTO "django_flatpage" VALUES(12,'/mailing_list/','Mailing List','<h2>Subscribe to the Mailing List</h2>

<p>To subscribe to the mailing list, simply send an email to <a href="mailto:mailinglist@columbiaorchestra.org?subject=Columbia Orchestra Mailing List Request">mailinglist@columbiaorchestra.org</a> with your name, address, phone number, and email address.</p>

<p><strong>Our Privacy Policy</strong>:  We will never share your information with any outside individuals or organizations without your permission. Period! The sole purpose of our mailing list is to provide information about Columbia Orchestra events and activities to those who have expressed interest in the orchestra. </p>',0,'',0);
INSERT INTO "django_flatpage" VALUES(13,'/auditions/','Auditions','<h2>Join the Columbia Orchestra</h2>

<p>If you play an orchestral instrument and enjoy the challenge of playing the best of the symphonic repertoire with an inspiring conductor, you don''t want to miss the opportunity to join the Columbia Orchestra of Howard County, Maryland. The Columbia Orchestra is a volunteer adult community orchestra dedicated to fostering a lifelong appreciation of and participation in classical music. Advanced high school students are welcome. Come join us for an exciting season performing great music! We keep an active substitute list, so don''t hesitate to contact us.</p>

<p>Now how do you join? By auditioning for us at the auditions typically held near the end of August. We also have a limited number of audition times during the season, so if you miss our August auditions but are still interested, please contact <a href="mailto:annesward@comcast.net">annesward@comcast.net</a> or 410-465-8777, extension 4.</p>

<p>If the thought of preparing an audition frightens you, please remember - we are a friendly group of people who love to play music together, and we want to make joining us a fun experience for you!</p>

<h3>Audition Requirements (to last no longer than 15 minutes total)</h3>

<ul>
<li>Two octave major and minor scales through 3b and 3# (articulated/slurred as you wish)</li>
<li>2 prepared pieces of contrasting nature (orchestral/concerto excerpts are acceptable)</li>
<li>Sight-reading at the discretion of the Music Director</li>
</ul>

<p>Please look around our web site to familiarize yourself with our orchestra. Here are some specific items you may be interested in:</p>
<ul>
<li>Rehearsal Schedule</li>
<li><a href="/locations/">Rehearsal Locations</a> (we rehearse on Mondays at the Gathering Place and have dress rehearsals at the Rouse Theater)</li>
<li><a href="/season/">Concert Season</a></li>
</ul>

<p>Fall 2011 Auditions will be held <b>Sunday, August 14, 2010 1:00 – 5:00 PM</b>
and <b>Monday, August 15, 2010 7:00 – 10:00 PM</b>
at Christ Episcopal Church, 6800 Oakland Mills Road, Columbia, for the following:</p>

<ul>
<li>All string instruments</li>
<li>Permanent position: Contrabassoon</li>
<li>Substitute list for woodwinds, brass, and percussion </li>
</ul>

<p>For more information, please contact <a href="mailto:annesward@comcast.net">annesward@comcast.net</a> or 410-465-8777, extension 4.</p>',0,'',0);
INSERT INTO "django_flatpage" VALUES(14,'/old/about_the_orchestra_pre20101213/','About The Orchestra','<h2>About The Columbia Orchestra</h2>

<h3>Artistic Staff</h3>
<ul>
<li><a href="/members/jason_love/">Jason Love</a> - Music Director</li>
<li><a href="/members/brenda_anna/">Brenda Anna - Concertmaster</a></li>
<li><a href="/members/">Orchestra Roster &amp; Bios</a></li>
</ul>

<h3>Administrative Staff</h3>
<ul>
<li><a href="/members/tedd_griepentrog/">Tedd Griepentrog</a> - Executive Director, <a href="mailto:execdir@columbiaorchestra.org">execdir@columbiaorchestra.org</a> 410-465-8777</li>
<li>Tamara Sciullo - Administrative Assistant/Development Director, <a href="mailto:admin@columbiaorchestra.org">admin@columbiaorchestra.org</a></li>
<li>Norma Hooks - Librarian</li>
<li>Annette Szawan - Personnel, strings</li>
<li>Anne Ward - Personnel, winds</li>
</ul>


<h3>Board of Directors</h3>
<ul>
<li>Bruce Kuehne - President</li>
<li>Anne Ward - Vice President</li>
<li>Naomi Chang Zajic - Secretary</li>
<li>David Zajic - Treasurer</li>
<li>Glenn Caldwell</li>
<li>Robert Cassel</li>
<li>Monica DeLeon</li>
<li>Karen Hopkinson</li>
<li>Barbara Russell</li>
<li>Murray Simon</li>
<li>Holly Thomas, Board Member Emerita</li>
</ul>

<p><a href="/history/">History of the Columbia Orchestra</a></p>

<p><a href="/uploads/2010/CO_Annual_Report_FY09.pdf">The Columbia Orchestra 2009-2010 Season Annual Report</a></p>

<p><a href="/mission/">Mission Statement</a></p>

',0,'',0);
INSERT INTO "django_flatpage" VALUES(15,'/old/tickets/','Tickets','<h2>Ticket Information</h2>
 

</font><p><font size="2" face="verdana"> 
<font size="3"><b>We have 2010-2011 season tickets waiting for you!</b>
</font> We provide many methods for you to choose from: use a credit card to order <a class="bodylink" href="/tickets#online">online</a>, send a check by <a class="bodylink" href="/tickets#mail">mail</a>, reserve tickets by <a class="bodylink" href="/tickets#phone">phone/e-mail</a> or purchase them <a class="bodylink" href="/tickets#person">in person</a> at any of several different locations.  Details for each method are given below. If you do not order in advance, the remaining available tickets can be purchased by cash or check at the performance.


</font></p><p>
<font size="2" face="verdana">Tickets purchased prior to September will be mailed in early September.
<!--

If you have not subscribed this season, please review all of the great benefits of subscribing and consider subscribing next year - you will get more than great music!

-->
<!-- -->
</font></p><p><font size="2" face="verdana"> 
<font size="3"><b>Subscription Ticket Prices: <i>(Save 20% when you get 5 concerts for the price of 4!)</i></b></font> 
</font></p><blockquote>
<font size="2" face="verdana">Adult $80<br> 
Seniors (60 and up) $64<br> 
Fulltime Students (To age 24) $40 
</font></blockquote>
<!-- -->

<p>
<font size="2" face="verdana"><font size="3"><b>Single Ticket Prices - Classical Concerts:
</b></font> 
</font></p><blockquote>
<font size="2" face="verdana">Adult $20<br> 
Seniors (60 and up) $16<br> 
Fulltime Students (To age 24) $10 <br>
Group Rates (10 or more) $16
</font></blockquote>


<p>
<font size="2" face="verdana"><font size="3"><b>Single Ticket Prices - Pops Concert:
</b></font> 
</font></p><blockquote>
<font size="2" face="verdana">Adult $22<br> 
Seniors (60 and up) $18<br> 
Fulltime Students (To age 24) $10<br>
Group Rates (10 or more) $18
</font></blockquote>



<p><font size="2" face="verdana"> 
<font size="3"><b>Single Ticket Prices - Young People''s Concert:</b></font> 
<br>
</font></p><blockquote>
<font size="2" face="verdana">Adults, children 12 and up $15<br> 
Children under 12 <b>FREE</b> 
</font></blockquote>

<!-- -->
<p><font size="2" face="verdana"> 
<font size="3"><b>Subscriber Benefits Include:</b></font> 
</font></p><blockquote>
<font size="2" face="verdana"><i><b>Savings of 20%!</b></i> Attend five concerts for the price of four. 
</font><p><font size="2" face="verdana"> 
<i><b>Early access to seating!</b></i> Subscribers may select the best seats in the house by entering the theatre ten minutes before single-ticket purchasers. 
</font></p><p><font size="2" face="verdana"> 
<i><b>Free ticket exchange!</b></i> When conflicts arise, exchange your ticket in advance for another program. 
</font></p><p><font size="2" face="verdana"> 
<i><b>Special highlights on upcoming events!</b></i> Receive early information about programs and guest artists. 
</font></p><p><font size="2" face="verdana"> 
<i><b>E-mail reminders!</b></i> Don''t miss a single concert. 
</font></p></blockquote>
<!-- -->

<p>
<font size="2" face="verdana"><br> 
<font size="3"><b>Tickets may be purchased in advance in any of the following four ways.</b></font>  All ticket orders placed within six days of a performance will be held at the concert''s will-call window . They may be picked up any time after 6:15 p.m. on the evening of the performance. 
</font></p><p><font size="2" face="verdana"> 

<a name="online"></a>
<b><font size="3">1) Order online using a credit card.</font></b> All transactions are handled on a secure server hosted by PayPal (the same PayPal that is the most trusted and popular method to make purchases on ebay). In the <a class="bodylink" href="#table">table</a> below, simply click the "add to cart" button(s) for the ticket(s) you wish to purchase and follow the instructions. Your order will be confirmed by e-mail, and your tickets will be mailed to you (or held at will-call for orders placed within 6 days of the concert). Online orders will be accepted up until the morning of each concert. We would appreciate it, though, if you would order earlier as we are a bit busy concert day.  
</font></p><p><font size="2" face="verdana"> 
<i>Please note: Online ordering is currently the only way to use a credit card to purchase tickets other than going in person to the Columbia Association office on Wincopin Circle. We are not equipped to handle credit card purchases at the door.</i> 
</font></p><p><font size="2" face="verdana"> 
<a name="mail"></a>
<b><font size="3">2) Order by mail.</font></b>

Tell us the concert date, type of tickets (senior, adult, student) and number of tickets for each type along with a check to The Columbia Orchestra. Send to the address at the bottom of the page.
<!--

To order by mail, please download a <A CLASS="bodylink" HREF="ticketorder.pdf">ticket order form in PDF format</A>. Then mail us the completed form with payment. Viewing and printing this form requires Adobe Acrobat Reader; if you don''t have Acrobat Reader, you can download a <A CLASS="bodylink" HREF="http://www.adobe.com/products/acrobat/readstep.html">free copy</A>. 

-->
</font></p><p><font size="2" face="verdana">
<a name="phone"></a>
<b><font size="3">3) Order by phone or e-mail.</font></b> We strongly encourage online payment in order to minimize your delay in the lobby prior to being seated. If you do not wish to pay online and would like to reserve tickets to purchase at will-call, please contact our Executive Director at (410) 465-8777, extension 2, or E-mail <b>ticketinfo<font size="2">@</font>columbiaorchestra.org</b>. 
</font></p><p><font size="2" face="verdana">

<a name="person"></a>
<b><font size="3">4) Purchase tickets in person.</font></b> Tickets may be purchased in person at the Music &amp; Arts Center at the Chatham Station Shopping Center, the Music &amp; Arts Center in Laurel, or the Columbia Association office on Wincopin Circle. Music &amp; Arts will accept payment by cash or check. Credit cards may be used at the Columbia Association office. Tickets are available at these locations shortly before each concert.
</font></p><p><font size="2" face="verdana">
<font size="3"> For those concerts which are not sold out in advance, tickets will be available for purchase (by cash or check only) at the door. 
</font> 
</font></p><p><font size="2" face="verdana">
<br><br>

<a class="bodylink" name="table">  

</a><table width="100%" cellpadding="20" border="1"><tbody><tr><td> 
 
<br> 
<center><font size="3" face="verdana"><b>Concert Tickets 2010-2011</b></font></center>
 
<p> 
<font size="2" face="verdana">For each desired item, click once on its ''Add to Cart'' button. The first click will cause a Paypal shopping cart window to appear. Quantities for each item can be changed or removed in this new window. To access the shopping cart window (without adding items), click the ''View Cart'' button.</font> 
</p><p> 
</p><center> 

<table cellpadding="3" border="1"> 

<tbody><tr><td colspan="2"><font size="2" face="verdana">View current contents of shopping cart
   </font></td>
   <td><a href="https://www.paypal.com/cart/display=1&amp;business=tickets%40columbiaorchestra.org" target="paypal">
   <img src="/images/button-viewcart.gif" alt="Pop-up: View Cart" height="23" width="78" border="0"></a> 
</td></tr>


<!---------------------------------------  %2C = , ----------------------------------->

<!-- -->

<tr><td rowspan="3"><font size="2" face="verdana">
  Season Tickets<br>Five concerts for the price of four:<br>
<b>Classical Concert</b> programs and <b>Pops Concert</b>
</font></td>
  <td><font size="2" face="verdana">Adult @ $80 each
  </font></td> 
  <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Adult+Season+Ticket+Subscription&amp;amount=80.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">   
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  
<tr><td><font size="2" face="verdana">Senior @ $64 each
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Senior+Season+Ticket+Subscription&amp;amount=64.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  
<tr><td><font size="2" face="verdana">Student @ $40 each
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Student+Season+Ticket+Subscription&amp;amount=40.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  



<tr><td rowspan="4"><font size="2" face="verdana">
  Tickets to<br><b>Classical Concert 1</b>
<br>at Jim Rouse Theatre<br>Saturday, October 16, 2010
  </font></td>
  <td><font size="2" face="verdana">Adult @ $20 each
  </font></td> 
  <td><!--<a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Adult+tickets+to+Classical+Concert+1+@JRT+October+16&amp;amount=20.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> -->
</td></tr>  
<tr><td><font size="2" face="verdana">Senior @ $16 each
   </font></td>
   <td><!--<a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Senior+tickets+to+Classical+Concert+1+@JRT+October+16&amp;amount=16.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a>  -->
</td></tr>  
<tr><td><font size="2" face="verdana">Student @ $10 each
   </font></td>
   <td><!--<a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Student+tickets+to+Classical+Concert+1+@JRT+October+16&amp;amount=10.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a>  -->
</td></tr>   
<tr><td><font size="2" face="verdana">Group Rate @ $16 each<br>You must buy at least 10
   </font></td>
   <td><!--<a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Group+Rate+tickets+to+Classical+Concert+1+@JRT+October+16.+Change+QUANTITY+to+10+or+more.&amp;amount=16.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> -->
</td></tr>   



<tr><td rowspan="4"><font size="2" face="verdana">
  Tickets to<br><b>Classical Concert 2</b>
<br>at Jim Rouse Theatre<br>Saturday, December 4, 2010 
  </font></td>
  <td><font size="2" face="verdana">Adult @ $20 each
  </font></td> 
  <td><!-- <a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Adult+tickets+to+Classical+Concert+2+@JRT+December+4&amp;amount=20.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> -->
</td></tr>  
<tr><td><font size="2" face="verdana">Senior @ $16 each
   </font></td>
   <td><!-- <a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Senior+tickets+to+Classical+Concert+2+@JRT+December+4&amp;amount=16.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> -->
</td></tr>  
<tr><td><font size="2" face="verdana">Student @ $10 each
   </font></td>
   <td><!-- <a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Student+tickets+to+Classical+Concert+2+@JRT+December+4&amp;amount=10.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> -->
   </td>
</tr>   
<tr><td><font size="2" face="verdana">Group Rate @ $16 each<br>You must buy at least 10
   </font></td>
   <td><!-- <a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Group+Rate+tickets+to+Classical+Concert+2+@JRT+December+4.+Change+QUANTITY+to+10+or+more.&amp;amount=16.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a>-->
</td></tr>   



<tr><td rowspan="2"><font size="2" face="verdana">
   Tickets to<br><b>The Young People''s Concert, 12:30</b><br>at Jim Rouse Theatre<br>Saturday, January 8, 2011<br>Please indicate how many ''free'' children<br>will be attending at the bottom of<br>the <b>Review Your Payment</b> page<br>in <b> Message to Seller</b>. 
  </font></td>
  <td><font size="2" face="verdana">Children under 12<br>are FREE
  </font></td>
  <td>&nbsp;
</td></tr>  
<tr><td><font size="2" face="verdana">All others @ $15 each
  </font></td> 
  <td> 
</td></tr> 
 


<tr><td rowspan="2"><font size="2" face="verdana">
   Tickets to<br><b>The Young People''s Concert, 3:00</b><br>at Jim Rouse Theatre<br>Saturday, January 8, 2011<br>Please indicate how many ''free'' children<br>will be attending at the bottom of<br>the <b>Review Your Payment</b> page<br>in <b> Message to Seller</b>. 
  </font></td>
  <td><font size="2" face="verdana">Children under 12<br>are FREE
  </font></td>
  <td>&nbsp;
</td></tr>  
<tr><td><font size="2" face="verdana">All others @ $15 each
  </font></td> 
  <td>
</td></tr>  



<tr><td rowspan="4"><font size="2" face="verdana">
  Tickets to<br><b>Pops Concert</b>
<br>at Jim Rouse Theatre<br>Saturday, February 12, 2011
  </font></td>
  <td><font size="2" face="verdana">Adult @ $22 each
  </font></td> 
  <td><!--<a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Adult+tickets+to+Pops+@JRT+February+12&amp;amount=22.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> -->
</td></tr>  
<tr><td><font size="2" face="verdana">Senior @ $18 each
   </font></td>
   <td><!-- <a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Senior+tickets+to+Pops+@JRT+February+12&amp;amount=18.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> -->
</td></tr>  
<tr><td><font size="2" face="verdana">Student @ $10 each
   </font></td>
   <td><!-- <a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Student+tickets+to+Pops+@JRT+February+12&amp;amount=10.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> -->
</td></tr>   
<tr><td><font size="2" face="verdana">Group Rate @ $18 each<br>You must buy at least 10
   </font></td>
   <td><!-- <a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Group+Rate+tickets+to+Pops+@JRT+February+12.+Change+QUANTITY+to+10+or+more.&amp;amount=18.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a>-->
</td></tr>   



<tr><td rowspan="4"><font size="2" face="verdana">
  Tickets to<br><b>Classical Concert 3</b>
<br>at Jim Rouse Theatre<br>Saturday, March 26, 2011 
  </font></td>
  <td><font size="2" face="verdana">Adult @ $20 each
  </font></td> 
  <td><!--<a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Adult+tickets+to+Classical+Concert+3+@JRT+March+26&amp;amount=20.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> -->
</td></tr>  
<tr><td><font size="2" face="verdana">Senior @ $16 each
   </font></td>
   <td><!-- <a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Senior+tickets+to+Classical+Concert+3+@JRT+March+26&amp;amount=16.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal"> 
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> -->
</td></tr>  
<tr><td><font size="2" face="verdana">Student @ $10 each
   </font></td>
   <td><!-- <a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Student+tickets+to+Classical+Concert+3+@JRT+March+26&amp;amount=10.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal"> 
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> -->
</td></tr>   
<tr><td><font size="2" face="verdana">Group Rate @ $16 each<br>You must buy at least 10
   </font></td>
   <td><!-- <a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Group+Rate+tickets+to+Classical+Concert+3+@JRT+March+26.+Change+QUANTITY+to+10+or+more.&amp;amount=16.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a>-->
</td></tr>   



<tr><td rowspan="4"><font size="2" face="verdana">
  Tickets to<br><b>Classical Concert 4</b>
<br>at Jim Rouse Theatre<br>Saturday, June 4, 2011 
  </font></td>
  <td><font size="2" face="verdana">Adult @ $20 each
  </font></td> 
  <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Adult+tickets+to+Classical+Concert+4+@JRT+June+4&amp;amount=20.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  
<tr><td><font size="2" face="verdana">Senior @ $16 each
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Senior+tickets+to+Classical+Concert+4+@JRT+June+4&amp;amount=16.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  
<tr><td><font size="2" face="verdana">Student @ $10 each
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Student+tickets+to+Classical+Concert+4+@JRT+June+4&amp;amount=10.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>   
<tr><td><font size="2" face="verdana">Group Rate @ $16 each<br>You must buy at least 10
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Group+Rate+tickets+to+Classical+Concert+2+@JRT+June+4.+Change+QUANTITY+to+10+or+more.&amp;amount=16.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a>
</td></tr>     



<tr><td><font size="2" face="verdana">
Make a tax-deductible donation ...
</font><p>
<font size="2" face="verdana">After clicking ''Add to Cart'', change the<br>
donation ''QUANTITY'' to the number of<br>
$10 increments you would like to donate.<br>
Example: for a $250 donation,<br>
change ''QUANTITY'' to 25.<br>
Then click ''Update Cart''. 
</font></p></td><td><font size="2" face="verdana">
  $10 Increments
  <br><font color="WHITE">__________________</font><!--for formatting-->
</font></td><td width="90"><!--for formatting-->
  <a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Donation+-+under+quantity%2C+enter+multiple+of+%2410+%28e.g.+Qty%3D5+for+a+%2450+donation%29+and+click+on+UPDATE+CART&amp;amount=10.00" target="paypal">
<img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  

<!-- *** 2010 raffle tickets. kept just in case can use as template in the future ***



<TR><TD ROWSPAN=8><FONT FACE=verdana SIZE=2>

  <A CLASS="boldlink" HREF="raffle.pdf" TARGET="co_link" TITLE="Pop-up: PDF"><B>Raffle Tickets: 5 tickets for $20</B></A>

<BR>Drawing Saturday, May 22, 2010 

  </TD>

  <TD><FONT FACE=verdana SIZE=2>Sports and Leisure @ 5 for $20

  </TD> 

  <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=5+Tickets+Sports+and+Leisure&amount=20.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a> 

</TD></TR>  

<TR><TD><FONT FACE=verdana SIZE=2>Pamper Yourself @ 5 for $20

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=5+Tickets+Pamper+Yourself&amount=20.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a> 

</TD></TR>  

<TR><TD><FONT FACE=verdana SIZE=2>For the Home @ 5 for $20

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=5+Tickets+For+the+Home &amount=20.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a> 

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>Musician Musings @ 5 for $20

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=5+Tickets+Musician+Musings&amount=20.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>A Family Affair @ 5 for $20

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=5+Tickets+A+Family+Affair&amount=20.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>An Event to Remember@ 5 for $20

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=5+Tickets+An+Event+to+Remember&amount=20.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>Taste of the Arts 1 @ 5 for $20

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=5+Tickets+Taste+of+the+Arts+1&amount=20.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>Taste of the Arts 2 @ 5 for $20

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=5+Tickets+Taste+of+the+Arts+2&amount=20.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   



<TR><TD ROWSPAN=8><FONT FACE=verdana SIZE=2>

  <A CLASS="boldlink" HREF="raffle.pdf" TARGET="co_link" TITLE="Pop-up: PDF"><B>Single Raffle Tickets</B></A>

<BR>Drawing Saturday, May 22, 2010 

  </TD>

  <TD><FONT FACE=verdana SIZE=2>Sports and Leisure @ $5 each

  </TD> 

  <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Single+ticket+Sports+and+Leisure&amount=5.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a> 

</TD></TR>  

<TR><TD><FONT FACE=verdana SIZE=2>Pamper Yourself @ $5 each

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Single+Ticket+Pamper+Yourself&amount=5.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a> 

</TD></TR>  

<TR><TD><FONT FACE=verdana SIZE=2>For the Home @ $5 each

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Single+Ticket+For+the+Home &amount=5.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a> 

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>Musician Musings @ $5 each

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Single+Ticket+Musician+Musings&amount=5.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>A Family Affair @ $5 each

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Single+Ticket+A+Family+Affair&amount=5.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>An Event to Remember@ $5 each

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Single+Ticket+An+Event+to+Remember&amount=5.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>Taste of the Arts 1 @ $5 each

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Single+Ticket+Taste+of+the+Arts+1&amount=5.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>Taste of the Arts 2 @ $5 each

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Single+Ticket+Taste+of+the+Arts+2&amount=5.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

-->

</tbody></table>  

<p>  
</p></center></td></tr></tbody></table><a class="bodylink" name="table">  


</a></font></p><p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(16,'/old/partners_pre20101204/','Partners & Sponsors','<h2>Sponsors and Strategic Partnerships</h2>


<p>The Columbia Orchestra gratefully acknowledges the following organizations and corporations which have provided us with support in the form of grants, in-kind donations, and other services.</p>

<p>The Orchestra also has a number of strategic partnerships with organizations
to whom we supply chamber music, educational programs, and other services.
If you would like to explore the possibility of a mutually beneficial
partnership with the Orchestra, please contact our Executive Director at 410-465-8777 or by e-mail at <a href="mailto:execdir@columbiaorchestra.org">execdir@columbiaorchestra.org</a>.</p>



<a href="http://www.hocoarts.org/" target="co_link"><img src="/images/logo-HCAC.gif" title="Pop-up: Howard County Arts Council" height="100" width="78" border="0"></a> 
<a href="http://www.bwfa.com/" target="co_link"><img src="/images/logo-bwfa.gif" title="Pop-up: Baltimore-Washington Financial Advisors" height="50" hspace="5" width="167" border="0"></a>
<img src="/images/logo-RCO.gif" title="The Rouse Company Foundation Logo" height="50" hspace="5" width="270" border="0">
<a href="http://www.msac.org/" target="co_link"><img src="/images/logo-msac.gif" title="Pop-up: Maryland State Arts Council" height="50" hspace="5" width="127" border="0"></a>
<a href="http://www.target.com/" target="co_link"><img src="/images/logo-target.gif" title="Pop-up: Target" height="100" width="90" border="0"></a>  
<a href="http://arts.endow.gov" target="co_link"><img src="/images/logo-nea.gif" title="Pop-up: National Endowment for the Arts" height="50" hspace="5" width="129" border="0"></a> 
<a href="http://www.musicarts.com" target="co_link"><img src="/images/logo-MA.gif" title="Pop-up: The Music and Arts Centers" height="50" hspace="5" width="167" border="0"></a>
<a href="https://www.pnc.com/" target="co_link"><img src="/images/logo-PNC.gif" title="Pop-up: PNC" height="50" hspace="5" width="166" border="0"></a> 
<a href="http://www.gailesviolin.com/" target="co_link"><img src="/images/logo-Gailes-small.jpg" title="Pop-up: Gailes Violin Shop" height="50" hspace="5" width="148" border="0"></a> 
<a href="http://columbiafoundation.org/" target="co_link"><img src="/images/logo-col-foundation.gif" title="Pop-up: Columbia Foundation" height="50" hspace="5" width="160" border="0"></a>
<a href="http://www.hcgh.org/content/" target="co_link"><img src="/images/logo-HCGH.gif" title="Pop-up: PNC" height="75" hspace="5" width="300" align="ABSMIDDLE" border="0"></a> 


<ul>
<li><a class="bodylink" href="http://amazon.com%20" target="co_link" title="Pop-up">Amazon</a></li>
<li>Audio Visual Innovations*</li>
<li><a class="bodylink" href="http://www.bsomusic.org/" target="co_link" title="Pop-up">Baltimore Symphony Orchestra</a>*</li>
<li><a class="bodylink" href="http://www.bwfa.com/" target="co_link" title="Pop-up">Baltimore Washington Financial Advisors</a></li>
<li><a class="bodylink" href="http://www.bankofamerica.com/" target="co_link" title="Pop-up">Bank of America</a></li>
<li><a class="bodylink" href="http://home.comcast.net/%7Ecandlelightconcerts/candleInfo.html" target="co_link" title="Pop-up">Candlelight Concert Series</a>*</li>
<li><a class="bodylink" href="http://www.chesapeakeshakespeare.com/" target="co_link" title="Pop-up">The Chesapeake Shakespeare Company</a>*</li>
<li><a class="bodylink" href="http://christchurchcolumbia.org/" target="co_link" title="Pop-up">Christ Episcopal Church</a>*</li>
<li><a class="bodylink" href="http://www.clydes.com" target="co_link" title="Pop-up">Clyde’s of Columbia</a>*</li>
<li><a class="bodylink" href="http://www.columbiaassociation.com" target="co_link" title="Pop-up">The Columbia Association</a></li>
<li><a class="bodylink" href="http://www.columbiafestival.com" target="co_link" title="Pop-up">The Columbia Festival of the Arts*</a></li>
<li>Cosi / CR Restaurant*</li>
<li><a class="bodylink" href="http://columbiafoundation.org" target="co_link" title="Pop-up">The Columbia Foundation</a></li>
<li>Duke Energy</li>
<li><a class="bodylink" href="http://www.gailesviolin.com/" target="co_link" title="Pop-up">Gailes’ Violin Shop</a></li>
<li><a class="bodylink" href="http://www.gardendesignbuild.com" target="co_link" title="Pop-up">Garden Design Build Group</a>*</li>
<li><a class="bodylink" href="http://www.thegatheringplace.tv" target="co_link" title="Pop-up">The Gathering Place</a>*</li>
<li><a class="bodylink" href="http://goodsearch.com" target="co_link" title="Pop-up">GoodSearch.com</a></li>
<li><a class="bodylink" href="http://www.hocoarts.org" target="co_link" title="Pop-up">Howard County Arts Council</a></li>
<li><a class="bodylink" href="http://www.co.ho.md.us" target="co_link" title="Pop-up">Howard County Government</a></li>
<li><a class="bodylink" href="http://www.visithowardcounty.com" target="co_link" title="Pop-up">Howard County Tourism Council</a>*</li>
<li><a class="bodylink" href="http://www.ironbridgewines.com" target="co_link" title="Pop-up">Iron Bridge Wine Company</a>*</li>
<li>James Ferry Photography* </li>
<li>Leadership Howard County*</li>
<li><a class="bodylink" href="http://www.msac.org" target="co_link" title="Pop-up">Maryland State Arts Council</a>*</li>
Medieval Times*</li>
<li><a class="bodylink" href="http://www.musicarts.com" target="co_link" title="Pop-up">Music and Arts Centers, Inc.</a></li>
<li><a class="bodylink" href="http://arts.endow.gov" target="co_link" title="Pop-up">National Endowment for the Arts</a></li>
<li>National Aquarium in Baltimore*</li>
<li>Oak Tree Furniture*</li>
<li>Patrick’s Hair Design*</li>
<li><a class="bodylink" href="http://www.patuxent.com" target="co_link" title="Pop-up">Patuxent Publications</a>*</li>
<li><a class="bodylink" href="https://www.pnc.com/" target="co_link">PNC</a></li>
<li>Pumplin Photography*</li>
<li>REP Stage*</li>
<li>The Rouse Company Foundation </li>
<li>Square D Foundation</li>
<li><a class="bodylink" href="http://www.target.com" target="co_link" title="Pop-up">Target</a></li>
<li>Toby’s Dinner Theatre*</li>
<li>Travelers Foundation</li>
<li>Treble C Music*</li>
<li>Unilever Foundation</li>
<li><a class="bodylink" href="http://www.community.ups.com/community/resources/foundation/" target="co_link" title="Pop-up">The UPS Foundation</a></li>
<li>Wal-Mart Foundation</li>
<li>Waverly Woods Golf Club*</li>
<li><a class="bodylink" href="http://www.wbal.com/" target="co_link" title="Pop-up">WBAL Radio</a>*</li>
<li><a class="bodylink" href="http://www.wbjc.com/" target="co_link" title="Pop-up">WBJC-FM</a>*</li>
<li>Wilhide’s Unique Flowers &amp; Gifts*</li>
</ul>

<p>* denotes in-kind contribution</p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(17,'/member_schedule/','Member Schedule','<h2>Members Schedule</h2>

<p align="left"><b>2011-2012 Rehearsal Schedule (as of June 14, 2011)</b>

<table class="sched">
<tr>
	<th>Date</th>
	<th> Activity</th>
	<th> Time</th>
	<th> Location</th>    
<tr/>
<tr>
	<td colspan="4"><hr /> </td>
</tr>
<tr>
	<td> Sun, Aug 14</td>
	<td> Auditions</td>
	<td> 1:00 - 5:00 PM</td>
	<td>Christ Episcopal</td>
</tr>
<tr>
	<td> Mon, Aug 15</td>
	<td> Auditions</td>
	<td> 7:00 - 10:00 PM</td>
	<td>Christ Episcopal</td>
</tr>
<tr>
	<td colspan="4"><hr /> </td>
</tr>
<tr>
	<td> Mon, Aug 22</td>
	<td> Rehearsal 1</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Aug 29</td>
	<td> Rehearsal 2 (HCPSS begins)</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Sept 5</td>
	<td> No Rehearsal (Labor Day) </td>
	<td> </td>
	<td> </td>
</tr>
<tr>
	<td> Mon, Sept 12</td>
	<td> Rehearsal 3 - Sectionals </td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Sept 19</td>
	<td> Rehearsal 4 </td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Sept 26</td>
	<td> Rehearsal 5 </td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Oct 3</td>
	<td> Rehearsal 6 </td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Oct 10</td>
	<td> Rehearsal 7 </td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	
	<td><b> Fri, Oct 14 </b></td>
	<td><b> Dress Rehearsal </b></td>
	<td><b> 7:30 - 10:15 PM</b></td>
	<td><b> Jim Rouse Theatre</b></td>
	
</tr>
<tr>
	<b>
	<td><b> Sat, Oct 15</b></td>
	<td><b> CLASSICAL CONCERT #1 </b></td>
	<td><b> 7:30 PM</b></td>
	<td><b> Jim Rouse Theatre</b></td>
	</b>
</tr>
<tr>
	<td colspan="4"><hr /> </td>
</tr>
<tr>
	<td> Mon, Oct 17</td>
	<td> Rehearsal 1 </td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Oct 24</td>
	<td> Rehearsal 2 </td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Oct 31</td>
	<td> Rehearsal 3 - Sectionals </td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td><b> Sat, Nov 5 </b></td>
	<td><b> GOSPEL GOES CLASSICAL </b></td>
	<td><b> TBD</b></td>
	<td><b> Reid Temple AME</b></td>
</tr>
<tr>
	<td> Mon, Nov 7</td>
	<td> Rehearsal 4 </td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Nov 14</td>
	<td> Rehearsal 5 </td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Nov 21</td>
	<td> Rehearsal 6 </td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Nov 28</td>
	<td> Rehearsal 7 </td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td><b> Thu, Dec 1 </b></td>
	<td><b> Extra Rehearsal w/ Chorus</b></td>
	<td><b> 7:30 - 10:15 PM</b></td>
	<td><b> TBD (Not Jim Rouse Theatre)</b></td>
</tr>
<tr>
	<td><b> Fri, Dec 2 </b></td>
	<td><b> Dress Rehearsal</b></td>
	<td><b> 7:30 - 10:15 PM</b></td>
	<td><b> TBD (Not Jim Rouse Theatre)</b></td>
</tr>
<tr>
	<td><b> Sat, Dec 3 </b></td>
	<td><b> CLASSICAL CONCERT #2</b></td>
	<td><b> 7:30PM</b></td>
	<td><b> Jim Rouse Theatre</b></td>
</tr>
<tr>
	<td><b> Sun, Dec 4 </b></td>
	<td><b> Heritage Signature Chorale Concert</b></td>
	<td><b> 3:00 PM (TBD) </b></td>
	<td><b> Washington, DC (TBD)</b></td>
</tr>
<tr>
	<td colspan="4"><hr /> </td>
</tr>
<tr>
	<td> Mon, Dec 5</td>
	<td> Rehearsal 1 </td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Dec 12</td>
	<td> Rehearsal 2 </td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Dec 19</td>
	<td> No Rehearsal (Winter Break)</td>
	<td> </td>
	<td> </td>
</tr>
<tr>
	<td> Mon, Dec 26</td>
	<td> No Rehearsal (Winter Break)</td>
	<td> </td>
	<td> </td>
</tr>
<tr>
	<td> Mon, Jan 2</td>
	<td> Rehearsal 3 (HCPSS back) </td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Jan 9</td>
	<td> Rehearsal 4 </td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Jan 16</td>
	<td> Rehearsal 5 (MLK Day) </td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td><b> Sat, Jan 21 </b></td>
	<td><b> Young Artist Competition</b></td>
	<td><b> 9:00AM - 5:00PM </b></td>
	<td><b> Christ Church </b></td>
</tr>
<tr>
	<td><b> Sun, Jan 22 </b></td>
	<td><b> Young Artist Competition</b></td>
	<td><b> 1:00PM - 5:00PM </b></td>
	<td><b> Christ Church </b></td>
</tr>
<tr>
	<td> Mon, Jan 23</td>
	<td> Rehearsal 6</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Jan 30</td>
	<td> Rehearsal 7</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td><b> Fri, Feb 3</b></td>
	<td><b> Dress Rehearsal</b></td>
	<td><b> 7:30 - 10:15 PM</b></td>
	<td><b> Jim Rouse Theatre</b></td>
</tr>
<tr>
	<td><b> Fri, Feb 4</b></td>
	<td><b> CLASSICAL CONCERT #3</b></td>
	<td><b> 7:30</b></td>
	<td><b> Jim Rouse Theatre</b></td>
</tr>
<tr>
	<td colspan="4"><hr /> </td>
</tr>
<tr>
	<td> Mon, Feb 6</td>
	<td> Rehearsal 1</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Feb 13</td>
	<td> Rehearsal 2</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Feb 20</td>
	<td> Rehearsal 3 (Presidents Day)</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td><b> Fri, Feb 24</b></td>
	<td><b> Dress Rehearsal </b></td>
	<td><b> 7:30 - 10:15 PM</b></td>
	<td><b> Jim Rouse Theater</b></td>
</tr>
<tr>
	<td><b> Sat, Feb 25</b></td>
	<td><b> YOUNG PEOPLE''S </b></td>
	<td><b> 12:30 & 3:00 PM</b></td>
	<td><b> Jim Rouse Theater</b></td>
</tr>
<tr>
	<td colspan="4"><hr /> </td>
</tr>
<tr>
	<td> Mon, Feb 27</td>
	<td> Rehearsal 1</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Mar 5</td>
	<td> Rehearsal 2</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Thu, Mar 8</td>
	<td> Extra Rehearsal 3</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Mar 12</td>
	<td> Rehearsal 4</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td><b> Fri, Mar 16</b></td>
	<td><b> Dress Rehearsal</b></td>
	<td><b> 7:30 - 10:00 PM</b></td>
	<td><b> Jim Rouse Theatre</b></td>
</tr>
<tr>
	<td><b> Sat, Mar 17</b></td>
	<td><b> POPS CONCERT (St Pats) </b></td>
	<td><b> 7:30</b></td>
	<td><b> Jim Rouse Theatre</b></td>
</tr>
<tr>
	<td colspan="4"><hr /> </td>
</tr>
<tr>
	<td> Mon, Mar 19</td>
	<td> Rehearsal 1</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Mar 26</td>
	<td> Rehearsal 2</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td><b> Wed, Mar 28(TBD)</b></td>
	<td><b> HCPSS School Day Concert </b></td>
	<td><b> AM TBD</b></td>
	<td><b> TBD</b></td>
</tr>
<tr>
	<td colspan="4"><hr /> </td>
</tr>
<tr>
	<td> Mon, Apr 2</td>
	<td> No Rehearsal (Spring Break)</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Apr 9</td>
	<td> Rehearsal 1 (Easter Monday)</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Apr 16</td>
	<td> Rehearsal 2</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Apr 23</td>
	<td> Rehearsal 3 - Sectionals</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, Apr 30</td>
	<td> Rehearsal 4</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, May 7</td>
	<td> Rehearsal 5</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, May 14</td>
	<td> Rehearsal 6</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, May 21</td>
	<td> Rehearsal 7</td>
	<td> 7:30 - 10:00 PM</td>
	<td> Gathering Place</td>
</tr>
<tr>
	<td> Mon, May 28</td>
	<td> No Rehearsal (Memorial Day)</td>
	<td> </td>
	<td> </td>
</tr>
<tr>
	<td><b> Fri, Jun 1</b></td>
	<td><b> Dress Rehearsal</b></td>
	<td><b> 7:30 - 10:15 PM</b></td>
	<td><b> Jim Rouse Theater</b></td>
</tr>
<tr>
	<td><b> Sat, Jun 2</b></td>
	<td><b> CLASSICAL CONCERT #4</b></td>
	<td><b> 7:30 </b></td>
	<td><b> Jim Rouse Theater</b></td>
</tr>
<tr>
	<td colspan="4"><hr /> </td>
</tr>
<tr>
	<td><b> TBD Jun</b></td>
	<td><b> ST JOHN BAPTIST CHURCH</b></td>
	<td><b> TBD </b></td>
	<td><b> St John Baptist Church</b></td>
</tr>
<tr>
	<td><b> TBD Jun</b></td>
	<td><b> SUNSET SERENADE</b></td>
	<td><b> 7:00 PM </b></td>
	<td><b> Centennial Park</b></td>
</tr>
<tr>
	<td colspan="4"><hr /> </td>
</tr>
</table>

<!--
    <p align="center"><strong>2010-2011 Rehearsal Schedule (as of July 25, 2010)</strong> <br />
    </p>
    <p>Sun, Aug 15 Auditions 1:00 – 5:00 PM Christ Episcopal</p>
    <p>Mon, Aug 16 Auditions 7:00 – 10 PM Christ Episcopal <br />
    </p>
    <p>Mon, Aug 23 Rehearsal 1 7:30 – 10 PM Gathering Place</p>
    <p>Mon, Aug 30 Rehearsal 2 7:30 – 10 PM  Gathering Place</p>
    <p>Mon, Sept 6 No Rehearsal (Labor Day)</p>
    <p>Mon, Sept 13 Rehearsal 3  Sectionals 7:30 – 10 PM Gathering Place</p>
    <p>Mon, Sept 20 Rehearsal 4 7:30 – 10 PM  Gathering Place</p>
    <p>Mon, Sept 27 Rehearsal 5 7:30 – 10 PM  Gathering Place </p>
    <p>Mon, Oct 4 Rehearsal 6 7:30 – 10 PM Gathering Place</p>
    <p>Mon, Oct 11 Rehearsal 7 7:30 – 10 PM  Gathering Place</p>
    <p><strong>Fri, Oct 15 Dress Rehearsal 7:30 – 10:15 PM  Jim Rouse Theatre</strong></p>
    <p><strong>Sat, Oct 16 CLASSICAL CONCERT #1 7:30 PM Jim Rouse Theatre</strong> <br />
    </p>
    <p>Mon, Oct 18 Rehearsal 1 7:30 – 10 PM Gathering Place</p>
    <p>Mon, Oct 25 Rehearsal 2 7:30 – 10 PM Gathering Place</p>
    <p>Mon, Nov 1 Rehearsal 3 Sectionals 7:30 – 10 PM Gathering Place</p>
    <p>Sat, Nov 6 St. Johns Baptist Rehearsal – 2pm St. Johns</p>
    <p><strong>Sun, Nov 7 St. Johns Baptist Performance 5:00 PM</strong>(remember changed time)</p>
    <p>Mon, Nov 8 Rehearsal 4 7:30 – 10 PM Gathering Place</p>
    <p>Mon, Nov 15 Rehearsal 5 7:30 – 10 PM  Gathering Place</p>
    <p><strong>Sat, Nov 20 Chamber Concert 7:30 PM Christ Episcopal</strong></p>
    <p>Mon, Nov 22 Rehearsal 6  7:30 – 10 PM  Gathering Place</p>
    <p>Mon, Nov 29 Rehearsal 7 7:30 – 10 PM  Gathering Place</p>
    <p><strong>Fri, Dec 3 Dress Rehearsal 7:30 – 10:15 PM  Jim Rouse Theatre</strong></p>
    <p><strong>Sat, Dec 4</strong> <strong>CLASSICAL CONCERT #2 7:30 PM Jim Rouse Theatre</strong> <br />
    </p>
    <p>Mon, Dec 6  Rehearsal 1<strong> </strong>7:30 – 10 PM  Gathering Place</p>
    <p>Mon, Dec 13 Rehearsal 2 7:30 – 10 PM  Gathering Place</p>
    <p>Mon, Dec 20  No Rehearsal (Winter Break)</p>
    <p>Mon, Dec 27 No Rehearsal (Winter Break)</p>
    <p>Mon, Jan 3 Rehearsal 3 7:30 – 10 PM  Gathering Place</p>
    <p><strong>Fri, Jan 7 Dress Rehearsal 7:30 – 10:15 PM Jim Rouse Theatre</strong></p>
    <p><strong>Sat, Jan 8 YOUNG PEOPLE’S  12:30 &amp; 3:00 PM Jim Rouse Theatre</strong> <br />
    </p>
    <p>Mon, Jan 10 Rehearsal 1 7:30 – 10 PM  Gathering Place</p>
    <p>Mon, Jan 17 Rehearsal 2  (MLK Day) 7:30 – 10 PM  Gathering Place</p>
    <p>Mon, Jan 24 Rehearsal 3 7:30 – 10 PM  Gathering Place</p>
<p><strong>Sat, Jan 29 Young Artist Competition 10:30 Christ Episcopal</strong></p>
<p><strong>Sun, Jan 30 Young Artist Competition 2:00 Christ Episcopal</strong></p>
    <p>Mon, Jan 31 Rehearsal 4 7:30 – 10 PM  Gathering Place</p>
    <p>Mon, Feb 7 Rehearsal 5 7:30 – 10 PM Gathering Place</p>
    <p><strong>Fri, Feb 11 Dress Rehearsal  7:30 – 10 PM  Jim Rouse Theatre</strong></p>
    <p><strong>Sat, Feb 12 POPS CONCERT 7:30 PM Jim Rouse Theatre</strong> <br />
    </p>
    <p>Mon, Feb 14 Rehearsal 1 7:30 – 10 PM Gathering Place</p>
    <p>Mon, Feb 21 Rehearsal 2 7:30 – 10 PM  Gathering Place</p>
    <p>Mon, Feb 28 Rehearsal 3<strong> </strong>Sectionals 7:30 – 10 PM  Gathering Place</p>
    <p>Mon, Mar 7 Rehearsal 4 7:30 – 10 PM  Gathering Place</p>
    <p>Mon Mar 14 Rehearsal 5 7:30 – 10 PM  Gathering Place</p>
    <p>Thu, Mar 17 Extra Rehearsal 6 7:30 – 10 PM  Gathering Place</p>
    <p>Mon Mar 21 Rehearsal 7 7:30 – 10 PM  Gathering Place</p>
    <p><strong>Fri, Mar 25    Dress Rehearsal 7:30 – 10:15 PM  Jim Rouse Theatre</strong></p>
    <p><strong>Sat, Mar 26 CLASSICAL CONCERT #3 7:30 PM Jim Rouse Theatre</strong> <br />
    </p>
    <p>Mon, Mar 28 No Rehearsal </p>
    <p><strong>Sat, Apr 2 Chamber Concert 7:30 Christ Episcopal</strong></p>
    <p>Mon, Apr 4 Rehearsal 1 7:30 – 10 PM  Gathering Place</p>
    <p>Mon, Apr 11 Rehearsal 2 7:30 – 10 PM  Gathering Place</p>
    <p>Mon, Apr 18 No Rehearsal (Spring Break)</p>
    <p>Mon, Apr 25 Rehearsal 3 <strong>Sectionals</strong> 7:30 – 10 PM  Gathering Place</p>
    <p>Mon, May 2 Rehearsal 4 7:30 – 10 PM  Gathering Place</p>
    <p>Mon, May 9 Rehearsal 5 (split reh) 7:30 – 10 PM  Gathering Place</p>
    <p>Sat, May 14 Woodwind/Brass/Timpani 12:30-4:30 PM McDaniel Big Baker</p>
    <p><strong>Sun, May 15</strong> Woodwind/Brass/Timpani <strong>7:00 PM CONCERT</strong> McDaniel Big Baker</p>
    <p>Mon, May 16 Rehearsal 6 7:30 – 10 PM  Gathering Place</p>
    <p><strong>Sat, May 21 Chamber Concert 7:30 Christ Episcopal</strong></p>
    <p>Mon, May 23 Rehearsal 7 7:30 – 10 PM  Gathering Place</p>
    <p>Mon, May 30 No Rehearsal (Memorial Day)</p>
    <p>Thu, Jun 2 Extra Rehearsal 8 w/Chorus 7:30 – 10:15 PM  Jim Rouse Theatre </p>
    <p><strong>Fri, Jun 3 Dress Rehearsal </strong>w/Chorus<strong> 7:30 – 10:15 PM  Jim Rouse Theatre</strong></p>
    <p><strong>Sat, Jun 4 CLASSICAL CONCERT #4 7:30 PM Jim Rouse Theatre</strong></p>
    <p>Mon, Jun 6 NO REHEARSAL </p>
    <p>Mon, Jun 13 NO REHEARSAL </p>
    <p>Mon, Jun 20 Rehearsal 7 7:30 – 10 PM  Gathering Place</p>
    <p>Mon, Jun 27 Rehearsal 7 7:30 – 10 PM  Gathering Place</p>
    <p><strong>Weds, Jun 29 CENTENNIAL PARK CONCERT: 6:00 Sound Check, 7:00 Concert</strong></p>

-->
',0,'',0);
INSERT INTO "django_flatpage" VALUES(18,'/stuff_from_jason/','Stuff From Jason','<h2>Stuff from Jason</h2>

<h3>October Concert Rehearsal Schedule</h3>
<p><a class="bodylink" href="/uploads/2011-12/jason_stuff/rehscheds/Reh_Sched_Oct_2011_(corr).doc">In all its glory.</a></p>

<h3>Stuff strings need</h3>
<p>
<a class="bodylink" href="/private/hbow/HVn1a-1.pdf">Vn1a-1</a>,
<a class="bodylink" href="/private/hbow/HVn1a-2.pdf">Vn1a-2</a>,
<a class="bodylink" href="/private/hbow/HVn1b-1.pdf">Vn1b-1</a>,
<a class="bodylink" href="/private/hbow/HVn1b-2.pdf">Vn1b-2</a>,
<a class="bodylink" href="/private/hbow/HVn2-1.pdf">Vn2-1</a>,
<a class="bodylink" href="/private/hbow/HVn2-2.pdf">Vn2-2</a>,
<a class="bodylink" href="/private/hbow/HVa-1.pdf">Va-1</a>,
<a class="bodylink" href="/private/hbow/HVa-2.pdf">Va-2</a>,
<a class="bodylink" href="/private/hbow/HVc-1.pdf">Vc-1</a>,
<a class="bodylink" href="/private/hbow/HVc-2.pdf">Vc-2</a>,
<a class="bodylink" href="/private/hbow/HCb-1.pdf">Cb-1</a>,
<a class="bodylink" href="/private/hbow/HCb-2.pdf">Cb-2</a>
</p>

<h3>Bowings</h3>
<p>Tchaikovsky, first violin:
<a class="bodylink" href="/uploads/2011-12/Tchvn1-1.pdf">Part 1</a>,
<a class="bodylink" href="/uploads/2011-12/Tchvn1-2.pdf">Part 2</a>,
<a class="bodylink" href="/uploads/2011-12/Tchvn1-3.pdf">Part 3</a>,
<a class="bodylink" href="/uploads/2011-12/Tchvn1-4.pdf">Part 4</a>
</p>

<p>Tchaikovsky, second violin:
<a class="bodylink" href="/uploads/2011-12/Tchvn2-1.pdf">Part 1</a>,
<a class="bodylink" href="/uploads/2011-12/Tchvn2-2.pdf">Part 2</a>,
<a class="bodylink" href="/uploads/2011-12/Tchvn2-3.pdf">Part 3</a>,
<a class="bodylink" href="/uploads/2011-12/Tchvn2-4.pdf">Part 4</a>
</p>

<p>Tchaikovsky, viola:
<a class="bodylink" href="/uploads/2011-12/Tchvla-1.pdf">Part 1</a>,
<a class="bodylink" href="/uploads/2011-12/Tchvla-2.pdf">Part 2</a>,
<a class="bodylink" href="/uploads/2011-12/Tchvla-3.pdf">Part 3</a>,
<a class="bodylink" href="/uploads/2011-12/Tchvla-4.pdf">Part 4</a>
</p>

<p>Tchaikovsky, cello:
<a class="bodylink" href="/uploads/2011-12/Tchvc-1.pdf">Part 1</a>,
<a class="bodylink" href="/uploads/2011-12/Tchvc-2.pdf">Part 2</a>,
<a class="bodylink" href="/uploads/2011-12/Tchvc-3.pdf">Part 3</a>,
<a class="bodylink" href="/uploads/2011-12/Tchvc-4.pdf">Part 4</a>
</p>

<p>Tchaikovsky, bass:
<a class="bodylink" href="/uploads/2011-12/Tchcb-1.pdf">Part 1</a>,
<a class="bodylink" href="/uploads/2011-12/Tchcb-2.pdf">Part 2</a>,
<a class="bodylink" href="/uploads/2011-12/Tchcb-3.pdf">Part 3</a>,
<a class="bodylink" href="/uploads/2011-12/Tchcb-4.pdf">Part 4</a>
</p>

<h3>Programs and instrumentation</h3>
<p>Here''s the <a class="bodylink" href="/uploads/2011-12/jason_stuff/Program_update_personnel_version_(080611update).doc" target="co_link" title="Pop-up">pieces and personnel document</a> in MS Word format Jason emailed earlier in the summer <em>with the American Composer Piece added</em>.</p>


<h3>Member Handbook</h3>

<p>Here is the <a class="bodylink" href="/uploads/2011-12/CO Member Handbook (082111).pdf" target="co_link" title="Pop-up">2011 Orchestra Member Handbook in PDF format</a>.</p>

<h3>Reimbursement Form</h3>

<p>Here is the <a class="bodylink" href="/uploads/2010/CO_Check_Request.xls" target="co_link" title="Pop-up">Check Request / Reimbursement Form (Excel)</a>.</p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(19,'/young_artist_competition/','Young Artist Competition 2011','<h2>Young Artist Competition</h2>

<h3>2011 YOUNG ARTIST COMPETITION RESULTS</h3>

<p>The Columbia Orchestra is pleased to announce the following winners of the 2011 Young Artist Competition:<p>

<p>SENIOR DIVISION (string)<br>
<b>Alan Zhang - Winner</b><br>
Giselle Nakpil - Alternate
Diane Yang - Honorable Mention<br>
Qian Mei - Honorable Mention<br>
Gabriella Studt - Honorable Mention<br>
Andrew Kwon - Honorable Mention<br>
Lindsey Orcutt - Honorable Mention<br>
Julianna Hsing - Honorable Mention</p>

<p>SENIOR DIVISION (wind)<br>
<b>Yaeji Shin - Winner</b><br>
Elizabeth Kim - Alternate<br>
Anna Rimlinger - Honorable Mention<br>
Felix Lee - Honorable Mention</p>

<p>JUNIOR DIVISION<br>
<b>Sarah Kim - Winner</b><br>
Joshua Choi - Alternate<br>
Winnie Tsao - Honorable Mention<br>
Kenneth Naito - Honorable Mention<br>
Samuel Choi - Honorable Mention<br>
Philip Milman - Honorable Mention<br>
Noelle Naito - Honorable Mention</p>

<p>Congratulations to our winners and to all the students who participated. The judges and audience were amazed by your talent and we thank you all for your participation!</p>

<br>
<br>
<h3>2011 YOUNG ARTIST COMPETITION SCHEDULE </h3>
<p> The Columbia Orchestra is pleased to announce the schedule for the 2011 Young Artist Competition for both the Junior and Senior Division. Good luck to all contestants!</p>

<h3>SENIOR DIVISION - SATURDAY JANUARY 29, 2011* </h3>

<p>*Snow Date: Saturday, February 5, 2011 with the same schedule as Saturday, January 29, 2011</p>

<table>
<tr>
    <th>Time</th>
    <th>Participant</th>
</tr>
<tr>
    <td>10:30 am</td>
    <td>Woojin Han</td>
</tr>
<tr>
    <td>10:41 am</td>
    <td>Cameron Bowling</td>
</tr>
<tr>
    <td>10:55 am</td>
    <td>Ciara McAfee</td>
</tr>
<tr>
    <td>11:13 am</td>
    <td>Edmond Kim</td>
</tr>
<tr>
    <td>11:31 am</td>
    <td>Samuel Hui</td>
</tr>
<tr>
    <td>11:42 am</td>
    <td>Joshua Kim</td>
</tr>
<tr>
    <td>11:53 am</td>
    <td>Lindsey Orcutt</td>
</tr>
<tr>
    <td>12:02 pm</td>
    <td>Julianna Hsing</td>
</tr>
<tr>
    <td colspan="2"><center>BREAK</center></td>
</tr>
<tr>
    <td>1:30 pm</td>
    <td>Yaeji Shin</td>
</tr>
<tr>
    <td>1:44 pm</td>
    <td>Andrew Kwon</td>
</tr>
<tr>
    <td>1:57 pm</td>
    <td>Elizabeth Kim</td>
</tr>
<tr>
    <td>2:08 pm</td>
    <td>Joseph Zia</td>
</tr>
<tr>
    <td>2:21 pm</td>
    <td>Alex Wang</td>
</tr>
<tr>
    <td>2:31 pm</td>
    <td>Morgan Hrab</td>
</tr>
<tr>
    <td>2:42 pm</td>
    <td>Mary Lin</td>
</tr>
<tr>
    <td>2:54 pm</td>
    <td>Gabriella Studt</td>
</tr>
<tr>
    <td>3:05 pm</td>
    <td>Yonick Marere</td>
</tr>
<tr>
    <td>3:19 pm</td>
    <td>Madeline Studt</td>
</tr>
<tr>
    <td>3:32 pm</td>
    <td>Qian Mei</td>
</tr>
<tr>
    <td colspan="2"><center>BREAK</center></td>
</tr>
<tr>
    <td>4:05 pm</td>
    <td>Casey Mason</td>
</tr>
<tr>
    <td>4:15 pm</td>
    <td>Giselle Nakpil</td>
</tr>
<tr>
    <td>4:28 pm</td>
    <td>Felix Lee</td>
</tr>
<tr>
    <td>4:41 pm</td>
    <td>Jess Albrecht</td>
</tr>
<tr>
    <td>4:52 pm</td>
    <td>Alan Zhang</td>
</tr>
<tr>
    <td>5:06 pm</td>
    <td>Anna Rimlinger</td>
</tr>
<tr>
    <td>5:24 pm</td>
    <td>Diane Yang</td>
</tr>
<tr>
    <td>5:35 pm</td>
    <td>Deliberation</td>
</tr>
<tr>
    <td>6:10 pm</td>
    <td> Announcement Decision</td>
</tr>
</table>

<h3>JUNIOR DIVISION - SUNDAY JANUARY 30, 2011* </h3>

<p>*Snow Date: Sunday, February 6, 2011 with the same schedule as Sunday, January 30, 2011</p>

<table>
<tr>
    <th>Time</th>
    <th>Participant</th>
</tr>
<tr>
    <td>2:00 pm</td>
    <td>Sarah Kim</td>
</tr>
<tr>
    <td>2:12 pm</td>
    <td>Noelle Naito</td>
</tr>
<tr>
    <td>2:22 pm</td>
    <td>Jake Grandolfo</td>
</tr>
<tr>
    <td>2:29 pm</td>
    <td>Elton Tong</td>
</tr>
<tr>
    <td>2:40 pm</td>
    <td>Kenneth Naito</td>
</tr>
<tr>
    <td>2:52 pm</td>
    <td>Joshua Choi</td>
</tr>
<tr>
    <td>3:01 pm</td>
    <td>Samuel Choi</td>
</tr>
<tr>
    <td colspan=2><center>BREAK</center></td>
</tr>
<tr>
    <td>3:30 pm</td>
    <td>Lisa Choi</td>
</tr>
<tr>
    <td>3:43 pm</td>
    <td>Winnie Tsao</td>
</tr>
<tr>
    <td>3:53 pm</td>
    <td>Evelyn Chen</td>
</tr>
<tr>
    <td>4:04 pm</td>
    <td>Philip Milman</td>
</tr>
<tr>
    <td>4:10 pm</td>
    <td>Deliberation</td>
</tr>
<tr>
    <td>4:30 pm</td>
    <td> Announcement Decision</td>
</tr>
</table>


<h3> YOUNG ARTIST COMPETITION DETAILS </h3>
<p>The Columbia Orchestra is pleased to announce its Young Artist Competition for 2010–2011. This event is open to all students of string, wind, and percussion instruments through 12th grade who currently reside, attend school, or receive music instruction in Howard County. Previous first place winners are not eligible to reenter the same division. Please help us run the best possible event by reading and following all current policies.</p>

<h3>CATEGORIES AND DIVISIONS</h3>

<p>The 2010–2011 Columbia Orchestra Young Artist Competition will have two divisions: </p>

<ul>
<li>JUNIOR—through 8th grade</li>
<li>SENIOR—9th through 12th grade</li>
</ul>

<p>The Senior Division now has two separate categories: STRING (violin, viola, cello, and bass) and WINDS AND PERCUSSION (woodwind, brass, and percussion). The Junior Division will continue to have only one category: INSTRUMENTAL (to include all string, woodwind, brass, and percussion instruments). <strong>There is no piano category in either division.</strong> Only one application per individual is permitted; multiple applications on different instruments will not be accepted.</p>

<h3>COMPETITION SCHEDULE</h3>

<p>
<strong>Monday, December 20, 2010:</strong> Postmark deadline for entry forms<br>
<strong>Wednesday, January 12, 2011:</strong> Individual audition times will be posted on this web page<br>
<strong>Saturday, January 29, 2011, 10:30 AM to 6:00 PM:</strong> Auditions<br>
<strong>Sunday, January 30, 2011, 2:00 PM to 8:00 PM:</strong> Auditions<br>
<strong>Saturday, February 5, 2011, 10:30 AM to 6:00 PM:</strong> Auditions Snow Date<br>
<strong>Sunday, February 6, 2011, 2:00 PM to 8:00 PM:</strong> Auditions Snow Date<br>
<strong>Saturday, March 26, 2011, 7:30 PM:</strong> Columbia Orchestra concert featuring winners
</p>

<h3>AUDITION PROCESS</h3>

<p>All entrants will be scheduled to audition on Saturday, January 29, and/or Sunday, January 30, 2011, at Christ Episcopal Church, 6800 Oakland Mills Road, Columbia, MD 21045. Snow dates are Saturday, February 5, and Sunday, February 6, 2011. A tuned grand piano will be provided for accompanists. Large percussion equipment may be provided on request; please note requested instruments on your application form for a determination in advance.</p>

<p>Three professional judges from outside Howard County will select a Junior Division Instrumental winner, a Senior Division String winner, and a Senior Division Wind/Percussion winner. Judges may elect not to choose a winner in any or all categories.</p>

<p>Audition judges will write critiques, name Winners and Alternates, and award Honorable Mentions. Winners of the competition will be selected on January 29 and 30, 2011, and will perform with the Columbia Orchestra on Saturday, March 26, 2011, in the Jim Rouse Theatre. Winners will be announced at the completion of auditions, and certificates of participation will be mailed to each participant. The decision of the judges is final and not subject to protest. All participants will receive two complimentary tickets to the Columbia Orchestra concert featuring the winners. The winners will each receive a nominal cash prize from the Shirley Mullinix Scholarship Fund, a complimentary portrait package valued at $300 from <a class="bodylink" href="http://www.jamesferry.com/" target="co_link" title="Pop-up">James Ferry Photography</a>, and a $100 gift certificate from <a class="bodylink" href="http://gailesviolin.com/" target="co_link" title="Pop-up">Gailes Violin Shop</a>.</p>

<h3>COMMUNICATION</h3>

<p>The teacher/parent assumes responsibility for communicating all information concerning the competition to his/her student/child, and will ensure that entry forms are accurately and completely filled out and mailed by the postmarked deadline. <strong>Entry forms must be postmarked by Monday, December 20, 2010. Late and/or incomplete entries will not be accepted. Please check this web page after January 12, 2011, for individual audition times. Teachers/parents must supply copies of all information received to their students/children and accompanists.</strong></p>

<h3>REPERTOIRE REQUIREMENTS</h3>

<p>Entrant’s total performance may include one movement of any standard concerto, a single-movement work, or one, two, or three movements of not more than fifteen (15) minutes total performance from a suite, divertimento, or concertino. There is no required repertoire list; teachers should provide guidance in selecting level-appropriate literature for the student.</p>

<p>An original, published copy of the music must be presented to the judges at the competition. Memorization is optional. Any questions concerning repertoire should be directed to Jason Love, Music Director, at 410-465-8777.</p>

<p>A teacher may enter a maximum of three students playing the same movement of the same concerto. No changes in repertoire will be allowed after the application is submitted. Entry forms <strong>cannot</strong> be resubmitted with replacement repertoire.</p>

<p><strong>All repertoire is accepted subject to the availability of orchestra accompaniment parts. Teachers/parents must check the availability of orchestra parts for all repertoire and indicate this on the entry form.</strong> (This information is available through most music stores.) Some accompaniments are only available through foreign publishers or on rental, and may cost $500 or more. <strong>The Columbia Orchestra shall not incur any cost above $200 to acquire the orchestral accompaniment. Should the applicant choose to perform repertoire that exceeds this limit, he/she shall be responsible for any additional expenses incurred.</strong> Parents and teachers must acknowledge their understanding and acceptance of this policy on the registration form.</p>

<p><strong>Photocopied music will not be accepted and will result in automatic disqualification.</strong> The original, published music that students submit for the judges is in addition to the published music used by the student and/or accompanist.</p>
 
<h3>ACCOMPANISTS</h3>

<p>Each contestant will be responsible for providing his/her own accompanist for the auditions. <strong>Teachers and parents may accompany their own child/student.</strong></p>

<p>When possible, accompanists with more than one contestant will be scheduled as close as possible within the same division. <strong>If an accompanist’s name is not on the entry form, adjacent performances cannot be scheduled.</strong></p>

<p>Teachers/parents are responsible for notifying accompanists of the audition schedule posted on the Columbia Orchestra website at www.columbiaorchestra.org/youngartists.shtml. <strong>Accompanists’ requests to alter the published schedule will not be honored.</strong></p>

<h3>VIDEOTAPING</h3>

<p>During the auditions, a parent/teacher may only videotape his/her child/student. Videotaping of other contestants is not permitted. Parents may videotape the Columbia Orchestra concert featuring the competition winners from a specified location in the performance venue. Anyone videotaping at the auditions or concert must abide by Columbia Orchestra policies and not interfere with the auditions or presentation of the concert. The concert will also be professionally recorded (audio only), with a compact disc copy provided to the winners.</p>

<h3>APPLICATION PROCESS</h3>

<p><strong>A separate copy of the enclosed entry form must be completed for each applicant and must be signed by the student, parent/guardian, and teacher.</strong> Incomplete entry forms will not be accepted.</p>

<p>An entry fee of $45.00 must be included for each application. Checks or money orders must be made payable to The Columbia Orchestra, and may be submitted by either parents or teachers. (This fee does not include the services of an accompanist.)</p>

<p><strong>The entry form and application fee must be postmarked by Monday, December 20, 2010.</strong> The Columbia Orchestra Young Artist Competition offers a unique opportunity for students. In order to produce this event, the cooperation and compliance with all stated policies is required by the students, parents, and teachers.</p>

<h3>CONTACT INFORMATION</h3>

<p>Please direct all inquiries and mail all entries to the following:</p>

<p>Annette Szawan, Chairperson<br>
Columbia Orchestra Young Artist Competition<br>
8510 High Ridge Road<br>
Ellicott City, MD  21043-3308<br>
<br>
Phone: 410-465-8777, extension 4<br>
E-mail: <a href="mailto:youngartists@columbiaorchestra.org">youngartists@columbiaorchestra.org</a></p>
 
<h3>ACCOMPANISTS</h3>

<p>The following names are provided as a courtesy and do not represent a recommendation or endorsement by the Columbia Orchestra.</p>

<ul>
<li>Deborah Allen: 410-381-0133</li>
<li>Dan Hoffner: 410-465-0104</li>
<li>David Holmes:410-730-7083</li>
<li>Li-Tan Hsu: 443-415-2077</li>
<li>Lois Hunter: 410-461-4094</li>
<li>Lum Fun Lee: 410-461-6207, 443-420-1054 (w)</li>
<li>Sue Pumplin: 410-730-6306</li>
<li>Susan Ricker: 410-744-1184</li>
<li>Celeste Rusconi: 410-531-9445</li>
<li>Phyllis Stanley: 410-992-9373</li>
<li>Kathy Vadala: 301-422-0362</li>
</ul>

<p><strong>Please download an Application Form in PDF format <a class="bodylink" href="/uploads/2010/YAComp2011/Young_Artist_Form_10-11.pdf" target="co_link" title="Pop-up">here</a>.</strong></p>

<p><strong>You can also download a <a class="bodylink" href="/uploads/2010/YAComp2011/Young_Artist_Info_10-11.pdf" target="co_link" title="Pop-up">printer-friendly version</a> of the information on this web page.</strong></p>

<p><strong>Read about last year''s competition <a class="bodylink" href="/young_artist_comp_2010/" target="co_link" title="Pop-up">here</a>.</strong></p> 
',0,'',0);
INSERT INTO "django_flatpage" VALUES(20,'/press_room/','Press Room','<h2>Press Room</h2>

<p>Here''s our March 26 concert flier <a class="bodylink" href="/uploads/2010/CO_11MAR26_Concert-Korean.pdf" target="co_link" title="Pop-up">with Korean translations</a>.</p>

<p><strong>Aug 19, 2010:</strong> For our programming at a glance, download the <a class="bodylink" href="/uploads/2010/CO_Season_Overview_2010-11.pdf" target="co_link" title="Pop-up">2010-2011 Season Overview in PDF format.</a></p>',0,'',0);
INSERT INTO "django_flatpage" VALUES(21,'/employment/','Employment','<h2>Employment Opportunities</h2>






<h3>OPERATIONS MANAGER VACANCY</h3>

<p>
<a class="bodylink"
href="/uploads/2011-12/CO Operations Mgr Vacancy 2011.pdf"
target="co_link" title="Pop-up">Click here for a PDF version of this
vacancy posting.</a></p>

<p><strong>The Columbia Orchestra is seeking a part-time Operations Manager ($10,000 annually for 10–15 hours per week).</strong> Hours are flexible, but include business-day tasks and occasional evenings. Availability for all weekend concert dates and Friday evening dress rehearsals is required (please see <a href="http://www.columbiaorchestra.org">www.columbiaorchestra.org</a> for schedule). Must be able to provide own transportation to fulfill designated responsibilities throughout Howard County. The Operations Manager reports to the Executive Director.</p>

<p><strong>SPECIFIC DUTIES include, but are not limited to, the following:</strong></p>
<ul>
<li>
<strong>Rehearsal Logistics</strong>, including scheduling in conjunction with the Music Director and Executive
  Director; arranging for equipment moves, set-up, and teardown; preparing seating charts; and serving
  as a liaison to rehearsal venue staff.
</li>
<li>
<strong>Concert Production</strong>, including contracting of concert venues; providing set-up diagrams; arranging
  for equipment moves and transportation of concessions and merchandise for sale; coordinating pre-
  concert lectures, photography, and concert recording; serving as Stage Manager; and acting as liaison
  between the Music Director, performers, guest artists, and venue staff.
</li>
<li>
<strong>Accounting</strong>, to include the processing of all incoming revenue, ensuring that all invoices are verified
  and paid in a timely manner, and working with the Treasurer to ensure that financial controls and
  Generally Accepted Accounting Principles are maintained.
</li>
<li>
<strong>Fundraising</strong>, assisting the Executive Director in preparing grant applications and reports, and working
  with the Board of Directors and staff to implement fundraising campaigns and events.
</li>
<li>
<strong>Marketing and Community Engagement</strong>, working with staff, board, and volunteers to raise
  community awareness and to expand the reach of the orchestra.
</li>
</ul>

<p><strong>SKILLS AND PREREQUISITES:</strong></p>
<ul>
<li>
<strong>Self-motivation and ability to work without supervision.</strong>
</li>
<li>
<strong>Strong interpersonal and communication skills.</strong>
</li>
<li>
<strong>Musical experience</strong> is strongly recommended.
</li>
<li>
<strong>Working knowledge of all Microsoft Office
applications.</strong> Familiarity with FileMaker Pro and Adobe
Creative Suite (InDesign, Photoshop, Acrobat) or page layout programs
a plus.
</li>
<li>
<strong>Knowledge of Howard County, especially Columbia and Ellicott City,</strong> considered helpful.
</li>
</ul>

<p><strong>FOR FURTHER INFORMATION, please contact:</strong></p>

<blockquote>
<p>
Tedd Griepentrog, Executive Director<br/>
The Columbia Orchestra<br/>
Howard Co. Center for the Arts<br/>
8510 High Ridge Road<br/>
Ellicott City, MD 21043<br/>
Phone:     (410) 465-8777<br/>
Fax:       (410) 465-8778<br/>
E-mail: <a href="mailto:execdir@columbiaorchestra.org">execdir@columbiaorchestra.org</a><br/>
Website: <a href="http://www.columbiaorchestra.org">www.columbiaorchestra.org</a>
</p>
</blockquote>

',0,'',0);
INSERT INTO "django_flatpage" VALUES(22,'/young_artist_comp_2010/','Young Artist Competition 2010','<h2>Young Artist Competition 2009-2010</h2>

<p>The 2009-2010 Young Artist competition took place on January 23 &amp; 24, 2010. The players were outstanding, and we only wish that we could name more of them as winners. We are delighted to announce that the winners are:</p>

<p>
<h3>Qian Mei, violin &ndash; Junior Division</h3>
  
<img src="/images/ya-mei-10.jpg" alt="Qian Mei, violin" border="0" height="160" hspace="10" vspace="10" width="125" align="RIGHT">

<p>Qian Mei is currently an 8th grader at Burleigh Manor Middle School. Qian has been studying violin for&nbsp;five years. For the past four years, she has been studying with Dr. Sheng-Tsung Wang. Qian has been a member of the Howard County GT and Enrichment Orchestras since 4th grade. She also&nbsp;participates in the Maryland All State Junior Orchestra.</p>

<p>Qian is also actively involved&nbsp;with the Burleigh Manor Mathalon team and the school newsletter committee, and&nbsp;she played volleyball in afterschool intramurals.&nbsp;Apart from school related activities, Qian loves play badminton. Qian also enjoys reading mystery novels, watching movies, making origami, and baking.</p>

<h3>Alternate:</h3>
<ul>
<li>Samuel Choi, violin</li>
</ul>

<h3>Honorable Mentions:</h3>

<ul>
<li>Sarah Kim, violin</li>
<li>Nathan Ko, clarinet</li>
<li>Kenneth Ryu Naito, violin</li>
<li>Joseph Aaron Michael Smith, clarinet</li>
<li>Winnie Tsao, cello</li>
</ul>

<h3>Jenny Lehtonen, flute &ndash; First Place, Senior Division, Wind Category</h3>

<img src="/images/ya-lehtonen-10.jpg" alt="Jenny Lehtonen, flute" border="0" height="160" hspace="10" vspace="10" width="125" align="RIGHT">

<p>Jenny Lehtonen is a 17-year-old junior at Oakland Mills High School in Columbia. She has played flute for seven years and currently studies with Marlee Lindon. She is a member of the Oakland Mills High School Wind Ensemble and Marching Band, and the Chapelgate Church Orchestra. </p>

<p>Jenny was the winner of the Junior Division of the 2006–2007 Flute Society of Washington Student Honors Competition and 2008 winner of the Greater Laurel and Columbia MTA Young Musician Competition. She has been a member of the Maryland All-State 2008 Junior Band, 2009 Senior Band, and 2010 Senior Orchestra.</p>

<h3>Alternate:</h3>
<ul>
<li>Elizabeth Kim, flute</li>
</ul>

<h3>Honorable Mentions:</h3>

<ul>
<li>Kelley Klomparens, oboe</li>
<li>Felix Lee, clarinet</li>
<li>James Zhan, clarinet</li>
</ul>



<h3>Rena Shi, violin &ndash; First Place, Senior Division, String Category</h3>

<img src="/images/ya-shi-10-1.jpg" alt="Rena Shi, violin" border="0" height="160" hspace="10" vspace="10" width="125" align="RIGHT">

<p>Rena Shi, age 16, is a junior and an honor-roll student at River Hill High School. She began playing violin when she was three, and has been studying violin since with Ms. Ning Ma. She has been a member of the Maryland All State Orchestras every year since 2006, and is the principal second violin this year. Rena is the co-concertmaster and soloist of the River Hill High School Orchestra and the assistant concertmaster of the Howard County High School GT Orchestra.  She recently won the River Hill/Marriotts Ridge High School Young Artist Competition and gave a solo performance with the River Hill/Marriotts Ridge High School Orchestra</p>

<p>A resident of Clarksville, Rena is also a competitive tennis player.  She has won many USTA junior tournaments and in 2008 was among the top eight in her age group in Maryland.  In the 2009 season, after winning all of her matches, she attained the title of Howard County Girl’s Single Champion and Tennis Player of the Year.</p>


<h3>Alternate:</h3>

<ul>
<li>Alan Zhang, violin</li>
</ul>


<h3>Honorable Mentions:</h3>

<ul>
<li>Evangeline Chandran, violin</li>
<li>Samantha Cody, violin</li>
<li>Julie LeDuc, violin</li>
<li>Jonathan Terry, cello</li>
</ul>


<p>The winners will perform with the orchestra at our concert on Saturday, March 27, 2010, at the Jim Rouse Theatre. All winners, alternates and honorable mentions receive two complementary tickets to the performance. Come hear the future of music in Howard County!</p>',0,'',0);
INSERT INTO "django_flatpage" VALUES(23,'/holland_videos/','Jonathan Bailey Holland Video Interview','<h2>Video Interviews With Jonathan Bailey Holland</h2>

<h3>Jonathan Discusses Motor City Dance Mix</h3>

<p>Columbia Orchestra guest composer Jonathan Bailey Holland discusses his <em>Motor City Dance Mix</em> and his work at the Berklee School of Music where he teaches. Jonathan will be in attendance at the concert and speak at the pre-concert discussion on October 16, 2010 at the Jim Rouse Theatre in Columbia, MD.</p>

<object width="480" height="385"><param name="movie" value="http://www.youtube.com/v/KrtMC-UKRjE?fs=1&amp;hl=en_US"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/KrtMC-UKRjE?fs=1&amp;hl=en_US" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="480" height="385"></embed></object>

<h3>Jonathan''s Style and Recent Work</h3>

<p>Jonathan is asked about his style of composing, his recent works, and his upcoming projects.</p>

<object width="480" height="385"><param name="movie" value="http://www.youtube.com/v/dMPmnLGlgsk?fs=1&amp;hl=en_US"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/dMPmnLGlgsk?fs=1&amp;hl=en_US" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="480" height="385"></embed></object>

<p>Mr. Holland''s appearance is funded in part through Meet the Composer''s MetLife Creative Connections program.</p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(24,'/program_notes_20110326/','Program Notes','<h2> Program Notes - Concert 3/26/11</h2>
<h3>by Bill Scanlan Murphy</h3>

<br> </br>


<h3>DMITRI SHOSTAKOVICH (1906-1975)</h3>

<h4>FESTIVE OVERTURE in A Major</h4>

<p>
COMPOSED: 1954<br></br>
PREMIERED: Moscow, Russia, 1954
</p>

<p>Dmitri Shostakovich''s relationship with the Soviet regime was always much more complex than many of his admirers would like to believe. He never suffered the horrors that afflicted Prokofiev (whose wife was dragged off to Siberia to persuade him to conform to the Party''s musical decrees), or Khachaturian, who was left partly paralyzed by a spell in the Gulag. For the most part, Shostakovich simply wrote the official music demanded of him, and kept his personal thoughts to himself, or encoded them deep in his “absolute” music; in public, he was a loyal and enthusiastic Communist. However, after Stalin died (ironically, on the same day as Prokofiev) and the first bleary glimmers of the Krushchev “thaw” began to make themselves felt, Shostakovich would just occasionally allow his audience a glimpse of the outrage behind the mask. When asked to write an overture to celebrate the 37th anniversary of the October Revolution only weeks after Stalin’s death, Shostakovich wrote this gloriously celebratory piece—as close as a composer could get to dancing on the old tyrant’s grave without actually getting shot.</p>

<p>Taking Glinka’s <i>Russlan and Ludmilla</i> overture (a personal favorite) as a template, Shostakovich begins with fanfares, before leaping into an astonishingly (for him) orthodox truncated sonata form, with the two subjects as clearly distinguished as anyone could wish, all of it a joyous million miles from the haunted world of his symphonies and quartets. It''s a feeling that could well be summed up in another context as “the witch is dead.” Before long, the Communist chill would set in again, but now in the form of a smothering fog of bureaucracy and grayness, rather than the rolling 24-7 terror of the Stalin era. Shostakovich’s music would gray out accordingly; there is nothing else by him that begins to approach the sheer exuberance of the <i>Festive Overture</i>. It’s only when we think about <i>why</i> he’s so cheerful that we understand just how bleak his inner world really was.</p>





<h3>FRANZ JOSEF HAYDN (1732-1809)</h3>

<h4>VIOLIN CONCERTO No. 4 in G Major</h4>

<p>
I: Allegro Moderato<br></br>
COMPOSED: 1769<br></br>
PREMIERED: Eszterháza, Hungary, 1769
</p>

<p>The Haydn violin concertos are a byway in the composer’s works—early pieces mainly intended as showpieces for Luigi Tomasini, the concertmaster of Haydn´s Esterház orchestra. Nine concerti were found in the Esterház music library after Haydn´s death, but modern scholarship has shown that only four are actually by Haydn. A fifth may have been by him, but all that remains of it is an empty folder bearing a scribbled note in Haydn’s handwriting. The Fourth concerto is genuine Haydn, and very good Haydn—in other words, very good indeed. From what we hear in this movement, Tomasini would not have been out of place in the age of Vieuxtemps, Doppler and Paganini. The form is regular enough—anything else would be a surprise at this stage in the composer’s career - but the violin part would have given Vivaldi apoplexy.</p>



<h3>MAURICE RAVEL (1875-1937)</h3>

<h4>PAVANE POUR UNE INFANTE DÉFUNTE</h4>

<p>
COMPOSED: 1899, orchestrated 1910<br></br>
PREMIERED: Paris, France, 1902 (piano version); 1910 (orchestration)
</p>

<p>Ravel was always very aware of only being half-French. His mother was a Basque, and much of his childhood was spent speaking Basque—that strange, isolated language, unrelated to any other, spoken only in a remote corner of northern Spain and the corresponding enclave of southern France. The Basque connection gave him a strong feeling for Spanish music which emerged repeatedly throughout his career, culminating in <i>Boléro</i>. The <i>Pavane</i> is an early example of this, but, like much of his “Spanish” music, it is not noticeably Hispanic and is nothing even faintly resembling a Pavan, which was closer to a funeral march than to this elegant tribute to Ravel’s teacher Fauré. Ravel had no particular Infanta in mind, dead or otherwise—only the vaguest idea of a long-gone court and a nostalgia for an imagined past. Interestingly, Ravel always protested that it was played too slowly, pointing out that it was the Infanta who was dead, not the Pavan. Connoisseurs of Ella Fitzgerald will recognize the melody of <i>The Lamp Is Low</i>, cannibalized from the <i>Pavane</i> in the early 1930s when poor Ravel was too sick to protest. The <i>Pavane</i> was the last piece that he is known to have played on the piano before his brain condition finally overwhelmed his musical abilities.



<h3>HENRI VIEUXTEMPS (1820-1881)</h3>

<h4>VIOLIN CONCERTO No. 5 in A Major, Op. 37</h4>

<p>
I: Allegro non troppo<br></br>
COMPOSED: 1858-9<br></br>
PREMIERED: Brussels, Belgium, 1861
</p>

<p>Henri Vieuxtemps, once one of the most famous musicians alive in his time as a touring virtuoso <i>à la</i> Liszt, has now more or less reached the point where he is best known for being one of the few answers to the trivia question: “Name a Belgian composer.” The fact remains, however, that his music was once more prized than that of most of the numerous composers who toiled to keep the Sarasates and Kreislers supplied with ammunition—and with good reason. This, by far the most popular of Vieuxtemps’ five violin concerti, was written for a competition at the Brussels Conservatory at the request of the composer Hubert Leonard, an old friend; Leonard would later save Vieuxtemps’ livelihood by giving him a teaching job after a stroke paralyzed his bowing arm. The easy tunefulness of the opening movement is, as any composer knows, no easier to achieve than the terrifying cadenza is easy to play.</p>



<h3>ARTURO MÁRQUEZ (born 1950)</h3>

<h4>DANZÓN No. 2</h4>

<p>
COMPOSED: 1994<br></br>
PREMIERED: Mexico City, 1994
</p>

<p>It is an almost unique achievement for a living composer to write a piece that becomes so popular that it is occasionally taken for his country’s national anthem, but that is exactly what Arturo Marquez has done in his <i>Danzón No. 2</i>. The last time this happened was when Elgar’s <i>Land of Hope and Glory</i> was mistaken for the British national anthem; another occasion, when an Australian band greeted the United States’ ambassador with <i>Hawaii Five-0</i>, is almost too bizarre to contemplate. Following in the footsteps of nationalist Mexican composers such as Chavez and Revueltas, Marquez has tried specifically to create a genuinely Mexican music, drawing on folk music and—especially—traditional dance. One of the traditional dances of Mexico—specifically, the state of Veracruz—is the <i>danzón</i>, whose origins lie, interestingly, not in the Hispanic countries but in Haiti. There, the genteel French <i>contredanse</i> passed from the French plantation owners to their workers, who marinated it in everything from slave song to Voodoo before re-exporting it to Cuba, where this now very alarming dance hybridized with the </i>habañera</i>. A short trip across the Caribbean, and the <i>danzón</i> was born. It was, as Baron Frankenstein famously observed, alive.</p>

<p>Marquez tells us:</p>

<p>“The idea of writing the <i>Danzón No. 2</i> originated in 1993 during a trip to Malinalco with the painter Andrés Fonseca and the dancer Irene Martínez, both of whom are experts in salon dances with a special passion for the <i>danzón</i>. I started to learn the <i>danzón</i>’s rhythms, its form, its melodic outline. I was fascinated and I started to understand that the apparent lightness of the <i>danzón</i> is only like a visiting card for a type of music full of sensuality and qualitative seriousness, a genre which old Mexican people continue to dance with a touch of nostalgia and a jubilant escape towards their own emotional world.</p>

<p>“<i>Danzón No. 2</i> is a tribute to the environment that nourishes the genre. It endeavors to get as close as possible to the dance, to its nostalgic melodies, to its wild rhythms, and although it violates its intimacy, its form and its harmonic language, it is a very personal way of paying my respects and expressing my emotions towards truly popular music.”</p>

<p>Many admirers of this glorious piece have been surprised to learn that Marquez’s other works include extensive experiments with electronic music and the other paraphernalia of the most “advanced” modern music. The <i>Danzón</i> is an object lesson in the fact that “modern” music is no longer one kind of music, one musical language or one way of listening—it is now all music, experienced for itself and in every way imaginable. Writing the <i>Danzón</i> alone would make Marquez a “populist” composer; writing <i>Música para Mandinga</i> for computer would make him a “modernist.” Writing both makes him that rare artist who not only reflects but sums up his time—and that is a composer worthy of the closest attention.</p>



<h3>ALBERT FRANZ DOPPLER (1821-1883)</h3>

<h4>FANTAISIE PASTORALE HONGROISE, Op. 26</h4>

<p>
COMPOSED: 1870<br></br>
PREMIERED: Vienna, Austria, 1870
</p>

<p>Franz Doppler and his brother Karl toured Europe as the now little-remembered flute exponents of the Age of Virtuosi, when every self-respecting concert hall mounted gala performances by the latest “Paganini of the (insert instrument here).” The <i>Fantaisie Pastorale Hongroise</i> was written for one of these. This is the Matterhorn of flute technique (or at least the north face of the Eiger), but it does have its own virtues. The frequent use of the oddly Arabic-sounding augmented second reveals a Gypsy (or at least pseudo-Gypsy) influence that spread throughout European music for a while in this period, as far up as Brahms and as far down as Kreisler. The strangely improvisational opening is also a divergence from the usual concerto-virtuoso formula that almost seems to be reaching forward into jazz.</p>



<h3>JOHANNES BRAHMS (1833-1897)</h3>

<h4>VARIATIONS ON A THEME BY HAYDN, Op. 56a</h4>

<p>
COMPOSED: 1873<br></br>
PREMIERED: Vienna, 1873<br></br>
<br></br>1.      Thema: St. Anthony Chorale. Andante
<br></br>2.      Variation I. Poco più animato (Andante con moto)
<br></br>3.      Variation II. Più vivace (Vivace)
<br></br>4.      Variation III. Con moto
<br></br>5.      Variation IV. Andante con moto (Andante)
<br></br>6.      Variation V. Vivace (Poco presto)
<br></br>7.      Variation VI. Vivace
<br></br>8.      Variation VII. Grazioso
<br></br>9.      Variation VIII. Presto non troppo (Poco presto)
<br></br>10.     Finale. Andante
</p>

<p>In 1877, the University of Cambridge offered Johannes Brahms an honorary doctorate in Music. Out of what seems to have been little more complicated than Anglophobia, Brahms turned this down in favor of one from the University of Breslau, earning the simple response “<i>Where???</i>” from the outraged faculty on the Cam. An earned Cambridge doctorate required the candidate to show proficiency in variation, counterpoint and all the other compositional artifices that are much in evidence in this piece. The only thing that is not in evidence in the <i>Variations on a Theme by Haydn</i> is, ironically, Haydn. The famous chorale that forms the basis for the work is not by Haydn; it may just conceivably be by Pleyel, who…well…met Haydn a couple of times. The Haydn link is, shall we say, tenuous, and Brahms knew it. He preferred the original title, <i>Variations on the St. Anthony Chorale</i>, as at least giving the theme a name somewhere near the truth, but, with academic honors in the air, his publisher wanted something more distinguished. Brahms salvages this strange position by quoting Haydn very near the end, where a few measures from the “Clock” Symphony are slyly interpolated into the coda.</p>

<p>Originally composed for two pianos (and played by Brahms himself with his were-they-weren’t-they lady friend Clara Schumann), the piece was later orchestrated with a lightness that even Nietzsche (by no means a fan) admitted was exemplary. He had once declared Brahms the “musical apostle of beer and sausage,” but allowed that this work had “the merriment we would like to see more of in this darkest of souls.” By orchestrating the work, Brahms turned it into the first-ever complete set of variations for orchestra, a fact celebrated by his slightly unlikely admirer Arnold Schoenberg.</p>

<p>Brahms summed up his attitude to the variation form:</p>

<p>"I sometimes ponder on variation form, and it seems to me it ought to be more restrained, purer. [We modern composers] cling nervously to the melody, but we don''t handle it freely, we don''t really make anything new out of it, we merely overload it."</p>

<p>Brahms is certainly not guilty of overloading the melody in this work, which shows that his “Romanticism” (a word he disliked) was underpinned by the most solid of craftsmanship.</p>

<p>Brahms begins by stating the theme in the woodwinds, joined by strings and brass. His (surprising?) gift for counterpoint—eat your heart out, Wagner!—emerges in the first variation. The second takes us into the minor, combined with syncopated rhythm, giving way to a more flowing take on the theme in the following variation. The fourth returns to the minor, transforming the chorale into a long-breathed melody that floats, a little glumly, over the strings and winds. Variation 5 is a rapid, Beethovenesque scherzo; Variation 6, following straight on, is in the same tempo but has a far higher opinion of itself. Variation 7 is a <i>siciliano</i>, a 6/8 refugee from Bel Canto opera—all melody and melancholy, a mood shattered by the contrapuntal fireworks of the last variation, as the chorale flits in and out of sight behind a screen of intertwining countermelodies.</p>

<p>The finale of the work is a passacaglia—a set of variations over a repeating bass pattern (a “ground bass”). Resurrecting this particular Baroque compositional staple in 1877 would have been seen almost as an act of war in the Wagnerian camp. The ground bass is itself derived from the chorale theme; the resulting spectacle of variations over a variation on a theme shows a mastery of traditional techniques that is very rare indeed in the Romantic era; the triumphant return of the theme at the end cannot have been far from Benjamin Britten’s mind as he completed <i>The Young Person’s Guide To The Orchestra</i>. Brahms was so pleased with the reception of the passacaglia in particular, in fact, that he used the form again in the finale of the First Symphony, to the horror of the Bayreuth faction and the exaltation of everyone else. Even now. <i>Especially</i> now, in fact.</p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(25,'/about_the_orchestra/','About The Orchestra','<h2>About The Columbia Orchestra</h2>

<h3>Artistic Staff</h3>
<ul>
<li><a href="/members/jason_love/">Jason Love</a> - Music Director</li>
<li><a href="/members/brenda_anna/">Brenda Anna</a> - Concertmaster</li>
</ul>

<h3>Administrative Staff</h3>
<ul>
<li><a href="/members/tedd_griepentrog/">Tedd Griepentrog</a> - Executive Director, <a href="mailto:execdir@columbiaorchestra.org">execdir@columbiaorchestra.org</a> 410-465-8777</li>
<li>Linda Paterni - Administrative Assistant, <a href="mailto:admin@columbiaorchestra.org">admin@columbiaorchestra.org</a></li>
<li>Norma Hooks - Librarian</li>
<li>Annette Szawan - Personnel Manager, strings</li>
<li>Anne Ward - Personnel Manager, winds</li>
</ul>


<h3>Board of Directors</h3>
<ul>
<li>Bruce Kuehne - President</li>
<li>Anne Ward - Vice President</li>
<li>David Zajic - Secretary</li>
<li>Brandi Healey - Treasurer</li>
<li>Viviana Acosta</li>
<li>Glenn Caldwell</li>
<li>Glenn Cline</li>
<li>Karen Hopkinson</li>
<li>Holly Thomas, Board Member Emerita</li>
</ul>

<p><a href="/history/">History of the Columbia Orchestra</a></p>

<p><a href="/uploads/2011/Col_Orch_FY10_Annual_Report.pdf">The Columbia Orchestra 2009-2010 Season Annual Report</a></p>

<p><a href="/uploads/2010/CO_Annual_Report_FY09.pdf">The Columbia Orchestra 2008-2009 Season Annual Report</a></p>

<p><a href="/mission/">Mission Statement</a></p>

',0,'',0);
INSERT INTO "django_flatpage" VALUES(26,'/partners/','Partners & Sponsors','<h2>Sponsors and Strategic Partnerships</h2>


<p>The Columbia Orchestra gratefully acknowledges the following organizations and corporations which have provided us with support in the form of grants, in-kind donations, and other services.</p>

<p>The Orchestra also has a number of strategic partnerships with organizations
to whom we supply chamber music, educational programs, and other services.
If you would like to explore the possibility of a mutually beneficial
partnership with the Orchestra, please contact our Executive Director at 410-465-8777 or by e-mail at <a href="mailto:execdir@columbiaorchestra.org">execdir@columbiaorchestra.org</a>.</p>


<h3>Major Sponsors</h3>

<a href="http://columbiafoundation.org/" target="co_link"><img src="/images/logo-col-foundation.gif" title="Columbia Foundation" height="50" hspace="5" width="160" border="0"></a>
<a href="http://www.hocoarts.org/" target="co_link"><img src="/images/logo-HCAC.gif" title="Howard County Arts Council" height="100" width="78" border="0"></a> 
<a href="http://www.msac.org/" target="co_link"><img src="/images/logo-msac.gif" title="Maryland State Arts Council" height="50" hspace="5" width="127" border="0"></a>
<img src="/images/logo-RCO.gif" title="The Rouse Company Foundation Logo" height="50" hspace="5" width="270" border="0">
<a href="https://www.pnc.com/" target="co_link"><img src="/images/logo-PNC.gif" title="PNC" height="50" hspace="5" width="166" border="0"></a> 
<a href="http://www.gailesviolin.com/" target="co_link"><img src="/images/logo-Gailes-small.jpg" title="Gailes Violin Shop" height="50" hspace="5" width="148" border="0"></a> 
<a href="http://www.bwfa.com/" target="co_link"><img src="/images/logo-bwfa.gif" title="Baltimore-Washington Financial Advisors" height="50" hspace="5" width="167" border="0"></a>
<a href="http://arts.endow.gov" target="co_link"><img src="/images/logo-nea.gif" title="National Endowment for the Arts" height="50" hspace="5" width="129" border="0"></a> 
<a href="http://www.musicarts.com" target="co_link"><img src="/images/logo-MA.gif" title="The Music and Arts Centers" height="50" hspace="5" width="167" border="0"></a>
<a href="http://www.hcgh.org/content/" target="co_link"><img src="/images/logo-HCGH.gif" title="Howard County General Hospital" height="75" hspace="5" width="300" border="0"></a> 
<a href="http://www.co.ho.md.us/" target="co_link"><img src="/images/logo-HC.gif" title="Howard County Government" height="58" hspace="15" width="80" border="0"></a> 


<h4>Strategic Partners</h4>

<ul>
<li><a class="bodylink" href="http://amazon.com" target="co_link" title="Pop-up">Amazon</a></li>
<li><a class="bodylink" href="http://aplfcu.org" target="co_link" title="Pop-up">APL Federal Credit Union</a>*</li>
<li><a class="bodylink" href="http://baltimore.orioles.mlb.com/" target="co_link" title="Pop-up">Baltimore Orioles</a>*</li>
<li><a class="bodylink" href="http://www.bankofamerica.com/" target="co_link" title="Pop-up">Bank of America</a></li>
<li><a class="bodylink" href="http://www.bathandbodyworks.com/" target="co_link" title="Pop-up">Bath and Body Works</a>*</li>
<li><a class="bodylink" href="http://www.boozallen.com/" target="co_link" title="Pop-up">Booz Allen Hamilton</a></li>
<li><a class="bodylink" href="http://www.cafedepariscolumbia.com/" target="co_link" title="Pop-up">Café de Paris</a>*</li>
<li><a class="bodylink" href="http://www.candlelightconcerts.org/" target="co_link" title="Pop-up">Candlelight Concert Series</a>*</li>
<li><a class="bodylink" href="http://www.chesapeakeshakespeare.com/" target="co_link" title="Pop-up">The Chesapeake Shakespeare Company</a>*</li>
<li>Chris'' Crafts</li>
<li><a class="bodylink" href="http://christchurchcolumbia.org/" target="co_link" title="Pop-up">Christ Episcopal Church</a>*</li>
<li><a class="bodylink" href="http://www.columbiaassociation.com" target="co_link" title="Pop-up">The Columbia Association</a></li>
<li><a class="bodylink" href="http://www.columbiafestival.com" target="co_link" title="Pop-up">The Columbia Festival of the Arts*</a></li>
<li><a class="bodylink" href="http://www.daedalusbooks.com/" target="co_link" title="Pop-up">Daedalus Books</a>*</li>
<li><a class="bodylink" href="http://www.duke-energy.com/" target="co_link" title="Pop-up">Duke Energy</a></li>
<li><a class="bodylink" href="http://www.elkridgefurnaceinn.com/" target="co_link" title="Pop-up">The Elkridge Furnace Inn</a>*</li>
<li><a class="bodylink" href="http://www.gardendesignbuild.com" target="co_link" title="Pop-up">Garden Design Build Group</a>*</li>
<li><a class="bodylink" href="http://www.thegatheringplace.tv" target="co_link" title="Pop-up">The Gathering Place</a>*</li>
<li><a class="bodylink" href="http://goodsearch.com" target="co_link" title="Pop-up">GoodSearch.com</a></li>
<li><a class="bodylink" href="http://www.thegreeneturtle.com/" target="co_link" title="Pop-up">The Green Turtle</a>*</li>
<li><a class="bodylink" href="http://www.howardcc.edu" target="co_link" title="Pop-up">Howard County Community College</a></li>
<li><a class="bodylink" href="http://www.co.ho.md.us" target="co_link" title="Pop-up">Howard County Government</a></li>
<li><a class="bodylink" href="http://www.visithowardcounty.com" target="co_link" title="Pop-up">Howard County Tourism Council</a>*</li>
<li><a class="bodylink" href="http://www.jamesferry.com/" target="co_link" title="Pop-up">James Ferry Photography</a>*</li>
<li><a class="bodylink" href="http://www.kineticsdance.org/" target="co_link" title="Pop-up">Kinetics Dance Theatre</a>* </li>
<li><a class="bodylink" href="http://www.greatfoodmd.com/" target="co_link" title="Pop-up">The Kings Contrivance</a>* </li>
<li><a class="bodylink" href="http://www.massageenvy.com/" target="co_link" title="Pop-up">Massage Envy</a>* </li>
<li><a class="bodylink" href="http://www.medievaltimes.com/" target="co_link" title="Pop-up">Medieval Times</a>*</li>
<li><a class="bodylink" href="http://www.northropgrumman.com/" target="co_link" title="Pop-up">Northrup Grumman</a>*</li>
<li><a class="bodylink" href="http://www.oaktreefurniture-maryland.com/" target="co_link" title="Pop-up">Oak Tree Furniture</a>*</li>
<li><a class="bodylink" href="http://www.orchestraofstjohns.org/" target="co_link" title="Pop-up">The Orchestra of St. Johns</a>*</li>
<li>Patrick’s Salon*</li>
<li>Patuxent Publications</li>
<li><a class="bodylink" href="http://www.thepearlspa.com/" target="co_link" title="Pop-up">The Pearl Spa</a>*</li>
<li><a class="bodylink" href="http://www.pfchangs.com/" target="co_link" title="Pop-up">PF Chang''s</a>*</li>
<li><a class="bodylink" href="http://www.ramsheadtavern.com/rht.html" target="co_link" title="Pop-up">Ram''s Head Tavern</a>*</li>
<li><a class="bodylink" href="http://www.repstage.org/" target="co_link" title="Pop-up">REP Stage</a>*</li>
<li><a class="bodylink" href="http://riverhillgardencenter.com/" target="co_link" title="Pop-up">River Hill Garden Center</a>* </li>
<li><a class="bodylink" href="http://www.schneider-electric.us/about-us/community/" target="co_link" title="Pop-up">Square D Foundation</a></li>
<li><a class="bodylink" href="http://www.sundaysatthree.org/" target="co_link" title="Pop-up">Sundays at Three</a>* </li>
<li><a class="bodylink" href="http://www.tobysdinnertheatre.com/" target="co_link" title="Pop-up">Toby’s Dinner Theatre</a>*</li>
<li><a class="bodylink" href="http://www.travelers.com/about-us/community/index.aspx" target="co_link" title="Pop-up">Travelers Foundation</a></li>
<li>Treble C Music*</li>
<li>Unilever Foundation</li>
<li><a class="bodylink" href="http://www.community.ups.com/UPS+Foundation" target="co_link" title="Pop-up">The UPS Foundation</a></li>
<li><a class="bodylink" href="http://walmartstores.com/communitygiving/203.aspx" target="co_link" title="Pop-up">Wal-Mart Foundation</a></li>
<li><a class="bodylink" href="http://www.waverlywoods.com/" target="co_link" title="Pop-up">Waverly Woods Golf Club</a>*</li>
<li><a class="bodylink" href="http://www.wbal.com/" target="co_link" title="Pop-up">WBAL Radio</a>*</li>
<li><a class="bodylink" href="http://www.wbjc.com/" target="co_link" title="Pop-up">WBJC-FM</a>*</li>
<li><a class="bodylink" href="http://www.wilhides.com/" target="co_link" title="Pop-up">Wilhide’s Unique Flowers &amp; Gifts</a>*</li>
</ul>

<p>* denotes in-kind contribution</p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(27,'/old/advertise_pre20101224/','Advertise','<h2>Program Underwriting</h2> 

<p>If you would like to underwrite the Columbia Orchestra''s programming, with your underwriting message seen in our 2010-2011 concert programs by thousands of concertgoers, you may either <em>sponsor</em> a specific activity (a concert, a soloist or a competition) or simply <em>take out an ad</em> in our printed concert programs. To sponsor a specific activity, please download a <a class="bodylink" href="/uploads/2010/CO_Sponsorship_Form_2010B.pdf" target="co_link" title="Pop-up">Sponsorship form in PDF format</a>. For an ad in our printed concert programs, please download an <a class="bodylink" href="/uploads/2010/CO_Underwriting_Form_2010B.pdf" target="co_link" title="Pop-up">Underwriting form in PDF format</a>.The forms are suitable for printing; simply fill out the appropriate form and return it to the address on the form. Viewing and printing these files requires <a class="bodylink" href="http://www.adobe.com/products/acrobat/readstep.html" target="co_link" title="Pop-up">Adobe Acrobat Reader</a>.</p>

<p>Please click <a class="bodylink" href="/uploads/2010/CO_Underwriting_Facts_2010B.pdf" target="co_link" title="Pop-up">here for Underwriting Facts</a> to find out more about our season, reach, and program specifications.</p>

<h3>2010-2011 Concert Season</h3>
<p><strong>See your advertisement in the following programs!</strong></p>

<ul>

<li>
<strong>Classical Concert 2</strong>
<br/>
Saturday, December 4, 2010
<br/>
Rouse Theatre
</li>

<li>
<strong>Young People''s Concerts</strong>
<br/>
  Saturday, January 8, 2011
  <br />
  Rouse Theatre
</li>
<li>
<strong>Symphonic Pops Concert</strong>
<br/>
  Saturday, February 12, 2011
  <br />
  Rouse Theatre
</li>
<li>
<strong>Classical Concert 3</strong>
<br/>
  Saturday, March 26, 2011
  <br />
  Rouse Theatre
</li>
<li>
<strong>Classical Concert 4</strong>
<br/>
  Saturday, June 4, 2011
  <br />
  Rouse Theatre
</li>
</ul>

<h3>The levels of underwriting and/or advertisement size are as follows:</h3>

<ul>
<li>
<strong>Concert Sponsor $5,000</strong><br/>
Includes corporate logo and/or company name in all season and concert press releases and printed materials pertaining to selected program, plus a full-page advertisement (6" wide x 7.5" high), website logo and link, complimentary tickets, concert banner, and lobby display.</li>

<li>
<strong>Soloist Sponsor $2,500</strong><br/>
Includes company name in all press releases and printed materials pertaining to selected soloist, plus a half-page advertisement (6" wide x 3.75" high), website logo and link, complimentary tickets, and concert banner.</li>

<li>
<strong>Competition Sponsor (Young Artist Competition, American Composer Competition) $1,000</strong><br/>
Includes company name in all printed materials pertaining to selected event, plus a business-card advertisement (3.5" wide x 2" high), website link, and complimentary tickets.</li>

<li>
<strong>Back or inside cover full-page color advertisement (6" wide x 7.5" high) SOLD OUT</strong><br/>
An extra 500 program covers will be printed for chamber music programs</li>

<li>
<strong>Full-page black&white advertisement (6" wide x 7.5" high) $425</strong>
</li>
<li>
<strong>Half-page black&white advertisement (6" wide x 3.75" high) $250</strong>
</li>
<li>
<strong>Business card black&white advertisement (3.5" wide x 2" high <strong>or</strong> 2" wide x 3.5" high) $160</strong>
</li>

</ul>
<p>BLACK & WHITE CAMERA-READY ARTWORK OR DIGITAL FILE DUE BY November 24, 2010.</p>

<p>An additional fee of $50 will be assessed for any artwork that must be modified.</p>


<p>If you have any questions, please contact us at 410-465-8777 or by e-mail at <a href="mailto:execdir@columbiaorchestra.org">execdir@columbiaorchestra.org</a>. </p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(28,'/program_notes_20101204/','Program Notes','<h2> Program Notes - Concert 12/04/10</h2>
<h3>by Bill Scanlan Murphy</h3>


<br> </br>
<h3>JOAN TOWER (born 1938)</h3>

<h4>FANFARE FOR THE UNCOMMON WOMAN</h4>

<p>
Composed: 1987<br></br>
Premiered: Detroit, 2005
</p>

<p>Joan Tower was born in New Rochelle, NY, and now teaches composition at Bard College, on the banks of the Hudson River. With her utterly unique, no-nonsense, muscular music, she has almost single-handedly blazed a professional trail for female composers in the United States, to a point where a composer’s gender is simply no longer an issue; she is, in fact, the ultimate Uncommon Woman herself. </p>

<p>The title of the five <i>Fanfares for the Uncommon Woman</i> (this evening’s is the first Fanfare) alludes, of course, to Copland’s <i>Fanfare For The Common Man</i>, whose title was Copland’s little joke; his fanfare was premiered on Tax Day, and he wanted the downtrodden 1943 taxpayers to feel they were getting something back. Tower’s title is a slightly different kind of joke, suggesting, perhaps, that John Knox’s infamous “Monstrous Regiment of Women” have moved into Copland’s territory—which, led by Joan Tower, they certainly have, to the enrichment of us all. Tower adds tuned percussion—marimba, glockenspiel and chimes—to Copland’s forces, and even livens things up a little compared to Copland’s granitic slabs of sound, as the piece drives on rapidly towards its close.</p>




<h3>CHEN GANG (born 1935) and HE ZHANHAO (born 1933)</h3>

<h4>BUTTERFLY LOVERS CONCERTO</h4>

<p>
Composed: 1959<br><br/>
Premiered: Shanghai, China, 1959
</p>

<p>It’s curious to note that the two most famous musical works to have come out of the People’s Republic of China—tonight’s concerto and the <i>Yellow River Piano Concerto</i>—were both written by multiple composers. The <i>Butterfly Lovers Concerto</i> boasts a mere two composers compared to the alarmingly large committee that sired the Yellow River Concerto, and is all the better for it. Where the <i>Yellow River</i> often sounds like pentatonic Rachmaninov, the <i>Butterfly Lovers Concerto</i> is unashamedly, wholly Chinese in character. Indeed, the soloist is frequently asked to play the violin in a way derived from the technique of the ancient Chinese two-stringed instrument, the <i>erhu</i>. This, incidentally, brings the violin historically full circle; the <i>erhu</i>, brought back to Europe by Marco Polo and other medieval European travelers, is the linear ancestor of the violin.</p>

<p>We are fortunate that the work exists to be performed at all, as the concerto was written at the height of the Great Chinese Famine, officially known as the Three Years of Economic Difficulty; this saw the deaths of nearly 50 million people. The concerto’s unmissable optimism was much welcomed at its premiere, played by the 18-year-old Yu Lina. The work also survived the Cultural Revolution, which swept away much of the cultural achievements of the preceding hundred years.</p>

<p>Perhaps the first question the Western listener asks on seeing two composers named is simply “Who did what?” The answer is simple enough: He Zhanhao provided the thematic material, and the more academically-trained Chen Gang extended He’s melodies into their symphonic form. He Zhanhao did not, however, compose what has come to be known as the <i>Butterfly Lovers</i> melody, first heard played by the soloist at the beginning of the concerto; this is <i>The Yellow River</i>, a folksong.</p>

<p>The concerto tells a story which suggests to many a mixture of Tristan and Isolde and <i>Mulan</i>, with the violin soloist representing the heroine Zhu Yingtai while her lover Liang Shanbo is played by a solo cello. The two meet when Zhu Yingtai disguises herself as a boy to attend school, where she falls in love with her classmate. But not he with her; it’s only when Zhu is invited to Liang’s home to court his sister that Liang finally realizes she is a woman and the two get together. At this point, we hear an extended duet between the violinist and the cello that is the core of the concerto.</p>

<p>Alas, Zhu becomes betrothed to another man (her gender secret is not well kept, apparently); Liang dies of misery and is buried. When Zhu learns what has happened, she falls upon the grave, which literally opens up and swallows her. Reunited in death, the two lovers—and their love duet—are resurrected as butterflies, and flutter skywards to an ecstatic close. </p>


<h3>GUSTAV HOLST (1874–1934)</h3>

<h4>THE PLANETS, Op. 32</h4>

<p>
Composed: 1914–1916<br></br>
Premiered: London, 1920
</p>

<p>
1. Mars, the Bringer of War<br/>
2. Venus, the Bringer of Peace<br/>
3. Mercury, the Winged Messenger<br/>
4. Jupiter, the Bringer of Jollity<br/>
5. Saturn, the Bringer of Old Age<br/>
6. Uranus, the Magician<br/>
7. Neptune, the Mystic<br/>
</p>

<p>Gustav von Holst, to give him his birth name, was an unlikely Englishman; his family was Swedish, but he became one of the founders of the English folksong revival. The great Irish satirist Myles na gCopaleen even refers once to “that folksy fella Gus Holst.” His older contemporary, the German-speaking Fritz Delius, managed the same trick, becoming arch-Englishman Frederick Delius at about the same time. This was, then, a strange time for English nationalism in music.</p>

<p>From about 1903 onwards, Holst combined his interest in English folk music with a fascination for ancient Indian culture, even taking Sanskrit lessons to deepen his understanding of Hindu scripture; this resulted in many extremely interesting works, culminating in the tiny opera <i>Savitri</i> and the sprawling cantata <i>The Cloud Messenger</i>, which premiered in 1913. The reviews of <i>The Cloud Messenger</i>, however, were grim. In an attempt to overcome the wave of depression that hit him after this (and many other times later in his life), Holst went on vacation to Spain with his friend, composer Arnold Bax, and Bax’s brother Clifford. While they were on the island of Majorca, Clifford Bax gave Holst a book on how to cast horoscopes. Holst was entranced; astrology became his hobby—he called it his “pet vice”—for the rest of his life. As he pondered the book’s chapter headings on the astrological influence of the planets—“The Bringer of War,” “the Bringer of Jollity”—the idea for an orchestral suite based on them slowly formed. He was not remotely interested, by the way, in the astronomical significance of the planets’ names, and even had to be told that the planets are badly out of astronomical sequence in the order of the suite. The astrological origins of the work are also the reason for Earth’s absence from the Suite; Earth does not appear in a horoscope.</p>

<p><i>The Planets</i> is now easily the most popular classical work of the twentieth century, despite its use of what were once ultra-modern sonorities, drawn from the worlds of Schoenberg and Stravinsky. Holst’s original plan was to call it simply <i>Seven Pieces for Large Orchestra</i>, a very Schoenbergian (or even Webernian)—sounding title that would probably have consigned the piece to the specialists-only shelves had he used it. Calling it <i>The Planets</i> caught the craze for occultism that was sweeping Britain at the start of the First World War (the famous <i>magus</i> Aleister Crowley was a friend-of-a-friend of Holst’s); the piece was a huge popular success from the very outset. Holst went from struggling schoolteacher to wealthy famous composer in a matter of months. He never quite came to terms with the work’s success, and even resented it, believing (with some reason) that it distracted potential listeners from his other works. When Clyde Tombaugh discovered Pluto in 1930, Holst flatly refused to add a movement to <i>The Planets</i>, despite the temptation of a very large commission.</p>

<p><i>Mars</i> is written throughout in a then-unusual 5/4 time signature, beginning with the weird clatter of the string instruments’ bows on the strings (<i>col legno</i>—“with the wood”) over an equally unusual growl on the gong, and building to an alarming (and barely tonal) climax on two chords which will come to haunt the entire work, followed by a series of hammer-blows that Bernard Shaw described as “one monster beating another to death.”</p.>

<p><i.Venus</i> is based on the simple rising four-note horn call at the beginning, answered by its approximate inversion in the winds and celeste and a rocking two-chord sequence strummed by the harp. After the grinding maximalism of <i>Mars</i>, <i>Venus</i> derives its (her?) transcendant sense of calm from using such tiny dabs of musical material.</p>

<p><i>Mercury</i> flits around a melody that Holst picked up from his newspaper delivery boy, who whistled as he threw <i>The Times</i> over the garden wall at St. Paul’s School, where Holst lived and taught. Holst never succeeded in finding out what the tune was called, inadvertently sparking a minor academic industry.</p>

<p><i>Jupiter</i> is the most obviously “English” of the Planets, beginning like Elgar in his most rambunctious mood and eventually reaching into the very heart of the <i>Pomp and Circumstance</i> universe with a solemn melody that Holst intended to reflect Jupiter’s status as King of the Gods. The melody later became the hymn tune <i>Thaxted</i>, to the patriotic words “I vow to thee, my country.” Far less famous (not to say unlikely) is its Mormon incarnation, <i>The Iron Rod</i>.</p>

<p><i>Saturn</i> was Holst’s personal favorite of the <i>Planets</i>, based around—listen carefully!—the two climactic chords of <i>Mars</i>, now no longer grinding enemies into the dust but gazing into the cosmic future after a labored tramp through old age. Holst himself never found out if his vision of age was accurate; he died prematurely, at 58.</p>

<p><i>Uranus</i> leaps and stomps about the musical territory first invaded by <i>Mars</i>, fluttered over by <i>Mercury</i> and half-remembered by <i>Saturn</i>—a succession of joined-up fourths and sevenths that galumphs, almost in a parody of Dukas’s enchanted broomstick, to yet another statement of the “<i>Planets</i> chords” that dissolves the entire scene into another glimpse of the Infinite.</p>

<p>In <i>Neptune</i>, the music comes, in one sense, full circle, with a return to 5/4, this time noodling quietly around Holst’s trademark fourths in bare wisps of melody that drift and weave, ebb and flow until we realize that one of the notes that gleam in and out of the texture is, in fact, a female choir, somehow sounding anything but merely human in the celestial wash of sound. Holst had some difficulty deciding how to end the piece—and the work—until he hit on the idea of <i>not</i> ending it. In music’s first fade-out ending, the women’s voices lock onto an endlessly looping statement of the “<i>Planets</i> chords” which is instructed to simply fade away until, as Holst’s daughter put it, “we can no longer tell the difference between sound and silence.” </p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(31,'/old/2011SpringRaffle/thanks/','Thank You For Your Support','<h3>Thank you</h3>

<p>Your raffle tickets will be entered into the drawing, and the ticket stubs mailed to your shipping address.  Thank you for supporting the Columbia Orchestra.  Click <a href="/">here</a> to return to our main page.</p>',0,'',0);
INSERT INTO "django_flatpage" VALUES(32,'/old/2011SpringRaffle/sorry/','Online Raffle Order Not Successful','<h3>Sorry...</h3>

<p>We were unable to complete your purchase.  You can still purchase our raffle tickets at any of our upcoming concerts or by any of the methods listed on our <a href="/tickets/">Ticket Information page</a>.</p>',0,'',0);
INSERT INTO "django_flatpage" VALUES(34,'/old/support/raffle/order_pre20110604/','2011 Spring Raffle Order Form','<!-- 

<head>
	<style type="text/css">
        table.raffletable td*{
                        padding: 0px;
         }
		table.raffletable th{
			background: #006699;
                        color: white;
		}
		table.raffletable tr.alt td{
			background: #ecf6fc;
		}
		table.raffletable tr.over td{
			background: #bcd4ec;
                        color: #000066;
		}	

		span#TotalPrice{
			color: green;
			font-weight: bold;
		}
		span.descr{
			background:#99FF66;
            border: 1px dashed #006666;
            padding: 5px;		
		}

		p.descr{
			background:#99FF66;
            border: 1px dashed #006666;
            padding: 5px;	
			font: 10px verdana,sans-serif;			
		}
                          

 	</style>
<script type="text/javascript">

var descs = {
    ''sports'': "\
	<p class=\"descr\"><b>Sports and Leisure</b><br/>\
	Waverly Woods Golf Club - 4 Guest Rounds of Golf with Cart <i>($260)</i><br/>\
	Quest Fitness - One Month Membership <i>($75)</i><br/>\
	OBA Bank - Gift Certificate to Princeton Sports <i>($100)</i> and a Dozen Golf Balls <i>($25)</i><br/>\
	Daedalus Books - 14 DVD Set \"The Great Composers\" <i>($140)</i><br/>\
	Ram''s Head Tavern - Gift Certificate<i>($50)</i><br/> <\p>",
    ''pamper'': "\
    <p class=\"descr\"><b>Pamper Yourself</b><br/>\
	The Pearl Spa - Blue Grotto for 2 Gift Certificate <i>($160)</i><br/>\
	Sergio''s Fine Jewelry - Pearl Bracelet<i>($70)</i><br/>\
	Jewelry by Cathy Kuehne - Handcrafted Creations <i>($125)</i><br/>\
	The King''s Contrivance - Wine Gift Certificate<i>($50)</i><br/>\
	Victoria and Albert Hair Salon - Hair Products<i>($60)</i><br/>\
	Cheesecake Factory - Gift Certificate<i>($25)</i><br/>\
	River Hill Garden Center - Vera Bradley Bag and Wallet<i>($84)</i><br/><\p>",
    ''musician'': "\
    <p class=\"descr\"><b>Musician''s Musings</b><br/>\
	Gailes'' Violin Shop <br />\
	- Hand-carved Wooden Music Stand <i>($200)</i><br/>\
	- Tuning Fork with Wooden Resonator Box <i>($99)</i><br/>\
	- Whitner Penguin Metronome<i>($90)</i><br/>\
	- Metronome / Stand Light<i>($54)</i><br/>\
	Music & Art Centers - Musical Merchandise and Gift Card <i>($100)</i><br/>\
	Ram''s Head Tavern - Gift Certificate<i>($50)</i><br/>\
	Eggspectations Restaurant - Gift Certificate <i>($50)</i><br/>\
	Smyth Jewelers - Pandora Bracelet with musical note charms<i>($100)</i><br/><\p>",
    ''home'': "\
	<p class=\"descr\"><b>Home, Sweet Home</b><br/>\
	Gallery 44 - Gift Certificate <i>($200)</i><br/>\
	Chris'' Crafts Han - Painted Adirondack Chair<i>($200)</i><br/>\
	Oak Tree Furniture - Gift Certificate<i>($50)</i><br/>\
	Wilhide''s Flowers - Gift Certificate<i>($50)</i><br/><\p>",
    ''fitness'': "\
	<p class=\"descr\"><b>Fitness is Fun</b><br/>\
	Colosseum Gym - (6) Personal Training Sessions <i>($378)</i><br/>\
	Colosseum Gym - 2 Month Membership<i>($110)</i><br/>\
	Columbia Triathlon - Chesapeake Sport Bag with 2 Golf Shirts, Training DVD<i>($125)</i><br/>\
	PNC Bank - Dozen Titleist Golf Balls, Umbrella, Duffle Bag<i>($100)</i><br/>\
	Clyde''s Restaurant of Columbia - Gift Certificate<i>($50)</i><br/><\p>",
    ''family'': "\
	<p class=\"descr\"><b>A Family Affair</b><br/>\
	PNC Bank - 4 Club Level Seats for the Baltimoe Orioles Game July 24 <i>($210)</i><br/>\
	Candlelight Concerts - 2 Family Series Subscriptions for 2011-2012<i>($150)</i><br/>\
	James Ferry Photography - Gift Certificate for a Sitting and Portrait<i>($300)</i><br/>\
	Howard County Arts Council - Family Membership and Shift<i>($50)</i><br/>\
	Maryland Zoo in Baltimore - 1 Year Family Membership<i>($99)</i><br/>\
	Luna Bella Ristorante - Gift Certificate<i>($50)</i><br/><\p>",
    ''arts1'': "\
	<p class=\"descr\"><b>Taste of the Arts #1</b><br/>\
	REP Stage - 2 Subscriptions for the 2011 - 2012 Season <i>($280)</i><br/>\
	Columbia Festival of the Arts - 2 Tickets for \"Manhattan Transfer\" on June 14<i>($100)</i><br/>\
	Toby''s Dinner Theatre - 2 Tickets to a Production<i>($98)</i><br/>\
	Cafe de Paris - Gift Certificate<i>($50)</i><br/><\p>",
    ''arts2'': "\
	<p class=\"descr\"><b>Taste of the Arts #2</b><br/>\
	Candlelight Concert Series - 2 Season Subscriptions for 2011-2012 <i>($300)</i><br/>\
	Chesapeake Shakespeare Company - 4 Tickets to a Summer 2011 Event<i>($120)</i><br/>\
	Greystone Grill - Gift Certificate<i>($100)</i><br/><\p>",
    ''remember'': "\
	<p class=\"descr\"><b>An Event to Remember</b><br/>\
	Jason Love and Company - 1 Hour Performance in Your Home <i>($300)</i><br/>\
	Elkridge Furnace Inn - Gift Certificate<i>($25)</i><br/>\
	Howard County Tourism - Private Ghost Tour of Historic Ellicott City for 13 Guests<i>($150)</i><br/>\
	The Wineseller - Gift Certificate<i>($150)</i><br/>\
	Wilhide''s Flowers - Gift Certificate<i>($25)</i><br/>\
	Decanter Fine Wines - Gift Certifcate<i>($25)</i><br/><\p>"
};

function copy_info() {
    var ids = [''name'', ''addr1'', ''addr2'', ''city'', ''state'', ''zip''];
    for (var i=0; i<ids.length; i++) {
        document.getElementById(''s''+ids[i]).value = document.getElementById(''b''+ids[i]).value;
    }
}


function show_desc(basket) {
    document.getElementById(''description'').innerHTML = 	descs[basket];
}

function reset_contact() {
    var ids = [''name'', ''addr1'', ''addr2'', ''city'', ''state'', ''zip''];
    for (var i=0; i<ids.length; i++) {
        document.getElementById(''s''+ids[i]).value = '''';
        document.getElementById(''b''+ids[i]).value = '''';
    }
    document.getElementById(''phone'').value = '''';
    document.getElementById(''email'').value = '''';
}

		$(document).ready(function() {
			reset_raffle();
                        reset_contact();
		$(".raffletable tr").mouseover(function() {
			$(this).addClass("over");
		});
		$(".raffletable tr").mouseout(function() {
			$(this).removeClass("over");
		});
		$(".raffletable tr:even").addClass("alt");
		});

                var fields = [ "sports", "pamper", "musician", "home", "fitness", "family", "arts1", "arts2", "remember" ];

    	        var nonnegint = /^\s*\d*\s*$/;
    	        function isNonnegInt(val) { return nonnegint.test(val); }

                var whitespace = /^\s*$/;
                function getBasketAmt(basket) {
                        val = document.getElementById(basket).value;
                        if (whitespace.test(val)) { return 0; }
                        return parseInt(val);
                }

		function getTicketAmt() {
			var chosen = document.getElementById("TicketAmt");
			if (chosen.value!="nada") {
				return parseInt(chosen.value);
			} else {
				return 0;
			}
		
		}

		function getPrice() {
		        return 4*getTicketAmt();
		}
		
		function showPrice(){
		        document.getElementById("TotalPrice").innerHTML = "$" + getPrice();
				document.getElementById("NumTix").innerHTML = getTicketAmt();
		}

		function makeCommentString() {
		        str = "Raffle tickets:";
                        for (var i=0; i<fields.length; i++) {
			       str += " " + fields[i] + "=" + getBasketAmt(fields[i]) + ";";
                        }
		        return str;
		}
		
		function orderTickets(){
                        var totaltix, numtickets;

		        numtickets = getTicketAmt();
		        if (numtickets <= 0) {
			        alert("You have not specified a total number of tickets.");
				return false;
                        }

                        totaltix = 0;
                        for (var i=0; i<fields.length; i++) {
                               if ( ! isNonnegInt(document.getElementById(fields[i]).value) ) {
                                       alert("You have entered an invalid number of tickets.");
                                       return false;
                               }
                               totaltix += getBasketAmt(fields[i]);
                        }

			if (numtickets != totaltix) {
				alert("Total tickets you selected (" + numtickets + ") does not correspond to the amount of tickets you ordered (" + totaltix + "). Please order the same number of tickets as you selected");
		                return false;
			}

		        document.getElementById("chargetotal").value = getPrice();
			document.getElementById("comments").value = makeCommentString()
		        return true;
		}		
		
		function reset_raffle(){
			document.getElementById("TicketAmt").value="nada";
                        document.getElementById("NumTix").innerHTML = "--";	
			document.getElementById("TotalPrice").innerHTML = "$0"; 
			for (var i=0; i<fields.length; i++) {
                                document.getElementById(fields[i]).value = "0";
                        }
		}			



</script>
</head>

<h2> 2011 Spring Basket Raffle</h2>
<h4>Tickets 5 for $20 <br/>
	<i>Drawing June 4, 2011</i>
</h4>

<!-- 

<p>Please complete the following information to order your tickets. We will enter your tickets into the baskets you selected and mail the ticket stubs to your address.</p>

<form id="RaffleForm" action="https://www.linkpointcentral.com/lpc/servlet/lppay" method="post" onsubmit="return orderTickets()">

<p>I would like to buy
<select id="TicketAmt" onchange="javascript:showPrice()" onload="javascript:showPrice()">
	<option value="nada" selected="selected">Select</option>
	<option value="5">5</option>
	<option value="10">10</option>
	<option value="15">15</option>
	<option value="20">20</option>
	<option value="25">25</option>
</select>
tickets. Total Price: <span id="TotalPrice">$0</span> </p>



<p>Please select <b><span id="NumTix">--</span></b> tickets below. (<i>click the "?" for more information on each package</i>)</p>

<table class="raffletable" style="float: left; display: inline">

<tr>
    <th>Package </th>
	<th></th>
	<th>Quantity</th>
</tr>
<tr>
	<td><b>Sports and Leisure</b></td>
	<td><span class="descr" onclick="javscript:show_desc(''sports'')">?</span></td>
	<td align="center"><input id="sports" type="text" size="5" value="0" /></td>
</tr>
<tr>
	<td><b>Pamper Yourself</b></td>
    <td><span class="descr" onclick="javscript:show_desc(''pamper'')">?</span></td>
	<td align="center"><input id="pamper" type="text" size="5" value="0" /></td>
</tr>
<tr>
    <td><b>Musician''s Musings</b></td>
	<td><span class="descr" onclick="javscript:show_desc(''musician'')">?</span></td>
	<td align="center"><input id="musician" type="text" size="5" value="0" /></td>
</tr>
<tr>
    <td><b>Home, Sweet Home</b></td>
	<td><span class="descr" onclick="javscript:show_desc(''home'')">?</span></td>
	<td align="center"><input id="home" type="text" size="5" value="0" /></td>
</tr>
<tr> 
	<td><b>Fitness is Fun</b></td>
	 <td><span class="descr" onclick="javscript:show_desc(''fitness'')">?</span></td>
	 <td align="center"><input id="fitness" type="text" size="5" value="0" /></td>
</tr>
<tr>
	<td><b>A Family Affair</b></td>
	<td><span class="descr" onclick="javscript:show_desc(''family'')">?</span></td>	
	<td align="center"><input id="family" type="text" size="5" value="0" /></td>
</tr>
<tr>    
	<td><b>Taste of the Arts #1</b></td>
	 <td><span class="descr" onclick="javscript:show_desc(''arts1'')">?</span>
	 </td><td align="center"><input id="arts1" type="text" size="5" value="0" /></td>
</tr>
<tr> 
	<td><b>Taste of the Arts #2</b></td>
	<td><span class="descr" onclick="javscript:show_desc(''arts2'')">?</span></td>
	<td align="center"><input id="arts2" type="text" size="5" value="0" /></td>
</tr>
<tr>
	<td><b>An Event to Remember</b></td>
	<td><span class="descr" onclick="javscript:show_desc(''remember'')">?</span></td>	
	<td align="center"><input id="remember" type="text" size="5" value="0" /></td>
</tr>

</table>

<div style="float: left" id="description">
</div>

<div>

<div style="float: left; clear: left">
<h4>Billing Information</h4>
<table>
<tr><td>Name</td> <td><input type="text" id="bname" name="bname" /></td></tr>
<tr><td>Street</td> <td><input type="text" id="baddr1" name="baddr1" size="30" maxlength="30" /></td></tr>
<tr><td></td> <td><input type="text" id="baddr2" name="baddr2" size="30" maxlength="30" /></td></tr>
<tr><td>City</td> <td><input type="text" id="bcity" name="bcity" size="30" maxlength="30" /></td></tr>
<tr><td>State</td> <td><select id="bstate" name="bstate" size="1">
<option value=""> ... </option>
<option value="AK"> AK </option>
<option value="AL"> AL </option>
<option value="AR"> AR </option>
<option value="AZ"> AZ </option>
<option value="CA"> CA </option>
<option value="CO"> CO </option>
<option value="CT"> CT </option>
<option value="DC"> DC </option>
<option value="DE"> DE </option>
<option value="FL"> FL </option>
<option value="GA"> GA </option>
<option value="HI"> HI </option>
<option value="IA"> IA </option>
<option value="ID"> ID </option>
<option value="IL"> IL </option>
<option value="IN"> IN </option>
<option value="KS"> KS </option>
<option value="KY"> KY </option>
<option value="LA"> LA </option>
<option value="MA"> MA </option>
<option value="MD"> MD </option>
<option value="ME"> ME </option>
<option value="MI"> MI </option>
<option value="MN"> MN </option>
<option value="MO"> MO </option>
<option value="MS"> MS </option>
<option value="MT"> MT </option>
<option value="NC"> NC </option>
<option value="ND"> ND </option>
<option value="NE"> NE </option>
<option value="NH"> NH </option>
<option value="NJ"> NJ </option>
<option value="NM"> NM </option>
<option value="NV"> NV </option>
<option value="NY"> NY </option>
<option value="OH"> OH </option>
<option value="OK"> OK </option>
<option value="OR"> OR </option>
<option value="PA"> PA </option>
<option value="PR"> PR </option>
<option value="RI"> RI </option>
<option value="SC"> SC </option>
<option value="SD"> SD </option>
<option value="TN"> TN </option>
<option value="TX"> TX </option>
<option value="UT"> UT </option>
<option value="VA"> VA </option>
<option value="VI"> VI </option>
<option value="VT"> VT </option>
<option value="WA"> WA </option>
<option value="WI"> WI </option>
<option value="WV"> WV </option>
<option value="WY"> WY </option>
</select></td></tr>
<tr><td>ZIP</td> <td><input type="text" id="bzip" name="bzip" size="5" maxlength="10" /></td></tr>
</table>
<input type="hidden" id="bcountry" name="bcountry" value="US" /></ul>
</div>

<div style="float: left; display: inline; padding-left: 5em">
<h4>Shipping Information</h4>
<table>
<tr><td>Name</td> <td><input type="text" id="sname" name="sname" /></td></tr>
<tr><td>Street</td> <td><input type="text" id="saddr1" name="saddr1" size="30" maxlength="30" /></td></tr>
<tr><td></td> <td><input type="text" id="saddr2" name="saddr2" size="30" maxlength="30" /></td></tr>
<tr><td>City</td> <td><input type="text" id="scity" name="scity" size="30" maxlength="30" /></td></tr>
<tr><td>State</td> <td><select id="sstate" name="sstate" size="1">
<option value=""> ... </option>
<option value="AK"> AK </option>
<option value="AL"> AL </option>
<option value="AR"> AR </option>
<option value="AZ"> AZ </option>
<option value="CA"> CA </option>
<option value="CO"> CO </option>
<option value="CT"> CT </option>
<option value="DC"> DC </option>
<option value="DE"> DE </option>
<option value="FL"> FL </option>
<option value="GA"> GA </option>
<option value="HI"> HI </option>
<option value="IA"> IA </option>
<option value="ID"> ID </option>
<option value="IL"> IL </option>
<option value="IN"> IN </option>
<option value="KS"> KS </option>
<option value="KY"> KY </option>
<option value="LA"> LA </option>
<option value="MA"> MA </option>
<option value="MD"> MD </option>
<option value="ME"> ME </option>
<option value="MI"> MI </option>
<option value="MN"> MN </option>
<option value="MO"> MO </option>
<option value="MS"> MS </option>
<option value="MT"> MT </option>
<option value="NC"> NC </option>
<option value="ND"> ND </option>
<option value="NE"> NE </option>
<option value="NH"> NH </option>
<option value="NJ"> NJ </option>
<option value="NM"> NM </option>
<option value="NV"> NV </option>
<option value="NY"> NY </option>
<option value="OH"> OH </option>
<option value="OK"> OK </option>
<option value="OR"> OR </option>
<option value="PA"> PA </option>
<option value="PR"> PR </option>
<option value="RI"> RI </option>
<option value="SC"> SC </option>
<option value="SD"> SD </option>
<option value="TN"> TN </option>
<option value="TX"> TX </option>
<option value="UT"> UT </option>
<option value="VA"> VA </option>
<option value="VI"> VI </option>
<option value="VT"> VT </option>
<option value="WA"> WA </option>
<option value="WI"> WI </option>
<option value="WV"> WV </option>
<option value="WY"> WY </option>
</select></td></tr>
<tr><td>ZIP</td> <td><input type="text" id="szip" name="szip" size="5" maxlength="10" /></td></tr>
</table>
<button type="button" onclick="javascript:copy_info()">Copy from Billing Information</button>
<input type="hidden" id="scountry" name="scountry" value="US" /></ul>
</div>

</div>

<div style="clear: left">
<table>
<tr><td>Phone</td> <td><input type="text" id="phone" name="phone" size="15" maxlength="20" /></td></tr>
<tr><td>Email</td> <td><input type="text" id="email" name="email" size="30" maxlength="45" /></td></tr>
</table>
</div>

<p>
<input style="display: block" type="submit" value="Proceed to Payment" />
</p>

<input type="hidden" id="chargetotal" name="chargetotal" value="0.0" />
<input type="hidden" name="mode" value="Payplus" />
<input type="hidden" name="txntype" value="sale" />
<input type="hidden" name="storename" value="1001258007" />
<input type="hidden" id="comments" name="comments" value="" />
<input type="hidden" name="responseSuccessURL" value="http://columbiaorchestra.org/ticket/thanks" />
<input type="hidden" name="responseFailURL" value="http://columbiaorchestra.org/support/raffle/sorry" />

</form>

-->',0,'',0);
INSERT INTO "django_flatpage" VALUES(35,'/old/2011SpringRaffle/','2011 Spring Raffle','<head>
	<style type="text/css">
		table.raffletable tr, th, td
		{
		       border-bottom: 1px solid #3366FF;
                       border-bottom: 1px solid #3366FF;
		}
                table.raffletable td*{
                        padding: 0px;
                }
		table.raffletable th{
			background: #006699;
                        color: white;
		}
		table.raffletable tr.alt td{
			background: #ecf6fc;
		}
		table.raffletable tr.over td{
			background: #bcd4ec;
                        color: #000066;
		}	

		span#TotalPrice{
			color: green;
			font-weight: bold;
		}

 	</style>
	
	<script type="text/javascript">
	$(document).ready(function(){

		$(".raffletable tr:even").addClass("alt");
		
	});
	</script>
</head>

<h2> 2011 Spring Basket Raffle</h2>
<h4>Tickets 5 for $20 <br/>
	<i>Drawing June 4, 2011</i>
</h4>

<p>The Columbia Orchestra presents the 2011 Spring Basket Raffle. All of our prize packages are worth a minimum of <b>$500!</b> Picture yourself playing golf at the Waverly Woods Golf Club, luxuriating at The Pearl Spa, getting fit at the Colosseum Gym with your own personal trainer, enjoying the Maryland Zoo with your whole family, or being entertained by our own Jason Love and Company in your home! It''s a <b>bargain at five chances for $20</b>! Buy your raffle tickets now through our <a href="http://columbiaorchestra.org/support/raffle/order/">online form</a>.
</p>

<p>You can also purchase raffle tickets by mail, phone, or e-mail, or in person at our next performance.
</p>

<p>Here is the list of prizes in PDF format: <a href="/uploads/2011/2011 SPRING RAFFLE list.pdf">pdf</a></p>

<!--
<h4>Prizes</h4>
-->
<table class="raffletable">
<tr>
	<th>Raffle Package</th>
	<th>Contents</th>
</tr>
<tr>
	<td><b>Sports and Leisure</b></td>
	<td>
	Waverly Woods Golf Club - 4 Guest Rounds of Golf with Cart <i>($260)</i><br/>
	Quest Fitness - One Month Membership <i>($75)</i><br/>
	OBA Bank - Gift Certificate to Princeton Sports <i>($100)</i> and a Dozen Golf Balls <i>($25)</i><br/>
	Daedalus Books - 14 DVD Set "The Great Composers" <i>($140)</i><br/>
	Ram''s Head Tavern - Gift Certificate<i>($50)</i><br/>
	</td>
</tr>
<tr>
	<td><b>Pamper Yourself</b></td>
	<td>
	The Pearl Spa - Blue Grotto for 2 Gift Certificate <i>($160)</i><br/>
	Sergio''s Fine Jewelry - Pearl Bracelet<i>($70)</i><br/>
	Jewelry by Cathy Kuehne - Handcrafted Creations <i>($125)</i><br/>
	The King''s Contrivance - Wine Gift Certificate<i>($50)</i><br/>
	Victoria and Albert Hair Salon - Hair Products<i>($60)</i><br/>
	Cheesecake Factory - Gift Certificate<i>($25)</i><br/>
	River Hill Garden Center - Vera Bradley Bag and Wallet<i>($84)</i><br/>
	</td>
</tr>
<tr>
	<td><b>Musician''s Musings</b></td>
	<td>
	Gailes'' Violin Shop <br />
	- Hand-carved Wooden Music Stand <i>($200)</i><br/>
	- Tuning Fork with Wooden Resonator Box <i>($99)</i><br/>
	- Whitner Penguin Metronome<i>($90)</i><br/>
	- Metronome / Stand Light<i>($54)</i><br/>
	Music & Art Centers - Musical Merchandise and Gift Card <i>($100)</i><br/>
	Ram''s Head Tavern - Gift Certificate<i>($50)</i><br/>
	Eggspectations Restaurant - Gift Certificate <i>($50)</i><br/>
	Smyth Jewelers - Pandora Bracelet with musical note charms<i>($100)</i><br/>
	</td>
</tr>
<tr>
	<td><b>Home, Sweet Home</b></td>
	<td>
	Gallery 44 - Gift Certificate <i>($200)</i><br/>
	Chris'' Crafts Han - Painted Adirondack Chair<i>($200)</i><br/>
	Oak Tree Furniture - Gift Certificate<i>($50)</i><br/>
	Wilhide''s Flowers - Gift Certificate<i>($50)</i><br/>
	</td>
</tr>
<tr>
	<td><b>Fitness is Fun</b></td>
	<td>
	Colosseum Gym - (6) Personal Training Sessions <i>($378)</i><br/>
	Colosseum Gym - 2 Month Membership<i>($110)</i><br/>
	Columbia Triathlon - Chesapeake Sport Bag with 2 Golf Shirts, Training DVD<i>($125)</i><br/>
	PNC Bank - Dozen Titleist Golf Balls, Umbrella, Duffle Bag<i>($100)</i><br/>
	Clyde''s Restaurant of Columbia - Gift Certificate<i>($50)</i><br/>
	</td>
</tr>
<tr>
	<td><b>A Family Affair</b></td>
	<td>
	PNC Bank - 4 Club Level Seats for the Baltimoe Orioles Game July 24 <i>($210)</i><br/>
	Candlelight Concerts - 2 Family Series Subscriptions for 2011-2012<i>($150)</i><br/>
	James Ferry Photography - Gift Certificate for a Sitting and Portrait<i>($300)</i><br/>
	Howard County Arts Council - Family Membership and Shift<i>($50)</i><br/>
	Maryland Zoo in Baltimore - 1 Year Family Membership<i>($99)</i><br/>
	Luna Bella Ristorante - Gift Certificate<i>($50)</i><br/>
	</td>
</tr>
<tr>
	<td><b>Taste of the Arts #1</b></td>
	<td>
	REP Stage - 2 Subscriptions for the 2011 - 2012 Season <i>($280)</i><br/>
	Columbia Festival of the Arts - 2 Tickets for "Manhattan Transfer" on June 14<i>($100)</i><br/>
	Toby''s Dinner Theatre - 2 Tickets to a Production<i>($98)</i><br/>
	Cafe de Paris - Gift Certificate<i>($50)</i><br/>
	</td>
</tr>
<tr>
	<td><b>Taste of the Arts #2</b></td>
	<td>
	Candlelight Concert Series - 2 Season Subscriptions for 2011-2012 <i>($300)</i><br/>
	Chesapeake Shakespeare Company - 4 Tickets to a Summer 2011 Event<i>($120)</i><br/>
	Greystone Grill - Gift Certificate<i>($100)</i><br/>
	</td>
</tr>
<tr>
	<td><b>An Event to Remember</b></td>
	<td>
	Jason Love and Company - 1 Hour Performance in Your Home <i>($300)</i><br/>
	Elkridge Furnace Inn - Gift Certificate<i>($25)</i><br/>
	Howard County Tourism - Private Ghost Tour of Historic Ellicott City for 13 Guests<i>($150)</i><br/>
	The Wineseller - Gift Certificate<i>($150)</i><br/>
	Wilhide''s Flowers - Gift Certificate<i>($25)</i><br/>
	Decanter Fine Wines - Gift Certifcate<i>($25)</i><br/>
	</td>
</td>
</tr>

</table>


',0,'',0);
INSERT INTO "django_flatpage" VALUES(36,'/composer_competition/faq/','Composer Competition FAQ','<h2>
                      FAQ for the Columbia Orchestra’s<br>
                        American Composer Competition
</h2>


<p>
The following is a list of frequently asked questions regarding the competition. If your
question is not answered, please contact the Competition Coordinator at
<a href="mailto:compcomp@columbiaorchestra.org">compcomp@columbiaorchestra.org</a>
or by the address and phone number at the bottom of the page.
</p>
<ol>
<li><p><b>
        I have a really, really, really good reason why I was not able to get my entry
        postmarked by the postmark deadline. May I still submit a work?
</b></p><p>
        In order to maintain fairness and adhere to our timetable, we are unable to accept
        works postmarked after the postmark deadline. We are also unable to accept works
        delivered in person, by courier, or by any other means. If you missed the deadline,
        we invite you to bookmark our site and watch for future competitions that we hope
        to hold in upcoming seasons.
</p></li>

<li><p><b>
        How many works may I submit?
</b></p><p>
        Each composer may submit one composition. If you have several suitable works and
        would like assistance deciding which one to submit, feel free to contact
        <a href="mailto:compcomp@columbiaorchestra.org">compcomp@columbiaorchestra.org</a>.
</p></li>

<li><p><b>
        I cannot figure out how to print out the application form. Help!
</b></p><p>
        If you are unable to print a copy of the application form, please contact
        <a href="mailto:compcomp@columbiaorchestra.org">compcomp@columbiaorchestra.org</a>
        and we will mail one. If you have no access to the internet,
        write or call (address and phone at the bottom of this page)
        and we will mail you a form.
</p></li>

<li><p><b>
        What will happen if I fill out the application form incorrectly or incompletely
        (for instance, by not answering questions 1, 2 or 4)?
</b></p><p>
        The application won''t be considered unless a complete application form is received. If
        it is incomplete, the Competition Coordinator will contact you and ask you to fax or
        mail us a completed one. The application form is the document in which you attest
        that your submission is eligible for this competition, so we really need to have all the
        information.
</p></li>

<li><p><b>
        Do you have a preference for computer-generated scores over hand-written
        manuscripts, or vice versa?
</b></p><p>
        We really have no preference. We understand that not everyone has access to Finale
        or Sibelius, or to expert copyists. We do have a preference for scores that are legible
        and comprehensible. Neatness counts! Be aware that it is as easy to create an
        incomprehensible score with a computer as with pen and paper.
</p></li>

<li><p><b>
    Recordings used to be optional, but now they''re required. What happened?
</b></p><p>
    Experience from the first two American Composer Competitions taught us that the
    recordings, even the electronic realizations, are extremely helpful to the judges. We
    expect at least 175 applications. Our judges donate their time. They will need every
    possible resource to help them perform their task in a timely manner.
<li><p><b>
    You say that a curriculum vitae is optional. Don''t you want a CV or
    biography?
</p></li>

</b></p><p>
    The judges will see nothing but the anonymous scores, so submitting biographical
    information will not affect your chances of winning. All CVs and biographies will be
    separated from the scores and used solely to help us understand what sort of
    applicants we attract and improve planning for future competitions. Of course if you
    win, we would love to display your photo and biography on our web site.
</p></li>

<li><p><b>
    Must I have a degree in composition to win this competition?
</b></p><p>
    No. The judges won''t know who you are, so all that matters is the quality of the work
    you submit.
</p></li>

<li><p><b>
    What sort of orchestra is The Columbia Orchestra?
</b></p><p>
    The Columbia Orchestra is a well-established community orchestra which began in
    the fall of 1977. It is a full-sized orchestra (typically 80-96 players onstage)
    comprised of talented musicians, many of whom are free-lance professionals, who
    volunteer their time in exchange for the opportunity to play outstanding literature
    under an inspiring conductor. To get a sense of the level of difficulty of music that
    the orchestra performs, look at the programs for the current season by clicking the
    <a class="bodylink" href="/season/" target="co_link"
    title="Pop-up">Current Season</a> link here or on the
    "Concerts & Tickets" tab at the top of this page.  Season
    schedules dating back to 2001 are available by clicking on
    <a class="bodylink" href="/seasons/" target="co_link"
    title="Pop-up">Historical Seasons</a> here or on the "Concerts &
    Tickets" tab. Please peruse the entire website to get a better
    sense of the organization as a whole.
</p></li>

<li><p><b>
    My work calls for a non-standard instrument. Is that instrument allowed?
</b></p><p>
    The following instruments have been asked about and are
    acceptable: bass trombone, piccolo trumpet, saxophone. If you have
    a question about another instrument, please
    contact <a href="mailto:compcomp@columbiaorchestra.org">compcomp@columbiaorchestra.org</a>
    (see below).
</p></li>

<li><p><b>
    My work was performed by the same orchestra multiple times during a
    single weekend? Does this count as one performance?
</b></p><p>
    For our purposes, a work performed multiple times in a short period of time by the
    same ensemble counts as one performance.
</p></li>

<li><p><b>
    You specify 4 percussion plus timpani. Does that mean one timpanist plus
    four in the battery?
</b></p><p>
    We have five percussionists, including at most one timpanist. The timpanist can be
    asked to play other instruments when not playing timpani.
</p></li>

<li><p><b>
    What do you mean by hard-copy of the score?
</b></p><p>
    A hard-copy is a physical copy of the score on paper that we can hold in our hands
    and look at. Electronic versions of the score in any format, sent via email, floppy disk
    or data CD are not acceptable.
</p></li>

<li><p><b>
    What do you mean by ten-year resident of the U.S.?
</b></p><p>
    This is a person who has lived legally in the United States as his or her primary place
    of residence, regardless of type of visa, since June 2001 and who will still be living in
    the United States at the time of the postmark deadline. You do not have to have
    established legal permanent residency (e.g. a Green Card).
</p></li>

<li><p><b>
    My work has been performed publicly twice and has been recorded by a
    different ensemble. Does the recording session count as a performance?
</b></p><p>
    For our purposes, a recording session does not count as a performance.
</p></li>

<li><p><b>
    My work has been performed publicly more than twice, but one of the
    performances took place outside of the United States. Is this work eligible?
</b></p><p>
    The location of the performances doesn''t matter. If the work has been performed
    publicly more than twice, it is not eligible for this competition.
</p></li>

<li><p><b>
    Must the composition be unpublished?
</b></p><p>
    We cannot afford to pay rental or any other fees in association with the performance
    of the winning composition on top of the expense of sponsoring the competition. If
    you have self-published your work, or if you have an arrangement with your
    publisher by which you can waive all fees, we can work with you on this issue.
</p></li>

<li><p><b>
    I want to submit a work on behalf of a deceased composer. The work meets
    your criteria in every way, except for the implied assumption that the
    person making the application is the same as the composer of the submitted
    work. Can I do this?
</b></p><p>
    In 2004 we were honored to receive an application from the widow of an
    undeservedly neglected American composer. If you are considering such an
    application you must show us that you are authorized to allow performances of the
    work and you must demonstrate that you are engaged in a substantial, long-term
    effort to promote the works of the composer.
</p></li>

<li><p><b>
    I still have questions. Whom do I contact to ask questions, get
    clarifications, or make comments about the competition?
</b></p><p>
    For any questions regarding the competition, please contact our
    Competition Coordinator
    at <a href="mailto:compcomp@columbiaorchestra.org">compcomp@columbiaorchestra.org</a>. E-mail
    is by far the fastest way to get a response. He may also be
    reached by phone or U.S. mail at the orchestra''s phone number or
    address (both at the bottom of this page).
</p></li>

  
</ol>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(37,'/composer_competition/guidelines/','2011 American Composer Competition','<head>
<style type="text/css">
blockquote.mailingaddress {
font-size: 1.3em
}

.orch {
font-size: 1.3em;
font: 62.5%/1.4 verdana,sans-serif;
}
</style>
</head>

<h2>
<center>
                        THE COLUMBIA ORCHESTRA<br>
              2011 American Composer Competition
</center>
</h2>
<center>
<p><b>
             Win $1,000 and a performance of your work<br>
                           by The Columbia Orchestra<br>
                                  in Spring 2012
</b></p>
<p>
                         Postmark Deadline: <b>June 3, 2011</b><br>
                           <a href="/uploads/2011/compcomp/compcompapp.pdf">Download an Application Form</a><br>
                  <a href="/uploads/2011/compcomp/AmComposerComp.pdf">Download a PDF version of these Guidelines</a>
</p>
</center>

<br>
<p>
Dear American Composer,<br><br>

Welcome to the official guidelines page
for the Columbia Orchestra''s American Composer Competition. It is our
intention to foster the creation and performance of orchestral music
by American composers. We hope that this competition will encourage
and support your work, and that you will enter the competition. Please
read these guidelines carefully to maximize your chances of
winning. Please also consult our <a class="bodylink"
href="/composer_competition/faq/" target="co_link">FAQ</a>, which will be expanded as questions arise.
</p>

<h3>Composer Eligibility:</h3>
<ul>
<li>
       The composer must be a U.S. citizen or a ten-year resident of the United
       States.
</li>
<li>
       There is no age limit.
</li>
<li>
       The competition is not open to staff, board members, or members of the
       Columbia Orchestra or to members of their families.
</li>
</ul>
<h3>Composition Guidelines:</h3>
<ul>
<li>
       The work must be unpublished or self-published. The Columbia Orchestra will
       not pay rental, performance, or any other fee in association with the
       performance of the winning work in Spring 2012.
</li>
<li>
       The work should not exceed 15 minutes in duration.
</li>
<li>
       Scoring should include, at a minimum, strings plus a significant number of
       instruments from other sections. Orchestration is limited to:
<blockquote>
               *3*.*3.*3.*3--4.3.3.1--<br>
               4perc + timp--hp--pno/cel/synth--str.<br>
	       <ul>
		 <li><span class="orch">3 flutes may include piccolo and/or alto flute.</span></li>
                 <li><span class="orch">3 oboes may include English Horn.</span></li>
                 <li><span class="orch">3 clarinets may include e-flat clarinet and/or bass clarinet.</span></li>
                 <li><span class="orch">3 bassoons may include contrabassoon.</span></li>

                 <li><span class="orch">4 French horns</span></li>
                 <li><span class="orch">3 trumpets</span></li>
                 <li><span class="orch">3 trombones</span></li>
                 <li><span class="orch">1 tuba</span></li>

                 <li><span class="orch">Timpani may require up to five drums of standard sizes.</span></li>
                 <li><span class="orch">1 harp</span></li>
                 <li><span class="orch">Keyboard may include piano, celesta or harpsichord, but only one
                   player.</span></li>
                 <li><span class="orch">Percussion may include any battery and mallet instruments. The
                   composer must provide any specialized equipment required (at no
                   expense to the orchestra)</span></li>
                 <li><span class="orch">Custom-made instruments are permissible but must be supplied by
                  the composer.</span></li>
                 <li><span class="orch">Works that require electronic playback of a tape or CD (provided by
                  the composer) are permissible. Works with interactive electronics
                  or other media that require specialized equipment or personnel will
                  not be considered.</span></li>
                 <li><span class="orch">There should be no choral or vocal parts, no organ part, and no
                  concerto soloist.</span></li>
		 </ul>
      If you have any questions about acceptable instrumentation, we strongly
      encourage you to contact us before submitting your work (or deciding not to
      submit your work).
</blockquote>
</li>
<li>
      The work need not have been composed recently.
</li>
<li>
      The work must not have had more than two public performances as of June 3,
      2011.
</li>
</ul>

<h3>Manuscript Guidelines:</h3>
<ul>
<li>
      Scores must be submitted in hard-copy. Hand-inked manuscripts and
      computer-generated scores are both acceptable. No preference will be given
      to either form. Preference will be given to scores that are legible and
      comprehensible.
</li>
<li>
      If the work requires any non-standard performance techniques, they should
      be clearly notated and accompanied by a written explanation.
      No markings may appear on the score that reveal or suggest the identity of
      the composer. A title may appear on the score.
</li>
<li>
      In addition to the hard copy of the score, applicants may also submit a pdf
      image file of the score. This soft copy is not required but will be helpful to the
      judges. The content and file names of the pdf image file must be anonymous,
      that is, they must not include the applicant’s name. You may provide this file
      on a data CD or some other standard digital medium, or you may provide a
      URL pointing to the file for download.
</li>
</ul>

<h3>Timetable:</h3>
<ul>
<li>
      June 3, 2011 - Postmark deadline for application materials.
</li>
<li>
      August 8, 2011 - Announcement of the winner.
</li>
<li>
      November 15, 2011 - Deadline for receipt of orchestra parts supplied by the
      winning composer.
</li>
<li>
      Spring 2012 (specific Saturday to be announced) – Performance of the
      winning work by the Columbia Orchestra in Columbia, Maryland. The dress
      rehearsal will be held the Friday prior to the concert.
</li>
</ul>

<h3>Award:</h3>
<p>
      The winner will receive a $1,000 prize. Additional local travel expense
      compensation will be paid if the winning composer agrees to work with the
      orchestra at the dress rehearsal and attend the concert (see below).
</p>

<h3>Additional Details:</h3>
<ul>
<li>
      One of goals of the Columbia Orchestra in holding the competition is to have
      the composer of the winning composition work with the orchestra during the
      dress rehearsal on the evening prior to the concert and attend the orchestra’s
      performance of the winning work in Spring 2012. To encourage such
      participation, the Columbia Orchestra will provide the winning composer with
      an additional $250 payment toward travel expenses associated with
      participation in the dress rehearsal and concert. The $250 payment is fixed
      and will not be adjusted if associated travel expenses are greater or less than
      that amount.
</li>
<li>
      The Columbia Orchestra will not reimburse expenses for preparation of scores
      and orchestra parts. The Columbia Orchestra will not provide any
      compensation to any competition entrant other than the $1000 prize and the
      $250 travel expense allowance. The travel expense payment will be provided
      only if the winning composer participates in the dress rehearsal and
      December 2011 concert.
</li>
<li>
      All Columbia Orchestra performances are professionally recorded. The winner
      will receive a CD recording of the performance. This recording may be used or
      copied for personal and promotional purposes, but may not be sold or
      distributed commercially.
</li>
<li>
      There is no entrance fee for the competition.
</li>
</ul>

<h3>Required Materials:</h3>
<ul>
<li>
      An anonymous score (a title may appear on the score).
</li>
<li>
      A completed application form, which can be downloaded in PDF format for
      printing from the Columbia Orchestra web page at
      http://columbiaorchestra.org/composer_competition/compcompapp.pdf.
      Entries with incomplete application forms will not be considered.
</li>
<li>
      A recording (orchestral, piano, or electronic realization) of the work on CD. No
      markings may appear on the recording that reveal or suggest the identity of
      the composer. A title may appear on the recording.
</li>
<li>
      A curriculum vitae or biography may be included, but is optional. See <a class="bodylink"
href="/composer_competition/faq/" target="co_link">FAQ</a> #7.
</li>
<li>
      An anonymous pdf image file of the score on a standard digital medium or
      available for download from a specified URL may be included, but it is
      optional.
</li>
<li>
      Please include a postage-paid, self-addressed return envelope with your
      application if you want your application materials returned to you.
</li>
</ul>

<p>
<b>Please send materials postmarked no later than June 3, 2011, to:</b>
<blockquote class="mailingaddress">
      The Columbia Orchestra<br>
      ATTN: Composition Competition<br>
      Howard County Center for the Arts<br>
      8510 High Ridge Road<br>
      Ellicott City, MD 21043
</blockquote>
</p>

<p>
<u><b>The Postmark Deadline is June 3, 2011. No exceptions!</b></u>
</p>

<p>
For any questions regarding the competition, please start by reading
our <a class="bodylink" href="/composer_competition/faq/"
target="co_link">FAQ</a> . If your question is not
answered there, please contact the Competition Coordinator at
<a href="mailto:compcomp@columbiaorchestra.org">
compcomp@columbiaorchestra.org</a>.
</p>



<center>
<p>
                                 <b>READ THE <a class="bodylink"
	       href="/composer_competition/faq"
	       target="co_link">FAQ</a>!</b>
</p>
<p>
                           The URL for this guidelines page is<br>

            <a class="bodylink"
	       href="/composer_competition/guidelines"
	       target="co_link">http://columbiaorchestra.org/composer_competition/guidelines</a>

</p>
<p>
                                The URL for the FAQ is<br>
            <a class="bodylink"
	       href="/composer_competition/faq"
	       target="co_link">http://columbiaorchestra.org/composer_competition/faq</a>
</p>
</center>

',0,'',0);
INSERT INTO "django_flatpage" VALUES(38,'/composer_competition/past_winners/','American Composer Competition &mdash; Past Winners','<h2>
American Composer Competition<br>
Past Winners
</h2>

<h3>The winning work of the 2009 American Composer Competition was the Third Movement of Symphony No. 1 “Remembrance” by Albert Hurwit. The orchestra performed the work on December 5, 2009 with the composer in attendance. </h3>


<p>
  The orchestra received 124 submissions from throughout the United States. In addition to the winning work, seven finalists were selected (listed in alphabetic order):
</p>
<ul>
  <li>Brian Fennelly: Reflections/Metamorphosis
  </li>
  <li>Anthony Iannaccone: Dancing on Vesuvius
  </li>
  <li>Mark Lackey: Convergence
  </li>
  <li>Elizabeth Lim: Paranoia
  </li>
  <li>Justin Merritt: River of Blood
  </li>
  <li>Philip Rothman: Arc of Visibility
  </li>
  <li>David Schneider: Automation
  </li>
</ul>
<p>
  Congratulations to Dr. Hurwit, the finalists, and all who entered the competition. We are extremely grateful for your participation!
</p>
<p>
  Read more about the winning work and the competition in this <a class="bodylink" href="/uploads/2010/091205-ACC.pdf" target="co_link" title="Pop-up: PDF">Press Release.</a>
</p>
<p>
  <a id="hurwit"><strong>About Albert Hurwit</strong> <img src="/images/cc-hurwit.jpg" title="Albert Hurwit, composer" width="125" height="160" border="0" align="right" vspace="10" hspace="10" /></a>
</p>
<p>
  The composing career of Albert Hurwit began relatively late in his life. He was born in Hartford, Connecticut in 1931. After graduating from Harvard College and Tufts Medical School, he remained in Boston for four years of postgraduate radiology training. He returned to Hartford and practiced radiology until his retirement in 1986.
</p>
<p>
  Through most of his life, Hurwit had been casually involved with music and composing in an unstructured manner. Since 1986 he has dedicated all of his energies to composing music. He has had no formal training, but has received informal mentoring form Robert Carl, Chairman of the Composition Department of the Hartt School of Music at the University of Hartford, and Michael Lankester, the former Music Director of the Hartford Symphony Orchestra.
</p>
<p>
  In 1997 the Adaskin String Trio performed Hurwit&rsquo;s &ldquo;Adagio&rdquo; at the University of Hartford. It was then expanded into an &ldquo;Adagio for Orchestra,&rdquo; which was performed later that year by the Hartford Symphony Orchestra with Michael Lankester conducting at the Bushnell Center for Performing Arts.
</p>
<p>
  After three more years of self instruction, experimentation and musical exploration Hurwit began to compose a symphony. He completed the composition of Symphony No. 1 &ldquo;Remembrance&rdquo; in 2002.
</p>
<p>
  On November 8, 9 and 10, 2002, Movement III of the symphony (electronic rendition) was choreographed by Peggy Lyman and performed by the Hartt School of Music Dancers at the Lincoln Theater of the University of Hartford.
</p>
<p>
  On February 13 and 14, 2003, the third movement of this symphony was performed in a concert world premiere by the Hartford Symphony Orchestra under the direction of Edward Cumming at the Bushnell Center for Performing Arts.
</p>
<p>
  In July of 2004, the symphony was recorded by the Bulgarian National Radio Symphony Orchestra with Michael Lankester conducting. Hurwit spent eight days in Sofia and participated in the rehearsing, revisions, recording, mixing and finalizing process of the CD production. The CD of the symphony was released by MSR Classics in March of 2005, and it is being distributed by Albany Records.
</p>
<p>
  The West Hartford Symphony Orchestra under the baton of Richard Chiarappa presented world premiere concert performance of the entire Symphony No.1 &ldquo;Remembrance&rdquo; on March 5, 2006.
</p>
<p>
  <br />
  <strong>The Results of Previous Competitions</strong>
</p>
<p>
  <strong>2007</strong>
</p>
<div class="c1">
  <p>
    <strong>Winner:</strong> David Heuser: A Screaming Comes Across the Sky
  </p>
  <p>
    <strong>Finalists:</strong>
  </p>
  <ul>
    <li>Randolph Partain: Blood Rite
    </li>
    <li>David Sartor: Concerto for Orchestra
    </li>
    <li>Arthur Gottschalk: Amelia
    </li>
    <li>Laurence Bitensky: A Perfect Rest
    </li>
    <li>Mark Lortz: Deus Ex Machina
    </li>
    <li>Anthony Iannaccone: The Colors of Dream
    </li>
    <li>Kevin Walczyk: Capriccio
    </li>
    <li>Takuma Itoh: Concerto for Orchestra
    </li>
    <li>Lee Actor: Variations and Fugue
    </li>
  </ul>
</div>
<p>
  <strong>2005</strong>
</p>
<div class="c1">
  <p>
    <strong>Winner:</strong> David Dzubay: Shadow Dance
  </p>
  <p>
    <strong>Finalists:</strong>
  </p>
  <ul>
    <li>Lee Actor: Prelude to a Tragedy
    </li>
    <li>Arthur Gottschalk: Amelia
    </li>
    <li>Anthony Iannaccone: The Colors of Dream
    </li>
    <li>Rob Smith: Push
    </li>
    <li>Antonio Carlos DeFeo: What''s That I Hear?
    </li>
    <li>Charles Bestor: Variations for Orchestra
    </li>
    <li>Joshua Penman: Songs the Plants Taught Us
    </li>
    <li>Ernst Bacon: Smokey Mountain Scherzo
    </li>
  </ul>
</div>
<p>
  <strong>2003</strong>
</p>
<div class="c1">
  <p>
    <strong>Winner:</strong> Thomas Shnauber: Indigo Street
  </p>
  <p>
    <strong>Finalists:</strong>
  </p>
  <ul>
    <li>Yuanlin Chen: Overture - Rhapsody
    </li>
    <li>Paul Richards: Trip Hammer
    </li>
    <li>Stephan Prock: Garden Varieties
    </li>
    <li>Cynthia Miller: Frequent Flier
    </li>
    <li>Jeff Manookian: NEXUS
    </li>
    <li>Erich Stern: Escape
    </li>
    <li>Allen Menton: Shape-Note Fantasy
    </li>
    <li>Daniel Powers: The Starry Messenger
    </li>
    <li>James Ra: Awakened Spirit
    </li>
    <li>Christopher Pierce: Aquarelle
    </li>
    <li>Garrett Byrnes: The Flames of Imbolc
    </li>
  </ul>
</div>',0,'',0);
INSERT INTO "django_flatpage" VALUES(39,'/donate/form/','Online Donation Form','<head>
<script type="text/javascript">

function copy_info() {
    var ids = [''name'', ''addr1'', ''addr2'', ''city'', ''state'', ''zip''];
    for (var i=0; i<ids.length; i++) {
        document.getElementById(''s''+ids[i]).value = document.getElementById(''b''+ids[i]).value;
    }
}

function reset_contact() {
    var ids = [''name'', ''addr1'', ''addr2'', ''city'', ''state'', ''zip''];
    for (var i=0; i<ids.length; i++) {
        document.getElementById(''s''+ids[i]).value = '''';
        document.getElementById(''b''+ids[i]).value = '''';
    }
    document.getElementById(''phone'').value = '''';
    document.getElementById(''email'').value = '''';
}

		$(document).ready(function() {
                        reset_donation();
                        reset_contact();
               });

                function getDonationAmt() {  return parseFloat(document.getElementById("donation").value);  }

		function makeCommentString() {
                        str = "Donations: " + getDonationAmt();
                        str += "Donor comments: " + document.getElementById("donor_comment").value;
		        return str;
		}

               function donationCheck() {
                       var f = getDonationAmt();
                       if (isNaN(f) || f < 0.1) { alert("You have not entered a valid donation amount."); return false; }
                       return true;
               }

               function reset_donation() {  document.getElementById("donation").value = "0";  }

                function submitCheck() {
                        if (!donationCheck()) return false;
                        var total = getDonationAmt();
                        document.getElementById("chargetotal").value = total;
			document.getElementById("comments").value = makeCommentString()
                        return true;
                }

</script>
</head>

<h2>Online Donation Form</h2>

<p>All donations to the Columbia Orchestra are tax-deductible.  For more information, please revisit our <a href="/donate" target="info">donations page</a>.
</p>

<p>Thank you for your support!</p>

<br />
<!-- <form id="DonationForm" action="http://www.example.com" method="post" onsubmit="return submitCheck()"> -->
<form id="DonationForm" action="https://www.linkpointcentral.com/lpc/servlet/lppay" method="post" onsubmit="return submitCheck()">

<p><b>Donation amount:</b>  $<input id="donation" type="text" size="5" value="0" /></p>

<p><b>How would you like your donation acknowledged in our concert program?</b><br>
(e.g., Mr & Mrs. John Smith, In memory of...,   In honor of...,  Anonymous)<br>
<textarea name="donor_comment" rows="3" cols="60"></textarea>
</p>

<div>

<div style="float: left; clear: left">
<h4>Credit Card Billing Address</h4>
<table>
<tr><td>Name</td> <td><input type="text" id="bname" name="bname" /></td></tr>
<tr><td>Street</td> <td><input type="text" id="baddr1" name="baddr1" size="30" maxlength="30" /></td></tr>
<tr><td></td> <td><input type="text" id="baddr2" name="baddr2" size="30" maxlength="30" /></td></tr>
<tr><td>City</td> <td><input type="text" id="bcity" name="bcity" size="30" maxlength="30" /></td></tr>
<tr><td>State</td> <td><select id="bstate" name="bstate" size="1">
<option value=""> ... </option>
<option value="AK"> AK </option>
<option value="AL"> AL </option>
<option value="AR"> AR </option>
<option value="AZ"> AZ </option>
<option value="CA"> CA </option>
<option value="CO"> CO </option>
<option value="CT"> CT </option>
<option value="DC"> DC </option>
<option value="DE"> DE </option>
<option value="FL"> FL </option>
<option value="GA"> GA </option>
<option value="HI"> HI </option>
<option value="IA"> IA </option>
<option value="ID"> ID </option>
<option value="IL"> IL </option>
<option value="IN"> IN </option>
<option value="KS"> KS </option>
<option value="KY"> KY </option>
<option value="LA"> LA </option>
<option value="MA"> MA </option>
<option value="MD"> MD </option>
<option value="ME"> ME </option>
<option value="MI"> MI </option>
<option value="MN"> MN </option>
<option value="MO"> MO </option>
<option value="MS"> MS </option>
<option value="MT"> MT </option>
<option value="NC"> NC </option>
<option value="ND"> ND </option>
<option value="NE"> NE </option>
<option value="NH"> NH </option>
<option value="NJ"> NJ </option>
<option value="NM"> NM </option>
<option value="NV"> NV </option>
<option value="NY"> NY </option>
<option value="OH"> OH </option>
<option value="OK"> OK </option>
<option value="OR"> OR </option>
<option value="PA"> PA </option>
<option value="PR"> PR </option>
<option value="RI"> RI </option>
<option value="SC"> SC </option>
<option value="SD"> SD </option>
<option value="TN"> TN </option>
<option value="TX"> TX </option>
<option value="UT"> UT </option>
<option value="VA"> VA </option>
<option value="VI"> VI </option>
<option value="VT"> VT </option>
<option value="WA"> WA </option>
<option value="WI"> WI </option>
<option value="WV"> WV </option>
<option value="WY"> WY </option>
</select></td></tr>
<tr><td>ZIP</td> <td><input type="text" id="bzip" name="bzip" size="5" maxlength="10" /></td></tr>
</table>
<input type="hidden" id="bcountry" name="bcountry" value="US" /></ul>
</div>

<div style="float: left; display: inline; padding-left:5em">
<h4>Mailing Address (for our acknowledgment letter)</h4>
<table>
<tr><td>Name</td> <td><input type="text" id="sname" name="sname" /></td></tr>
<tr><td>Street</td> <td><input type="text" id="saddr1" name="saddr1" size="30" maxlength="30" /></td></tr>
<tr><td></td> <td><input type="text" id="saddr2" name="saddr2" size="30" maxlength="30" /></td></tr>
<tr><td>City</td> <td><input type="text" id="scity" name="scity" size="30" maxlength="30" /></td></tr>
<tr><td>State</td> <td><select id="sstate" name="sstate" size="1">
<option value=""> ... </option>
<option value="AK"> AK </option>
<option value="AL"> AL </option>
<option value="AR"> AR </option>
<option value="AZ"> AZ </option>
<option value="CA"> CA </option>
<option value="CO"> CO </option>
<option value="CT"> CT </option>
<option value="DC"> DC </option>
<option value="DE"> DE </option>
<option value="FL"> FL </option>
<option value="GA"> GA </option>
<option value="HI"> HI </option>
<option value="IA"> IA </option>
<option value="ID"> ID </option>
<option value="IL"> IL </option>
<option value="IN"> IN </option>
<option value="KS"> KS </option>
<option value="KY"> KY </option>
<option value="LA"> LA </option>
<option value="MA"> MA </option>
<option value="MD"> MD </option>
<option value="ME"> ME </option>
<option value="MI"> MI </option>
<option value="MN"> MN </option>
<option value="MO"> MO </option>
<option value="MS"> MS </option>
<option value="MT"> MT </option>
<option value="NC"> NC </option>
<option value="ND"> ND </option>
<option value="NE"> NE </option>
<option value="NH"> NH </option>
<option value="NJ"> NJ </option>
<option value="NM"> NM </option>
<option value="NV"> NV </option>
<option value="NY"> NY </option>
<option value="OH"> OH </option>
<option value="OK"> OK </option>
<option value="OR"> OR </option>
<option value="PA"> PA </option>
<option value="PR"> PR </option>
<option value="RI"> RI </option>
<option value="SC"> SC </option>
<option value="SD"> SD </option>
<option value="TN"> TN </option>
<option value="TX"> TX </option>
<option value="UT"> UT </option>
<option value="VA"> VA </option>
<option value="VI"> VI </option>
<option value="VT"> VT </option>
<option value="WA"> WA </option>
<option value="WI"> WI </option>
<option value="WV"> WV </option>
<option value="WY"> WY </option>
</select></td></tr>
<tr><td>ZIP</td> <td><input type="text" id="szip" name="szip" size="5" maxlength="10" /></td></tr>
</table>
<button type="button" onclick="javascript:copy_info()">Copy from Billing Address</button>
<input type="hidden" id="scountry" name="scountry" value="US" /></ul>
</div>

</div>

<div style="clear: left">
<table>
<tr><td>Phone</td> <td><input type="text" id="phone" name="phone" size="15" maxlength="20" /></td></tr>
<tr><td>Email</td> <td><input type="text" id="email" name="email" size="30" maxlength="45" /></td></tr>
</table>
</div>

<br>
<input style="display: block" type="submit" value="Proceed to Payment" />


<input type="hidden" id="chargetotal" name="chargetotal" value="0.0" />
<!-- <input type="hidden" name="mode" value="Fullpay" /> -->
<input type="hidden" name="mode" value="Payplus" />
<input type="hidden" name="txntype" value="sale" />
<input type="hidden" name="storename" value="1001258007" />
<input type="hidden" id="comments" name="comments" value="" />
<input type="hidden" name="responseSuccessURL" value="http://columbiaorchestra.org/donate/thanks" />
<input type="hidden" name="responseFailURL" value="http://columbiaorchestra.org/donate/sorry" />

</form>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(40,'/donate/','Donations','<h2>Make a Donation</h2>
<!--
<p>
  <a href="/donate/form"><img src="/images/button-donation.gif" border="0" width="110" height="23" alt="Pop-up: Make a Donation" align="right" /></a> 
</p>
-->
<p>
  We are grateful to our many loyal supporters, and hope you too will support the orchestra. Ticket sales cover only 25% of our expenses. Your donation helps make it possible for us to rent concert and rehearsal space, contract outstanding soloists, rent and purchase music, and keep the community informed of our activities. By contributing to the orchestra, you help to enrich our community and to sustain the priceless cultural heritage of classical music. Please help the Columbia Orchestra keep making <em>Your Community''s Music.</em>
</p>
<p>
  Contributors will be acknowledged in our programs grouped into these giving levels:
</p>
<ul>
  <li>FRIEND (up to $99)</li>
  <li>DONOR ($100-$249)</li>
  <li>PATRON ($250-$499)</li>
  <li>BENEFACTOR ($500-$999)</li>
  <li>SPONSOR ($1,000-$1,999)</li>
  <li>CONDUCTOR''S CIRCLE ($2,000 and greater)</li>
</ul>
<p>
  Thank you for your support. The Columbia Orchestra is incorporated in Maryland as a 501(c)(3) nonprofit corporation. All donations are tax-deductible. 
</p>

<h3>How to donate</h3>

<h4>Online</h4>  

<p>
Use our <a href="/donate/form">online donation form</a>.
</p>

<p>Your donation will be confirmed by e-mail, and you will receive a written acknowledgement and thank-you by mail.
</p>

<h4>By mail</h4>
<p>
First complete our <a class="bodylink" href="/uploads/2011/donation_card.pdf" title="PDF Pop-up">donation form</a>. Viewing and printing this form requires Adobe Acrobat Reader; if you don''t have Acrobat Reader, you can <a class="bodylink" href="http://www.adobe.com/products/acrobat/readstep.html" title="Pop-up">download a free copy</a>. Then mail the form along with a check to The Columbia Orchestra, sending it to the address at the bottom of this web page.
</p>
<p>
  If you would like to make a non-cash donation to the orchestra, please contact the orchestra office at 410-465-8777. We will be happy to discuss other gifts with you.
</p>
<p>
  If you would prefer that your donation remain anonymous, just let us know and we will honor your wishes.
</p>

<h3>About us</h3>

<p>
  The Columbia Orchestra is a 501(c)(3) organization&mdash;donations to which are tax deductible to the fullest extent allowed by law. A copy of our current financial statement is available upon request by calling our office. Documents submitted to the State of Maryland Charitable Solicitations Act are available from the Secretary of State, State House, Annapolis, MD 21401, for the cost of copying and mailing.
</p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(41,'/donate/thanks/','Thank You For Your Donation','<h2>Thank You</h2>

<p>
The transaction completed successfully.  An acknowledgement letter will be sent to your mailing address.  Thank you for your support!
</p>',0,'',0);
INSERT INTO "django_flatpage" VALUES(42,'/donate/sorry/','Donation Transaction Unsuccessful','<h2>Transaction not successful</h2>

<p>
Unfortunately we could not complete the transaction.  Please return to our <a href="/test/donate">donations page</a> or visit our website''s <a href="/">main page</a>.
</p>

<p>
Thank you for your interest in supporting the orchestra.
</p>

',0,'',0);
INSERT INTO "django_flatpage" VALUES(43,'/old/tickets_pre20110617/','Concert Tickets','<head>
<style type="text/css"> span#TotalPrice{ color: green; font-weight: bold; }</style>
<script type="text/javascript">
function copy_info() {
    var ids = [''name'', ''addr1'', ''addr2'', ''city'', ''state'', ''zip''];
    for (var i=0; i<ids.length; i++) {
        document.getElementById(''s''+ids[i]).value = document.getElementById(''b''+ids[i]).value;
    }
}
function reset_contact() {
    var ids = [''name'', ''addr1'', ''addr2'', ''city'', ''state'', ''zip''];
    for (var i=0; i<ids.length; i++) {
        document.getElementById(''s''+ids[i]).value = '''';
        document.getElementById(''b''+ids[i]).value = '''';
    }
    document.getElementById(''phone'').value = '''';
    document.getElementById(''email'').value = '''';
}

		$(document).ready(function() {
			reset_tickets();
                        reset_contact();
                });

                var type_names = [ "adult", "senior", "student", "group_rate" ];
                var type_rates = [ 20, 16, 10, 16 ];

    	        var nonnegint = /^\s*\d*\s*$/;
    	        function isNonnegInt(val) { return nonnegint.test(val); }

                var whitespace = /^\s*$/;
                function getQuantity(type_name) {
                        val = document.getElementById(type_name).value;
                        if (whitespace.test(val)) { return 0; }
                        return parseInt(val);
                }

		function getTotalPrice() {
                        var total = 0;
                        for (var i=0; i<type_names.length; i++) {
                                total += getQuantity(type_names[i]) * type_rates[i];
                        }
		        return total;
		}
		
		function showPrice(){
		        document.getElementById("TotalPrice").innerHTML = "$" + getTotalPrice();
		}

		function makeCommentString() {
		        str = "Concert tickets:";
                        for (var i=0; i<type_names.length; i++) {
			       str += " " + type_names[i] + "=" + getQuantity(type_names[i]) + " tickets;";
                        }
		        return str;
		}
		
		function orderTickets(){
                        var price, group_rate_qty;
                        for (var i=0; i<type_names.length; i++) {
                               if ( ! isNonnegInt(document.getElementById(type_names[i]).value) ) {
                                       alert("You have entered an invalid number of tickets.");
                                       return false;
                               }
                        }
                        price = getTotalPrice();
                        if (price <= 0) {
                                alert("You have not ordered a valid number of tickets.");
                                return false;
                        }
                        group_rate_qty = getQuantity("group_rate");
                        if ( 1 <= group_rate_qty && group_rate_qty < 10) {
                                 alert("The group rate only applies to ten or more tickets.");
                                 return false;
                        }
		        document.getElementById("chargetotal").value = getTotalPrice();
			document.getElementById("comments").value = makeCommentString()
		        return true;
		}		
		
		function reset_tickets(){
			document.getElementById("TotalPrice").innerHTML = "$0"; 
			for (var i=0; i<type_names.length; i++) {
                                document.getElementById(type_names[i]).value = "0";
                        }
		}			

</script>
</head>


<h2>Concert Tickets</h2>

<h3><a name="form"></a>Online order form</h3>

<p><strong>
We cannot process online ticket orders for tonight''s (June 4) performance after 12:00 pm the day of the concert.  Tickets will be available for purchase at the door.
</strong></p>

<!--

<p>Use this form to order tickets online.  Scroll down further for information on other ways to order tickets in advance (by mail, by phone, or in person).</p>

<h3><a name="form"></a>Online order form</h3>

<p><i>
Creation and Destruction, June 4, 2011<br>
7:30 p.m., Jim Rouse Theatre
</i></p>

<form id="TicketForm" action="https://www.linkpointcentral.com/lpc/servlet/lppay" method="post" onsubmit="return orderTickets()">

<p>
How many tickets of each type?  Total Price: <span id="TotalPrice">$0</span>
</p>

<table>
<tr>
<td>Adults</td>
<td><input type="text" size="3" id="adult" onchange="javascript:showPrice()" /> tickets @ $20 each</td>
</tr>
<tr>
<td>Seniors (60 and up)</td>
<td><input type="text" size="3" id="senior" onchange="javascript:showPrice()" /> tickets @ $16 each</td>
</tr>
<tr>
<td>Full-time students (up to age 24)</td>
<td><input type="text" size="3" id="student" onchange="javascript:showPrice()" /> tickets @ $10 each</td>
</tr>
<tr>
<td>Group rates (10 or more tickets only)</td>
<td><input type="text" size="3" id="group_rate" onchange="javascript:showPrice()" /> tickets @ $16 each</td>
</tr>
</table>

</p>

<div style="float: left; clear: left">
<h4>Billing Information</h4>
<table>
<tr><td>Name</td> <td><input type="text" id="bname" name="bname" /></td></tr>
<tr><td>Street</td> <td><input type="text" id="baddr1" name="baddr1" size="30" maxlength="30" /></td></tr>
<tr><td></td> <td><input type="text" id="baddr2" name="baddr2" size="30" maxlength="30" /></td></tr>
<tr><td>City</td> <td><input type="text" id="bcity" name="bcity" size="30" maxlength="30" /></td></tr>
<tr><td>State</td> <td><select id="bstate" name="bstate" size="1">
<option value=""> ... </option>
<option value="AK"> AK </option>
<option value="AL"> AL </option>
<option value="AR"> AR </option>
<option value="AZ"> AZ </option>
<option value="CA"> CA </option>
<option value="CO"> CO </option>
<option value="CT"> CT </option>
<option value="DC"> DC </option>
<option value="DE"> DE </option>
<option value="FL"> FL </option>
<option value="GA"> GA </option>
<option value="HI"> HI </option>
<option value="IA"> IA </option>
<option value="ID"> ID </option>
<option value="IL"> IL </option>
<option value="IN"> IN </option>
<option value="KS"> KS </option>
<option value="KY"> KY </option>
<option value="LA"> LA </option>
<option value="MA"> MA </option>
<option value="MD"> MD </option>
<option value="ME"> ME </option>
<option value="MI"> MI </option>
<option value="MN"> MN </option>
<option value="MO"> MO </option>
<option value="MS"> MS </option>
<option value="MT"> MT </option>
<option value="NC"> NC </option>
<option value="ND"> ND </option>
<option value="NE"> NE </option>
<option value="NH"> NH </option>
<option value="NJ"> NJ </option>
<option value="NM"> NM </option>
<option value="NV"> NV </option>
<option value="NY"> NY </option>
<option value="OH"> OH </option>
<option value="OK"> OK </option>
<option value="OR"> OR </option>
<option value="PA"> PA </option>
<option value="PR"> PR </option>
<option value="RI"> RI </option>
<option value="SC"> SC </option>
<option value="SD"> SD </option>
<option value="TN"> TN </option>
<option value="TX"> TX </option>
<option value="UT"> UT </option>
<option value="VA"> VA </option>
<option value="VI"> VI </option>
<option value="VT"> VT </option>
<option value="WA"> WA </option>
<option value="WI"> WI </option>
<option value="WV"> WV </option>
<option value="WY"> WY </option>
</select></td></tr>
<tr><td>ZIP</td> <td><input type="text" id="bzip" name="bzip" size="5" maxlength="10" /></td></tr>
</table>
<input type="hidden" id="bcountry" name="bcountry" value="US" /></ul>
</div>

<div style="float: left; display: inline; padding-left: 5em">
<h4>Shipping Information</h4>
<table>
<tr><td>Name</td> <td><input type="text" id="sname" name="sname" /></td></tr>
<tr><td>Street</td> <td><input type="text" id="saddr1" name="saddr1" size="30" maxlength="30" /></td></tr>
<tr><td></td> <td><input type="text" id="saddr2" name="saddr2" size="30" maxlength="30" /></td></tr>
<tr><td>City</td> <td><input type="text" id="scity" name="scity" size="30" maxlength="30" /></td></tr>
<tr><td>State</td> <td><select id="sstate" name="sstate" size="1">
<option value=""> ... </option>
<option value="AK"> AK </option>
<option value="AL"> AL </option>
<option value="AR"> AR </option>
<option value="AZ"> AZ </option>
<option value="CA"> CA </option>
<option value="CO"> CO </option>
<option value="CT"> CT </option>
<option value="DC"> DC </option>
<option value="DE"> DE </option>
<option value="FL"> FL </option>
<option value="GA"> GA </option>
<option value="HI"> HI </option>
<option value="IA"> IA </option>
<option value="ID"> ID </option>
<option value="IL"> IL </option>
<option value="IN"> IN </option>
<option value="KS"> KS </option>
<option value="KY"> KY </option>
<option value="LA"> LA </option>
<option value="MA"> MA </option>
<option value="MD"> MD </option>
<option value="ME"> ME </option>
<option value="MI"> MI </option>
<option value="MN"> MN </option>
<option value="MO"> MO </option>
<option value="MS"> MS </option>
<option value="MT"> MT </option>
<option value="NC"> NC </option>
<option value="ND"> ND </option>
<option value="NE"> NE </option>
<option value="NH"> NH </option>
<option value="NJ"> NJ </option>
<option value="NM"> NM </option>
<option value="NV"> NV </option>
<option value="NY"> NY </option>
<option value="OH"> OH </option>
<option value="OK"> OK </option>
<option value="OR"> OR </option>
<option value="PA"> PA </option>
<option value="PR"> PR </option>
<option value="RI"> RI </option>
<option value="SC"> SC </option>
<option value="SD"> SD </option>
<option value="TN"> TN </option>
<option value="TX"> TX </option>
<option value="UT"> UT </option>
<option value="VA"> VA </option>
<option value="VI"> VI </option>
<option value="VT"> VT </option>
<option value="WA"> WA </option>
<option value="WI"> WI </option>
<option value="WV"> WV </option>
<option value="WY"> WY </option>
</select></td></tr>
<tr><td>ZIP</td> <td><input type="text" id="szip" name="szip" size="5" maxlength="10" /></td></tr>
</table>
<button type="button" onclick="javascript:copy_info()">Copy from Billing Information</button>
<input type="hidden" id="scountry" name="scountry" value="US" /></ul>
</div>

<div style="clear: left">
<table>
<tr><td>Phone</td> <td><input type="text" id="phone" name="phone" size="15" maxlength="20" /></td></tr>
<tr><td>Email</td> <td><input type="text" id="email" name="email" size="30" maxlength="45" /></td></tr>
</table>
</div>

<p>
<strong>Please note:</strong> Tickets ordered within six days of the performance will be held at the will-call window and may be picked up after 6:15 p.m. on the evening of the performance. 
</p>

<p>
<input style="display: block" type="submit" value="Proceed to Payment" />
</p>

<input type="hidden" id="chargetotal" name="chargetotal" value="0.0" />
<input type="hidden" name="mode" value="Payplus" />
<input type="hidden" name="txntype" value="sale" />
<input type="hidden" name="storename" value="1001258007" />
<input type="hidden" id="comments" name="comments" value="" />
<input type="hidden" name="responseSuccessURL" value="http://columbiaorchestra.org/tickets/thanks" />
<input type="hidden" name="responseFailURL" value="http://columbiaorchestra.org/tickets/sorry" />


</form>


<hr />

<h3>Prices</h3>
<p>Single-ticket prices for our remaining (June 4, 2011) Classical Concert:</p>
<blockquote><p>
Adult $20<br> 
Seniors (60 and up) $16<br> 
Fulltime Students (To age 24) $10 <br>
Group Rates (10 or more) $16
</p></blockquote>

-->

<h3>Ordering tickets</h3>

<p>
Concert tickets may be ordered in advance online, by mail, by phone, or in person at one of three locations.  Details for each method are given below. Remaining tickets can be purchased at the box office the evening of the concert.

The Columbia Orchestra is pleased to announce that credit cards may now be used online, by phone, or at the box office.
</p>

<p>
All advance ticket orders placed within six days of a performance will be held at the concert''s will-call window, and will be available for pick-up after 6:15 p.m. on the evening of the performance. 
</p>

<h4>Online</h4>
<a name="online"></a>
<p>Use the <a class="bodylink" href="#form">order form</a> at the top of this page.  When you click on "Proceed to Payment", you will be directed to a secure payment site hosted by First Data Corporation where you will be prompted for your credit card number. Your order will be confirmed by e-mail, and your tickets will be mailed to you (or held for you at will-call, for orders placed within six days of the concert). Online orders will be accepted up until the morning of each concert.  However, we encourage you to order early, as we tend to be quite busy on concert day.  
</p>

<h4>By mail</h4>
<a name="mail"></a>
<p>
Be sure to tell us the concert date and the number of tickets of each type (senior, adult, student) that you would like to purchase.  Send this information along with a check to "The Columbia Orchestra" to our address:
<blockquote><p>
The Columbia Orchestra<br>
Howard County Center for the Arts<br>
8510 High Ridge Road<br>
Ellicott City, MD 21043 
</p></blockquote>
</p>

<h4>By phone or e-mail</h4>
<a name="phone"></a>

<p>We strongly encourage online payment in order to minimize your delay in the lobby prior to being seated. If you do not wish to pay online and prefer to reserve tickets to purchase at will-call, please contact our Executive Director at (410) 465-8777, extension 2, or e-mail <a href="mailto:ticketinfo@columbiaorchestra.org">ticketinfo@columbiaorchestra.org</a>.
</p>

<h4>In person</h4>
<a name="person"></a>

<p>Tickets are now available for purchase at the Music & Arts Center at the Chatham Station Shopping Center, the Music & Arts Center in Laurel, and the Columbia Association office on Wincopin Circle. Music & Arts will accept payment by cash or check. Credit cards are accepted at the Columbia Association office, not at Music & Arts.
</p>



',0,'',0);
INSERT INTO "django_flatpage" VALUES(44,'/tickets/thanks/','Thank You','<h2>Thank You</h2>

<p>
Thank you for your ticket order.  Your tickets will either be sent to your mailing address or, if your order is within six days of the performance, will be held at will-call for you.
</p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(45,'/tickets/sorry/','Ticket purchase not successful','<h2>Purchase Not Successful</h2>

<p>
Unfortunately your ticket purchase could not be completed.  Please consider revisiting our <a class="bodylink" href="/tickets">ticket information page</a> for other ways to order tickets.
</p>

<p>
We hope to see you at our next performance!
</p>',0,'',0);
INSERT INTO "django_flatpage" VALUES(46,'/program_notes/','Program Notes','<h2> Program Notes - Concert 6/4/11</h2>
<h3>by Bill Scanlan Murphy</h3>

<br> </br>


<h3>KRZYSZTOF PENDERECKI (born 1933)</h3>

<h4>THRENODY TO THE VICTIMS OF HIROSHIMA</h4>

<p>
Composed: 1960<br></br>
Premiered: Katowice, Poland, 1960
</p>

<p>
In 2002, the English rock musician Mike Batt was forced to pay a considerable amount in damages to John Cage’s publishers when he made the mistake of putting out a track entitled A Minute’s Silence, intended as a parody of Cage’s infamous 4’33”—a piano piece consisting of that amount of silence. In 1960, when Kryzystof Penderecki rolled out a work for strings entitled 8’37”, he was warned that something similar might happen to him, so he hastily searched for a new title for this very avant-garde exercise in string sonority. The Director of Polish Radio also told Penderecki that he stood a better chance of a prize from the UNESCO Composers’ Jury meeting in Paris that year if the piece had a more “emotional” title. And he was right—it won First Prize.
</p>

<p>
The ear-piercing shriek at the beginning of the piece suggested a bright flash of light, and a glance at the calendar—August 6, Hiroshima Day—gave him the inspiration he needed. The Threnody to the Victims of Hiroshima became, at the stroke of a pen, a musical monument to the horrors of the first atomic bomb. Those who believe they can hear the screams of the dying or other grim details of the bombing in the music are, alas, misguided. Penderecki´s famous statement ¨Let the Threnody express my firm belief that the sacrifice of Hiroshima will never be forgotten and lost¨ needs to be read in the knowledge that nothing of the sort was in his mind when he wrote it. What the music expresses is his faith in a whole new world of musical sound. He gave another account of his change of title:
</p>

<p>
“The Threnody existed only in my imagination, in a somewhat abstract way. When I could listen to an actual performance, I was struck with the emotional charge of the work. I thought it would be a waste to condemn it to such anonymity, to those “digits”. I searched for associations and, in the end, I decided to dedicate it to the Hiroshima victims.”
</p>

<p>
The Threnody is built out of sounds, very much as opposed to notes. It has frequently been described as a composition in sound-effects. The composer manipulates clusters of pitches that behave more like clouds than chords, and are in any case produced by playing stringed instruments in very unconventional ways—behind the bridge, with the wood of the bow; for percussive sounds, the body of the instrument is tapped or knocked (the piece is not popular with the owners of valuable instruments!). Even now, fifty years after its composition, it remains one of the monuments of the European avant-garde that dominated music in the second half of the twentieth century. And, just as the Beatles took sounds from Stockhausen, other, more conventional composers who would never have composed like this were happy to borrow its more outré effects when it suited them. It should be remembered that the Threnody was written two years before the Psycho shower sequence was even thought of.
</p>

<p>
An odd footnote to this story is the curious change of style that Penderecki’s music underwent in the 1980s and afterwards. For whatever reason, the creator of the Threnody now composes in a style that has been described as the Frankensteinian offspring of Carl Orff and Smetana.
</p>


<h3>RADIOHEAD</h3>

<h4>HARRY PATCH (IN MEMORY OF)</h4>

<p>
Composed: 2009<br></br>
Released: 2009
</p>

<p>
The last fifty years have seen many strange and unexpected cross-currents between popular and “art” music, with symphony orchestras playing the works of Frank Zappa and learned dissertations being written on the unpublished works of Brian Wilson. So it is no great surprise to see a band like Radiohead producing a song which is bluntly, unashamedly symphonic. The Moody Blues conjured up this particular genre with Days of Future Past, in 1969, when they recorded an entire album with the London Symphony Orchestra; the Peddlers took it a startling stage further in 1971 with Suite London, which absorbed the musical language of Penderecki and Ligeti into the mix. This intriguing musical bloodline seemed to die out with the rise of Punk in the 1980s, but it is now rising again in such things as the weird rock chamber music of the High Llamas—and songs like this.
</p>

<p>
Harry Patch (In Memory Of) has its origins in a television interview with Harry Patch in 2005. Mr. Patch was the oldest surviving British veteran of the First World War, dying in 2009 at the staggering age of 111. He fought at Passchendaele (the infamous Battle of the Mud), and saw the worst of the “war to end wars” first-hand. Among the viewers of the 2005 interview was Thom Yorke, vocalist with Radiohead, who immediately set to work on this tribute to the old soldier. 
</p>

<p>
Mr. Patch told the interviewer: “Next time some politician comes along and tells you it’s time to start a war, just hand him a rifle and tell him to get on with it himself,” adding that he believed that the next war would be chemical—like the gassings he saw himself in Flanders—but “they will never learn.”
</p>

<p>
It is the melancholy lot of future generations to attempt to prove Mr. Patch wrong. He had no faith, alas, in their prospects of success.
</p>


<h3>JOHN ADAMS (born 1953)</h3>

<h4>BATTER MY HEART from DOCTOR ATOMIC</h4>

<p>
Composed: 2005<br></br>
Premiered: San Francisco, 2005
</p>

<p>
John Adams has been described as a “post-minimalist” composer. Although his music is based, like that of arch-minimalists such as Philip Glass, on ostinati – short repeating patterns woven into coruscating, undulating curtains of sound – it has also come to be noted for transcending the limitations of the minimalist musical language, weaving a firm backbone of logic and motivic order into the proceedings. The result is immediately accessible but profoundly serious music that engages the mind while performing the musical equivalent of Op Art.
</p>

<p>
Like Adams’ previous operas Nixon in China and The Death of Klinghoffer, Doctor Atomic deals with real, historical persons and real events—in this case, the first test of an atomic bomb, in July 1945. The Doctor Atomic of the title is J. Robert Oppenheimer, who, despite his own importance to the project, had doubts about the morality of constructing the bomb—let alone using it—to the extent that he was under constant FBI surveillance throughout his time on the Manhattan Project. He was also a highly cultured and literary man, much given to quoting literature the way earlier generations once quoted scripture. As the bomb exploded over the New Mexico desert, he famously recited a line from the Bhagavad Gita, a key book of Hindu scripture: “I am become Death, the Destroyer of Worlds”.
</p>

<p>
In the Adams opera, Oppenheimer quotes and sings lines from many sources—scientific texts, the Gita and, as here, the poetry of John Donne. He sings Batter My Heart at the end of the first act of the opera, which deals with the preparations for the atomic test; the second act will deal with the test itself. Some of the scientists at Los Alamos were not entirely convinced that the chain reaction in the bomb would stop once it had been started; they believed there was a genuine chance that pushing the button would literally end the world. Oppenheimer did not agree—or did he? His anguish is scientific, moral, professional, religious and emotional—reflecting, had he but known it, John Donne’s own spiritual torture in the moral labyrinth of seventeenth-century London. Donne feared he would be destroyed by the God he most wished to know; in willing his ultimate desire, he was willing his own end.
</p>

<p>
Steven Sondheim, in his Pacific Overtures, places another character on an existential precipice with lines that give us a similar insight into Oppenheimer’s predicament as he imagines what he is about to do:
</p>

<p>
“And the earth trembled, and the sky cracked, and I thought it was the end of the world.
</p>

<p>
And it was.”
</p>






<h3>FRANZ JOSEF HAYDN (1732–1809)</h3>

<h4>THE CREATION—excerpts</h4>

<p>
Composed: 1796–1798<br></br>
Premiered: Vienna, Austria, 1798
</p>

<p>
When Haydn visited London in 1791, he was astonished and gratified to find that by far the most popular composer there was his countryman Handel—then still pronounced “Hendel” as the composer had insisted throughout his long stay in England. In particular, Handel’s oratorios commanded huge audiences: opera patrons, otherwise deprived of their favorite music on Sunday, could troop to the opera houses on the Sabbath to hear exactly the same performers praise God from the stage in works such as Judas Maccabaeus and the ever-popular Messiah. Haydn himself attended a performance of Israel in Egypt, and was hugely impressed by what mainland Europe thought of as an obscure work by an unfashionable composer. The work was mounted by Peter Salomon, the impresario who had brought Haydn to London; indeed, Salomon’s formidable income was largely based on oratorio performances. For all sorts of reasons (musical, professional, religious and financial) Haydn decided to create his own oratorio—a form that was deader than Handel back in Vienna.
</p>

<p>
The libretto of Die Schöpfung (The Creation) has a strange history. Salomon had tried to interest the ageing Handel in an unwieldy, very long and justifiably anonymous poem called The Creation of the World, based on an unstable stew of the Bible and John Milton, but Handel had rejected it, ostensibly because of its length; a setting of it would have resulted in the Baroque equivalent of Parsifal. Haydn had exactly the same objection, but took it back with him to Vienna, where his friend Baron van Swieten hammered it into the present shape. In particular, the Baron turned the English poem’s prairie wastes of bad Milton pastiche into clear, Classical recitative-aria pairs, with the epic choruses as narrative markers. Van Swieten made both German and English versions. Alas, his English is so bad as to be unperformable without inappropriate mirth; the English version now used is a back-translation from his German. Haydn insisted that the work should be performed in English where English was the local language.
Haydn had been particularly impressed by Handel’s musical depiction of the various plagues in Israel in Egypt; the weird evocations of such things as the army of frogs and – especially—the Great Darkness spreading over the land literally kept the old master awake at night. The Creation opens with a passage of tone-painting that would not be equaled until Wagner: the Representation of Chaos, depicting the cosmos before God got to His eternal work. Unprepared, non-resolving dissonances (sources of utter horror in the Classical era) slither into each other in unmistakable anticipation of Tristan, nearly a century away. That said, the careful listener will see the ternary A-B-A scaffolding under the harmonic drapes.
</p>

<p>
As the Bass soloist and the chorus take up the story—“In the Beginning, the Earth was without form,” Haydn lays the path for one of his characteristic musical jokes—though here, it’s a very serious joke. God says “Let there be light;” the chorus responds “and there was light!” “Light” turns out to be the key of C major, in a blazing, fully-orchestrated fortissimo chord—the religious version of the Surprise Symphony gag. When the delighted audience turned to the composer at the first performance, he pointed upwards and announced that the idea came from Heaven. The performance came to an enraptured standstill for several minutes.
</p>

<p>
What often surprises in The Creation is not the profundity of the music—though it certainly has that—but its wit. Only Haydn would turn the bass’s account of the creation of the oceans (Rolling in Foaming Billows) into an aria type familiar from his friend Mozart’s operas—the “revenge” aria. The catalog of spite and intended horror becomes the rollcall of the waters. The soprano sings of the creation of vegetation (Now Robed in Cool Refreshing Green) in a siciliana—a nod to the pastoral interludes of Handel’s oratorios. Sunrise (In Splendor Now) is depicted in an elaborate musical metaphor that harmonizes each note of the ascending scale in turn—then has the moon rise a fourth lower (the moon is the sun’s subdominant!) before giving way to the awe-inspiring chorus “The Heavens Are Telling.”
</p>

<p>
Some scholars insist that arcane astronomical ratios are worked into the music of this closing chorus of Part One. In London, Haydn befriended William Herschel, a composer who was also the Royal Astronomer (not to mention discoverer of Uranus). A telescope found at Esterhaz in the 1850s was believed to be Haydn’s.
</p>

<p>
Haydn was a profoundly religious man, who prayed for guidance throughout the composition of what he knew would be his last major work. He was described at the time as being almost childishly pleased with his achievement; he was and is not alone in considering this mighty oratorio to be his masterpiece. Already performed in places as far apart as Russia and New York during his lifetime, it has never been out of the repertoire, weathering times—entire decades—when even Mozart was in eclipse.
</p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(47,'/old/2011SpringRaffle/order/','2011 Spring Raffle Order Form','<h2> 2011 Spring Basket Raffle</h2>
<h4>Tickets 5 for $20 <br/>
	<i>Drawing June 4, 2011</i>
</h4>

<p>We are unable to process online raffle ticket orders after 12:00 pm on June 4.  Tickets will still be available for purchase at tonight''s performance before the drawing.</p>',0,'',0);
INSERT INTO "django_flatpage" VALUES(48,'/tickets/','Concert Tickets','<head>
<style type="text/css"> span#TotalPrice{ color: green; font-weight: bold; }</style>
<script type="text/javascript">
function copy_info() {
    var ids = [''name'', ''addr1'', ''addr2'', ''city'', ''state'', ''zip''];
    for (var i=0; i<ids.length; i++) {
        document.getElementById(''s''+ids[i]).value = document.getElementById(''b''+ids[i]).value;
    }
}
function reset_contact() {
    var ids = [''name'', ''addr1'', ''addr2'', ''city'', ''state'', ''zip''];
    for (var i=0; i<ids.length; i++) {
        document.getElementById(''s''+ids[i]).value = '''';
        document.getElementById(''b''+ids[i]).value = '''';
    }
    document.getElementById(''phone'').value = '''';
    document.getElementById(''email'').value = '''';
}

		$(document).ready(function() {
			reset_tickets();
                        reset_contact();
                });

                var type_names = [ "season_ticket_adult",
                                          "season_ticket_senior",
                                          "season_ticket_student",

                                          "october_15_2011_adult",
                                          "october_15_2011_senior",
                                          "october_15_2011_student",

                                          "december_3_2011_adult",
                                          "december_3_2011_senior",
                                          "december_3_2011_student",

                                          "february_4_2012_adult",
                                          "february_4_2012_senior",
                                          "february_4_2012_student",

                                          "young_people_1230pm",
                                          "young_people_300pm",

                                          "march_17_2012_adult",
                                          "march_17_2012_senior",
                                          "march_17_2012_student",

                                          "june_2_2012_adult",
                                          "june_2_2012_senior",
                                          "june_2_2012_student",

 ];
                var type_rates = [ 80, 64, 40,
                                         20, 16, 10,
                                         20, 16, 10,
                                         20, 16, 10,
                                         15, 15,
                                         22, 18, 10,
                                         20, 16, 10
];

    	        var nonnegint = /^\s*\d*\s*$/;
    	        function isNonnegInt(val) { return nonnegint.test(val); }

                var whitespace = /^\s*$/;
                function getQuantity(type_name) {
                        val = document.getElementById(type_name).value;
                        if (whitespace.test(val)) { return 0; }
                        return parseInt(val);
                }

		function getTotalPrice() {
                        var total = 0;
                        for (var i=0; i<type_names.length; i++) {
                                total += getQuantity(type_names[i]) * type_rates[i];
                        }
		        return total;
		}
		
		function showPrice(){
		        document.getElementById("TotalPrice").innerHTML = "$" + getTotalPrice();
		}

		function makeCommentString() {
                        var quantity, str;
                        str = "";
                        for (var i=0; i<type_names.length; i++) {
                               quantity = getQuantity(type_names[i]);
                               if (quantity > 0) {
			             str += type_names[i] + "=" + getQuantity(type_names[i]) + "; ";
                               }
                        }
		        return str;
		}
		
		function orderTickets(){
                        var price;
                        for (var i=0; i<type_names.length; i++) {
                               if ( ! isNonnegInt(document.getElementById(type_names[i]).value) ) {
                                       alert("You have entered an invalid number of tickets.");
                                       return false;
                               }
                        }
                        price = getTotalPrice();
                        if (price <= 0) {
                                alert("You have not ordered a valid number of tickets.");
                                return false;
                        }
		        document.getElementById("chargetotal").value = getTotalPrice();
			document.getElementById("comments").value = makeCommentString()
		        return true;
		}		
		
		function reset_tickets(){
			document.getElementById("TotalPrice").innerHTML = "$0"; 
			for (var i=0; i<type_names.length; i++) {
                                document.getElementById(type_names[i]).value = "0";
                        }
		}			

</script>
</head>


<h2>2011-2012 Season Subscription</h2>

<p><strong>Order your 2011-2012 season subscription now!</strong></p>
<ul>
<li>Save 20% on all 4 Classical Concerts <em>plus</em> Symphonic Pops.</li>
<li>Get early access to seating on concert nights to ensure the best seats
in the house.</li>
<li>Receive one FREE ticket voucher to share with friends for each
subscription purchased.</li>
<li>Exchange your ticket in advance for another program when conflicts
arise.</li> 
</ul>
<p>Subscriptions do not include our Young People''s Concert.</p>

<p>Order using the <a href="#form">online form</a> on this page or by filling out and sending our <a class="bodylink" href="/uploads/2011-12/Col_Orch_Season_Sub_JUL11.pdf" title="PDF Pop-up">printed order form</a>, with a check payable to The Columbia Orchestra, to:</p>
<blockquote>
<p>
ATTN: Tickets<br />
The Columbia Orchestra<br />
8510 High Ridge Road<br />
Ellicott City, MD 21043
</p>
</blockquote>

<p>Tickets will be mailed in early September.</p>

<h3><a name="form"></a>Online order form</h3>


<p><em>
2011-2012 Season Subscription
</em></p>

<form id="TicketForm" action="https://www.linkpointcentral.com/lpc/servlet/lppay" method="post" onsubmit="return orderTickets()">


<p>
Please specify how many tickets of each type:
</p>


<table cellpadding="3">

<tr>
<th><p>event</p></th>
<th colspan="2"><p>quantity</p></th>
</tr>

<tr>
<td rowspan="3"><p>Season Tickets</p></td>
<td><input type="text" size="3" id="season_ticket_adult" onchange="javascript:showPrice()" /></td>
<td>Adult @ $80 each</td>
</tr>
<tr>
<td><input type="text" size="3" id="season_ticket_senior" onchange="javascript:showPrice()" /></td>
<td>Seniors (60 and up) @ $64 each</td>
</tr>
<tr>
<td><input type="text" size="3" id="season_ticket_student" onchange="javascript:showPrice()"
<td>Full-time students @ $40 each</td>
</tr>

<tr><td colspan="3"><hr /></td></tr>

<tr>
<td rowspan="3"><p>Higdon and Tchaikovsky<br>October 15, 2011</p></td>
<td><input type="text" size="3" id="october_15_2011_adult" onchange="javascript:showPrice()" /></td>
<td>Adult @ $20 each</td>
</tr>
<tr>
<td><input type="text" size="3" id="october_15_2011_senior" onchange="javascript:showPrice()" /></td>
<td>Seniors (60 and up) @ $16 each</td>
</tr>
<tr>
<td><input type="text" size="3" id="october_15_2011_student" onchange="javascript:showPrice()"
<td>Full-time students @ $10 each</td>
</tr>

<tr><td colspan="3"><hr /></td></tr>

<tr>
<td rowspan="3"><p>Final Words<br>December 3, 2011</p></td>
<td><input type="text" size="3" id="december_3_2011_adult" onchange="javascript:showPrice()" /></td>
<td>Adult @ $20 each</td>
</tr>
<tr>
<td><input type="text" size="3" id="december_3_2011_senior" onchange="javascript:showPrice()" /></td>
<td>Seniors (60 and up) @ $16 each</td>
</tr>
<tr>
<td><input type="text" size="3" id="december_3_2011_student" onchange="javascript:showPrice()"
<td>Full-time students @ $10 each</td>
</tr>

<tr><td colspan="3"><hr /></td></tr>

<tr>
<td rowspan="3"><p>American Inspirations<br>February 4, 2012</p></td>
<td><input type="text" size="3" id="february_4_2012_adult" onchange="javascript:showPrice()" /></td>
<td>Adult @ $20 each</td>
</tr>
<tr>
<td><input type="text" size="3" id="february_4_2012_senior" onchange="javascript:showPrice()" /></td>
<td>Seniors (60 and up) @ $16 each</td>
</tr>
<tr>
<td><input type="text" size="3" id="february_4_2012_student" onchange="javascript:showPrice()"
<td>Full-time students @ $10 each</td>
</tr>

<tr><td colspan="3"><hr /></td></tr>

<tr>
<td rowspan="2"><p>Young People''s Concert<br>February 25, 2012<br>first show: 12:30 pm</p></td>
<td><input type="text" size="3" id="young_people_1230pm" onchange="javascript:showPrice()" /></td>
<td>Age 12 and up @ $15 each</td>
</tr>
<tr>
<td><p><strong>FREE</strong></p></td>
<td>Age 11 and under: FREE</td>
</tr>

<tr><td colspan="3"><hr /></td></tr>

<tr>
<td rowspan="2"><p>Young People''s Concert<br>February 25, 2012<br>second show: 3:00 pm</p></td>
<td><input type="text" size="3" id="young_people_300pm" onchange="javascript:showPrice()" /></td>
<td>Age 12 and up @ $15 each</td>
</tr>
<tr>
<td><p><strong>FREE</strong></p></td>
<td>Age 11 and under: FREE</td>
</tr>

<tr><td colspan="3"><hr /></td></tr>

<tr>
<td rowspan="3"><p>Symphonic Pops<br>March 17, 2012</p></td>
<td><input type="text" size="3" id="march_17_2012_adult" onchange="javascript:showPrice()" /></td>
<td>Adult @ $22 each</td>
</tr>
<tr>
<td><input type="text" size="3" id="march_17_2012_senior" onchange="javascript:showPrice()" /></td>
<td>Seniors (60 and up) @ $18 each</td>
</tr>
<tr>
<td><input type="text" size="3" id="march_17_2012_student" onchange="javascript:showPrice()"
<td>Full-time students @ $10 each</td>
</tr>

<tr><td colspan="3"><hr /></td></tr>

<tr>
<td rowspan="3"><p>Orchestral Fireworks<br>June 2, 2012</p></td>
<td><input type="text" size="3" id="june_2_2012_adult" onchange="javascript:showPrice()" /></td>
<td>Adult @ $20 each</td>
</tr>
<tr>
<td><input type="text" size="3" id="june_2_2012_senior" onchange="javascript:showPrice()" /></td>
<td>Seniors (60 and up) @ $16 each</td>
</tr>
<tr>
<td><input type="text" size="3" id="june_2_2012_student" onchange="javascript:showPrice()"
<td>Full-time students @ $10 each</td>
</tr>

</table>

<p>
  Total Price: <span id="TotalPrice">$0</span>
</p>


<div style="float: left; clear: left">
<h4>Billing Information</h4>
<table>
<tr><td>Name</td> <td><input type="text" id="bname" name="bname" /></td></tr>
<tr><td>Street</td> <td><input type="text" id="baddr1" name="baddr1" size="30" maxlength="30" /></td></tr>
<tr><td></td> <td><input type="text" id="baddr2" name="baddr2" size="30" maxlength="30" /></td></tr>
<tr><td>City</td> <td><input type="text" id="bcity" name="bcity" size="30" maxlength="30" /></td></tr>
<tr><td>State</td> <td><select id="bstate" name="bstate" size="1">
<option value=""> ... </option>
<option value="AK"> AK </option>
<option value="AL"> AL </option>
<option value="AR"> AR </option>
<option value="AZ"> AZ </option>
<option value="CA"> CA </option>
<option value="CO"> CO </option>
<option value="CT"> CT </option>
<option value="DC"> DC </option>
<option value="DE"> DE </option>
<option value="FL"> FL </option>
<option value="GA"> GA </option>
<option value="HI"> HI </option>
<option value="IA"> IA </option>
<option value="ID"> ID </option>
<option value="IL"> IL </option>
<option value="IN"> IN </option>
<option value="KS"> KS </option>
<option value="KY"> KY </option>
<option value="LA"> LA </option>
<option value="MA"> MA </option>
<option value="MD"> MD </option>
<option value="ME"> ME </option>
<option value="MI"> MI </option>
<option value="MN"> MN </option>
<option value="MO"> MO </option>
<option value="MS"> MS </option>
<option value="MT"> MT </option>
<option value="NC"> NC </option>
<option value="ND"> ND </option>
<option value="NE"> NE </option>
<option value="NH"> NH </option>
<option value="NJ"> NJ </option>
<option value="NM"> NM </option>
<option value="NV"> NV </option>
<option value="NY"> NY </option>
<option value="OH"> OH </option>
<option value="OK"> OK </option>
<option value="OR"> OR </option>
<option value="PA"> PA </option>
<option value="PR"> PR </option>
<option value="RI"> RI </option>
<option value="SC"> SC </option>
<option value="SD"> SD </option>
<option value="TN"> TN </option>
<option value="TX"> TX </option>
<option value="UT"> UT </option>
<option value="VA"> VA </option>
<option value="VI"> VI </option>
<option value="VT"> VT </option>
<option value="WA"> WA </option>
<option value="WI"> WI </option>
<option value="WV"> WV </option>
<option value="WY"> WY </option>
</select></td></tr>
<tr><td>ZIP</td> <td><input type="text" id="bzip" name="bzip" size="5" maxlength="10" /></td></tr>
</table>
<input type="hidden" id="bcountry" name="bcountry" value="US" /></ul>
</div>

<div style="float: left; display: inline; padding-left: 5em">
<h4>Shipping Information</h4>
<table>
<tr><td>Name</td> <td><input type="text" id="sname" name="sname" /></td></tr>
<tr><td>Street</td> <td><input type="text" id="saddr1" name="saddr1" size="30" maxlength="30" /></td></tr>
<tr><td></td> <td><input type="text" id="saddr2" name="saddr2" size="30" maxlength="30" /></td></tr>
<tr><td>City</td> <td><input type="text" id="scity" name="scity" size="30" maxlength="30" /></td></tr>
<tr><td>State</td> <td><select id="sstate" name="sstate" size="1">
<option value=""> ... </option>
<option value="AK"> AK </option>
<option value="AL"> AL </option>
<option value="AR"> AR </option>
<option value="AZ"> AZ </option>
<option value="CA"> CA </option>
<option value="CO"> CO </option>
<option value="CT"> CT </option>
<option value="DC"> DC </option>
<option value="DE"> DE </option>
<option value="FL"> FL </option>
<option value="GA"> GA </option>
<option value="HI"> HI </option>
<option value="IA"> IA </option>
<option value="ID"> ID </option>
<option value="IL"> IL </option>
<option value="IN"> IN </option>
<option value="KS"> KS </option>
<option value="KY"> KY </option>
<option value="LA"> LA </option>
<option value="MA"> MA </option>
<option value="MD"> MD </option>
<option value="ME"> ME </option>
<option value="MI"> MI </option>
<option value="MN"> MN </option>
<option value="MO"> MO </option>
<option value="MS"> MS </option>
<option value="MT"> MT </option>
<option value="NC"> NC </option>
<option value="ND"> ND </option>
<option value="NE"> NE </option>
<option value="NH"> NH </option>
<option value="NJ"> NJ </option>
<option value="NM"> NM </option>
<option value="NV"> NV </option>
<option value="NY"> NY </option>
<option value="OH"> OH </option>
<option value="OK"> OK </option>
<option value="OR"> OR </option>
<option value="PA"> PA </option>
<option value="PR"> PR </option>
<option value="RI"> RI </option>
<option value="SC"> SC </option>
<option value="SD"> SD </option>
<option value="TN"> TN </option>
<option value="TX"> TX </option>
<option value="UT"> UT </option>
<option value="VA"> VA </option>
<option value="VI"> VI </option>
<option value="VT"> VT </option>
<option value="WA"> WA </option>
<option value="WI"> WI </option>
<option value="WV"> WV </option>
<option value="WY"> WY </option>
</select></td></tr>
<tr><td>ZIP</td> <td><input type="text" id="szip" name="szip" size="5" maxlength="10" /></td></tr>
</table>
<button type="button" onclick="javascript:copy_info()">Copy from Billing Information</button>
<input type="hidden" id="scountry" name="scountry" value="US" /></ul>
</div>

<div style="clear: left">
<table>
<tr><td>Phone</td> <td><input type="text" id="phone" name="phone" size="15" maxlength="20" /></td></tr>
<tr><td>Email</td> <td><input type="text" id="email" name="email" size="30" maxlength="45" /></td></tr>
</table>
</div>

<p>
<input style="display: block" type="submit" value="Proceed to Payment" />
</p>

<input type="hidden" id="chargetotal" name="chargetotal" value="0.0" />
<input type="hidden" name="mode" value="Payplus" />
<input type="hidden" name="txntype" value="sale" />
<input type="hidden" name="storename" value="1001258007" />
<input type="hidden" id="comments" name="comments" value="" />
<input type="hidden" name="responseSuccessURL" value="http://columbiaorchestra.org/tickets/thanks" />
<input type="hidden" name="responseFailURL" value="http://columbiaorchestra.org/tickets/sorry" />


</form>



',0,'',0);
INSERT INTO "django_flatpage" VALUES(49,'/old/advertise_pre20110628/','Advertise','<h2>Program Underwriting</h2> 

<p>If you would like to underwrite the Columbia Orchestra''s programming, with your underwriting message seen in our 2010-2011 concert programs by thousands of concertgoers, you may either <em>sponsor</em> a specific activity (a concert, a soloist or a competition) or simply <em>take out an ad</em> in our printed concert programs. To sponsor a specific activity, please download a <a class="bodylink" href="/uploads/2010/CO_Sponsorship_Form_Spring_2011.pdf" target="co_link" title="Pop-up">Sponsorship form in PDF format</a>. For an ad in our printed concert programs, please download an <a class="bodylink" href="/uploads/2010/CO_Underwriting_Form_Spring_2011.pdf" target="co_link" title="Pop-up">Underwriting form in PDF format</a>.The forms are suitable for printing; simply fill out the appropriate form and return it to the address on the form. Viewing and printing these files requires <a class="bodylink" href="http://www.adobe.com/products/acrobat/readstep.html" target="co_link" title="Pop-up">Adobe Acrobat Reader</a>.</p>

<p>Please click <a class="bodylink" href="/uploads/2010/CO_Underwriting_Facts_Spring_2011.pdf" target="co_link" title="Pop-up">here for Underwriting Facts</a> to find out more about our season, reach, and program specifications.</p>

<h3>Spring 2011 Concerts</h3>
<p><strong>See your advertisement in the following programs!</strong></p>

<ul>

<li>
<strong>Symphonic Pops Concert</strong>
<br/>
  Saturday, February 12, 2011
  <br />
  Rouse Theatre
</li>
<li>
<strong>Classical Concert 3</strong>
<br/>
  Saturday, March 26, 2011
  <br />
  Rouse Theatre
</li>
<li>
<strong>Classical Concert 4</strong>
<br/>
  Saturday, June 4, 2011
  <br />
  Rouse Theatre
</li>
</ul>

<h3>The levels of underwriting and/or advertisement size are as follows:</h3>

<ul>
<li>
<strong>Concert Sponsor $5,000</strong><br/>
Includes corporate logo and/or company name in all season and concert press releases and printed materials pertaining to selected program, plus a full-page advertisement (6" wide x 7.5" high), website logo and link, complimentary tickets, concert banner, and lobby display.</li>

<li>
<strong>Soloist Sponsor $2,500</strong><br/>
Includes company name in all press releases and printed materials pertaining to selected soloist, plus a half-page advertisement (6" wide x 3.75" high), website logo and link, complimentary tickets, and concert banner.</li>

<li>
<strong>Competition Sponsor (Young Artist Competition, American Composer Competition) $1,000</strong><br/>
Includes company name in all printed materials pertaining to selected event, plus a business-card advertisement (3.5" wide x 2" high), website link, and complimentary tickets.</li>

<li>
<strong>Back or inside cover full-page color advertisement (6" wide x 7.5" high) SOLD OUT</strong><br/>
An extra 500 program covers will be printed for chamber music programs</li>

<li>
<strong>Full-page black&white advertisement (6" wide x 7.5" high) $250</strong>
</li>
<li>
<strong>Half-page black&white advertisement (6" wide x 3.75" high) $160</strong>
</li>
<li>
<strong>Business card black&white advertisement (3.5" wide x 2" high <strong>or</strong> 2" wide x 3.5" high) $100</strong>
</li>

</ul>
<p>BLACK & WHITE CAMERA-READY ARTWORK OR DIGITAL FILE DUE BY FEBRUARY 1, 2011.</p>

<p>An additional fee of $50 will be assessed for any artwork that must be modified.</p>


<p>If you have any questions, please contact us at 410-465-8777 or by e-mail at <a href="mailto:execdir@columbiaorchestra.org">execdir@columbiaorchestra.org</a>. </p>
',0,'',0);
CREATE TABLE "sponsors_sponsor" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(200) NOT NULL,
    "url" varchar(500),
    "slug" varchar(50) NOT NULL UNIQUE,
    "image" varchar(100),
    "num_views" integer unsigned NOT NULL
);
CREATE TABLE "soloists_soloist" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "instrument" varchar(100),
    "bio" text,
    "slug" varchar(50) NOT NULL UNIQUE,
    "image" varchar(100),
    "num_views" integer unsigned NOT NULL
);
INSERT INTO "soloists_soloist" VALUES(1,'Hsiu-Hui Wang','piano','<p>Dr. Hsiu-Hui Wang has enjoyed the enthusiastic applause of audiences across the United States and her native Taiwan. After a radiant performance of Beethoven’s First Piano Concerto, The Baltimore Sun admired her “graceful, buoyant” performance, adding that “there is an appealing sense of lift to her playing, which gave Beethoven’s passage work a balletic quality.” The New Britain Herald was impressed with the ardor of her playing, remarking that "watching the dramatic expressiveness with which [she] played was also a treat to behold. . . ." At the age of 19, Dr. Wang performed from memory the monumental first book of Bach''s Well-Tempered Clavier in recitals at Hartt School of Music and University of Maryland at College Park. She has since appeared with the Emerson String Quartet and performed with the Cayuga Chamber Orchestra, Hartt Symphony Orchestra, New Britain Symphony Orchestra, and Columbia Orchestra as well as performed at the Aspen Music Festival, La Jolla SummerFest, Waterloo Music Festival, and Yellow Barn Music Festival. Dr. Wang has won numerous competitions and awards (many won while still a teenager) such as the Emerson String Quartet Competition, the Connecticut MTNA Competitions, Renee B. Fisher Young Artist Piano Competitions, and the Hartford Symphony Auxiliary''s young Artist Competition.</p>

<p>As a founding member of the Gemini Piano Trio, Dr. Wang has won top prizes in the prestigious Chamber Music Yellow Springs National Competition, Music Teachers National Association (MTNA) Chamber Music Competition, and the 1997 Baltimore Chamber Music Awards competition. The trio was praised for their “amazing virtuosity” by Music Monthly, as well as for their Taipei debut performance that “epitomized the idiom of chamber music” by The Taipei times. The San Diego Union-Tribune hailed them as “mind readers, anticipating each other’s every move” while applauding their “almost uncanny musical closeness.” The trio has also performed guest engagements at the Phillips Collection, Princeton University, Penn State University, University of Maryland College Park, the Johns Hopkins University, the Southern Methodist University, the Chang Jung Christian University, and Soochow University in Taiwan and was featured on National Public Radio. The American Record Guide praised the trio’s début CD featuring works by Ives and Brahms saying, “There is an admirable balance between confidence, polished technique, and impulsive, romantic ardor in this performance.” Their second album, featuring trios by Ravel and Shostakovich, also has been well-received by audiences around the world with great enthusiasm. The trio recently joined the roster of artists at the Arabesque Records.</p>

<p>Dr. Wang received her bachelor''s degree (summa cum laude) from the Hartt School of Music, master''s degree from the University of Southern California, and her doctoral degree in piano performance from the University of Maryland, College Park. She has studied with international artists such as Raymond Hanson, Anne Koscielny, Gabriel Chodos, Stewart Gordon, and Thomas Schumacher. Dr. Wang has also received chamber music coachings from Menahem Pressler, Cecile Licad, Cho-Liang Lin, Ida Kavafian, David Finckel, and Wu Han. Her published doctoral dissertation, “Tracing the Development of the French Piano Trio” has been recognized by Maurice Hinson and Wesley Roberts’s newest edition of The Piano in Chamber Ensemble: An Annotated Guide as well as by John H. Baron’s Chamber Music: A Research and Information Guide.</p>

<p>Dr. Wang has been a dedicated teacher for over twenty-five years, and her students have won first prizes in various competitions. She has also been invited to chair and adjudicate many piano competitions and festivals. She is currently a music faculty member at Goucher College and Howard Community College where she has been selected as the 2003-2004 Arts and Humanities Division Outstanding Adjunct Faculty Member and as a co-founder /director of the Gemini Piano Trio Summer Chamber Music Workshop for the past five years. She also received the Honorary Citizenship from the City of Dallas, Office of Culture Affairs for her 2005 performances with the Gemini Piano Trio at the Southern Methodist University. Dr. Wang completed a three-city concert tour in Taiwan to great acclaim with the Gemini Piano Trio, including a sold-out debut concert at the Taipei National Concert Recital Hall in January of 2008. The trio is scheduled to appear on the Weill Recital Hall Chamber Music Series at Carnegie Hall in the fall of 2010. </p>','hsiu-hui-wang','src_imgs/soloists/Hsiu-Hui_Wang.jpg',1248);
INSERT INTO "soloists_soloist" VALUES(2,'Jonathan Carney','violin','<p>Jonathan Carney was appointed concertmaster of the Baltimore Symphony Orchestra in 2001 after twelve seasons in the same position with London’s Royal Philharmonic Orchestra. He also held the concertmaster post with the Basque National Orchestra in Spain. Born in New Jersey, Jonathan Carney hails from a musical family with all six members of his family having graduated from the Juilliard School in New York. After completing his studies with Ivan Galamian and Christine Dethier, he was awarded a Leverhulme Fellowship to continue his studies in London at the Royal College of Music.</p>

<p>After enjoying critically acclaimed international tours as both concertmaster and soloist with numerous ensembles, Mr. Carney was invited by Vladimir Ashkenazy to become concertmaster of the Royal Philharmonic Orchestra in 1991. He was also appointed concertmaster of the Bournemouth Symphony Orchestra in 1994.</p>

<p>Recent solo performances have included concertos by Bruch, Nielsen, and Khatchaturian, the Brahms Double Concerto and Vaughan William’s <i>The Lark Ascending</i>, which was featured as a live BBC broadcast from London’s Barbican Hall. He has made a number of recordings, including concertos by Mozart, Vivaldi, and Nielsen, sonatas by Brahms, Beethoven, and Franck, and a disc of virtuoso works by Sarasate and Kreisler.</p>

<p>Mr. Carney lives in Maryland with his wife Ruthie and their three children, Hannah, Luke, and Gracie. He is a Connolly and Co. artist, exclusively playing Vision strings by Thomastik-Infeld. His violin is a 1687 Stradivarius, the Mercur-Avery.</p>','jonathan-carney','src_imgs/soloists/s-carney.jpg',1196);
INSERT INTO "soloists_soloist" VALUES(3,'Ronald Mutchnik','violin','<p>Violinist Ronald Mutchnik graduated from the University of Maryland <i>summa cum laude</i>, where he studied with Robert Gerle. While there, he won the Baltimore Music Club’s and Baltimore Musicians’ competitions. He earned his Master’s degree from the New England Conservatory, where he studied with Joseph Gingold and Masuko Ushioda. He continued post-graduate studies at Tel Aviv University in Israel.</p>

<p>Mr. Mutchnik is active as an orchestral violinist, chamber musician, recitalist, and soloist. He has served as Concertmaster and Assistant Concertmaster with the Maryland Symphony, National Chamber Orchestra, Handel Choir and Columbia Pro Cantare Festival Orchestras, and the Baltimore Chamber Orchestra. He has appeared as a soloist with numerous orchestras in Maryland, as well as orchestras in Louisiana, Pennsylvania, South Carolina, and Minnesota. He appeared in the film <i>Washington Square</i>, performing his own composition. He was a featured soloist for the Maryland Ballet Theater and performed in Maryland and Alabama in a special recital, “Music of the Jewish Soul.”</p>

<p>Mr. Mutchnik has taught in several universities and colleges and currently teaches privately. He was President of the American String Teacher’s Association’s Maryland/DC Chapter and produced a video for violinists and violists entitled “Posture & Balance: The Dynamic Duo.” He has toured Korea, coaching and performing chamber music. Mr. Mutchnik is a founding member of and performer with the chamber music series based in Columbia, Maryland “ Sundays At Three” and is Chair of its artistic committee. Most recently, he performed in the United States State Department''s concert series and also formed Howard County''s first all professional chamber orchestra, The Orchestra of St. John''s. Upcoming concerts include performances of Bloch''s <i>Three Pictures of Chasidic Life</i> with the Columbia Orchestra and the Bruch <i>Scottish Fantasy</i> with the Frederick Symphony. </p>','ronald-mutchnik','src_imgs/soloists/s-mutchnik.jpg',1277);
INSERT INTO "soloists_soloist" VALUES(4,'Theresa Bickham','soprano','<p>Soprano Theresa Bickham has been praised for her “fine piano nuances” and “expressive legato line.” She made her European concert debut in 2007 singing scenes from <i>La Traviata</i> under the direction of Maestro Eduardo Müller. Most recently, Ms. Bickham has been seen on the operatic stage as Adina in <i>L’Elisir d’Amore</i> with the Loudon Lyric Opera and Opera Camerata of Washington. In January 2009, she performed the role of the Princess in <i>A Bird in Your Ear</i> and Terenia in <i>The Beautiful Bridegroom</i> at the National Opera Association Convention in Washington, DC. Other roles include Rosalinde in <i>Die Fledermaus,</i> Musetta in <i>La Bohéme,</i> Arminda in <i>La finta giardiniera,</i> Constanza Piccolatura in <i>Impresario,</i> Frasquita in <i>Carmen,</i> Monica in <i>The Medium,</i> and Bessie in <i>Mahagonny Songspiel.</i>  No stranger to the musical theatre stage, Ms. Bickham has also performed the roles of The Baker’s Wife in <i>Into the Woods,</i> Tess in <i>Crazy for You,</i> Nancy in <i>Oliver,</i> and Mrs. Macafee in <i>Bye, Bye Birdie</i> among others.</p>

<p>A native of Maryland, Ms. Bickham has been a frequent guest artist throughout the Baltimore-Washington area.  Concert appearances include, Handel’s <i>Messiah,</i> Fauré’s <i>Requiem,</i> Vaughn Williams’ <i>Serenade to Music,</i> Bach’s <i>Cantata 25</i> and <i>Magnificat,</i> and Vivaldi’s <i>Gloria</i> and <i>Magnificat.</i>  She has also been the winner of many competitions including the Metropolitan Opera National Council Auditions—Mid-Atlantic Regional Finalist 2009, Palm Beach Opera 2008 Advanced Division Semi-Finalist, Shreveport Opera Singer of the Year Finalist 2008, MD/DC National Association of Teacher’s of Singing, Henry Sanborn Competition, Peggy Friedman-Gordon Competition, Moore’s Opera Center Concerto Competition, and the Gilbert and Sullivan Society of Houston.</p>

<p>Ms. Bickham earned a Master of Music degree from the Moore’s Opera Center at the University of Houston and a Bachelor of Music degree from Towson University. She has been on the faculty of Towson University’s Department of Music since 2006.</p>','theresa-bickham','src_imgs/soloists/s-bickham.jpg',0);
INSERT INTO "soloists_soloist" VALUES(5,'Neil Ewachiw','baritone','<p>Baritone Neil Ewachiw earned his Doctor of Musical Arts degree in Vocal Performance from The Catholic University of America in Washington, DC. His operatic roles include Sharpless in <i>Madama Butterfly,</i> Count Almaviva in <i>Le Nozze di Figaro,</i> Angelotti in <i>Tosca,</i> Pluton in <i>Orphée aux Enfers,</i> Dr. Falke in <i>Die Fledermaus,</i> Papageno in <i>Die Zauberflöte</i> and Count Monterone in <i>Rigoletto.</i>  His concert appearances have included the Vaughan Williams <i>Hodie,</i> Brahms <i>Liebeslieder Waltzer</i> and <i>Ein Deutsches Requiem,</i> Bach <i>St. Matthew Passion,</i> Mozart <i>Coronation Mass,</i> Haydn <i>Lord Nelson Mass, Handel Messiah,</i> and Saint-Saëns <i>Oratorio de Nöel.</i> </p>

<p>Neil is featured on the compact disc release, “Come to Me: Love Songs for Chorus by American Composers” by the American Repertory Singers on Arsis Audio. As a member of The United States Army Chorus, performances have included the arrival ceremony of Pope Benedict XVI at the White House, the State Dinner honoring Queen Elizabeth II, and the interments of former Presidents Ronald Reagan and Gerald R. Ford.</p>

<p>Mr. Ewachiw has appeared at concert venues including Carnegie Hall, Avery Fisher Hall, D.A.R. Constitution Hall and the John F. Kennedy Center for the Performing Arts. He also teaches sacred music at Georgetown University, where he lectures on musical traditions as diverse as Native American ceremonial chant, West African Agbekor, Javanese gamelan and the evolution of the Roman Catholic mass as both a liturgical and musical form. </p>','neil-ewachiw','src_imgs/soloists/Neil_Ewachiw.jpg',15713);
INSERT INTO "soloists_soloist" VALUES(6,'Jason Shafer','clarinet','<p>Clarinetist Jason Shafer just completed his first season as a member of the New World Symphony in Miami Beach, FL.  He graduated in May 2009 from the Eastman School of Music in Rochester, NY, receiving a Bachelor of Music degree (Highest Distinction) studying with Kenneth Grant.  He has previously performed as concerto soloist with the Round Top Festival Orchestra in June 2009, the Eastman Philharmonia in 2008, the Transylvania Symphony Orchestra at the 2006 Brevard Music Center, the Greater Baltimore Youth Orchestra in 2005, and the Columbia Orchestra in 2002.  Jason has also had the pleasure of working with Mr. Steven Cohen at the Brevard Music Center and with Dr. Kyle Coughlin in his hometown of Columbia, Maryland.  In addition to the clarinet, Jason is also a pianist, and loves to accompany other musicians. </p>','jason-shafer','src_imgs/soloists/Shafer.jpg',14522);
INSERT INTO "soloists_soloist" VALUES(7,'Qing Li','violin','<p>Astonishing in her musical versatility, violinist <strong>Qing Li</strong> brings great warmth, poise, and insight to her music making. Solo performances have garnered such critical praise as, “the highest level musically” (conductor David Zinman), “unsurpassed technical brilliance” (German newspaper <em>Hohenlohe</em>), and “as the soloist, Qing was flawless... particularly in a stunning cadenza near the end of the first movement in the Haydn violin concerto. Her style was impeccable...” (<em>Richmond Times</em>). At the same time, she is a sought after chamber musician, having collaborated with such luminaries as Pinchas Zukerman, Eugenia Zukerman, Hilary Hahn, and Leon Fleischer. She is also admired as one of the country’s most accomplished orchestral players as the appointed Principal Second by Yuri Temirkanov.</p>

<p>Qing Li was born in Beijing, China. At age four, she began violin studies with her father, Zhen-Kun Li. At age 12, Qing Li won her acceptance to the Central Conservatory, where she began her study with Wei-Jian Zhao. There she was discovered at a master class by Berl Senofsky, who enthusiastically brought her to Peabody Conservatory with a fellowship scholarship. She won fellowships to many major music festivals, including Tanglewood, Meadowmount, Aspen, Grand Tetons, and Alexander Schneider’s New York String Seminar. Her teachers include Berl Senofsky, legendary Joseph Gingold, and Dorothy Delay.</p>

<p>Some of the prestigious awards Qing Li has received include the Queen Elizabeth International Music Competition (1997, Semifinalist), Marbury Violin Competition (1992, First prize), Young Concert Artists International Competition (1997, Semifinalist), and the first Beijing International Violin Competition (1986, Prize-Winner).</p>

<p>In 1993, Ms. Li became a member of the Baltimore Symphony under David Zinman. Her first of many concerto appearances with BSO followed rapidly. Since then, Qing Li has served as Assistant Concertmaster, and won her current chair of Principal Second Violin in 2001 under Yuri Temirkanov. In November 2008, Ms. Li performed the <em>Butterfly Lovers Concerto</em> at the Kimmel Center in Philadelphia. In 2005, Hilary Hahn invited Qing Li to play the Bach Double Concerto in a benefit concert to a glowing press.</p>

<p>Ms. Li performs on a Nicolo Gagliano violin crafted in 1736 in Naples, Italy.</p>','qing-li','src_imgs/soloists/QingLi.jpg',6048);
INSERT INTO "soloists_soloist" VALUES(8,'Masterworks Chorale of Carroll County, Margaret Boudreaux, Director','','<p>The Masterworks Chorale of Carroll County, known formerly as the Carroll County Choral Arts Society, was founded in 1977 under the direction of conductor David Kreider. Since its founding, the group has brought the community the works of Mozart, Brahms, Haydn, Handel, and Mendelssohn, as well as contemporary composers. The group has performed in Baltimore at the Cathedral of Saint Mary Our Queen, and with the Johns Hopkins Medical Institutions Choir. It has performed with the Baltimore Symphony Orchestra and has jointly hosted several concerts in Washington, D.C. with the Georgetown University Orchestra and Choir at the National Building Museum and at Georgetown University. The Carroll Festival Chorus, which combined members of both the Masterworks Chorale and the McDaniel College Choir, was selected in July 2005 to participate in Festival 500, “Sharing the Voices,” held in St. Johns, Newfoundland. In 2006, members of Masterworks Chorale formed the nucleus of the choir that premiered Lorraine Whittlesey''s "Einstein''s Dreams (it’s about time . . .),” based on the novel Einstein''s Dreams by Alan Lightman.</p>

<p>Dr. Margaret Boudreaux is the Artistic Director of the Masterworks Chorale of Carroll County and the Director of Choral Activities at McDaniel College. She has edited, arranged and performed choral music from the Renaissance and Baroque periods as well as folk-song, popular music, vocal jazz and musical theatre. She has published numerous articles and translations in the professional journals of the American Choral Directors Association, Chorus America and the International Federation of Choral Music. Currently, she has recently served as President of the Colleges and Universities division of the Maryland Music Educators Association and was the Maryland/DC Repertoire and Standards Chair for Ethnic and Multicultural Music for the American Choral Directors Association MD/DC Chapter for several years. A frequent clinician and conductor throughout the region, Dr. Boudreaux has performed with her choirs at conferences and for special presentations at the Kennedy Center, the Discovery Channel and other major Baltimore-Washington venues. In 2005, she conducted a choir at the Festival 500, “Sharing the Voices” International Choral Festival in St. John’s, Newfoundland. Her publishing company, Voices of Training, carries a number of scores combining a variety of voice levels and styles. Voices of Training will soon release Lorraine Whittlesey’s new choral work Einstein’s Dreams (its about time . . .) based on the Alan Lightman novel Einstein’s Dreams, which Dr. Boudreaux conducted in its 2006 premiere. She studied conducting with Helmuth Rilling and Donald Neuen. She holds degrees in music from the Universities of Arizona in Tucson, Oregon in Eugene, and Colorado in Boulder.  In May 2008 Dr. Boudreaux was awarded the Ira Zepp Excellence in Teaching Award by McDaniel College.</p>','masterworks-chorale','src_imgs/soloists/chorus.jpg',15996);
INSERT INTO "soloists_soloist" VALUES(9,'Stan Gilmer','vocalist','<p>Born March 2, 1948, Stan Gilmer grew up “down neck” in the Ironbound section of Newark, New Jersey. Life was tough, sho’nuff, but Stan certainly saw and heard enough to fill a jazz and blues singer''s repertoire for life. He acquired an early ear for the great crooners and performers of the day like Roy Hamilton, Harry Belafonte and Johnny Mathis. The words were one thing, but Stan’s instincts were drawn to the arrangements that supported the melodies, and gave the music passion... feeling.</p>
 
<p>In 1975, Stan moved to Northern California’s Bay area and teamed with Harvey Scales as a sometimes chauffeur and developing songwriter at Super Disc Productions. While there, he composed “Atlantic City: That Big-Time Town” with Harvey, and later recorded it with legendary bandleader Frank Foster. Shortly thereafter, Stan signed on as a staff writer with April Blackwood Music, a subsidiary of CBS Records.</p>
 
<p>Stan returned to New Jersey in 1980 and began working on his college degrees. In the meantime, he hooked up with super-pianist Michael Renzi at Cafe Carlyle in Manhattan while Renzi was sitting in for Bobby Short with Sylvia Syms. Mike invited him out to see Mel Torme, and before the night was over, Stan was rubbing elbows with pianist George Shearing and Ron O’Connell and his orchestra. As their relationship grew, Stan began compiling demos with Renzi. Along the way, Stan performed with some of New York’s most accomplished jazzmen, including a swinging performance at Newark’s Gateway Hotel with Tony Monte, Frank Wess, Jack Jennings and bandleader Tony Corbicello.</p>
 
<p>While at Essex County Community College (1980-1983) Stan worked with Professor Romolo Ferris’ Jazz Workshop developing his songwriting and music notation skills. Between 1983 and 1986 Stan worked regularly with local big bands, including the John Glock Orchestra, Joe Carson’s big band and the Rod Ruth Orchestra. The crowning achievement of this period was a featured performance with Frank Foster and his Loud Minority, during the Billy Taylor Jazz Mobile at Grant’s Tomb, in Manhattan.</p>
 
<p>With his formal education concluded, Stan hooked up with the Chink Wing jazz group in Newark, working as the male vocalist alongside Ann Bailey. There was work at the famous Hit Factory, commercial jingles, and still more club gigs keeping Stan busy.</p>
 
<p>In 1995, Stan packed up his wife of 34 years (and counting), their daughter Penny and son Stan, Jr., and moved to Howard County, Maryland, where they live today. He works regularly with The Whit Williams “Now’s The Time” big band, the Chuck Funn Orchestra and the Jimmy Wells quartet and has headlined recently with the Howard Burns Orchestra at Frederick (MD) Community College.</p>
 
<p>In 2003, Stan founded the Colonnade Of Music record label. The label’s first effort is “Stan Gilmer Sings Sammy,” with John Mosca leading the Vanguard Orchestra, recorded at Bennett studios in Englewood, NJ. Stan and Mosca “turned out” the 2003 Hartford Jazz Festival, with Jim Argiro conducting, straw boss Dave Glasser and Canadian Warren Chiasson on vibraphone. Look for more from Stan and Warren in the future.</p>
 
<p>~ Excerpted from Walter Allen’s biographical note</p>
','stan-gilmer','src_imgs/soloists/Stan_Gilmer.jpg',10903);
INSERT INTO "soloists_soloist" VALUES(10,'Colin Eaton','vocalist','<p>Colin Eaton has been lauded by The Washington Post as “a commanding tenor that sings with great aplomb” and by the <em>Baltimore Sun</em> as “a young tenor whose name you shall not soon forget” and “possessing the ability to dazzle audiences with ease.”</p>

<p>Mr. Eaton was most recently featured as the tenor soloist for the 38th Annual Kennedy Center <em>Messiah</em> Sing-Along.  Other oratorio solo performances include <em>Mendelssohn’s <em>St. Paul</em> (National Philharmonic), Orff’s <em>Carmina Burana,</em> the Rossini <em>Stabat Mater,</em> the <em>Bruckner Te Deum,</em> and the Mozart <em>Requiem</em> (Oratorio Society of Charlottesville/Albemarle).  His opera credits include appearances as Mingo (Tulsa Opera), Robbins and Sportin’ Life in <em>Porgy and Bess,</em> Don Basilio and Don Curzio in <em>Le Nozze di Figaro,</em> Nika Magadoff in <em>The Consul,</em> and as Nemorino in <em>L’Elisir d’Amore.</em>  He is pleased to have collaborated as a featured soloist in master classes with Martina Arroyo and Curtis Rayam at the National Opera Association convention at the Kennedy Center.</p>

<p>As a member of the world-renowned United States Army Chorus, SFC Eaton frequently performs solos before our nation’s highest ranking government and military officials, as well as visiting dignitaries from around the globe.  He was honored to serve as a featured soloist for the interment ceremony for President Ronald Reagan in Simi Valley, California, and to be specially selected to perform for the last five consecutive years for U.S. and Allied Forces deployed in areas of combat including Kuwait, Iraq, and Afghanistan.</p>
','colin-eaton','src_imgs/soloists/Colin_Eaton.gif',10562);
INSERT INTO "soloists_soloist" VALUES(11,'Meghan McCall','vocalist','<p>Praised for her “bell-like clarity and fine control” and “radiant full-bodied voice” by <em>The Washington Post,</em> American soprano Meghan McCall is establishing herself as a fine young artist of opera today. She has been hailed for possessing a “beautifully and flawlessly operatic voice” in The West Highland Press. She most recently made her Carnegie Hall Stern Auditorium debut in a world premiere where she created the role of Mary Magdalene in Marcos Galvany’s opera <em>Oh My Son.</p>

<p>Ms. McCall’s career has taken her to stages both in the United States and Europe. She has performed the roles of Fiordiligi in <em>Cosi Fan Tutte, Lauretta in <em>Gianni Schicchi,</em> Musetta in <em>La Bohème,</em> Adina in <em>L''Elisir d''Amore,</em> Gilda in <em>Rigoletto, Gretel in <em>Hansel and Gretel,</em> Marie in <em>La Fille du Régiment,</em> Giulietta in <em>I Capuleti e i Montecchi,</em> Donna Anna in <em>Don Giovanni,</em> Susanna in <em>Le Nozze di Figaro,</em> Princess (#1) in <em>Transformations,</em> Lucia in <em>Lucia di Lammermoor,</em> Miss Jessel in <em>The Turn of the Screw,</em> Blondchen in <em>Die Entfuhrung aus dem Serail,</em> and Norina in <em>Don Pasquale.</em></p>

<p>Miss McCall has earned her BA in Music Literature from Northeastern University and her MM from The University of Maryland Opera Studio where she worked with world-renowned bass Francois Loup. Directly after her graduation she was invited to join the Opera Lafayette Young Artist Program which specializes in 17th and 18th century French repertoire.</p>

<p>Future appearances in 2010 will include Laurette and Ernestine in two French comic operas by Bizet and Offenbach with Bel Cantanti (May 2010), and Juliette and La Bergere in Sancho Panza by Philidor with Opera Lafayette at the Kennedy Center (May 2010).</p>','meghan-mccall','src_imgs/soloists/Meghan_McCall.jpg',10513);
INSERT INTO "soloists_soloist" VALUES(12,'Jonathan Bailey Holland','guest composer','<img src="/images/mtc_logo.jpg"/>

<p><strong>Be sure to check out <a href="/holland_videos/">video interviews</a> with Jonathan Bailey Holland about his work.</strong></p>

<p>Originally from Flint, MI, Holland is Associate Professor of Composition at the Berklee College of Music. He began studying composition at the Interlochen Arts Academy, and continued his composition studies with Ned Rorem at the Curtis Institute of Music, where he received a Bachelor of Music degree. He went on to receive a Ph.D. in Music from Harvard University, where his primary teachers were Bernard Rands and Mario Davidovsky. He has also studied with Andrew Imbrie, Yehudi Wyner, Robert Saxton and Robert Sirota. </p>

<p>An advocate for music education, Holland has written several works for educational concerts, and has given lectures and presentations at over 50 institutions. His works have also been performed by the Atlanta, Charlotte, Chicago Civic, Cleveland, Richmond and San Antonio Symphony Orchestras, the Florida Philharmonic, Alea III, Auros Group for New Music, Concerto Soloists of Philadelphia, Orchestra 2001, Orchestra Society of Philadelphia, and soloists Ignat Solzhenitsyn, Demarre McGill and others. Holland has worked with such conductors as Robert Spano, Roger Norrington, Neeme Jarvi, Paavo Jarvi, Michael Morgan, Leslie Dunner and Davis Zinman, among others. </p>

<p>Holland is a two-time winner of the Indianapolis Symphony''s Marian K. Glick Young Composer''s Showcase, the Charles Ives Scholarship, as well as other awards from ASCAP, the Presser Foundation, Boston Conservatory, Austin Peay State University, and Harvard University.</p>

<p><strong><em>Mr. Holland''s appearance is funded in part through Meet the Composer''s MetLife Creative Connections program.</em></strong></p>','jonathan-bailey-holland','src_imgs/soloists/Jonathan_Bailey_Holland.jpg',11941);
INSERT INTO "soloists_soloist" VALUES(13,'Ah Hong','soprano','<p>Soprano Ah Young Hong has been praised by the <em>New York Times</em> for her “lovely voice with round, soft low notes and a sugar-sweet top,” and the <em>Washington Post</em> described her voice as “glistening and resilient.”  Her concert work has included performances with the Baltimore Symphony Orchestra, Opera Lafayette, Folger Consort, Concert Artists of Baltimore, Annapolis Opera, Bay-Atlantic Symphony, Lincoln Symphony Orchestra, Magnolia Baroque Festival, and Harmonious Blacksmith.  This is her second appearance with the Columbia Orchestra.</p>

<p>In the summer of 2005, Ms. Hong made an American premiere recording of Johann Sebastian Bach’s newly discovered aria, "Alles mit Gott und nichts ohn’ ihn," BWV 1127, for National Public Radio’s <em>Performance Today</em> with harpsichordist Joseph Gascho, director of Harmonious Blacksmith.  This recording has been broadcast throughout the world.</p>

<p>In the fall of 2007, Ms. Hong made her debut with Opera Lafayette (Washington, DC) in Rebel and Francoeur’s <em>Zélindor, Roi des Sylphes,</em> which included a world premiere recording released in October 2009 through Naxos.  Since then she has also performed the role of La Musique in Charpentier’s <em>Les Arts Florissants</em> at the Kennedy Center.  With Opera Vivente (Baltimore), she has performed the title role in Monteverdi’s <em>Coronation of Poppea,</em> Morgana in Handel’s <em>Alcina,</em> Gilda in Verdi''s <em>Rigoletto,</em> Asteria in Handel''s <em>Tamburlaine,</em> and Minerva in Monteverdi’s <em>Return of Ulysses.</em></p>

<p>The <em>Baltimore Sun</em> acclaimed her “a triumph as the subtly conniving Poppea. The soprano’s tonal gleam filled the hall beautifully, and her phrasing was always richly detailed. Her acting, too, proved appealing.”  IONARTS described her performance as Morgana having  “the most persuasive singing by merging musical wit with strong acting and facial expressions, all while showcasing superbly clear text and vocal agility.”  In England, she was Papagena in <em>Die Zauberflöte</em> under the direction of Benjamin Luxon, Fortuna and Minerva in Monteverdi’s <em>Il ritorno d''Ulisse in patria</em> under the musical direction of Michael Chance and director Tim Carroll for the Snape Proms and Shakespeare''s Globe Theatre.</p>

<p>Ms. Hong received her Bachelor’s and Master’s of Music degrees from the Peabody Conservatory of Music where she studied with Ruth Drucker and Mark Markham.  She was honored to have studied German Lieder and French mélodie with Elly Ameling and oratorio with Kurt Equiluz at the Britten-Pears Programme in England.  Ms. Hong is currently a member of the voice faculty at the Peabody Conservatory of Music of the Johns Hopkins University and Towson University.</p>','ah-hong','src_imgs/soloists/Ah_Hong.jpg',15668);
INSERT INTO "soloists_soloist" VALUES(14,'Rolando Sanz','tenor','<p>Tenor Rolando Sanz is quickly gaining recognition for his “sensitive” and “luminous” portrayals of the romantic, lyric tenor repertoire. While he specializes in such standard roles as Rodolfo, Tamino, Nemorino, Alfredo, Pinkerton and the Duca di Mantua, Rolando has also debuted many opera premieres including Peter Doyle in <em>Miss Lonelyhearts,</em> for which the <em>Los Angeles Times</em> reported, “Rolando Sanz, as Doyle, gave the best hint of the score''s expressive possibilities” and covering Stiva in <em>Anna Karenina.</em> Most recently, he made his Carnegie Hall debut singing the role of Kostik in the world premiere of Prokofiev’s lost opera <em>To The Distant Seas.</em></p>

<p>In the 2008-2009 season, Rolando debuted with Palm Beach Opera as Rodolfo in <em>La Boheme</em> and Flavio in <em>Norma,</em> as well as covering Duca di Mantua in <em>Rigoletto.</em> Upcoming engagements include a debut with Baltimore Concert Opera in “A Flight of Verdi,” as well as debuts with Opera Costa Rica and Syracuse Opera. Mr. Sanz will also debut a world premiere song cycle by renowned composer Ezra Laderman and former U.S. Poet Laureate, Robert Pinsky.</p>

<p>The 2007-2008 season included a debut with Opera Idaho as Nemorino in <em>L’Elisir d’Amore,</em> and a return to Opera Theatre of Saint Louis to sing Nathaniel in <em>The Tales of Hoffmann</em> under Stephen Lord as well as to cover Pinkerton in <em>Madame Butterfly.</em> He was also a finalist for the Ryan Opera Center at the Lyric Opera of Chicago.</p>

<p>Other recent engagements include Alfredo in <em>La Traviata,</em> conducted by Julius Rudel and L’Aumônier in <em>Dialogues des Carmélites</em> under the baton of James Conlon with the Aspen Music Festival. In 2005, Rolando was a resident artist at the Music Academy of the West under the tutelage of Marilyn Horne and Warren Jones. He also made his hometown of Washington, DC debut as Le Prince Charmant in Summer Opera Theatre Company’s production of Massenet’s <em>Cendrillon.</em></p>

<p>Mr. Sanz has also distinguished himself as a gifted concert performer and recitalist. He recently sang his first Beethoven Ninth Symphony with the American Youth Symphony in Los Angeles and Handel’s <em>Messiah</em> with the New Jersey Philharmonic. Rolando was also featured as tenor soloist in Stravinsky’s <em>Les Noces</em> with the Yale Camerata as well as at the Aspen Music Festival under the baton of Michael Stern. He made his Yale Philharmonia debut as the winner of the Woolsey Hall Concerto Competition, performing Britten’s <em>Serenade for Tenor, Horn and Strings.</em> Additional soloist engagements include the Mozart C Minor Mass and Requiem, Saint-Saëns <em>Christmas Oratorio,</em> Randall Thompson''s <em>Nativity According to St. Luke,</em> Honegger’s <em>Le Roi David</em> and Handel''s <em>Ode to St. Cecilia,</em> as well as the Washington, DC premiere of the Donizetti Requiem.</p>

<p>Rolando has been a prize winner in numerous international competitions including the Florida Grand Opera/Young Patronesses of the Opera Voice Competition, the Metropolitan Opera National Council Auditions, the Aspen Music Festival Vocal Concerto Competition, and the XIII International Voice Competition in Trujillo, Peru. Most recently, he won First Place at the Florida Suncoast Opera Guild Competition and was awarded the Grand Prize as well as the Conductor Award and the Audience Choice Award at the Annapolis Opera Vocal Competition. He has appeared as a resident artist with the Songfest program, collaborating with such esteemed artists as Martin Katz, Graham Johnson and composer John Harbison. Mr. Sanz also served as assistant conductor for Long Beach Opera’s production of <em>Die Schweigsame Frau</em> under Andreas Mitisek.</p>

<p>Rolando is a graduate of the Yale University School of Music.</p>','rolando-sanz','src_imgs/soloists/Rolando_Sanz.jpg',10573);
INSERT INTO "soloists_soloist" VALUES(15,'Kinetics Dance Theatre, Priscilla Kaufhold, Artistic Director','','','kinetics-dance-theatre-priscilla-kaufholdartistic-','src_imgs/soloists/Kinetics_Dance_Carnival_2_credit.jpg',9219);
INSERT INTO "soloists_soloist" VALUES(16,'actors from the Chesapeake Shakespeare Company','','','actors-chesapeake-shakespeare-company','',1);
INSERT INTO "soloists_soloist" VALUES(17,'Brenda Anna','Violin','','brenda-anna','',766);
INSERT INTO "soloists_soloist" VALUES(18,'Monica DeLeon','Bassoon','','monica-deleon','',0);
INSERT INTO "soloists_soloist" VALUES(19,'Jason Love','Cello','','jason-love','',0);
INSERT INTO "soloists_soloist" VALUES(20,'Columbia Orchestra Piano Trio','','<p>With a diverse repertoire spanning three centuries, Concertmaster <a href="/members/brenda_anna/"> Brenda Anna,</a> violin, Music Director <a href="/members/jason_love/">Jason Love,</a> cello, and Columbia Orchestra pianist <a href="/members/nancy_smith/">Nancy Smith</a> perform on both the orchestra''s chamber series in addition to concertizing throughout the region and taking outreach performances to audiences in non-traditional venues.</p>
','columbia-orchestra-piano-trio','src_imgs/soloists/CO_Piano_Trio2.jpg',11094);
INSERT INTO "soloists_soloist" VALUES(21,'Paul Moeller','guitar','','paul-moeller','',741);
INSERT INTO "soloists_soloist" VALUES(22,'Elaine Newhall','flute','','elaine-newhall','',740);
INSERT INTO "soloists_soloist" VALUES(23,'Lindsey Spear','oboe','','lindsey-spear','',732);
INSERT INTO "soloists_soloist" VALUES(24,'Carl Reynolds','trumpet','','carl-reynolds','',731);
INSERT INTO "soloists_soloist" VALUES(25,'John Locke','percussion','','john-locke','',756);
INSERT INTO "soloists_soloist" VALUES(26,'Francis Scully','conductor','','francis-scully','',744);
INSERT INTO "soloists_soloist" VALUES(27,'Patricia Wnek','violin','','patricia-wnek','',737);
INSERT INTO "soloists_soloist" VALUES(28,'Jennifer Leung','violin','','jennifer-leung','',739);
INSERT INTO "soloists_soloist" VALUES(29,'Eric Zuber','piano','','eric-zuber','',732);
INSERT INTO "soloists_soloist" VALUES(30,'Larry Williams','horn','','larry-williams','',735);
INSERT INTO "soloists_soloist" VALUES(31,'Brian Ganz','piano','','brian-ganz','',751);
INSERT INTO "soloists_soloist" VALUES(32,'Theresa Bickham and Stephen Cramer','voice','','theresa-bickham-and-stephen-cramer','',0);
INSERT INTO "soloists_soloist" VALUES(33,'Alan Zhang','violin','<p>ALAN ZHANG, a sophomore in the AP/GT programs at Mt. Hebron High School, has been playing violin since the age of five and is currently studying with Rebecca Henry at the Peabody Preparatory of the Johns Hopkins University. At the age of 9, he performed with Baltimore Symphony Orchestra at Strathmore and Meyerhoff Symphony Halls. </p>

<p>Zhang has won the Peabody Junior Concerto Competition, the 2007 Asian American Music Society International Competition, the MTNA Maryland State Competition, and was named alternate of the 2009 MTNA Eastern Regional Competition. He has given numerous recitals at Peabody, including Honors Recitals, Signature Recitals, Vella Silver Recitals, and Part-Recitals, and received Peabody Prep Dean’s Recognition Award.</p>

<p>He has also played in the Peabody Violin Choir and toured the country with the Pre-Conservatory Violin Program. Alan attended the Jacobs School of Music Summer String Academy at Indiana University and the Great Wall International Music Academy in Beijing. He has also been a part of the Howard County Enrichment Orchestra and the Maryland All-State Orchestra.</p>

<p>His hobbies include tennis, golf, listening to music, enjoying social life, and traveling. He is an avid reader and also interested in science.</p>

<p>Zhang was selected as the Senior Division String Winner of the 2011 Young Artist Competition. He previously won the Junior Division in 2008.</p>','alan-zhang','src_imgs/soloists/Alan_Zhang_2.JPG',8468);
INSERT INTO "soloists_soloist" VALUES(34,'Brian Kim','violin','','brian-kim','',815);
INSERT INTO "soloists_soloist" VALUES(35,'Peabody Violin Choir, Christian Tremblay, Director','','','peabody-violin-choir-christian-tremblay-director','',749);
INSERT INTO "soloists_soloist" VALUES(36,'Peter Minkler','viola','','peter-minkler','',728);
INSERT INTO "soloists_soloist" VALUES(37,'Ryan de Ryke','baritone','','ryan-de-ryke','',737);
INSERT INTO "soloists_soloist" VALUES(38,'Rebecca McLaughlin','french horn','','rebecca-mclaughlin','',737);
INSERT INTO "soloists_soloist" VALUES(39,'Eric Beach','marimba','','eric-beach','',729);
INSERT INTO "soloists_soloist" VALUES(40,'Dariusz Skoraczewski','cello','','dariusz-skoraczewski','',722);
INSERT INTO "soloists_soloist" VALUES(41,'Winnie Au','violin','','winnie-au','',710);
INSERT INTO "soloists_soloist" VALUES(42,'Kevin Qin','violin','','kevin-qin','',730);
INSERT INTO "soloists_soloist" VALUES(43,'Igor Yuzefovich','violin','','igor-yuzefovich','',720);
INSERT INTO "soloists_soloist" VALUES(44,'Herbert Greenberg','violin','','herbert-greenberg','',749);
INSERT INTO "soloists_soloist" VALUES(45,'Laura Hung','violin','','laura-hung','',729);
INSERT INTO "soloists_soloist" VALUES(46,'Kyle Engler','mezzo-soprano','','kyle-engler','',724);
INSERT INTO "soloists_soloist" VALUES(47,'Tobias Picker','narrator','','tobias-picker','',712);
INSERT INTO "soloists_soloist" VALUES(48,'Anne Marie Ahn-Petersen','viola','','anne-marie-ahn-petersen','',726);
INSERT INTO "soloists_soloist" VALUES(49,'Lee Jeon','violin','','lee-jeon','',738);
INSERT INTO "soloists_soloist" VALUES(50,'Julien Benichou','guest conductor','','julien-benichou','',730);
INSERT INTO "soloists_soloist" VALUES(51,'Yong Ku Ahn','guest conductor','','yong-ku-ahn','',745);
INSERT INTO "soloists_soloist" VALUES(52,'Hou Fei Yang','piano','','hou-fei-yang','',755);
INSERT INTO "soloists_soloist" VALUES(53,'Mark Lanz Weiser','piano','','mark-lanz-weiser','',724);
INSERT INTO "soloists_soloist" VALUES(54,'Ferebee Thulman','voice','','ferebee-thulman','',740);
INSERT INTO "soloists_soloist" VALUES(55,'Alice Lee','cello','','alice-lee','',644);
INSERT INTO "soloists_soloist" VALUES(56,'Ahreum Kim','violin','','ahreum-kim','',639);
INSERT INTO "soloists_soloist" VALUES(57,'Rebecca Henry','viola','','rebecca-henry','',635);
INSERT INTO "soloists_soloist" VALUES(58,'Western Maryland College Choir, Margaret Boudreaux, Director','','','western-maryland-college-choir-margaret-boudreaux-','',628);
INSERT INTO "soloists_soloist" VALUES(59,'Sarah Kim','violin','<p>Sarah Kim, a sixth grader at Burleigh Manor Middle School, has been playing
the violin since she was five years old, studying with Dr. Christian
Tremblay at the Peabody Preparatory of the John Hopkins University.
Currently, she is principal second violin of the Young Artist Orchestra and
a member of the Violin Choir in the Performance Academy at the Conservatory.
She also serves as the concertmistress for the Burleigh Manor String
Ensemble.</p>
 
<p>Recipient of the Achievement Award in violin and piano, she has been
featured in several recitals, including the prestigious Vella Silver
Recital, Signature Recital, String Department Special Recital,
Intergenerational Elderhostel Program Recital at the Conservatory, and the
Festival String Orchestra at The Walters Art Museum.</p>
 
<p>Kim won first place in the 2010 Maryland State Music Teachers Association
Violin Competition and finished second in the 2009 Asian American Music
Society String Competition, Peewee Division.</p>
 
<p>Sarah is an avid book reader and enjoys watching science fiction movies.</p>
','sarah-kim','src_imgs/soloists/Sarah_Kim_2.JPG',8387);
INSERT INTO "soloists_soloist" VALUES(60,'Yaeji Shin','flute','<p>Yaeji Shin is a sophomore at Atholton High School, where she is a member of the Symphonic Wind Ensemble and has participated in the Howard County High School GT Orchestra for 2 years. She is also a member of the Korean Presbyterian Church Hosanna Orchestra. Yaeji was first introduced to music when she began piano at age six. In fifth grade, she started to play flute and decided that it was something she wanted to pursue. She has studied flute privately with Elaine Newhall since seventh grade and is an accomplished pianist, accompanying students for Howard County Solo and Ensemble.  </p>

<p>Yaeji won first place in the 2010 Maryland Division of Music Teachers National Association wind solo competition, first place in the 2011 Greater Columbia Music Teachers Chamber Music Competition, and has also participated in the Howard County Middle School GT Band and the Maryland All State Junior Band.  She has attended the Oberlin Summer Flute Institute and has just been accepted to attend the Interlochen Arts Camp this summer.</p>

<p>Yaeji loves reading, drawing, designing clothes, and making jewelry. She even had a wild dream of becoming a fashion designer but now, with her many interests and talents, she is not sure where the future may take her.</p>','yaeji-shin','src_imgs/soloists/Yaeji_Shin.jpg',8156);
INSERT INTO "soloists_soloist" VALUES(61,'William Davenport','tenor','<p>
Tenor William Davenport is rapidly garnering attention for his strong yet lyric tenor and Italianate style.  Of his performance in <em>La Traviata</em>, the <em>Baltimore Sun</em> remarked, “He already knows how to shape a Verdi melody quite elegantly.”  A native of Maryland, he is currently in his third and final year at the Peabody Conservatory, in Baltimore, where he studies with Dr. Stanley Cornett.  A frequent performer on the Peabody stage, in both opera and concert, Mr. Davenport has been heard most recently as tenor soloist in Rossini’s <em>Petite messe solennelle</em> with the Peabody Singers.  Also this fall, he was chosen to sing “Che gelida manina,” from <em>La boheme</em>, in concert under conductor Karin Hendrickson.  Previous concert credits include tenor soloist in Puccini’s <em>Messa di Gloria</em>, also with Peabody, <em>Mozart by Candlelight</em> with Annapolis Opera, and a <em>Messiah</em> with the Frederick Chamber Singers and Orchestra.  On the operatic stage, Mr. Davenport has been seen as “Alfredo” in <em>La Traviata</em>, “Tamino” in <em>Die Zauberflöte</em>, “Le théière/La rainette” in <em>L’enfant et les Sortilèges</em>, and in the Spring will tackle “Alfred,” in <em>Die Fledermaus</em>; all with the Peabody Opera Department. In addition to his Peabody training, Mr. Davenport has just finished a summer festival season with Glimmerglass Opera as a member of their prestigious Young American Artists Program in Cooperstown, NY.  While there, he sang in their mainstage productions and gave a public recital at the Otesaga Resort with bass-baritone Adam Fry.  This coming April Mr. Davenport will sing “Rodolfo” in <em>La boheme</em> with Chesapeake Concert Opera.
</p>','william-davenport','src_imgs/soloists/William_Davenport.jpg',5136);
INSERT INTO "soloists_soloist" VALUES(62,'Jason Love, conductor','','','jason-love-conductor','src_imgs/soloists/jlove.jpg',5043);
INSERT INTO "soloists_soloist" VALUES(63,'The Columbia Orchestra','','','columbia-orchestra','src_imgs/soloists/violas.jpg',5039);
INSERT INTO "soloists_soloist" VALUES(64,'Christopher Rose','percussion','<p>Christopher Rose has been the principal percussionist with the Harrisburg Symphony since February of 1998. He is also a member of “The President’s Own” United States Marine Band in Washington, DC. He has been a percussionist with the band since 1997 and has held the title of assistant principal percussionist since 2001. He currently holds the rank of Master Sergeant.</p>

<p>Christopher has gained extensive experience as a soloist, to include Concerto for Four Percussionists by William Kraft, Déjà vu by Michael Colgrass and Converging Worlds by Jonathan Leshnoff. He was most recently featured as soloist on William Childs’ Concerto for Percussion and Concert Band and Jennifer Higdon’s Percussion Concerto. As an international soloist, Christopher had an opportunity to perform Joseph Schwantner’s Percussion Concerto in Lucerne, Switzerland, in 2001. One critic described Christopher’s performance as “…virtuosity put at the service of music, not just entertainment, though it certainly achieved that as well.” He performed the Schwantner Concerto again at the 2004 Midwest Band and Orchestra Conference in Chicago, Illinois.</p>

<p>Mr. Rose has performed with symphonies in Houston, Chicago, Kansas City, Annapolis, Hagerstown (MD), Alexandria, Fairfax, and Galveston, as well as the National Symphony, Washington Symphonic Brass, and the New York City Opera. Additionally, he is a returning member of the Grand Teton Music Festival. He also spent five years as percussionist for Andy William at his famous “Moon River Theater” in Branson, Missouri. While with Andy Williams, he toured extensively throughout the United States, Japan, Korea, and Indonesia.</p>

<p>He is fluent in many musical styles including classical, jazz, rock, and Latin jazz, having performed and recorded with such artists as Kimberly Locke, Sheri Lewis, The Three Irish Tenors, Frank Russo, Bob Boguslaw, Ann-Margret, Placido Domingo, Andy Williams, John Williams, and the Summit Brass.</p>

<p>Rose graduated Magna Cum Laude with his Bachelor of Music and Master of Music degrees in percussion performance from the Shepherd School of Music at Rice University in Houston, Texas. Under the tutelage of Richard Brown, he became a founding member of the Continuum Percussion Quartet, whose debut album on New World Records was nominated for a Grammy Award in 1990. The quartet was also the first percussion ensemble to be asked to compete in the Concert Artists Guild International Competition. He currently resides in Alexandria, Virginia, with his wife, Danielle.</p>','christopher-rose','src_imgs/soloists/Christopher_Rose.jpg',5566);
INSERT INTO "soloists_soloist" VALUES(65,'Rachel Young','cello','<p>A National Symphony cellist since 1998, Rachel Young brings a deep and diverse musical background to her work, ranging from an avid engagement in chamber music to teaching cello and recording film scores and bluegrass albums. She is a member of the chamber ensembles !Kari Quartet, the 21st Century Consort and the cello quartet 4in Correspondence. Prior to joining the Symphony, Ms. Young was principal cellist of the Kennedy Center Opera House Orchestra. She has performed with many groups, including the Smithsonian Chamber Players, the National Musical Arts Society, the Embassy Series, the Washington Music Ensemble, and the Contemporary Music Forum. She has appeared on WGMS and WGBH radio broadcasts, at the Garth Newel Music Center, the John F. Kennedy Center and at the White House.</p>

<p>Ms. Young has enjoyed solo appearances with the National Philharmonic, the Peabody Symphony Orchestra, the New England Conservatory Chamber Orchestra, and the National Symphony Orchestra’s Summer Music Institute as well as a collaborative performance with the Paul Taylor Dance Company. In addition to contributing to film and bluegrass recordings, her discography includes performances with the 21st Century Consort and the Smithsonian Chamber Players.</p>

<p>Ms. Young was born and raised in Washington, D.C. She began studying music at the age of 4, and quickly knew she wanted to become a cellist. She earned a Bachelor of Music degree from the New England Conservatory of Music, where she studied with Laurence Lesser, and her Master’s degree in cello performance with Stephen Kates at the Peabody Conservatory. She was a Fellow at the Tanglewood Music Center and attended the Britten-Pears School for Advanced Musical Studies in England where she studied with William Pleeth. Young now teaches a small studio of cellists and serves on the board of the Kindler Cello Society. She resides just outside of Washington with her husband, bassist Anthony Manzo, their 2 children, 3 basses, 2 cellos and a cat, and she often commutes to work on her bike.</p>','rachel-young','src_imgs/soloists/Rachel_Young.jpg',170);
INSERT INTO "soloists_soloist" VALUES(66,'Leigh Ann Hinton','vocalist','<p>Leigh Ann Hinton, soprano, is in continual high demand for solo concert and oratorio performances in the Mid-Atlantic region and has recently performed at venues including Avery Fisher Hall in New York City’s Lincoln Center, The John F. Kennedy Center for the Performing Arts in Washington, DC, and the Music Center at Strathmore. She earned her Bachelor’s and Master’s Degree in Vocal Performance from Ithaca College in Ithaca, New York where she worked with notable teachers and performers such as Elly Ameling, Carol Weber, Dr. David Parks, and members of The Bach Aria Group.</p>

<p>Leigh Ann has been a soloist at many performance venues and churches in the Washington D.C. area including the National Cathedral, performances with The Capitol Hill Chorale, Mercersburg Community Chorus, and solo and ensemble recitals at the Kennedy Center Millennium Stage.  Leigh Ann is also currently the vocal soloist with The United States Army Band, “Pershing’s Own”, based in Washington, DC. Prior to joining The U.S. Army Band, she was a member of the United States Navy Band Sea Chanters Chorus.</p>','leigh-ann-hinton','src_imgs/soloists/Leigh_Ann_Hinton.jpg',76);
INSERT INTO "soloists_soloist" VALUES(67,'Stephen Cramer','vocalist','<p>
Stephen Paul Cramer has entertained audiences throughout the U.S. and Canada.  Mr. Cramer made his Broadway debut in 2000 in the New York production of <em>Les Miserables</em>, performing the role of Jean Valjean.  Before coming to Broadway, Stephen spent three years in the U.S. and Canadian national tours of <em>Les Miserables</em>.  During a six-month stay in Toronto, he had the opportunity to work with Colm Wilkinson.  In 2007, Stephen sang the role of Tony in the 50th Anniversary salute to <em>West Side Story</em> produced by Signature Theatre, performed at the Library of Congress in Washington, D.C.
</p>

<p>
Favorite regional theatre credits include <em>My Fair Lady</em> at California Music Theatre, <em>Down at the Old Bull and Bush</em> at Arena Stage’s Old Vat, and playing Rev. Shaw Moore in <em>Footloose</em> at Shenandoah University’s Summer Music Theatre.  Other roles include Ralph in <em>H.M.S. Pinafore</em>, Tony in <em>West Side Story</em>, and Billy Bigelow in <em>Carousel</em>.  
</p>

<p>
Mr. Cramer is a six-time Helen Hayes Award nominee.  In 1994, he was honored with the Helen Hayes Award for Best Actor in a Musical for his portrayal of Frederic in <em>The Pirates of Penzance</em> with Interact Theatre at the Lansburg Shakespeare Theatre in Washington D.C.  Stephen is no stranger to oratorio and opera as well as musical theatre.  Classical roles include Alfredo in <em>La Traviata</em>, Pinkerton in <em>Madama Butterfly</em> and the tenor soloist in Beethoven’s <em>Missa Solemnis</em> with the Paul Hill Chorale.
</p>

<p>
Stephen is currently a member of The United States Army Chorus in Arlington, Virginia. During his tenure there, he has performed for five presidents.  He is honored to have been a part of the interment services of both President Reagan and Ford.  He has been featured as a soloist on national broadcast of NBC’s <em>The Today Show</em> and at Lincoln Center’s Avery Fisher Hall.  Stephen entertained national audiences portraying Santa at the National Christmas Tree Lighting on the National Mall in December 2008.
</p>
','stephen-cramer','src_imgs/soloists/Stephen_Cramer.jpg',57);
INSERT INTO "soloists_soloist" VALUES(68,'The Heritage Signature Chorale, Stanley Thurston, founding Music Director','','<p>
Stanley J. Thurston is the founding Music Director of The Heritage Signature Chorale. He has appeared as conductor in concert venues including Carnegie Hall, The John F. Kennedy Center for the Performing Arts Concert Hall, the U.S. Capitol; The Music Center at Strathmore, Carter Barron Amphitheater; DAR Constitution Hall; Arena Stage; the Clarice Smith Performing Arts Center, University of Maryland; the Washington Hebrew Congregation; Washington National Cathedral; and the Joseph Meyerhoff Symphony Hall, in Baltimore, MD. He has appeared as guest conductor with the Alexandria Symphony Orchestra, the Soulful Symphony, Columbus Symphony Orchestra, Detroit Civic Symphony, Prince Georges Philharmonic, Washington Symphony Orchestra, and the National Symphony Orchestra. Choruses under his direction have performed with the National Symphony Orchestra, Alexandria Symphony Orchestra, Annapolis Symphony Orchestra, Washington Symphony Orchestra, Baltimore Symphony Orchestra, Baltimore Festival Orchestra, Joffrey Ballet, Pacific Northwest Ballet, and the Royal Ballet. Mr. Thurston is well known as a pianist, composer, and arranger. His orchestral arrangements have been performed by the symphony orchestras of Baltimore, New Jersey, and the National Symphony Orchestra. He has appeared, as conductor, with such well-known artists as Denyce Graves, Kathleen Battle, the Canadian Brass, Sweet Honey in the Rock and jazz legends Ramsey Lewis and Wynton Marsalis, as well as NBC’s <em>Today Show</em>. He recently served as Panelist for the D.C. Commission on the Arts and Humanities, was guest conductor with the Choral Arts Society of Washington’s Martin Luther King, Jr. Tribute Concert, and was commissioned by the 2009 Presidential Inaugural Committee to compose and conduct a special musical tribute for President Obama’s National Prayer Service at the Washington National Cathedral.
</p>

<p>
A graduate of the American Academy of Conducting at Apsen, he made his European opera conducting debut in Verdi’s <em>La Traviata</em> with Romania’s Opera Constanta, returning to conduct Donizetti’s <em>Lucia di Lammermoor</em>. Previous positions have included Music Director of the National Symphony Orchestra’s NSO <em>In Your Neighborhood</em> concert series, Choirmaster, Sixth Presbyterian Church; Interim Music Director of National City Christian Church, Music Director for The Gospel at <em>Colonus</em>, Georgetown University; Minister of Music, First Baptist Church, Washington, D.C.; Principal Conductor of the Municipal Opera Company of Baltimore; and guest clinician for D.C. Commission on the Arts “DC Choral Masterpieces” workshop.
</p>

<p>
He is currently Washington Performing Arts Society’s Artistic Director of Gospel Choirs and the Director of Music at Foundry United Methodist Church, Washington, D.C.
</p>','heritage-signature-chorale-stanley-thurston-foundi','src_imgs/soloists/Stanley_Thurston.jpg',4);
CREATE TABLE "pieces_piece_soloist" (
    "id" integer NOT NULL PRIMARY KEY,
    "piece_id" integer NOT NULL,
    "soloist_id" integer NOT NULL REFERENCES "soloists_soloist" ("id"),
    UNIQUE ("piece_id", "soloist_id")
);
INSERT INTO "pieces_piece_soloist" VALUES(8,2,12);
INSERT INTO "pieces_piece_soloist" VALUES(9,6,7);
INSERT INTO "pieces_piece_soloist" VALUES(10,21,3);
INSERT INTO "pieces_piece_soloist" VALUES(11,15,8);
INSERT INTO "pieces_piece_soloist" VALUES(12,3,6);
INSERT INTO "pieces_piece_soloist" VALUES(13,30,1);
INSERT INTO "pieces_piece_soloist" VALUES(14,17,2);
INSERT INTO "pieces_piece_soloist" VALUES(15,33,13);
INSERT INTO "pieces_piece_soloist" VALUES(16,55,21);
INSERT INTO "pieces_piece_soloist" VALUES(17,67,2);
INSERT INTO "pieces_piece_soloist" VALUES(18,69,24);
INSERT INTO "pieces_piece_soloist" VALUES(19,69,17);
INSERT INTO "pieces_piece_soloist" VALUES(20,69,22);
INSERT INTO "pieces_piece_soloist" VALUES(21,69,23);
INSERT INTO "pieces_piece_soloist" VALUES(22,74,25);
INSERT INTO "pieces_piece_soloist" VALUES(23,76,26);
INSERT INTO "pieces_piece_soloist" VALUES(24,77,27);
INSERT INTO "pieces_piece_soloist" VALUES(25,78,28);
INSERT INTO "pieces_piece_soloist" VALUES(26,80,29);
INSERT INTO "pieces_piece_soloist" VALUES(27,84,30);
INSERT INTO "pieces_piece_soloist" VALUES(28,86,31);
INSERT INTO "pieces_piece_soloist" VALUES(29,91,33);
INSERT INTO "pieces_piece_soloist" VALUES(30,92,34);
INSERT INTO "pieces_piece_soloist" VALUES(31,93,35);
INSERT INTO "pieces_piece_soloist" VALUES(32,95,36);
INSERT INTO "pieces_piece_soloist" VALUES(33,98,17);
INSERT INTO "pieces_piece_soloist" VALUES(34,99,37);
INSERT INTO "pieces_piece_soloist" VALUES(35,102,34);
INSERT INTO "pieces_piece_soloist" VALUES(36,103,38);
INSERT INTO "pieces_piece_soloist" VALUES(37,108,39);
INSERT INTO "pieces_piece_soloist" VALUES(38,111,40);
INSERT INTO "pieces_piece_soloist" VALUES(39,115,41);
INSERT INTO "pieces_piece_soloist" VALUES(40,116,42);
INSERT INTO "pieces_piece_soloist" VALUES(41,120,31);
INSERT INTO "pieces_piece_soloist" VALUES(42,122,43);
INSERT INTO "pieces_piece_soloist" VALUES(43,130,44);
INSERT INTO "pieces_piece_soloist" VALUES(44,132,45);
INSERT INTO "pieces_piece_soloist" VALUES(45,133,46);
INSERT INTO "pieces_piece_soloist" VALUES(46,134,6);
INSERT INTO "pieces_piece_soloist" VALUES(47,135,47);
INSERT INTO "pieces_piece_soloist" VALUES(48,139,49);
INSERT INTO "pieces_piece_soloist" VALUES(49,142,52);
INSERT INTO "pieces_piece_soloist" VALUES(50,144,53);
INSERT INTO "pieces_piece_soloist" VALUES(51,150,54);
INSERT INTO "pieces_piece_soloist" VALUES(52,153,31);
INSERT INTO "pieces_piece_soloist" VALUES(53,155,55);
INSERT INTO "pieces_piece_soloist" VALUES(54,156,56);
INSERT INTO "pieces_piece_soloist" VALUES(55,159,17);
INSERT INTO "pieces_piece_soloist" VALUES(56,159,57);
INSERT INTO "pieces_piece_soloist" VALUES(57,160,58);
INSERT INTO "pieces_piece_soloist" VALUES(58,169,54);
INSERT INTO "pieces_piece_soloist" VALUES(59,32,33);
INSERT INTO "pieces_piece_soloist" VALUES(60,32,59);
INSERT INTO "pieces_piece_soloist" VALUES(61,32,60);
INSERT INTO "pieces_piece_soloist" VALUES(62,173,33);
INSERT INTO "pieces_piece_soloist" VALUES(63,174,60);
INSERT INTO "pieces_piece_soloist" VALUES(64,189,15);
INSERT INTO "pieces_piece_soloist" VALUES(65,179,64);
CREATE TABLE "pieces_piece" (
    "id" integer NOT NULL PRIMARY KEY,
    "title" varchar(250) NOT NULL,
    "movement" varchar(100),
    "composer_id" integer NOT NULL
);
INSERT INTO "pieces_piece" VALUES(2,'Motor City Dance Mix','',2);
INSERT INTO "pieces_piece" VALUES(3,'Clarinet Concerto','',3);
INSERT INTO "pieces_piece" VALUES(4,'La Mer','',4);
INSERT INTO "pieces_piece" VALUES(5,'Fanfare for the Uncommon Woman','',5);
INSERT INTO "pieces_piece" VALUES(6,'Butterfly Lovers Violin Concerto','',6);
INSERT INTO "pieces_piece" VALUES(7,'The Planets','',7);
INSERT INTO "pieces_piece" VALUES(8,'Festive Overture','',8);
INSERT INTO "pieces_piece" VALUES(9,'Danzon No. 2','',9);
INSERT INTO "pieces_piece" VALUES(10,'Pavane for a Dead Princess','',10);
INSERT INTO "pieces_piece" VALUES(11,'Variations on a Theme by Haydn','',11);
INSERT INTO "pieces_piece" VALUES(12,'Threnody to the Victims of Hiroshima','',12);
INSERT INTO "pieces_piece" VALUES(14,'“Batter My Heart” from Doctor Atomic','',14);
INSERT INTO "pieces_piece" VALUES(15,'Music from The Creation','',15);
INSERT INTO "pieces_piece" VALUES(16,'Overture to Egmont','',16);
INSERT INTO "pieces_piece" VALUES(17,'Violin Concerto','',17);
INSERT INTO "pieces_piece" VALUES(18,'Rite of Spring','',18);
INSERT INTO "pieces_piece" VALUES(19,'Symphony No. 1, "Remembrance"','Third Movement',19);
INSERT INTO "pieces_piece" VALUES(20,'Hebrides Overture','',20);
INSERT INTO "pieces_piece" VALUES(21,'Baal Shem','',21);
INSERT INTO "pieces_piece" VALUES(22,'Pines of Rome','',22);
INSERT INTO "pieces_piece" VALUES(23,'"Malambo" from Estancia ','',23);
INSERT INTO "pieces_piece" VALUES(24,'The Noon Witch ','',24);
INSERT INTO "pieces_piece" VALUES(25,'Rush','',25);
INSERT INTO "pieces_piece" VALUES(26,'Mother Goose Suite','',10);
INSERT INTO "pieces_piece" VALUES(27,'Violin Concerto in d minor','Movement 1',26);
INSERT INTO "pieces_piece" VALUES(28,'Poem for Flute','',27);
INSERT INTO "pieces_piece" VALUES(29,'Violin Concerto','Movement 3',17);
INSERT INTO "pieces_piece" VALUES(30,'Piano Concerto No. 20','',3);
INSERT INTO "pieces_piece" VALUES(31,'Symphony No. 1','',28);
INSERT INTO "pieces_piece" VALUES(32,'Winners of the Young Artist Competition','',29);
INSERT INTO "pieces_piece" VALUES(33,'Three Songs for Soprano and Orchestra (2002)','',30);
INSERT INTO "pieces_piece" VALUES(34,'Carnival Overture, Op. 92','',24);
INSERT INTO "pieces_piece" VALUES(35,'Music from Romeo and Juliet','',31);
INSERT INTO "pieces_piece" VALUES(36,'Peter and the Wolf','',31);
INSERT INTO "pieces_piece" VALUES(37,'Made in America','',5);
INSERT INTO "pieces_piece" VALUES(38,'Sinfonia Concertante','',15);
INSERT INTO "pieces_piece" VALUES(39,'Symphony No. 1','',32);
INSERT INTO "pieces_piece" VALUES(40,'Symphony No. 7 in A Major, Op. 92','',16);
INSERT INTO "pieces_piece" VALUES(41,'Symphonic Dances from West Side Story','',33);
INSERT INTO "pieces_piece" VALUES(42,'Violin Concerto, 1st movement','',32);
INSERT INTO "pieces_piece" VALUES(43,'Trumpet Concerto','',34);
INSERT INTO "pieces_piece" VALUES(44,'Cello Concerto, 1st movement','',35);
INSERT INTO "pieces_piece" VALUES(45,'The Map','',36);
INSERT INTO "pieces_piece" VALUES(46,'Symphony No. 4','',11);
INSERT INTO "pieces_piece" VALUES(47,'Shiraz','',37);
INSERT INTO "pieces_piece" VALUES(48,'Shiraz','',37);
INSERT INTO "pieces_piece" VALUES(49,'Piano Trio No. 4','',16);
INSERT INTO "pieces_piece" VALUES(50,'Piano Quintet, Op. 44','',38);
INSERT INTO "pieces_piece" VALUES(51,'Overture to La Forza del Destino','',39);
INSERT INTO "pieces_piece" VALUES(52,'Prelude to Parsifal','',40);
INSERT INTO "pieces_piece" VALUES(54,'Hungarian Dances','',11);
INSERT INTO "pieces_piece" VALUES(55,'Concierto de Aranjuez','',41);
INSERT INTO "pieces_piece" VALUES(56,'Daphnis and Chloé','Finale',10);
INSERT INTO "pieces_piece" VALUES(57,'Harmonielehre','',14);
INSERT INTO "pieces_piece" VALUES(58,'Gloria','',42);
INSERT INTO "pieces_piece" VALUES(59,'“Coronation” Mass, K.317','',3);
INSERT INTO "pieces_piece" VALUES(60,'Ave Verum Corpus, K.618 ','',3);
INSERT INTO "pieces_piece" VALUES(61,'Inledning','',43);
INSERT INTO "pieces_piece" VALUES(62,'Harlem Essay','',44);
INSERT INTO "pieces_piece" VALUES(63,'Symphony No. 6, “Pastorale”','',16);
INSERT INTO "pieces_piece" VALUES(64,'Concerto in e minor for violin','third movement',20);
INSERT INTO "pieces_piece" VALUES(65,'Adagio for Strings','',45);
INSERT INTO "pieces_piece" VALUES(66,'A Screaming Comes Across the Sky','',46);
INSERT INTO "pieces_piece" VALUES(67,'Violin Concerto','',47);
INSERT INTO "pieces_piece" VALUES(68,'Symphony No. 9, “From the New World”','',24);
INSERT INTO "pieces_piece" VALUES(69,'Brandenburg Concerto No. 2','',48);
INSERT INTO "pieces_piece" VALUES(70,'Blue Cathedral','',49);
INSERT INTO "pieces_piece" VALUES(71,'Symphony No. 5','',16);
INSERT INTO "pieces_piece" VALUES(72,'Tubby the Tuba','',50);
INSERT INTO "pieces_piece" VALUES(73,'Through the Looking Glass','',51);
INSERT INTO "pieces_piece" VALUES(74,'Paper Concerto for Paper Percussion and Orchestra (2003)','',36);
INSERT INTO "pieces_piece" VALUES(75,'Scheherazade','',52);
INSERT INTO "pieces_piece" VALUES(76,'"Four Sea Interludes" from Peter Grimes','',53);
INSERT INTO "pieces_piece" VALUES(77,'Violin Concerto in g Minor','',54);
INSERT INTO "pieces_piece" VALUES(78,'Baal Shem','',21);
INSERT INTO "pieces_piece" VALUES(79,'Symphony No. 2','',32);
INSERT INTO "pieces_piece" VALUES(80,'Piano Concerto No. 25','',3);
INSERT INTO "pieces_piece" VALUES(81,'Symphony No. 10','',8);
INSERT INTO "pieces_piece" VALUES(82,'Symphony No. 4','',17);
INSERT INTO "pieces_piece" VALUES(83,'Brandenburg Concerto No. 3','',48);
INSERT INTO "pieces_piece" VALUES(84,'Horn Concerto','',55);
INSERT INTO "pieces_piece" VALUES(85,'Symphony No. 2','',56);
INSERT INTO "pieces_piece" VALUES(86,'Piano Concerto No. 1','',11);
INSERT INTO "pieces_piece" VALUES(87,'Come My Friends','',57);
INSERT INTO "pieces_piece" VALUES(88,'Symphony No. 9','',16);
INSERT INTO "pieces_piece" VALUES(89,'Rapture','',58);
INSERT INTO "pieces_piece" VALUES(90,'Pictures at an Exhibition','',59);
INSERT INTO "pieces_piece" VALUES(91,'Symphonie Espagnole','First Movement',60);
INSERT INTO "pieces_piece" VALUES(92,'Rondo Capriccioso','',61);
INSERT INTO "pieces_piece" VALUES(93,'Young Person''s Guide to the Orchestra','',53);
INSERT INTO "pieces_piece" VALUES(94,'Overture to Coriolan','',16);
INSERT INTO "pieces_piece" VALUES(95,'Der Schwanendrehrer','',62);
INSERT INTO "pieces_piece" VALUES(96,'Symphonie Fantastique','',63);
INSERT INTO "pieces_piece" VALUES(97,'Three Gorges of the Long River from China Dreams','',64);
INSERT INTO "pieces_piece" VALUES(98,'The Lark Ascending','',65);
INSERT INTO "pieces_piece" VALUES(99,'Songs and Dances of Death (orch. Dmitri Shostakovich)','',59);
INSERT INTO "pieces_piece" VALUES(100,'Symphony No. 2 (Sinfonia India)','',66);
INSERT INTO "pieces_piece" VALUES(101,'Music from Carmen','',67);
INSERT INTO "pieces_piece" VALUES(102,'Violin Concerto No. 2 in D Minor','First Movement',26);
INSERT INTO "pieces_piece" VALUES(103,'Concerto, Op. 8','Movements 1 to 3',68);
INSERT INTO "pieces_piece" VALUES(104,'“Danse Negre” from African Suite','',69);
INSERT INTO "pieces_piece" VALUES(105,'“O Le’ Me Shine, Shine Like the Morning Star” from Negro Folk Symphony','',70);
INSERT INTO "pieces_piece" VALUES(106,'Enigma Variations','',71);
INSERT INTO "pieces_piece" VALUES(107,'Shadow Dance','',72);
INSERT INTO "pieces_piece" VALUES(108,'Woodnotes: Concerto for Marimba and Orchestra','',73);
INSERT INTO "pieces_piece" VALUES(109,'Symphony No. 1 in C Minor, Op. 68','',11);
INSERT INTO "pieces_piece" VALUES(110,'Russian Funeral','',53);
INSERT INTO "pieces_piece" VALUES(111,'Cello Concerto in E Minor','',71);
INSERT INTO "pieces_piece" VALUES(112,'Symphony No. 6 in B Minor, Op. 74, "Pathetique"','',17);
INSERT INTO "pieces_piece" VALUES(113,'Alborada del Gracioso','',10);
INSERT INTO "pieces_piece" VALUES(114,'Bolero','',10);
INSERT INTO "pieces_piece" VALUES(115,'Concerto No. 1 in G Minor for Violin','First Movement',54);
INSERT INTO "pieces_piece" VALUES(116,'Tzigane','',10);
INSERT INTO "pieces_piece" VALUES(117,'An American in Paris','',74);
INSERT INTO "pieces_piece" VALUES(118,'Vox Populi (Voice of the People)','',75);
INSERT INTO "pieces_piece" VALUES(119,'Rainbow Body','',76);
INSERT INTO "pieces_piece" VALUES(120,'Piano Concerto No. 2 in B-Flat Major, Op. 83','',11);
INSERT INTO "pieces_piece" VALUES(121,'Overture to the Marriage of Figaro','',3);
INSERT INTO "pieces_piece" VALUES(122,'Concerto for Violin in E Minor, Op. 64','',20);
INSERT INTO "pieces_piece" VALUES(123,'Petrushka','',18);
INSERT INTO "pieces_piece" VALUES(124,'Waldszenen, Op. 82 (Forest Scenes)','',38);
INSERT INTO "pieces_piece" VALUES(125,'Sonata in C, Op. 53 (Waldstein)','',16);
INSERT INTO "pieces_piece" VALUES(126,'Sonata No. 3 in B minor, Op. 58','',77);
INSERT INTO "pieces_piece" VALUES(127,'Music from "Harry Potter"','',78);
INSERT INTO "pieces_piece" VALUES(128,'Spiritual and Gospel Tunes','',29);
INSERT INTO "pieces_piece" VALUES(129,'Sensemaya (1938)','',79);
INSERT INTO "pieces_piece" VALUES(130,'Violin Concerto in G Minor, Op. 55','',54);
INSERT INTO "pieces_piece" VALUES(131,'Symphony No. 8 in G Major, Op. 88','',24);
INSERT INTO "pieces_piece" VALUES(132,'Concerto in D Minor','First Movement',60);
INSERT INTO "pieces_piece" VALUES(133,'Sea Pictures, Op. 37','',71);
INSERT INTO "pieces_piece" VALUES(134,'Concertino for Clarinet and Orchestra, Op. 26','',80);
INSERT INTO "pieces_piece" VALUES(135,'The Encantadas','',81);
INSERT INTO "pieces_piece" VALUES(136,'Academic Festival Overture, Op. 80','',11);
INSERT INTO "pieces_piece" VALUES(137,'Romance for Viola and Orchestra, Op. 85','',54);
INSERT INTO "pieces_piece" VALUES(138,'Andante and Rondo ongarese, Op. 35','',80);
INSERT INTO "pieces_piece" VALUES(139,'Concerto for Violin and Orchestra in C Major, Hob VIIa:1','',15);
INSERT INTO "pieces_piece" VALUES(140,'Symphony No. 3 in E-Flat Major, Op. 55, “Eroica”','',16);
INSERT INTO "pieces_piece" VALUES(141,'Indigo Street','',82);
INSERT INTO "pieces_piece" VALUES(142,'Piano Concerto No. 2 in C minor, Op.18','',83);
INSERT INTO "pieces_piece" VALUES(143,'Symphony No. 5 in D Minor, Op. 47','',8);
INSERT INTO "pieces_piece" VALUES(144,'Triptych','',84);
INSERT INTO "pieces_piece" VALUES(145,'Sonata No. 1 in E Minor, Op. 38','',11);
INSERT INTO "pieces_piece" VALUES(146,'Music for Brass Quintet','',29);
INSERT INTO "pieces_piece" VALUES(147,'Music for Woodwind Quintet','',29);
INSERT INTO "pieces_piece" VALUES(148,'Selections from Oklahoma','',85);
INSERT INTO "pieces_piece" VALUES(149,'An Ellington Fantasy','',86);
INSERT INTO "pieces_piece" VALUES(150,'Swingin'' Singin''','',87);
INSERT INTO "pieces_piece" VALUES(151,'Star Wars Suite','',78);
INSERT INTO "pieces_piece" VALUES(152,'Marche Militaire Française from Suite Algérienne, Op. 60','',61);
INSERT INTO "pieces_piece" VALUES(153,'Piano Concerto no. 4 in G, op. 58 Brian Ganz, piano','',16);
INSERT INTO "pieces_piece" VALUES(154,'Lieutenant Kijé Suite, Op. 60','',31);
INSERT INTO "pieces_piece" VALUES(155,'Cello Concerto in C, Hob VIIb/1','',15);
INSERT INTO "pieces_piece" VALUES(156,'Zigeunerweisen, Op. 20','',88);
INSERT INTO "pieces_piece" VALUES(157,'Capriccio Espagnol','',52);
INSERT INTO "pieces_piece" VALUES(158,'Overture to The Magic Flute, K.620','',3);
INSERT INTO "pieces_piece" VALUES(159,'Sinfonia Concertante, K. 364','',3);
INSERT INTO "pieces_piece" VALUES(160,'"Winter" from The Seasons','',15);
INSERT INTO "pieces_piece" VALUES(161,'Slava! (A Political Overture)','',33);
INSERT INTO "pieces_piece" VALUES(162,'Firebird Suite','',18);
INSERT INTO "pieces_piece" VALUES(163,'American Salute','',89);
INSERT INTO "pieces_piece" VALUES(164,'Sound of Music Medley','',85);
INSERT INTO "pieces_piece" VALUES(165,'Jazz Pizzicato','',90);
INSERT INTO "pieces_piece" VALUES(166,'Trumpeter''s Lullaby','',90);
INSERT INTO "pieces_piece" VALUES(167,'Bugler''s Holiday','',90);
INSERT INTO "pieces_piece" VALUES(168,'"Martin Luther King" from Three Black Kings','',86);
INSERT INTO "pieces_piece" VALUES(169,'Don''t Fall Asleep','',87);
INSERT INTO "pieces_piece" VALUES(170,'Gloomy Sunday','',87);
INSERT INTO "pieces_piece" VALUES(171,'My Heart Belongs to Daddy','',87);
INSERT INTO "pieces_piece" VALUES(172,'Route 66','',91);
INSERT INTO "pieces_piece" VALUES(173,'Concerto No. 5 in A Minor','',92);
INSERT INTO "pieces_piece" VALUES(174,'Fantaisie Pastorale Hongroise','',93);
INSERT INTO "pieces_piece" VALUES(175,'Sonata for Violin, Op. posth.','',10);
INSERT INTO "pieces_piece" VALUES(176,'Cello Sonata, Op. 40','',8);
INSERT INTO "pieces_piece" VALUES(177,'Harry Patch (In Memory Of)','',13);
INSERT INTO "pieces_piece" VALUES(178,'Fanfare for the Common Man','',94);
INSERT INTO "pieces_piece" VALUES(179,'Percussion Concerto','',49);
INSERT INTO "pieces_piece" VALUES(180,'Stabat Mater','',39);
INSERT INTO "pieces_piece" VALUES(181,'I Will Lift Up Mine Eyes','',95);
INSERT INTO "pieces_piece" VALUES(182,'Adagio from Symphony No. 10','',28);
INSERT INTO "pieces_piece" VALUES(183,'Appalachian Spring','',94);
INSERT INTO "pieces_piece" VALUES(184,'Cello Concerto','',24);
INSERT INTO "pieces_piece" VALUES(185,'Symphony No. 5 in E Minor','',17);
INSERT INTO "pieces_piece" VALUES(186,'Leonore Overture No. 3','',16);
INSERT INTO "pieces_piece" VALUES(187,'A Thousand Years of Good Prayers','',96);
INSERT INTO "pieces_piece" VALUES(188,'Conga del Fuego','',9);
INSERT INTO "pieces_piece" VALUES(189,'Carnivals of the Animals','',61);
INSERT INTO "pieces_piece" VALUES(190,'Overture to Don Giovanni','',3);
INSERT INTO "pieces_piece" VALUES(191,'Winning Work from the American Composer Competition','',29);
INSERT INTO "pieces_piece" VALUES(192,'Voice of the Unknown Soldier','',97);
INSERT INTO "pieces_piece" VALUES(193,'Piano Quintet No. 2','',24);
INSERT INTO "pieces_piece" VALUES(194,'Piano Trio','',98);
INSERT INTO "pieces_piece" VALUES(195,'Passacaglia','',99);
CREATE TABLE "pieces_composer" (
    "id" integer NOT NULL PRIMARY KEY,
    "first_name" varchar(100),
    "middle_name" varchar(100),
    "last_name" varchar(100),
    "bio" text,
    "other_composer" varchar(100),
    "photo" varchar(100),
    "num_views" integer unsigned,
    "url" varchar(200)
);
INSERT INTO "pieces_composer" VALUES(2,'Jonathan','Bailey','Holland',NULL,NULL,'',NULL,'');
INSERT INTO "pieces_composer" VALUES(3,'Wolfgang','Amadeus','Mozart','','','',NULL,'');
INSERT INTO "pieces_composer" VALUES(4,'Claude','','Debussy',NULL,NULL,'',NULL,'');
INSERT INTO "pieces_composer" VALUES(5,'Joan','','Tower','','','',NULL,'');
INSERT INTO "pieces_composer" VALUES(6,'','','',NULL,'Chen Gang and He Zhanhao','',NULL,'');
INSERT INTO "pieces_composer" VALUES(7,'Gustav','','Holst',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(8,'Dmitri','','Shostakovich','','','',NULL,'');
INSERT INTO "pieces_composer" VALUES(9,'Arturo','','Márquez',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(10,'Maurice','','Ravel','','','',NULL,'');
INSERT INTO "pieces_composer" VALUES(11,'Johannes ','','Brahms','','','',NULL,'');
INSERT INTO "pieces_composer" VALUES(12,'Krzystof','','Penderecki',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(13,'','','',NULL,'Radiohead','',NULL,'');
INSERT INTO "pieces_composer" VALUES(14,'John','','Adams','','','',NULL,'');
INSERT INTO "pieces_composer" VALUES(15,'Franz','Joseph','Haydn','','','',NULL,'');
INSERT INTO "pieces_composer" VALUES(16,'Ludwig','van','Beethoven','','','',NULL,'');
INSERT INTO "pieces_composer" VALUES(17,'Pyotr','Ilyich','Tchaikovsky','','','',NULL,'');
INSERT INTO "pieces_composer" VALUES(18,'Igor','','Stravinsky','','','',NULL,'');
INSERT INTO "pieces_composer" VALUES(19,'Albert','','Hurwit',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(20,'Felix','','Mendelssohn','','','',NULL,'');
INSERT INTO "pieces_composer" VALUES(21,'Ernest','','Bloch','','','',NULL,'');
INSERT INTO "pieces_composer" VALUES(22,'Ottorino','','Respighi',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(23,'Alberto','','Ginastera',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(24,'Antonín','','Dvořák','','','',NULL,'');
INSERT INTO "pieces_composer" VALUES(25,'Jonathan','','Leshnoff',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(26,'Henryk','','Wieniawski','','','',NULL,'');
INSERT INTO "pieces_composer" VALUES(27,'Charles','','Griffes',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(28,'Gustav','','Mahler',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(29,'','','','',' ','',0,'');
INSERT INTO "pieces_composer" VALUES(30,'Osvaldo','','Golijov','','','',0,'');
INSERT INTO "pieces_composer" VALUES(31,'Sergei','','Prokofiev','','','',0,'');
INSERT INTO "pieces_composer" VALUES(32,'Jean','','Sibelius','','','',0,'');
INSERT INTO "pieces_composer" VALUES(33,'Leonard','','Bernstein','','','',0,'');
INSERT INTO "pieces_composer" VALUES(34,'Alexander','','Arutiunian','','','',0,'');
INSERT INTO "pieces_composer" VALUES(35,'Luigi','','Boccherini','','','',0,'');
INSERT INTO "pieces_composer" VALUES(36,'Tan','','Dun','','','',0,'');
INSERT INTO "pieces_composer" VALUES(37,'Behzad','','Ranjbaran','','','',0,'');
INSERT INTO "pieces_composer" VALUES(38,'Robert','','Schumann','','','',0,'');
INSERT INTO "pieces_composer" VALUES(39,'Giuseppe','','Verdi','','','',0,'');
INSERT INTO "pieces_composer" VALUES(40,'Richard','','Wagner','','','',0,'');
INSERT INTO "pieces_composer" VALUES(41,'Joaquín','','Rodrigo','','','',0,'');
INSERT INTO "pieces_composer" VALUES(42,'Randol','','Bass','','','',0,'');
INSERT INTO "pieces_composer" VALUES(43,'N. Cameron','','Britt','','','',0,'');
INSERT INTO "pieces_composer" VALUES(44,'Daniel','Bernard','Roumain','','','',0,'');
INSERT INTO "pieces_composer" VALUES(45,'Samuel','','Barber','','','',0,'');
INSERT INTO "pieces_composer" VALUES(46,'David','','Heuser','','','',0,'');
INSERT INTO "pieces_composer" VALUES(47,'William','','Bolcom','','','',0,'');
INSERT INTO "pieces_composer" VALUES(48,'Johann Sebastian','','Bach','','','',0,'');
INSERT INTO "pieces_composer" VALUES(49,'Jennifer','','Higdon','','','',0,'');
INSERT INTO "pieces_composer" VALUES(50,'George','','Kleinsinger','','','',0,'');
INSERT INTO "pieces_composer" VALUES(51,'Deems','','Taylor','','','',0,'');
INSERT INTO "pieces_composer" VALUES(52,'Nikolai','','Rimsky-Korsakov','','','',0,'');
INSERT INTO "pieces_composer" VALUES(53,'Benjamin','','Britten','','','',0,'');
INSERT INTO "pieces_composer" VALUES(54,'Max','','Bruch','','','',0,'');
INSERT INTO "pieces_composer" VALUES(55,'Richard','','Strauss','','','',0,'');
INSERT INTO "pieces_composer" VALUES(56,'Charles','','Ives','','','',0,'');
INSERT INTO "pieces_composer" VALUES(57,'Margaret','','Boudreaux','','','',0,'');
INSERT INTO "pieces_composer" VALUES(58,'Christopher','','Rouse','','','',0,'');
INSERT INTO "pieces_composer" VALUES(59,'Modest','','Mussorgsky','','','',0,'');
INSERT INTO "pieces_composer" VALUES(60,'Edouard','','Lalo','','','',0,'');
INSERT INTO "pieces_composer" VALUES(61,'Camille','','Saint-Saens','','','',0,'');
INSERT INTO "pieces_composer" VALUES(62,'Paul','','Hindemith','','','',0,'');
INSERT INTO "pieces_composer" VALUES(63,'Hector','','Berlioz','','','',0,'');
INSERT INTO "pieces_composer" VALUES(64,'Bright','','Sheng','','','',0,'');
INSERT INTO "pieces_composer" VALUES(65,'Ralph','','Vaughan Williams','','','',0,'');
INSERT INTO "pieces_composer" VALUES(66,'Carlos','','Chávez','','','',0,'');
INSERT INTO "pieces_composer" VALUES(67,'George','','Bizet','','','',0,'');
INSERT INTO "pieces_composer" VALUES(68,'Franz','','Strauss','','','',0,'');
INSERT INTO "pieces_composer" VALUES(69,'Samuel','','Coleridge-Taylor','','','',0,'');
INSERT INTO "pieces_composer" VALUES(70,'William','Levi','Dawson','','','',0,'');
INSERT INTO "pieces_composer" VALUES(71,'Edward','','Elgar','','','',0,'');
INSERT INTO "pieces_composer" VALUES(72,'David','','Dzubay','','','',0,'');
INSERT INTO "pieces_composer" VALUES(73,'Frank','','Nuyts','','','',0,'');
INSERT INTO "pieces_composer" VALUES(74,'George','','Gershwin','','','',0,'');
INSERT INTO "pieces_composer" VALUES(75,'Richard','','Danielpour','','','',0,'');
INSERT INTO "pieces_composer" VALUES(76,'Christopher','','Theofanidis','','','',0,'');
INSERT INTO "pieces_composer" VALUES(77,'Federic','','Chopin','','','',0,'');
INSERT INTO "pieces_composer" VALUES(78,'John','','Williams','','','',0,'');
INSERT INTO "pieces_composer" VALUES(79,'Silvestre','','Revueltas','','','',0,'');
INSERT INTO "pieces_composer" VALUES(80,'Carl Maria','von','Weber','','','',0,'');
INSERT INTO "pieces_composer" VALUES(81,'Tobias','','Picker','','','',0,'');
INSERT INTO "pieces_composer" VALUES(82,'Tom','','Schnauber','','','',0,'');
INSERT INTO "pieces_composer" VALUES(83,'Sergei','','Rachmaninov','','','',0,'');
INSERT INTO "pieces_composer" VALUES(84,'Mark','Lanz','Weiser','','','',0,'');
INSERT INTO "pieces_composer" VALUES(85,'Richard','','Rodgers','','','',0,'');
INSERT INTO "pieces_composer" VALUES(86,'Duke','','Ellington','','','',0,'');
INSERT INTO "pieces_composer" VALUES(87,'Artie','','Shaw','','','',0,'');
INSERT INTO "pieces_composer" VALUES(88,'Pablo','','Sarasate','','','',0,'');
INSERT INTO "pieces_composer" VALUES(89,'Morton','','Gould','','','',0,'');
INSERT INTO "pieces_composer" VALUES(90,'Leroy','','Anderson','','','',0,'');
INSERT INTO "pieces_composer" VALUES(91,'Michael','','Daugherty','','','',0,'');
INSERT INTO "pieces_composer" VALUES(92,'Henri','','Vieuxtemps','','','',0,'');
INSERT INTO "pieces_composer" VALUES(93,'Albert','Franz','Doppler','','','',0,'');
INSERT INTO "pieces_composer" VALUES(94,'Aaron','','Copland','','','',0,'');
INSERT INTO "pieces_composer" VALUES(95,'Adolphus','','Hailstork','','','',0,'');
INSERT INTO "pieces_composer" VALUES(96,'','','','','Zhou Tian','',0,'');
INSERT INTO "pieces_composer" VALUES(97,'Christopher','','Weiss','','','',0,'');
INSERT INTO "pieces_composer" VALUES(98,'Arno','','Babajanian','','','',0,'');
INSERT INTO "pieces_composer" VALUES(99,'','','Handel-Halvorsen','','','',0,'');
CREATE TABLE "events_season" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL UNIQUE,
    "startdate" date NOT NULL,
    "enddate" date NOT NULL,
    "description" varchar(200),
    "slug" varchar(50) NOT NULL UNIQUE
);
INSERT INTO "events_season" VALUES(1,'2009-2010 Season','2009-08-01','2010-05-22','','2009-2010_Season');
INSERT INTO "events_season" VALUES(2,'2010-2011 Season','2010-05-23','2011-06-30','','2010-2011-season');
INSERT INTO "events_season" VALUES(3,'2008-2009 Season','2008-08-01','2009-06-07','','2008-2009_Season');
INSERT INTO "events_season" VALUES(4,'2007-2008 Season','2007-08-01','2008-06-01','','2007-2008-season');
INSERT INTO "events_season" VALUES(5,'2006-2007 Season','2006-08-01','2007-06-01','','2006-2007_Season');
INSERT INTO "events_season" VALUES(6,'2005-2006 Season','2005-08-01','2006-06-01','','2005-2006-season');
INSERT INTO "events_season" VALUES(7,'2004-2005 Season','2004-08-01','2005-06-01','','2004-2005-season');
INSERT INTO "events_season" VALUES(8,'2003-2004 Seasion','2003-08-01','2004-06-01','','2003-2004-seasion');
INSERT INTO "events_season" VALUES(9,'2002-2003 Season','2002-08-01','2003-06-01','','2002-2003-season');
INSERT INTO "events_season" VALUES(10,'2001-2002 Season','2001-08-01','2002-06-01','','2001-2002-season');
INSERT INTO "events_season" VALUES(11,'2011-2012 Season','2011-06-30','2012-06-28','','2011-2012-season');
CREATE TABLE "events_location" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "address" varchar(50) NOT NULL,
    "city" varchar(60) NOT NULL,
    "state" varchar(50) NOT NULL,
    "zip" varchar(10) NOT NULL,
    "url" varchar(500) NOT NULL,
    "alt_url" varchar(200),
    "slug" varchar(50) NOT NULL UNIQUE
);
INSERT INTO "events_location" VALUES(1,'Jim Rouse Theatre','5460 Trumpeter Road','Columbia','MD','21044','http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=James+Rouse+Theatre+for+the+Performing+Arts&sll=39.216852,-76.872078&sspn=0.010714,0.008787&ie=UTF8&hq=James+Rouse+Theatre+for+the+Performin','http://www.rousetheatre.org/','Rouse_Theater');
INSERT INTO "events_location" VALUES(2,'Christ Episcopal Church','6800 Oakland Mills Road','Columbia','MD','21045','http://maps.google.com/maps?f=q&source=s_q&hl=en&q=Christ+Church,&sll=39.182198,-76.826105&sspn=0.010928,0.008787&ie=UTF8&radius=0.24&split=1&rq=1&ev=zi&hq=Christ+Church,&hnear=&ll=39.182298,-76.82815','http://christchurchcolumbia.org/','christ-episcopal-church');
INSERT INTO "events_location" VALUES(3,'Howard County Center for the Arts','8510 High Ridge Road','Ellicott City','MD','21043','http://bit.ly/9oLBX7','http://www.hocoarts.org/contact_us.php','howard-county-center-arts');
INSERT INTO "events_location" VALUES(4,'St. Johns Baptist Church','9055 Tamar Drive','Columbia','MD','21045','http://www.stjohnbaptistchurch.org/','','st-johns-baptist-church');
INSERT INTO "events_location" VALUES(5,'The Gathering Place','6120 Daylong Ln','Clarksville','Maryland','21029','http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=6120+Daylong+Lane+21029&sll=37.0625,-95.677068&sspn=34.259599,79.013672&ie=UTF8&hq=&hnear=6120+Daylong+Ln,+Clarksville,+Howard,+Maryland+21029&z=16','http://www.thegatheringplace.tv/directions.shtml','gathering-place');
INSERT INTO "events_location" VALUES(6,'Wilde Lake Interfaith Center','10431 Twin Rivers Road','Columbia','Maryland','21044','http://maps.google.com/maps?hl=en&ie=UTF8&q=wilde+lake+interfaith+center+columbia+md&fb=1&gl=us&hq=wilde+lake+interfaith+center&hnear=Columbia,+MD&cid=0,0,14232234560388340614&ei=4N3nTInIOoKKlwf_zv2aCQ&oi=local_result&ved=0CBIQnwIwAA&ll=39.220534,-76.871917&spn=0.007597,0.01929&z=16&iwloc=A','','wilde-lake-interfaith-center');
INSERT INTO "events_location" VALUES(7,'Smith Theatre','10901 Little Patuxent Parkway','Columbia','Maryland','21044','http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=10901+Little+Patuxent+Parkway,+Columbia,+MD&sll=37.0625,-95.677068&sspn=34.259599,79.013672&ie=UTF8&hq=&hnear=10901+Little+Patuxent+Pkwy,+Columbia,+Howard,+Maryland+21044&z=16','','smith-theatre');
INSERT INTO "events_location" VALUES(8,'Paint Branch Unitarian Universalist Church','3215 Powder Mill Road','Adelphi','MD','20783-1097','http://bit.ly/fzPAys','http://www.pbuuc.org/','paint-branch-unitarian-universalist-church');
INSERT INTO "events_location" VALUES(9,'Centennial Park','10000 Route 108','Ellicott City','Maryland','21042','http://maps.google.com/maps?q=Centennial+Park,+Maryland+108,+Ellicott+City,+MD&hl=en&ll=39.240497,-76.857133&spn=0.015655,0.038581&z=15','','centennial-park');
CREATE TABLE "events_event_pieces" (
    "id" integer NOT NULL PRIMARY KEY,
    "event_id" integer NOT NULL,
    "piece_id" integer NOT NULL REFERENCES "pieces_piece" ("id"),
    "sort_value" integer NOT NULL
);
INSERT INTO "events_event_pieces" VALUES(15,4,16,14);
INSERT INTO "events_event_pieces" VALUES(16,4,17,15);
INSERT INTO "events_event_pieces" VALUES(17,4,18,16);
INSERT INTO "events_event_pieces" VALUES(18,6,19,17);
INSERT INTO "events_event_pieces" VALUES(19,6,20,18);
INSERT INTO "events_event_pieces" VALUES(20,6,21,19);
INSERT INTO "events_event_pieces" VALUES(21,6,22,20);
INSERT INTO "events_event_pieces" VALUES(22,8,23,21);
INSERT INTO "events_event_pieces" VALUES(23,8,24,22);
INSERT INTO "events_event_pieces" VALUES(24,8,25,23);
INSERT INTO "events_event_pieces" VALUES(25,8,26,24);
INSERT INTO "events_event_pieces" VALUES(26,8,27,25);
INSERT INTO "events_event_pieces" VALUES(27,8,28,26);
INSERT INTO "events_event_pieces" VALUES(28,8,29,27);
INSERT INTO "events_event_pieces" VALUES(29,2,30,28);
INSERT INTO "events_event_pieces" VALUES(30,2,31,29);
INSERT INTO "events_event_pieces" VALUES(40,4,16,27);
INSERT INTO "events_event_pieces" VALUES(58,28,40,40);
INSERT INTO "events_event_pieces" VALUES(59,28,41,41);
INSERT INTO "events_event_pieces" VALUES(60,28,43,42);
INSERT INTO "events_event_pieces" VALUES(61,28,42,43);
INSERT INTO "events_event_pieces" VALUES(62,28,44,44);
INSERT INTO "events_event_pieces" VALUES(63,22,36,44);
INSERT INTO "events_event_pieces" VALUES(64,20,34,42);
INSERT INTO "events_event_pieces" VALUES(65,20,33,43);
INSERT INTO "events_event_pieces" VALUES(66,20,35,44);
INSERT INTO "events_event_pieces" VALUES(70,26,46,43);
INSERT INTO "events_event_pieces" VALUES(71,26,45,44);
INSERT INTO "events_event_pieces" VALUES(72,11,2,42);
INSERT INTO "events_event_pieces" VALUES(73,11,3,43);
INSERT INTO "events_event_pieces" VALUES(74,11,4,44);
INSERT INTO "events_event_pieces" VALUES(75,23,38,42);
INSERT INTO "events_event_pieces" VALUES(76,23,39,43);
INSERT INTO "events_event_pieces" VALUES(77,23,37,44);
INSERT INTO "events_event_pieces" VALUES(96,30,54,53);
INSERT INTO "events_event_pieces" VALUES(97,30,56,54);
INSERT INTO "events_event_pieces" VALUES(98,30,55,55);
INSERT INTO "events_event_pieces" VALUES(99,30,51,56);
INSERT INTO "events_event_pieces" VALUES(100,30,52,57);
INSERT INTO "events_event_pieces" VALUES(101,32,57,53);
INSERT INTO "events_event_pieces" VALUES(102,32,58,54);
INSERT INTO "events_event_pieces" VALUES(103,32,61,55);
INSERT INTO "events_event_pieces" VALUES(104,32,59,56);
INSERT INTO "events_event_pieces" VALUES(105,32,60,57);
INSERT INTO "events_event_pieces" VALUES(107,34,63,59);
INSERT INTO "events_event_pieces" VALUES(108,34,64,60);
INSERT INTO "events_event_pieces" VALUES(109,34,62,61);
INSERT INTO "events_event_pieces" VALUES(110,34,27,62);
INSERT INTO "events_event_pieces" VALUES(111,37,65,63);
INSERT INTO "events_event_pieces" VALUES(112,37,67,64);
INSERT INTO "events_event_pieces" VALUES(113,37,68,65);
INSERT INTO "events_event_pieces" VALUES(114,37,66,66);
INSERT INTO "events_event_pieces" VALUES(115,39,69,67);
INSERT INTO "events_event_pieces" VALUES(116,39,71,68);
INSERT INTO "events_event_pieces" VALUES(117,39,70,69);
INSERT INTO "events_event_pieces" VALUES(120,42,74,72);
INSERT INTO "events_event_pieces" VALUES(121,42,75,73);
INSERT INTO "events_event_pieces" VALUES(122,43,76,74);
INSERT INTO "events_event_pieces" VALUES(123,43,77,75);
INSERT INTO "events_event_pieces" VALUES(124,43,78,76);
INSERT INTO "events_event_pieces" VALUES(125,43,79,77);
INSERT INTO "events_event_pieces" VALUES(126,45,81,78);
INSERT INTO "events_event_pieces" VALUES(127,45,80,79);
INSERT INTO "events_event_pieces" VALUES(128,47,90,80);
INSERT INTO "events_event_pieces" VALUES(129,47,89,81);
INSERT INTO "events_event_pieces" VALUES(130,47,91,82);
INSERT INTO "events_event_pieces" VALUES(131,47,92,83);
INSERT INTO "events_event_pieces" VALUES(133,52,86,85);
INSERT INTO "events_event_pieces" VALUES(134,52,85,86);
INSERT INTO "events_event_pieces" VALUES(135,54,82,87);
INSERT INTO "events_event_pieces" VALUES(136,54,83,88);
INSERT INTO "events_event_pieces" VALUES(137,54,84,89);
INSERT INTO "events_event_pieces" VALUES(138,33,36,89);
INSERT INTO "events_event_pieces" VALUES(139,51,93,89);
INSERT INTO "events_event_pieces" VALUES(140,41,72,88);
INSERT INTO "events_event_pieces" VALUES(141,41,73,89);
INSERT INTO "events_event_pieces" VALUES(142,56,94,90);
INSERT INTO "events_event_pieces" VALUES(143,56,96,91);
INSERT INTO "events_event_pieces" VALUES(144,56,95,92);
INSERT INTO "events_event_pieces" VALUES(145,58,97,93);
INSERT INTO "events_event_pieces" VALUES(146,58,98,94);
INSERT INTO "events_event_pieces" VALUES(147,58,99,95);
INSERT INTO "events_event_pieces" VALUES(148,58,100,96);
INSERT INTO "events_event_pieces" VALUES(149,58,101,97);
INSERT INTO "events_event_pieces" VALUES(150,59,102,98);
INSERT INTO "events_event_pieces" VALUES(151,59,103,99);
INSERT INTO "events_event_pieces" VALUES(152,59,104,100);
INSERT INTO "events_event_pieces" VALUES(153,59,105,101);
INSERT INTO "events_event_pieces" VALUES(154,59,106,102);
INSERT INTO "events_event_pieces" VALUES(155,61,107,103);
INSERT INTO "events_event_pieces" VALUES(156,61,108,104);
INSERT INTO "events_event_pieces" VALUES(157,61,109,105);
INSERT INTO "events_event_pieces" VALUES(158,62,110,106);
INSERT INTO "events_event_pieces" VALUES(159,62,111,107);
INSERT INTO "events_event_pieces" VALUES(160,62,112,108);
INSERT INTO "events_event_pieces" VALUES(161,63,113,109);
INSERT INTO "events_event_pieces" VALUES(162,63,10,110);
INSERT INTO "events_event_pieces" VALUES(163,63,114,111);
INSERT INTO "events_event_pieces" VALUES(164,63,116,112);
INSERT INTO "events_event_pieces" VALUES(165,63,115,113);
INSERT INTO "events_event_pieces" VALUES(166,63,117,114);
INSERT INTO "events_event_pieces" VALUES(167,65,118,115);
INSERT INTO "events_event_pieces" VALUES(168,65,119,116);
INSERT INTO "events_event_pieces" VALUES(169,65,120,117);
INSERT INTO "events_event_pieces" VALUES(170,66,121,118);
INSERT INTO "events_event_pieces" VALUES(171,66,122,119);
INSERT INTO "events_event_pieces" VALUES(172,66,123,120);
INSERT INTO "events_event_pieces" VALUES(173,67,125,121);
INSERT INTO "events_event_pieces" VALUES(174,67,126,122);
INSERT INTO "events_event_pieces" VALUES(175,67,124,123);
INSERT INTO "events_event_pieces" VALUES(176,68,128,124);
INSERT INTO "events_event_pieces" VALUES(177,68,127,125);
INSERT INTO "events_event_pieces" VALUES(178,69,129,126);
INSERT INTO "events_event_pieces" VALUES(179,69,130,127);
INSERT INTO "events_event_pieces" VALUES(180,69,131,128);
INSERT INTO "events_event_pieces" VALUES(181,70,132,129);
INSERT INTO "events_event_pieces" VALUES(182,70,133,130);
INSERT INTO "events_event_pieces" VALUES(183,70,134,131);
INSERT INTO "events_event_pieces" VALUES(184,70,135,132);
INSERT INTO "events_event_pieces" VALUES(185,71,140,133);
INSERT INTO "events_event_pieces" VALUES(186,71,136,134);
INSERT INTO "events_event_pieces" VALUES(187,71,137,135);
INSERT INTO "events_event_pieces" VALUES(188,71,139,136);
INSERT INTO "events_event_pieces" VALUES(189,71,138,137);
INSERT INTO "events_event_pieces" VALUES(190,73,141,138);
INSERT INTO "events_event_pieces" VALUES(191,73,142,139);
INSERT INTO "events_event_pieces" VALUES(192,73,143,140);
INSERT INTO "events_event_pieces" VALUES(193,74,146,141);
INSERT INTO "events_event_pieces" VALUES(194,74,144,142);
INSERT INTO "events_event_pieces" VALUES(195,74,147,143);
INSERT INTO "events_event_pieces" VALUES(196,74,145,144);
INSERT INTO "events_event_pieces" VALUES(197,75,148,145);
INSERT INTO "events_event_pieces" VALUES(198,75,149,146);
INSERT INTO "events_event_pieces" VALUES(199,75,150,147);
INSERT INTO "events_event_pieces" VALUES(200,75,151,148);
INSERT INTO "events_event_pieces" VALUES(201,12,5,146);
INSERT INTO "events_event_pieces" VALUES(202,12,6,147);
INSERT INTO "events_event_pieces" VALUES(203,12,7,148);
INSERT INTO "events_event_pieces" VALUES(204,76,153,149);
INSERT INTO "events_event_pieces" VALUES(205,76,7,150);
INSERT INTO "events_event_pieces" VALUES(206,76,152,151);
INSERT INTO "events_event_pieces" VALUES(207,77,154,152);
INSERT INTO "events_event_pieces" VALUES(208,77,155,153);
INSERT INTO "events_event_pieces" VALUES(209,77,156,154);
INSERT INTO "events_event_pieces" VALUES(210,77,157,155);
INSERT INTO "events_event_pieces" VALUES(211,78,158,156);
INSERT INTO "events_event_pieces" VALUES(212,78,159,157);
INSERT INTO "events_event_pieces" VALUES(213,78,160,158);
INSERT INTO "events_event_pieces" VALUES(214,80,161,159);
INSERT INTO "events_event_pieces" VALUES(215,80,55,160);
INSERT INTO "events_event_pieces" VALUES(216,80,162,161);
INSERT INTO "events_event_pieces" VALUES(217,81,163,162);
INSERT INTO "events_event_pieces" VALUES(218,81,164,163);
INSERT INTO "events_event_pieces" VALUES(219,81,165,164);
INSERT INTO "events_event_pieces" VALUES(220,81,166,165);
INSERT INTO "events_event_pieces" VALUES(221,81,167,166);
INSERT INTO "events_event_pieces" VALUES(222,81,168,167);
INSERT INTO "events_event_pieces" VALUES(223,81,169,168);
INSERT INTO "events_event_pieces" VALUES(224,81,170,169);
INSERT INTO "events_event_pieces" VALUES(225,81,171,170);
INSERT INTO "events_event_pieces" VALUES(226,81,172,171);
INSERT INTO "events_event_pieces" VALUES(235,13,32,167);
INSERT INTO "events_event_pieces" VALUES(236,13,11,168);
INSERT INTO "events_event_pieces" VALUES(237,13,9,169);
INSERT INTO "events_event_pieces" VALUES(238,13,10,170);
INSERT INTO "events_event_pieces" VALUES(239,13,8,171);
INSERT INTO "events_event_pieces" VALUES(250,83,175,173);
INSERT INTO "events_event_pieces" VALUES(251,83,50,174);
INSERT INTO "events_event_pieces" VALUES(252,83,176,175);
INSERT INTO "events_event_pieces" VALUES(253,16,177,169);
INSERT INTO "events_event_pieces" VALUES(254,16,14,170);
INSERT INTO "events_event_pieces" VALUES(255,16,15,171);
INSERT INTO "events_event_pieces" VALUES(256,16,12,172);
INSERT INTO "events_event_pieces" VALUES(294,85,178,184);
INSERT INTO "events_event_pieces" VALUES(295,85,179,185);
INSERT INTO "events_event_pieces" VALUES(296,85,185,186);
INSERT INTO "events_event_pieces" VALUES(315,88,189,186);
INSERT INTO "events_event_pieces" VALUES(316,90,187,183);
INSERT INTO "events_event_pieces" VALUES(317,90,186,184);
INSERT INTO "events_event_pieces" VALUES(318,90,188,185);
INSERT INTO "events_event_pieces" VALUES(319,90,157,186);
INSERT INTO "events_event_pieces" VALUES(323,93,195,187);
INSERT INTO "events_event_pieces" VALUES(324,93,194,188);
INSERT INTO "events_event_pieces" VALUES(325,93,193,189);
INSERT INTO "events_event_pieces" VALUES(326,86,181,187);
INSERT INTO "events_event_pieces" VALUES(327,86,182,188);
INSERT INTO "events_event_pieces" VALUES(328,86,180,189);
INSERT INTO "events_event_pieces" VALUES(329,87,192,187);
INSERT INTO "events_event_pieces" VALUES(330,87,184,188);
INSERT INTO "events_event_pieces" VALUES(331,87,183,189);
CREATE TABLE "events_event_soloists" (
    "id" integer NOT NULL PRIMARY KEY,
    "event_id" integer NOT NULL,
    "soloist_id" integer NOT NULL REFERENCES "soloists_soloist" ("id"),
    UNIQUE ("event_id", "soloist_id")
);
INSERT INTO "events_event_soloists" VALUES(15,67,31);
INSERT INTO "events_event_soloists" VALUES(16,71,48);
INSERT INTO "events_event_soloists" VALUES(17,71,50);
INSERT INTO "events_event_soloists" VALUES(18,71,51);
INSERT INTO "events_event_soloists" VALUES(19,14,15);
INSERT INTO "events_event_soloists" VALUES(20,15,9);
INSERT INTO "events_event_soloists" VALUES(21,15,10);
INSERT INTO "events_event_soloists" VALUES(22,15,11);
INSERT INTO "events_event_soloists" VALUES(23,82,20);
INSERT INTO "events_event_soloists" VALUES(29,83,20);
INSERT INTO "events_event_soloists" VALUES(30,16,13);
INSERT INTO "events_event_soloists" VALUES(31,16,61);
INSERT INTO "events_event_soloists" VALUES(32,16,5);
INSERT INTO "events_event_soloists" VALUES(33,84,62);
INSERT INTO "events_event_soloists" VALUES(34,84,63);
INSERT INTO "events_event_soloists" VALUES(36,89,66);
INSERT INTO "events_event_soloists" VALUES(37,89,67);
INSERT INTO "events_event_soloists" VALUES(38,86,68);
INSERT INTO "events_event_soloists" VALUES(39,87,65);
CREATE TABLE "events_event" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "date" datetime NOT NULL,
    "alt_time" time,
    "alt_date" datetime,
    "location_id" integer NOT NULL REFERENCES "events_location" ("id"),
    "ticket_link" varchar(200),
    "season_id" integer NOT NULL REFERENCES "events_season" ("id"),
    "description" text NOT NULL,
    "slug" varchar(50) NOT NULL UNIQUE,
    "preconcert_discussion_id" integer UNIQUE,
    "image" varchar(100),
    "num_views" integer unsigned NOT NULL,
    "status" integer NOT NULL
);
INSERT INTO "events_event" VALUES(2,'The Titans','2010-05-22 19:30:00',NULL,NULL,1,'',1,'<p>What a way to celebrate Mahler’s 150th! We pull out all the stops in Mahler’s most popular symphony, an emotional crown jewel in the Romantic tradition. But first, Gemini Trio pianist and Howard Community College faculty member Hsiu-Hui Wang captures both the stormy and profound moods of one of Mozart’s most cherished works. </p>','titans',1,'src_imgs/events/Hsiu-Hui_Wang.jpg',5,1);
INSERT INTO "events_event" VALUES(3,'Chamber Concert','2010-05-08 19:30:00',NULL,NULL,2,'',1,'<p>Concertmaster Brenda Anna, violin, pianist Nancy Smith, and Music Director Jason Love, cello, bring you three masterworks with a decidedly ethnic flavor! Swiss composer Frank Martin brings a multicultural twist to his <em>Trio on Irish Folk Songs</em> while Zoltan Kodaly explores the traditions of his Hungarian homeland in the virtuosic <em>Duo for Violin and Cello</em>. The program closes in the great Austrian tradition with Schubert''s tuneful B-Flat Major Trio. Free admission (donations accepted).</p>','chamber-concert',NULL,'',0,2);
INSERT INTO "events_event" VALUES(4,'Jonathan Carney & The Rite of Spring','2009-10-17 19:30:00',NULL,NULL,1,'',1,'<p>Over 100 musicians take the stage as the orchestra brings you three of the most inspired pieces of music ever conceived! Beethoven was considered mad by his contemporaries…Tchaikovsky’s Concerto was deemed unplayable…The French police couldn’t stop the riot at Stravinsky’s premiere…But today these incredible works stand among the greatest of the Classical, Romantic, and Twentieth-Century masterpieces.</p>','jonathan-carney-rite-spring',NULL,'',0,1);
INSERT INTO "events_event" VALUES(5,'Chamber Concert','2009-11-08 15:00:00',NULL,NULL,2,'',1,'<p>Join members of the orchestra for a FREE chamber program including Dvorak''s Sextet for Strings, Corelli''s Christmas Concerto, Poulenc''s Sextet for Piano and Winds and more!</p>','chamber-concert1',NULL,'',0,2);
INSERT INTO "events_event" VALUES(6,'A Time and Place','2009-12-12 20:00:00',NULL,NULL,1,'',1,'<p>From the craggy rocks of the Scottish islands in Mendelssohn’s overture to Respighi’s triumphant trumpets of ancient Rome, join us as we explore four exotic musical landscapes. Commemorate the 50th anniversary of Bloch''s death with local virtuoso Ronald Mutchnik in an exploration of Chassidic life, and then hear the premiere of Albert Hurwit’s winning work in the orchestra’s fourth American Composer Competition, inspired by his family’s migration during the Jewish Diaspora and the Holocaust. Don’t miss our pre-concert lecture with the composer in attendance!</p>

<p>Featuring the winner of the American Composer Competition, Albert Hurwit. </p>','time-and-place',NULL,'',0,1);
INSERT INTO "events_event" VALUES(7,'Young People''s Concert','2010-01-09 12:30:00','15:00:00',NULL,1,'',1,'<p>One of our most popular events! Narrated tales including <i>Casey at the Bat</i> teach children about the instruments of the orchestra and more. Choose either the 12:30 or 3:00 concert and try your hand at playing one of the instruments from the concert at our Musical Instrument Petting Zoo, sponsored by our friends at Music & Arts. </p>','young-peoples-concert',NULL,'',0,1);
INSERT INTO "events_event" VALUES(8,'Short Stories','2010-03-27 19:30:00',NULL,NULL,1,'',1,'<p>Definitely one for the whole family! Symphonies may be long like novels, but great music often comes in smaller packages. Each of these Argentinian, Czech, French, and American stories has a flavor all its own. Maryland composer Jonathan Leshnoff is gaining international renown, and his <i>Rush</i> will sweep you off your feet! Plus, performances by the young maestros who win our Young Artist Competition are a highlight to the season.</p>

<p>This concert sponsored in part by a generous contribution from PNC.</p>','short-stories',NULL,'',0,1);
INSERT INTO "events_event" VALUES(9,'Chamber Concert','2010-04-17 19:30:00',NULL,NULL,2,'',1,'<p>You''ll love hearing members of the orchestra up close and personal in this intimate setting! This concert includes highlights from Mendelssohn''s glorious Octet, Dvorak''s G Major Quintet, a Mozart String Quartet, and the return of the bassoon quartet! This is a free concert (donations accepted) and a wonderful way to hear our players featured in small ensembles. </p>','chamber-concert3',NULL,'',0,2);
INSERT INTO "events_event" VALUES(10,'Symphonic Pops','2010-02-27 19:30:00',NULL,NULL,1,'',1,'<p>What do you get when you bring together Broadway shows like Les Miserables and Gypsy, the songs of Simon & Garfunkel, Celtic classics including music from Lord of the Dance, and combine it with great film scores? It’s an evening the whole family will not forget! Featuring Theresa Bickham, soprano, Neil Ewachiw, baritone, and members of the Teelin Irish Dance Company. </p>','symphonic-pops',NULL,'',0,1);
INSERT INTO "events_event" VALUES(11,'Land and Sea','2010-10-16 19:30:00',NULL,NULL,1,'',2,'<p>The Columbia Orchestra bursts out in full color with Debussy’s impressionistic masterpiece! Jason Shafer, the Orchestra’s 2003 Young Artist Competition winner now playing in Florida’s New World Symphony, brings his virtuosity to one of Mozart’s last and most beautiful concertos. Begin the journey with a young African-American composer’s jazzy celebration of Detroit’s automotive history and its world-class orchestra. </p>

<p>Join us at 6:30pm for a "<a href="http://columbiaorchestra.org/preludes/">Prelude</a>," a fun, fascinating pre-concert discussion with Bill Scanlan Murphy brought to you by Baltimore-Washington Financial Advisors.</p>

<p><a href="http://www.bwfa.com/" target="co_link"><img src="/images/logo-bwfa.jpg" alt="Baltimore Washington Financial Advisors" style="" border="0" height="39" width="132"></a></p>','land-and-sea',NULL,'src_imgs/events/MTC_logo.JPG',22,1);
INSERT INTO "events_event" VALUES(12,'Earth and Sky','2010-12-04 19:30:00',NULL,NULL,1,'',2,'<p>Over a hundred musicians take the stage for Holst’s unforgettable depictions not just of the planets themselves, but the human emotions and passions represented by the gods for which they are named. First, Baltimore Symphony violinist Qing Li joins the orchestra for a ravishing, romantic score based on an ancient Chinese legend, and our marvelous brass and percussion sections shine in Joan Tower’s fanfare. </p>

<p>Join us at 6:30pm for a "<a href="http://columbiaorchestra.org/preludes/">Prelude</a>," a fun, fascinating pre-concert discussion with Bill Scanlan Murphy brought to you by Baltimore-Washington Financial Advisors.</p>

<p><a href="http://www.bwfa.com/" target="co_link"><img src="/images/logo-bwfa.jpg" alt="Baltimore Washington Financial Advisors" style="" border="0" height="39" width="132"></a></p>','earth-and-sky',NULL,'',0,1);
INSERT INTO "events_event" VALUES(13,'Young and Eclectic','2011-03-26 19:30:00',NULL,NULL,1,'',2,'<p>A thrilling concert for the classical connoisseur, musical novices, and kids of all ages. We’re bringing together several works that don’t have to be long to be inspirational! Shostakovich''s Festive Overture, Brahms'' Variations on a Theme by Haydn, Danzon No. 2 by Arturo Marquez, and the jaw-dropping talent of the virtuosos who win our competition help us complete this exotic journey around the globe. </p>
<div class="iconblock">
	<div class="icnblk_img">
		<a href="https://www.pnc.com/"><img src="http://columbiaorchestra.org/images/logo-PNC.gif" height="50" width="166"/></a>
	</div>
	<div class="icnblk_cntnt">Concert sponsored by PNC.</div>
</div>

<div class="iconblock">
	<div class="icnblk_img">
		<a href="http://www.gailesviolin.com/"><img src="/images/logo-Gailes-small.jpg"  height="50" width="148" border="0"></a>
	</div>
	<div class="icnblk_cntnt">Young Artist Competition sponsored by Gailes'' Violin Shop, Inc.</div>
</div>

<div class="iconblock">
	<div class="icnblk_img"><a href="http://www.bwfa.com/" target="co_link"><img src="/images/logo-bwfa.jpg" alt="Baltimore Washington Financial Advisors" style="" border="0" height="39" width="132"></a></div>
	<div class="icnblk_cntnt">Join us at 6:30pm for a "<a href="http://columbiaorchestra.org/preludes/">Prelude</a>," a fun, fascinating pre-concert discussion with Bill Scanlan Murphy brought to you by Baltimore-Washington Financial Advisors.</div>
</div>','young-and-eclectic',NULL,'src_imgs/events/YoungEcl.jpg',2583,1);
INSERT INTO "events_event" VALUES(14,'Peter and the Wolf ... and Friends','2011-01-08 12:30:00','15:00:00',NULL,1,'',2,'<p>Not only is this a great introduction to the instruments of orchestra for younger students, older kids will enjoy learning more in a fun environment about how music is put together. The orchestra is joined by the marvelous performers of Kinetics Dance Theatre for Prokofiev’s immortal Peter and the Wolf, and kids will love a chance to try out many musical instruments at our Petting Zoo sponsored by Music & Arts held between our two concerts.</p>

<p>[Photo: Kitty R Photography]</p>','peter-and-wolf-and-friends',NULL,'',0,1);
INSERT INTO "events_event" VALUES(15,'Symphonic Pops','2011-02-12 19:30:00',NULL,NULL,1,'',2,'<p>Join us for an exciting evening of blockbusters from Hollywood, Broadway, and legendary pop artists! Meghan McCall and Colin Eaton sing selections from <em>My Fair Lady, Brigadoon, Miss Saigon,</em> and <em>Phantom of the Opera</em>. Stan Gilmer recreates "Candy Man," "What Kind of Fool Am I?" and "Sing a Song" in a <em>Salute to Sammy</em>. Round out the program with a <em>Beach Boys Medley</em> and film music from <em>Up</em> and <em>Superman</em> and you can see why this concert is fun for the whole family!</p>','symphonic-pops-2011',NULL,'',0,1);
INSERT INTO "events_event" VALUES(16,'Creation and Destruction','2011-06-04 19:30:00',NULL,NULL,1,'',2,'<p>Our season finale takes an ecstatic look at the heights and depths of the human spirit. The Masterworks Chorale of Carroll County joins us for Haydn’s exploration of the numinous in highlights from his celebrated oratorio. First, great artists of our time explore how humankind balances its creative impulse against its destructive tendencies. </p>

<div class="iconblock">
	<div class="icnblk_img"><a href="http://www.bwfa.com/" target="co_link"><img src="/images/logo-bwfa.jpg" alt="Baltimore Washington Financial Advisors" style="" border="0" height="39" width="132"></a></div>
	<div class="icnblk_cntnt">Join us at 6:30pm for a "<a href="http://columbiaorchestra.org/preludes/">Prelude</a>," a fun, fascinating pre-concert discussion with Bill Scanlan Murphy brought to you by Baltimore-Washington Financial Advisors.</div>
</div>','creation-and-destruction',NULL,'',0,1);
INSERT INTO "events_event" VALUES(17,'Chamber Concert One: Spotlight on Strings','2010-11-20 19:30:00',NULL,NULL,2,'',2,'<p>This intimate but thrilling concert showcases remarkable music for some of our violins, violas, and cellos. You''ll hear orchestra members up close in a string sampler including music from Mozart''s G Minor String Quintet, Dvorak''s American Quartet, and Kodaly''s Solo Cello Sonata. It''s a FREE concert in a lovely setting.</p>

<p><em>This concert will last approximately one hour with no intermission. Free admission; donations accepted.</em></p>','chamber-concert-one',NULL,'src_imgs/events/Str_Qtet_1.jpg',837,1);
INSERT INTO "events_event" VALUES(18,'Chamber Concert Two','2011-04-02 19:30:00',NULL,NULL,2,'',2,'<p>A beautiful and varied program featuring highlights from Beethoven''s String Trios and "Rasumovsky" Quartets, Borodin''s Second Quartet, woodwind and brass works by Madeliene Dring and Francesco Rosetti, plus Bruch''s marvelous Octet. This FREE concert is a wonderful way to hear orchestra members up close in the lovely setting of Christ Episcopal Church.</p>','chamber-concert-two',NULL,'src_imgs/events/Str_Qtet_4.jpg',494,2);
INSERT INTO "events_event" VALUES(20,'Romeo and Juliet','2008-10-18 19:30:00',NULL,NULL,1,'',3,'<p> Darkness meets light in this magical program! Whether it''s a Bohemian overture that says life is a bustling carnival, an Argentinean composer probing weighty poems in Spanish, Yiddish, and by Emily Dickinson, or a 20th-Century Russian composer''s take on the 17th century''s most famous English play, this concert brings together many of the diverse voices that sing together to tell the human story: our overarching goal for this season. </p>

<p> Featuring: actors from the Chesapeake Shakespeare Company</p>','romeo-and-juliet',NULL,'',0,1);
INSERT INTO "events_event" VALUES(21,'Chamber Concert One','2008-11-22 20:00:00',NULL,NULL,2,'',3,'<p>Join members of the orchestra for an eclectic program of music including Bach''s Musical Offering, a Bruch String Quintet, Gounod''s Little Symphony for winds and more! And it is FREE. </p>','2008-chamber-concert-1',NULL,'',0,1);
INSERT INTO "events_event" VALUES(22,'Young People''s Concert','2008-11-08 12:30:00','15:00:00',NULL,1,'',3,'<p>One of our most popular events! Join our full orchestra for a dramatic presentation of this classic orchestral story plus other fun music designed to get kids excited about music and the orchestra. Don''t miss our musical instrument petting zoo where your child can actually try out many of the instruments from the concert!</p>

<p>Featuring: Dyana Neal and The Kinetics Dance Theatre. </p>','2008-young-peoples-concert',NULL,'',0,1);
INSERT INTO "events_event" VALUES(23,'Sibelius'' First','2009-01-10 19:30:00',NULL,NULL,1,'',3,'<p>Part meditation on <i>America, the Beautiful</i>, orchestras across the country co-commissioned this modern masterpiece from one of America''s most respected living composers. Then we feature soloists from your own Columbia Orchestra in one of Haydn''s most beautiful works. Finally, we travel to Finland in one of Sibelius''s most gripping, romantic works. </p>

<p>Featuring:
<ul>
     <li>Monica DeLeon, Bassoon</li>
      <li>Brenda Anna, Violin</li>
      <li>Jason Love, Cello</li>
</ul>','sibelius-first',NULL,'',0,1);
INSERT INTO "events_event" VALUES(24,'Symphonic Pops','2009-02-07 19:30:00',NULL,NULL,1,'',3,'<p>Variety is the spice of Pops! Broadway''s greatest hits, music from films like Ben Hur, Rocky and Doctor Zhivago, the magic of Disney, or Spirituals featuring the McDaniel College Gospel Choir. Your only problem will be picking which great melody to whistle on the way home!</p>

<p> Featuring: 
<ul>
    <li> The McDaniel College Gospel Choir, Eric B. Byrd, Director</li>
    <li>John Dooley, baritone , and Theresa Bickham, soprano</li>
</ul>
</p>','2009_symphonic-pops',NULL,'',0,1);
INSERT INTO "events_event" VALUES(25,'Chamber Concert Three','2009-05-30 19:30:00',NULL,NULL,2,'',3,'<p>Individual members of Howard County''s own orchestra shine in this intimate, small-group setting! Woodwinds, brass, piano, and strings come together for Schumann''s four-horn Concert-piece, Mendelssohn''s Third String Quartet, a charming trio by Damase, and Stravinsky''s masterful neo-Classical Octet. This concert is free and open to the public. (Donations accepted.) </p>','2009-chamber-concert-two',NULL,'',0,1);
INSERT INTO "events_event" VALUES(26,'From the Past to the Present','2009-06-06 19:30:00',NULL,NULL,1,'',3,'<p>Two great composers explore what it means to be part of a musical tradition. Building on the enthusiasm for our performance of Tan Dun''s Paper Concerto, this mixed-media cello concerto bridges the ancient world with our technological era as Chinese folk musicians perform on video along with our live Western orchestra. And was Brahms the most traditional or progressive composer of his age? His last symphony says "yes" to both!</p>','past-present',NULL,'',0,1);
INSERT INTO "events_event" VALUES(27,'Chamber Concert Two: Beethoven, Brahms ... and Benjamin','2009-03-21 19:30:00',NULL,NULL,2,'',3,'<p>Join Brenda Anna, violin, Jason Love, cello, and Nancy Smith, piano, for a FREE concert of Beethoven''s "Ghost" trio, Brahms'' B Major trio, and Apéritif by Columbia composer Tom Benjamin. </p>','chamber-concert-two-beethoven-brahms-and-benjamin',NULL,'',0,1);
INSERT INTO "events_event" VALUES(28,'Beethoven and Bernstein','2009-03-28 19:30:00',NULL,NULL,1,'',3,'<p>Though Beethoven''s contemporaries criticized its lack of melody, Wagner acknowledged Beethoven''s <i>Seventh</i> as "the apotheosis of the dance." Although Bernstein was warned his show didn''t have a single "hit" before its premiere, these dance numbers have become among Broadways'' most well-known tunes. As a highlight to every season we pair the great voices of the past with our youngest virtuosos, the winners of our 2009 Young Artist competition. </p>

<p>
Featuring:
<ul>
    <li>Acadia Kocher, trumpet; Winner of the Young Artist Competition Senior Wind Division</li>
    <li>Evangeline Chandran, violin; Winner of the Young Artist Competition Junior Division</li>
    <li>Shing Ann Yeh, cello; Winner of the Young Artist Competition Senior String Division</li>
</ul>
</p>','beethoven-and-bernstein',NULL,'',0,1);
INSERT INTO "events_event" VALUES(29,'Sounds of Praise','2010-11-07 17:00:00',NULL,NULL,4,'',2,'<p>The Columbia Orchestra joins the Cathedral Choir of St. Johns Baptist Church and their Director Linda Hall for an evening of glorious singing! The inspiration for the concert comes from Psalm 150: "Let everything that hath breath, Praise the Lord."  Tickets are $10 and are available through St. Johns Baptist Church. For more information contact Carolyn Gayle at 410-992-6977.</p>','sounds-praise',NULL,'src_imgs/events/St_Johns.jpg',1194,1);
INSERT INTO "events_event" VALUES(30,'Passion and Destiny','2006-10-21 19:30:00',NULL,NULL,1,'',5,'<p>From the Italian passion of Verdi and the Spanish poetry of Rodrigo, from the French sensuality of Ravel and the German transcendence of Wagner, this concert is more than a tour of Europe''s greatest landscapes---it''s a tour of the human experience.</p>','passion-and-destiny',NULL,'',0,1);
INSERT INTO "events_event" VALUES(31,'A Tribute to John Denver','2006-10-29 13:30:00',NULL,NULL,1,'',5,'<p>Members and songwriters of the original John Denver Band remember the music of one of America’s best-loved singers, as they perform Rocky Mountain High, Thank God I’m a Country Boy, and more than a dozen other hits!</p>

<p>Featuring: Kenn Roberts and Mack Bailey of The Hard Travelers
and friends Chris Nole, Bill Danoff, Mollie Weaver, Jim Salestrom, Jim Horn, Pete Huttlinger, Ira Gitlin and John Sommers.</p>

<p>This concert is a project of the M.U.S.E. Foundation.</p>','tribute-john-denver',NULL,'',0,1);
INSERT INTO "events_event" VALUES(32,'Secrets of Grace','2006-12-09 19:30:00',NULL,NULL,1,'',5,'<p>Featuring the Central Maryland Chorale, directed by Monica Otal.</p>

<p>Themes of faith, humanity, and hope are central in the works of two of orchestral music''s greatest composers: Wolfgang Amadeus Mozart and John Adams. The Central Maryland Chorale joins the orchestra for music which is both sublime and powerful.</p>

<p>Includes a special presentation with Jason Love.</p>','secrets-grace',NULL,'',0,1);
INSERT INTO "events_event" VALUES(33,'Young People''s Concert','2007-01-13 12:30:00','15:00:00',NULL,1,'',5,'<p>Join us as the Columbia Orchestra presents Prokofiev''s beloved Peter and the Wolf and other children''s favorites. The concert''s new location, at the Jim Rouse Theatre in Wilde Lake High School, is just across the parking lot from the old Wilde Lake Interfaith Center location. Sponsored by TARGET.</p>

<p>Don''t miss the 1:30-3:00 Musical Instrument Petting Zoo for a chance to hear, touch and play musical instruments!
Sponsored by THE MUSIC AND ARTS CENTERS.</p>
','young-peoples-concert-2007',NULL,'',0,1);
INSERT INTO "events_event" VALUES(34,'City and Country','2007-02-24 19:30:00',NULL,NULL,1,'',5,'<p>Beethoven travels to the country to ease his deafness, and Daniel Bernard Roumain explores cultures coming together when he moves to Harlem. Join us as we explore what "nature" and "culture" mean in our fast-paced 21st century.</p>

<p>Featuring the winners of the Columbia Orchestra 2007 Young Artist Competition</p>','city-and-country',NULL,'',0,1);
INSERT INTO "events_event" VALUES(35,'Pops Concert:  Of Stage and Screen','2007-03-24 19:30:00',NULL,NULL,1,'',5,'<p>The Columbia Orchestra and guest vocalists perform Broadway and Hollywood''s biggest show-stoppers, from Leonard Bernstein''s West Side Story and Andrew Lloyd Webber''s most memorable hits to Lord of the Rings and a Salute to John Williams.</p>

<p>Featuring: Amanda Gosier, soprano and Stephen Cramer, tenor.</p>

','pops-concert-stage-and-screen',NULL,'',0,1);
INSERT INTO "events_event" VALUES(36,'Chamber Music Concert','2007-05-04 20:00:00',NULL,NULL,3,'',5,'<p>Music Director Jason Love, concertmaster Brenda Anna and Columbia Orchestra pianist Nancy Smith present a free recital featuring Bartok''s Romanian Folk Dances, Debussy''s Cello Sonata and Beethoven''s Archduke Trio. Join us for an intimate evening of chamber music!</p>','chamber-music-concert',NULL,'',0,1);
INSERT INTO "events_event" VALUES(37,'A New World','2007-06-02 19:30:00',NULL,NULL,1,'',5,'<p>Featuring David Heuser, the Columbia Orchestra 2007 American Composer Competition Winner</p>

<p>Hightlighting America for our season finale, we feature Dvořák and Barber''s best known works and the 2007 American Composer Competition Winner. Baltimore Symphony Concertmaster Jonathan Carney rounds out the program with a beautiful, uplifting -- and yes, sometimes jazzy! -- violin concerto by Willian Bolcom.</p>','new-world',NULL,'',0,1);
INSERT INTO "events_event" VALUES(38,'Columbia Festival of the Arts: Mark O''Connor with the Columbia Orchestra','2007-06-10 19:30:00',NULL,NULL,1,'',5,'<p>Legendary violinist/composer/fiddler Mark O''Connor returns to the Festival joining the Columbia Orchestra for an unforgettable evening.</p>


','columbia-festival-arts-mark-oconnor-columbia-orche',NULL,'',0,1);
INSERT INTO "events_event" VALUES(39,'Blockbusters and Discoveries:  The Agony and the Ecstasy','2005-10-15 19:30:00',NULL,NULL,1,'',6,'<p>Just as Leonardo da Vinci toiled to create some of the world’s greatest art under the demands of religious and political leaders, Ludwig van Beethoven and Jennifer Higdon demonstrate the triumph of the human spirit over tragic obstacles. </p>','blockbusters-and-discoveries-agony-and-ecstasy',NULL,'',0,1);
INSERT INTO "events_event" VALUES(40,'Explorations: A Tribute to John Denver','2005-10-30 15:30:00',NULL,NULL,1,'',6,'<p>Members and songwriters of the original John Denver Band remember the music of one of America’s best-loved singers, as they perform Rocky Mountain High, Thank God I’m a Country Boy, and more than a dozen other hits!</p>

<p>Featuring: Kenn Roberts and Mack Bailey of The Hard Travelers
and friends Chris Nole, Bill Danoff, Mollie Weaver, Jim Salestrom, Jim Horn, and John Sommers.</p>

<p>This concert is a project of the M.U.S.E. Foundation.</p>
','explorations-tribute-john-denver',NULL,'',0,1);
INSERT INTO "events_event" VALUES(41,'Explorations: Young People''s Concert','2005-12-03 12:30:00','15:00:00',NULL,6,'',6,'<p>An introduction to the orchestra and dance for children and their parents in a fun, informal setting. The program will feature students from the Peabody Dance Program, Carol Bartlett, Director.</p>

<p>Don''t miss the 1:30-3:00 Musical Instrument Petting Zoo for a chance to hear, touch and play musical instruments! </p>','explorations-young-peoples-concert',NULL,'',0,1);
INSERT INTO "events_event" VALUES(42,'Blockbusters and Discoveries:  Arabian Nights','2006-01-21 19:30:00',NULL,NULL,1,'',6,'<p>Though children may dream of Tales of Arabian Nights, Rimsky-Korsakov used these myths and legends to inspire a tone poem of epic proportions. Just as China gave the gift of paper to the world, Tan Dun explores its sonic possibilities in an enthralling new work.</p>','blockbusters-and-discoveries-arabian-nights',NULL,'',0,1);
INSERT INTO "events_event" VALUES(43,'Blockbusters and Discoveries: Perfect Storms','2006-03-04 19:30:00',NULL,NULL,1,'',6,'<p>Britten’s seafarer Peter Grimes is the quintessential outsider, while the waves of Sibelius’ Symphony lap the shores of a proud nation with both calm waters and perilous seas.</p>

<p>Featuring the winners of the Columbia Orchestra 2006 Young Artist Competition </p>','blockbusters-and-discoveries-perfect-storms',NULL,'',0,1);
INSERT INTO "events_event" VALUES(44,'Explorations:  COMCAST presents “By George! By Ira! By Gershwin!” ','2006-04-08 19:30:00',NULL,NULL,1,'',6,'<p>Celebrate the genius of George and Ira Gershwin as a dramatic multimedia narrative with spectacular visual images tells the compelling story of their rise to fame. A jazz quintet joins the orchestra for Selections from Porgy and Bess, Rhapsody in Blue, and more!</p>

<p>Featuring Carolyn Black-Sotir, Arno Drucker, R. Timothy McReynolds, Thomas Williams and Richard McCready</p>','explorations-comcast-presents-george-ira-gershwin',NULL,'',0,1);
INSERT INTO "events_event" VALUES(45,'Blockbusters and Discoveries:  Clear and Present Danger','2006-06-03 19:30:00',NULL,NULL,1,'',6,'<p>Aristocracy and democracy. Religion and humanism. Communism and capitalism. Mozart and Shostakovich respond to turmoil around them by creating some of the most revolutionary and moving music ever written.</p>','blockbusters-and-discoveries-clear-and-present-dan',NULL,'',0,1);
INSERT INTO "events_event" VALUES(46,'Chamber Concert','2008-06-22 15:00:00',NULL,NULL,2,'',4,'<p>Violinist Brenda Anna, pianist Nancy Smith, and cellist Jason Love perform a program including Maurice Ravel''s Piano Trio and the Trio No. 2 by Dmitri Shostakovich. And it is FREE. </p>','chamber-concert-2008-06-22',NULL,'',0,1);
INSERT INTO "events_event" VALUES(47,'Classical Concert 4:  Pictures at an Exhibition','2008-05-31 19:30:00',NULL,NULL,1,'',4,'<p>We commemorate our 30th anniversary season in the Jim Rouse Theatre performing music by his nephew, Christopher Rouse. Howard County’s greatest young talent is on display as we feature the winners of our Young Artist Competition and we finish the year with the masterpiece with which Maestro Love christened his tenure with the orchestra, Pictures at an Exhibition.
</p>
','classical-concert-4-pictures-exhibition',NULL,'',0,1);
INSERT INTO "events_event" VALUES(48,'Chamber Concert','2008-05-09 20:00:00',NULL,NULL,2,'',4,'<p>Hear the members of the orchestra up close playing great music in small ensembles. And it is FREE. </p>','chamber-concert-2008-05-09',NULL,'',0,1);
INSERT INTO "events_event" VALUES(49,'Chamber Concert','2008-03-08 19:30:00',NULL,NULL,2,'',4,'<p>Hear the members of the orchestra up close playing great music in small ensembles. And it is FREE. </p>','chamber-concert-2008-03-08',NULL,'',0,1);
INSERT INTO "events_event" VALUES(50,'Symphonic Pops','2008-02-16 19:30:00',NULL,NULL,1,'',4,'<p>A salute to Stephen Sondheim, greatest hits from Rodgers and Hammerstein, highlights from Grieg’s Peer Gynt, and great film music from Pirates of the Caribbean to Psycho. The program will also feature the local premiere of Deus Ex Machina by Maryland composer Mark Lortz. </p>','symphonic-pops-2008',NULL,'',0,1);
INSERT INTO "events_event" VALUES(51,'Young People''s Concert','2008-01-12 12:30:00','15:00:00',NULL,1,'',4,'<p>For the classical music fan in training! Featuring Benjamin Britten’s Young Person’s Guide to the Orchestra,  the young musicians of the Peabody Violin Choir and your chance to play the instruments of the orchestra at our instrument petting zoo.</p>

<p>Don''t miss the 1:30-3:00 Musical Instrument Petting Zoo for a chance to hear, touch and play musical instruments! </p>','young-peoples-concert-2008',NULL,'',0,1);
INSERT INTO "events_event" VALUES(52,'Classical Concert 2:  Ganz Plays Brahms','2007-12-01 19:30:00',NULL,NULL,1,'',4,'<p>World-Renowned Howard County native Brian Ganz returns to the orchestra to perform one of Brahms’s most bold and emotional masterpieces. And Charles Ives explores our musical heritage through everything from sacred hymns to “Turkey in the Straw” in this most American of symphonies. </p>','classical-concert-2-ganz-plays-brahms',NULL,'',0,1);
INSERT INTO "events_event" VALUES(53,'Chamber Concert','2007-11-02 20:00:00',NULL,NULL,2,'',4,'<p>Hear the members of the orchestra up close playing great music in small ensembles. This FREE concert features music by Beethoven, Brahms, Haydn. Mozart, Persichetti, a new work by the orchestra''s new principal bassoonist, Monica De Leon. </p>','chamber-concert-2007-11-02',NULL,'',0,1);
INSERT INTO "events_event" VALUES(54,'Classical Concert 1:  Tchaikovsky''s Fourth','2007-10-20 19:30:00',NULL,NULL,1,'',4,'<p>Our anniversary season starts with this magnificent Bach concerto, the first work ever performed by the orchestra! Tchaikovsky explores the themes of fate and destiny in one of his most enduring symphonies in a program also featuring Maryland horn virtuoso Larry Williams. </p>','classical-concert-1-tchaikovskys-fourth',NULL,'',0,1);
INSERT INTO "events_event" VALUES(55,'Classical Concert 3:  Embracing the Millions: A Community Arts Project','2008-04-05 19:30:00',NULL,'2008-04-06 15:00:00',1,'',4,'<p>Is Beethoven’s vision of a universal brotherhood possible in the 21st century? Regional performers, artists, and students explore the urgent questions raised by the world’s most famous symphony throughout the season culminating this concert. Visit www.embracingthemillions.org to learn more and participate in the experience. </p>','classical-concert-3-embracing-millions-community-a',NULL,'',0,1);
INSERT INTO "events_event" VALUES(56,'Taleful Tunes','2004-10-23 19:30:00',NULL,NULL,1,'',7,'<p/>','taleful-tunes',NULL,'',0,1);
INSERT INTO "events_event" VALUES(57,'Young People''s Concert','2004-11-13 12:30:00','15:00:00',NULL,6,'',7,'<p>An introduction to the orchestra for children and their parents in an informal setting. This year''s program features Prokofiev’s beloved Peter and the Wolf with live action and more music featuring the Peabody Children’s Chorus, Doreen Falby, Director. Don''t miss the 1:30-3:00 Musical Instrument Petting Zoo for a chance to hear, touch and play musical instruments! </p>','young-peoples-concert-2004-11-13',NULL,'',0,1);
INSERT INTO "events_event" VALUES(58,'Around the World','2005-01-15 19:30:00',NULL,NULL,1,'',7,'</p>','around-world-2005-01-05',NULL,'',0,1);
INSERT INTO "events_event" VALUES(59,'MasterWorks Three','2005-03-05 19:30:00',NULL,NULL,1,'',7,'</p>','masterworks-three',NULL,'',0,1);
INSERT INTO "events_event" VALUES(60,'Symphonic Pops:  Broadway, Beatles, and Beyond','2005-04-09 19:30:00',NULL,NULL,1,'',7,'<p>Featuring music from Phantom of the Opera, Les Miserables, and some of the Fab Four’s greatest hits! (Guest artists to be announced) </p>','symphonic-pops-broadway-beatles-and-beyond',NULL,'',0,1);
INSERT INTO "events_event" VALUES(61,'And the Winner Is...','2005-06-04 19:30:00',NULL,NULL,1,'',7,'<p/>','and-winner',NULL,'',0,1);
INSERT INTO "events_event" VALUES(62,'MasterWorks One:  Final Words','2003-10-18 20:00:00',NULL,NULL,1,'',8,'<p/>','masterworks-one-final-words',NULL,'',0,1);
INSERT INTO "events_event" VALUES(63,'MasterWorks Two:  The French Connection','2003-12-13 20:00:00',NULL,NULL,1,'',8,'<p/>','masterworks-two-french-connection',NULL,'',0,1);
INSERT INTO "events_event" VALUES(64,'Young People''s Concert','2004-01-10 15:00:00',NULL,NULL,6,'',8,'<p>An introduction to the orchestra for children and their parents in an informal setting. This year''s program features the Peabody Violin Choir, directed by Rebecca Henry. Come early (2-3) for the Musical Instrument Petting Zoo for a chance to hear, touch and play musical instruments! </p>','young-peoples-concert-2004-01-10',NULL,'',0,1);
INSERT INTO "events_event" VALUES(65,'MasterWorks Three:  Body, Voice and Spirit','2004-02-28 20:00:00',NULL,'2004-02-29 15:00:00',1,'',8,'<p/>','masterworks-three-body-voice-and-spirit',NULL,'',0,1);
INSERT INTO "events_event" VALUES(66,'MasterWorks Four: Wolfgang, Felix, and Igor','2004-04-17 20:00:00',NULL,NULL,1,'',8,'<p/>','masterworks-four-wolfgang-felix-and-igor',NULL,'',0,1);
INSERT INTO "events_event" VALUES(67,'Piano recital by Brian Ganz','2004-05-15 20:00:00',NULL,NULL,2,'',8,'<p/>','piano-recital-brian-ganz',NULL,'',0,1);
INSERT INTO "events_event" VALUES(68,'Symphonic Pops','2004-06-05 20:00:00',NULL,NULL,1,'',8,'<p>A fun-filled evening for the entire family, including blues, spirituals, and Gospel piano, plus film music from Harry Potter, and much more.</p>','symphonic-pops-2004-06-05',NULL,'',0,1);
INSERT INTO "events_event" VALUES(69,'Exotic Landscapes','2002-10-12 20:00:00',NULL,NULL,1,'',9,'<p/>','exotic-landscapes',NULL,'',0,1);
INSERT INTO "events_event" VALUES(70,'To The Sea','2002-12-14 20:00:00',NULL,NULL,1,'',9,'<p/>','sea',NULL,'',0,1);
INSERT INTO "events_event" VALUES(71,'A Heritage of Harmony','2003-02-15 20:00:00',NULL,NULL,1,'',9,'<p/>','heritage-harmony',NULL,'',0,1);
INSERT INTO "events_event" VALUES(72,'Young People''s Concert','2003-03-08 15:00:00',NULL,NULL,6,'',9,'<p>An introduction to the orchestra for children and their parents in an informal setting. Come early for the instrument petting zoo beginning at 2:00 PM! Free for children under 12.<p/>','young-peoples-concert-2003-03-08',NULL,'',0,1);
INSERT INTO "events_event" VALUES(73,'Russian Memories and American Dreams','2003-05-10 20:00:00',NULL,NULL,1,'',9,'<p/>','russian-memories-and-american-dreams',NULL,'',0,1);
INSERT INTO "events_event" VALUES(74,'Bits and Pieces: A Chamber Music Concert','2003-05-31 20:00:00',NULL,NULL,2,'',9,'<p>An evening of works for smaller ensembles, showcasing a variety of members and sections of the orchestra.</p>','bits-and-pieces-chamber-music-concert',NULL,'',0,1);
INSERT INTO "events_event" VALUES(75,'Symphonic Pops','2003-06-07 20:00:00',NULL,NULL,1,'',9,'<p/>','symphonic-pops-2003-06-07',NULL,'',0,1);
INSERT INTO "events_event" VALUES(76,'On a Grand Scale: Brian Ganz plays Beethoven','2001-10-13 20:00:00',NULL,NULL,1,'',10,'<p />','grand-scale-brian-ganz-plays-beethoven',NULL,'',0,1);
INSERT INTO "events_event" VALUES(77,'Young Artists and Russian Masters','2001-12-08 20:00:00',NULL,NULL,1,'',10,'<p />','young-artists-and-russian-masters',NULL,'',0,1);
INSERT INTO "events_event" VALUES(78,'Mozart and More','2002-02-09 20:00:00',NULL,NULL,1,'',10,'<p />','mozart-and-more',NULL,'',0,1);
INSERT INTO "events_event" VALUES(79,'Young People''s Concert','2002-03-03 15:00:00',NULL,NULL,7,'',10,'<p>An introduction to the orchestra for children and their parents in an informal setting. Featuring an instrument petting zoo beginning at 2:00 PM! Free for children under 12.</p>
','young-peoples-concert-2002-03-03',NULL,'',0,1);
INSERT INTO "events_event" VALUES(80,'Contemporary Classics','2002-04-27 20:00:00',NULL,NULL,1,'',10,'<p />','contemporary-classics',NULL,'',0,1);
INSERT INTO "events_event" VALUES(81,'American Pops','2002-05-25 20:00:00',NULL,NULL,7,'',10,'<p />','american-pops',NULL,'',0,1);
INSERT INTO "events_event" VALUES(82,'Columbia Orchestra Piano Trio','2011-02-26 19:30:00',NULL,NULL,8,'',2,'<p>Join the Columbia Orchestra Piano Trio for a special recital Saturday, February 26, 2011 at 7:30 pm at Paint Branch Unitarian Universalist Church. Concertmaster Brenda Anna, pianist Nancy Smith, and Music Director and cellist Jason Love perform Ravel''s First Violin Sonata, Shostakovich''s Cello Sonata, and the Second Piano Trio by Mendelssohn. Free admission (donations accepted).</p>','columbia-orchestra-piano-trio',NULL,'',0,2);
INSERT INTO "events_event" VALUES(83,'Chamber Concert Three: The Light and the Dark','2011-05-21 19:30:00',NULL,NULL,2,'',2,'<p>The enchanting lyricism of Ravel''s First Violin Sonata -- discovered long after his death -- opens a program whose emotions range from the tragic to the ebullient! Written shortly before the Fifth Symphony, Shostakovich''s Cello Sonata explores dark, intense terrains alongside whimsical dancing in this virtuosic masterpiece. Finally, orchestra members Paul Li, violin, and Robin Strempek, viola, join the <a href="/artists/columbia-orchestra-piano-trio/"> Columbia Orchestra Piano Trio</a> – Concertmaster <a href="/members/brenda_anna/"> Brenda Anna,</a> violin, Music Director <a href="/members/jason_love/">Jason Love,</a> cello, and orchestra pianist <a href="/members/nancy_smith/">Nancy Smith</a> – for one of the great chamber works of all time, Schumann''s Piano Quintet.</p>

<p><em>This performance will last approximately one-and-a-half hours with one 15-minute intermission. Free admission; donations accepted.</em></p>','chamber-concert-three-light-and-dark',NULL,'',0,2);
INSERT INTO "events_event" VALUES(84,'Sunset Serenade Concert in the Park','2011-06-29 19:00:00',NULL,NULL,9,'',2,'<p>Pack a picnic, bring a blanket, and come on out for a fun-filled, free concert for the entire family. Enjoy music from Hollywood blockbuster films like Star Wars, Harry Potter, and Pirates of the Caribbean, and lots of other pops classics including Tchaikovsky''s 1812 Overture!
</p>','sunset-serenade-concert-park',NULL,'src_imgs/events/brass.jpg',1584,1);
INSERT INTO "events_event" VALUES(85,'Higdon and Tchaikovsky','2011-10-15 19:30:00',NULL,NULL,1,'',11,'<p>Winner of the 2010 Pulitzer Prize for her Violin Concerto, Jennifer Higdon has created a Percussion Concerto that elicits standing ovations wherever it is performed! It is "full of joyous music making, a wondrous world of sounds and colors, thrilling in its epic sections and mesmerizing in intimate moments." <em>(News and Observer)</em> Tchaikovsky''s Fifth Symphony is one of his most powerful statements in this form, and Copland''s historic <em>Fanfare</em> rounds out the program.</p>','higdon-and-tchaikovsky',NULL,'',0,1);
INSERT INTO "events_event" VALUES(86,'Final Words','2011-12-03 19:30:00',NULL,NULL,1,'',11,'<p>Two very different Romantic masters share their last musical thoughts on this program. The other movements of Mahler''s Tenth Symphony may have been left incomplete at his death, but the symphony''s powerful first movement stands alone as a profound final utterance. The Heritage Signature Chorale under the direction of Stanley Thurston joins the orchestra for Verdi''s last completed work: the "Stabat Mater" from <em>Four Sacred Pieces</em>. As champions of African-American composers, the Chorale also brings special insight and passion to an uplifting cantata by Adolphus Hailstork.</p>','final-words',NULL,'',0,1);
INSERT INTO "events_event" VALUES(87,'American Inspirations','2012-02-04 19:30:00',NULL,NULL,1,'',11,'<p>Inspired by his travels in America, Dvořák''s Cello Concerto caused Brahms to exclaim, "If I had known it was possible to compose such a concerto for the cello, I would have tried it myself!" Copland’s "Ballet for Martha" Graham remains one of the most famous and moving works in American music. The program begins with the winning work from the American Composer Competition, selected from over 100 entries from composers across the country.</p>','classical-concert-3-2012',NULL,'',0,1);
INSERT INTO "events_event" VALUES(88,'Young People''s Concert','2012-02-25 12:30:00','15:00:00',NULL,1,'',11,'<p>The Kinetics Dance Theatre joins us for Saint-Saens enduring classic, <em>Carnival of the Animals</em>.  Students will love this exploration of the orchestra and can try their hand at playing many of the instruments at our Musical instrument petting zoo from 1:30 to 3:00 p.m. sponsored by Music & Arts. <span style="font-size: 75%">[photo by Kitty R Photography]</span></p>','young-peoples-concert-2012',NULL,'',0,1);
INSERT INTO "events_event" VALUES(89,'Symphonic Pops','2012-03-17 19:30:00',NULL,NULL,1,'',11,'<p>Broadway''s greatest showtunes, blockbusters from the silver screen, popular hits, and <em>An Irish Spectacular</em> featuring members of the Teelin Irish Dance Company.</p>','symphonic-pops-2012',NULL,'',0,1);
INSERT INTO "events_event" VALUES(90,'Orchestral Fireworks','2012-06-02 19:30:00',NULL,NULL,1,'',11,'<p>The orchestra bursts out in dazzling colors for this virtuosic, family-friendly event. Classics by Beethoven and Rimsky-Korsakov are paired alongside thrilling new works by Zhou Tian and Arturo Márquez, and the astonishing talents of our Young Artist Competition winners help bring the season to a powerful close.</p>','orchestral-fireworks',NULL,'',0,1);
INSERT INTO "events_event" VALUES(91,'Chamber Concert One','2011-10-29 19:30:00',NULL,NULL,2,'',11,'<p>The amazing talents of our orchestra members are on display when they come together in chamber ensembles. Hear some of the great works of the chamber literature up close in a beautiful, intimate setting. These concerts are FREE and no seat reservation is required. (Donations to support the series are gladly accepted.)</p>','chamber-concert-one-2011',NULL,'src_imgs/events/Str_Qtet_5.jpg',342,2);
INSERT INTO "events_event" VALUES(92,'Chamber Concert Two','2012-03-31 19:30:00',NULL,NULL,2,'',11,'<p>The amazing talents of our orchestra members are on display when they come together in chamber ensembles. Hear some of the great works of the chamber literature up close in a beautiful, intimate setting. These concerts are FREE and no seat reservation is required. (Donations to support the series are gladly accepted.)</p>','chamber-concert-two-2012',NULL,'src_imgs/events/Str_Qtet_6.jpg',0,2);
INSERT INTO "events_event" VALUES(93,'Chamber Concert Three: Columbia Orchestra Piano Trio','2012-05-12 19:30:00',NULL,NULL,2,'',11,'<p> Join the Columbia Orchestra Piano Trio - <a href="/members/brenda_anna/">Brenda Anna</a>, violin, <a href="/members/nancy_smith/">Nancy Smith</a>, piano, and <a href="/members/jason_love/">Jason Love</a>, cello - for a marvelous program including the virtuosic Handel-Halvorsen Passacaglia, a richly romantic piano trio by Armenian composer Arno Babajanian, and Dvorak''s marvelous Piano Quintet in A Major with guests <a href="/members/robin_strempek/">Robin Strempek</a> and <a href="/members/paul_li/">Paul Li</a>.</p>

<p>These concerts are FREE and no seat reservation is required. (Donations to support the series are gladly accepted.)</p>','chamber-concert-three-columbia-orchestra-piano-tri',NULL,'src_imgs/events/CO_Piano_Trio2_1.jpg',0,2);
CREATE TABLE "events_preconcertdiscussion" (
    "id" integer NOT NULL PRIMARY KEY,
    "time" time NOT NULL,
    "speaker" varchar(100) NOT NULL,
    "talk_location" varchar(200) NOT NULL,
    "sponsor" varchar(150),
    "youtube_embed_code" text
);
INSERT INTO "events_preconcertdiscussion" VALUES(1,'18:30:00','Bill Scanlan Murphy','Mini Theatre off the Rouse Theatre main lobby','BWFA','');
CREATE TABLE "roster_instrument" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(120) NOT NULL
, "order" INTEGER DEFAULT '0' NOT NULL);
INSERT INTO "roster_instrument" VALUES(1,'First Violin',1);
INSERT INTO "roster_instrument" VALUES(2,'Second Violin',2);
INSERT INTO "roster_instrument" VALUES(3,'Viola',3);
INSERT INTO "roster_instrument" VALUES(4,'Cello',4);
INSERT INTO "roster_instrument" VALUES(5,'Bass',5);
INSERT INTO "roster_instrument" VALUES(7,'Oboe',9);
INSERT INTO "roster_instrument" VALUES(8,'English Horn',10);
INSERT INTO "roster_instrument" VALUES(9,'Clarinet',11);
INSERT INTO "roster_instrument" VALUES(10,'E-Flat Clarinet',12);
INSERT INTO "roster_instrument" VALUES(11,'Bass Clarinet',14);
INSERT INTO "roster_instrument" VALUES(12,'Bassoon',19);
INSERT INTO "roster_instrument" VALUES(13,'Contrabassoon',20);
INSERT INTO "roster_instrument" VALUES(14,'Horn',21);
INSERT INTO "roster_instrument" VALUES(15,'Trumpet',22);
INSERT INTO "roster_instrument" VALUES(16,'Bass Trumpet',23);
INSERT INTO "roster_instrument" VALUES(17,'Trombone',24);
INSERT INTO "roster_instrument" VALUES(18,'Bass Trombone',25);
INSERT INTO "roster_instrument" VALUES(19,'Tuba',27);
INSERT INTO "roster_instrument" VALUES(20,'Percussion',31);
INSERT INTO "roster_instrument" VALUES(21,'Timpani',30);
INSERT INTO "roster_instrument" VALUES(22,'Piano/Keyboard',29);
INSERT INTO "roster_instrument" VALUES(23,'Alto Flute',8);
INSERT INTO "roster_instrument" VALUES(24,'Harp',28);
INSERT INTO "roster_instrument" VALUES(25,'Tenor Saxophone',17);
INSERT INTO "roster_instrument" VALUES(26,'Assistant Conductor',35);
INSERT INTO "roster_instrument" VALUES(27,'Music Director',36);
INSERT INTO "roster_instrument" VALUES(28,'Executive Director',37);
INSERT INTO "roster_instrument" VALUES(29,'Flute',6);
INSERT INTO "roster_instrument" VALUES(30,'E-Flat, Bass Clarinets',13);
INSERT INTO "roster_instrument" VALUES(31,'Piccolo',7);
INSERT INTO "roster_instrument" VALUES(32,'Soprano Saxophone',15);
INSERT INTO "roster_instrument" VALUES(33,'Alto Saxophone',16);
INSERT INTO "roster_instrument" VALUES(34,'Baritone Saxophone',18);
INSERT INTO "roster_instrument" VALUES(35,'Tenor Tuba',26);
INSERT INTO "roster_instrument" VALUES(36,'Music Librarian',32);
INSERT INTO "roster_instrument" VALUES(37,'Personnel Manager (Winds, Brass, Percussion)',33);
INSERT INTO "roster_instrument" VALUES(38,'Personnel Manager (Strings)',34);
CREATE TABLE "roster_orchestramember" (
    "id" integer NOT NULL PRIMARY KEY,
    "first_name" varchar(100) NOT NULL,
    "middle_name" varchar(100) NOT NULL,
    "last_name" varchar(100) NOT NULL,
    "instrument_id" integer NOT NULL REFERENCES "roster_instrument" ("id"),
    "principal" bool NOT NULL,
    "concertmaster" bool NOT NULL,
    "concertmistress" bool NOT NULL,
    "bio" text NOT NULL,
    "photo" varchar(100),
    "num_views" integer unsigned NOT NULL,
    "noncurrent_member" bool NOT NULL
, "second_instrument_id" integer REFERENCES "roster_instrument" ("id"));
INSERT INTO "roster_orchestramember" VALUES(1,'David','','Zajic',3,1,0,0,'<p>I joined the Columbia Orchestra in 1994, and became the principal 
violist in 1999.  I started playing viola in third grade, when I was 
advised that if I wanted a really special instrument, I should choose 
the viola, because orchestras always need violists.  Later I studied 
with Julia Barker, former member of the Baltimore Symphony, and Miles 
Hoffman, director of the American Chamber Players and NPR music 
commentator.  I studied composition, conducting, and computer science at 
Oberlin College.  I was the assistant conductor of the Columbia 
Orchestra from 1996 to 1999, and since 1998 I have been the music 
director and conductor of the Howard County Ballet Orchestra.  The 
Columbia Orchestra has performed two of my compositions: A Goblin''s 
Trick Overture (1996) and Chanukah Fantasia (1999).  I directed the Beth 
Tfiloh Synagogue Men''s Choir from 1998-2005.  I also run the Columbia 
Orchestra''s biennial American Composer Competition and serve on the 
board of directors.  In real life, I hold a Ph.D. in Computer Science 
from the University of Maryland, and I work as a research scientist in 
the field of Computational Linguistics at the University of Maryland 
Center for Advanced Study of Language.</p>','src_imgs/members/Zajic.jpg',4558,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(2,'Andrea','','Aldrich',3,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(3,'Edward','Jean','Welker',4,1,0,0,'<p>OOOooooOOO, I have my own biography? Who let that happen???</p>

<p>Hi, my name is listed above, as is my favorite instrument, the oboe.  Ok, that''s not exactly true, I play the cello and it is by far my favorite instrument.  No offense to Saint-Saëns'' Act 3 Scene 2, I still love you oboe!  Must be something about the O''s.</p>

<p>In elementary school, the music teacher came in and demonstrated all of the string instruments to the class. I heard the cello and went home to tell my parents I wanted to play that night.  This is from a person indecisive enough to take years before deciding to play baseball as a kid.</p>

<p>I''ve got Rostropovich''s autograph stashed away somewhere, own the scores to Prokofiev 2, 4, 5, and 6, a rare English biography of Miaskovsky, and a book of Alfred Brendel''s poetry.  My parents met singing Beethoven 9, and my dad once had lunch with Messaien.  (Though my grandfather once had a steak with Ted Williams.)  I like everything about music except Lalo and Yo-Yo, so it must again be something about the O''s.  (But I still love you <a href="http://en.wikipedia.org/wiki/Ottorino_Respighi">Ottorino</a>!)</p>

<p>As Clark Kent, I am a nerd.  My day job is writing websites, specifically <a href="http://www.pubmed.gov">PubMed</a>.  In my spare time I revel in any hobby I can concoct, be that music, photography, cycling, or... other <a href="http://eddiewelker.com" rel="me">nerd things</a>.</p>

<p>Since there is literally nothing else about me... time for music shout-outs! Big props to my old quartet (Peggy, Mollie & Ariel!), my cello friends (Kacy, Kristen), my music friends [yes, IN order!] (Andrea, Ashleigh, Cameo, Celia, Enoch, Jerome, Robin [the oldest], and Val [the newest]), my orchestras, GBYO & UMD, and Jason, my sisters, and... everyone else I missed and cause trouble with!</p>','src_imgs/members/EddieWelker.jpg',5634,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(4,'Brenda','','Anna',1,0,0,1,'<p>Brenda Anna, violinist, attended the Peabody Conservatory of Johns Hopkins University, where she studied with Yong Ku Ahn, Charles Libove, and David Geber of the American String Quartet. She has also studied and participated in workshops with Elisabeth Adkins and Arnold Steinhart.</p>

<p>She currently serves as concertmaster of the Columbia Orchestra and is a member of the National Philharmonic. In addition, Brenda is a busy freelance performer in the Baltimore/Washington area. A member of the Quinten String Quartet, Ms. Anna has also performed with the Dickinson Piano Quartet, the Gallery Quartet, and the Riversdale Chamber Ensemble.</p>

<p>Ms. Anna has performed as soloist with the Mid-Atlantic Symphony, the Annapolis Chamber Orchestra, the Chamber Orchestra of Southern Maryland, the Prince Georges Philharmonic, the Prince Georges Symphony, the Arundel Summer Orchestra, the Messiah College Orchestra, and the Columbia Orchestra. She teaches in her private studio, and is a member of the faculty of Princeton Chamber Music Playweek in Lexington, VA, a summer program for adult amateur chamber musicians. </p>','src_imgs/members/Brenda_Anna_8x10.jpg',5919,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(5,'Sarah','','Prindiville',4,0,0,0,'','src_imgs/members/Sarah_Prindiville.jpg',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(6,'Arthur','','Fleming',4,0,0,0,'<p>A graduate of Centennial High School and the University of Maryland, I have been playing cello in the Columbia Orchestra since 2002.  I have also played with the UMBC Orchestra, the St. Paul''s Summer String Orchestra, and the Howard County Ballet Orchestra.  I work for Constellation Energy (Print and Digital Media Division), and I live in Mount Washington with my girlfriend, CO violinist Casey Kraft, our dog Darby, and our cat Fiona.</p>','src_imgs/members/Arthur_Fleming.JPG',1228,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(7,'Jason','','Love',27,0,0,0,'<p>Praised for his "intelligent and innovative programming," Jason Love has brought his inspiring demeanor and enormous energy to several of Maryland''s great cultural institutions. Under his leadership, the <em>Baltimore Sun</em> has called The Columbia Orchestra "Howard County''s premier ensemble for instrumental music," noting that "Love has the musicians playing not only with verve and passion, but with an awareness to enter into the emotional core of the works they perform."</p>

<p>Love’s twelve-year tenure as Artistic Director and Conductor of the Greater Baltimore Youth Orchestra Association was marked by continuous growth in the success and prestige of this organization. He commissioned new works, forged partnerships with other arts organizations, extended the orchestra’s community outreach programs and conducted highly successful tours of Austria, Japan, and Russia.</p>

<p>As a conductor and cellist, Mr. Love served for five years as Music Director for the New Horizons Chamber Ensemble, a contemporary music group based in Baltimore, MD. Under his leadership, the NHCE gave dozens of local and world premieres and became a unique resource for contemporary music in the area. Mr. Love is also active as a cellist, performing frequently in Maryland and across the United States. He recently gave the NC premiere of Tan Dun''s multi-media cello concerto, <em>The Map</em>.</p>

<p>A highly respected educator, Mr. Love also served as Conductor of the Chesapeake Youth Repertory Orchestra in <a href="/images/mullet.jpg" style="color:#000;cursor:text;text-decoration:none;">Annapolis, MD</a> for four years. In his eleven years on the faculty of the Governor''s School of North Carolina, he taught Twentieth-Century music to academically gifted high school students and lectured extensively on music and culture in our time. Not content to limit his educational endeavors to young people, he has lectured at many institutions including the Johns Hopkins University, the Baltimore Symphony and the Peabody Elderhostel program. He is a frequent panelist on the popular radio program, "Face the Music," on WBJC-FM in Baltimore, MD.</p>

<p>Recent and upcoming guest appearances find him conducting a variety of ensembles such as the Baltimore Symphony, Washington Sinfonietta (DC), Bismarck Symphony, and RUCKUS, a contemporary music ensemble at the University of Maryland, Baltimore County where he also teaches conducting. Aside from classical music he performs with singer-songwriter Angela Taylor and can be heard on singer-songwriter Sahffi''s upcoming album <em>Turning Tides</em>.</p>

<p>Born in Burlington, North Carolina, Love studied violoncello with Ronald Thomas and conducting with Frederik Prausnitz at the Peabody Conservatory. He is Past President of the Peabody Alumni Association.</p>','src_imgs/members/Jason_Love.jpg',6444,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(8,'Alison','','Candela',1,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(9,'Mike','','Catelinet',1,0,0,0,'<p>Columbia Orchestra member since: 2004</p>

<p>
What do you do for a living?
I work as an engineer for a naval architecture firm in suburban Baltimore.</p>

<p>Where else do you play?
Besides Columbia, I regularly play with the Howard County Ballet Orchestra and the Greenspring Valley Orchestra. I have also played in the Baltimore Philharmonia Orchestra, the Chamber Orchestra of Mt. Vernon Place, the UMBC Symphony, and the Johnstown (PA) Symphony Orchestra.</p>

<p>Who else in your family is a musicians?
My older brother plays viola in the New York Repertory Orchestra and my mother is the second clarinetist of the Johnstown (PA) Symphony Orchestra. My grandfather, Philip, was a composer and the dedicatee of Ralph Vaughan-Williams'' Tuba Concerto.</p>

<p>Where did you go to school and what did you study?
Mechanical Engineering at Carnegie Mellon University</p>

<p>With whom have you studied?
I currently study with Melina Gajger of the Peabody Conservatory. My previous teacher was Stanley Chepaitis of the Indiana University of Pennsylvania.</p>

<p>Favorite Columbia Orchestra concert and why?
Sharing the stage with Mark O''Connor was unforgettable, because of the virtuosity and energy he brings to every performance.</p>

<p>What are your favorite composers or pieces?
Large-scale pieces like the tone poems of Richard Strauss and the symphonies of Nielsen and Shostakovich.</p>

<p>What’s on your iPod?
A lot of violin music, of course (who knew that Mendelssohn wrote *two* violin concerti?). Ever since reading "The Rest is Noise", I''ve been listening to more 20th-Century music, including composers like John Adams, Steve Reich, and Michael Torke. I also have a lot of progressive/"symphonic" rock left over from my college days.</p>

<p>Last book you read?
_Physics of the Impossible_, by Michio Kaku</p>

<p>Favorite TV shows?
"Good Eats", "Mythbusters", and "Ace of Cakes"</p>

<p>Other surprising facts about you?
I earned a private pilot''s license (airplane, single-engine, land) in 2002. I have also been teaching myself computer science and have contributed to several online open-source software projects.</p>','src_imgs/members/MikeCatelinet.jpg',4417,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(10,'Naomi','','Chang-Zajic',1,0,0,0,'<p>Naomi Chang Zajic, violin, has been a member of the Columbia Orchestra since 2001 and a member of the Board of Directors since 2004. Coming from a non-musical family, she began learning the violin at age 8 and continued learning through the public school system while growing up in Salt Lake City, Utah. Her previous teachers include John Englund, formerly of the Boston Symphony, and José Miguel Cueto, currently of the Concert Artists of Baltimore. Naomi holds a bachelor’s degree in Biological Sciences and a master’s degree in Professional Writing. She is a technical writer and editor for an engineering firm in the Baltimore-Washington area.</p>','src_imgs/members/NZajic.jpg',4634,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(11,'Erin','','Chester',1,0,0,0,'<p>I received a Bachelor''s of Music Education from Ithaca College School of Music in 2002.  I received a Masters of Arts degree from University of Maryland College Park in 2008.  I have been teaching instrumental music at Old Mill Middle School South in Millersville, MD since 2002.  I have been playing violin for over 20 years and enjoy playing with the orchestra.</p>','',347,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(12,'Matthew','','DeBeal',1,0,0,0,'','src_imgs/members/Matthew_DeBeal.jpg',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(13,'Susan','','Dudley',1,0,0,0,'<p>Columbia Orchestra Member Since: 2002 </p>

<ul>
<li>I started playing the violin in the 3rd grade thanks to my sister, fellow violinist Robin Strempek.</li>
<li>Aside from Orchestra, I am a HUGE football fan and a member of Baltimore’s Marching Ravens. I’m on the flagline and have been a member since 2006.</li>
<li>I have a Bachelor’s degree from Towson University where I majored in Visual Arts. I also have a Master’s in Business Administration from the University of Maryland.</li>
<li>During the day I work for the Federal Government as an I.T. Specialist. I mainly work on software validation.</li>
</ul>

<p>Fun Fact #1 = I am a certified scuba diver.</p>

<p>Fun Fact #2 = I like to travel. So far I’ve been to Asia, Europe, the Caribbean and N. Africa.</p>

<p>Fun Fact #3 = I love going to rock concerts on my free time. I have been to a rock concert each month since October 2008.</p>','',1782,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(14,'Casey','','Kraft',1,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(15,'Bruce','','Kuehne',1,0,0,0,'<p>Columbia Orchestra Member Since:  1978</p>

<p>I’ve always loved classical music (even at the age when normal kids were gaga over the Beatles and Rolling Stones).  I started playing the violin in the summer between third and fourth grade.  I’ve played in orchestras ever since, all through junior and senior high school, college (Purdue), and since the first year of the Columbia Orchestra’s existence.  Being able to touch the music first-hand gives me an increased appreciation of the music, and being enveloped by the music provides a thrill that cannot be realized by simply listening through speakers or (heaven forbid) earbuds.</p>

<p>I enjoy all types of classical music, but my real joy is music of the 20th (and now 21st) Century, especially the Russians (Shostakovich, Schnittke), Americans (Corigliano, Rouse, Glass), and Scandinavians (Sibelius, Nielsen, Sallinen).  I also occasionally listen to so-called popular music (Joe Jackson, Pat Metheny, and yes, the Beatles), but I return to classical music because the complexity holds my interest.</p>

<p>My day job involves way too many hours each week doing program management at the Johns Hopkins University Applied Physics Lab.  When not working or playing/listening to music, I watch movies (Blood Simple, 12 Monkeys, Apocalypse Now, and more recently Up in the Air).  My wife (of 33 years) and I also like to hike (we just spent a long weekend at Shenandoah National Park) and watch TV (Modern Family, Better off Ted, The Good Wife).  In addition, as president of the Columbia Orchestra and Chairman of the Finance Committee, I spend time on orchestra-related administrative activities.  And every so often, we visit with our daughter Valerie, who is trying to succeed as a freelance cellist playing classical, popular, experimental music on the New York Scene.</p>','src_imgs/members/BruceKuehne.jpg',4509,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(16,'Paul','','Li',1,0,0,0,'','',18,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(17,'Sara','','Reimers',1,0,0,0,'<p>I have played the violin since I was 8 years old (with a 10 year break that coincided with my military service) and this is my 3rd full season with the Columbia Orchestra. The most unique violin experience I ever had was when I studied abroad during college. I was enrolled in a French Service-Learning program in Montpellier, France. Montpellier is a beautiful and very old town in the South of France that still boasts a medieval city centre with cobbled stone streets. Halfway through my semester, I realized I had run out of money (Yipes!) so I decided to play on the street to raise travel cash. I played almost every day for about a month and ended up with enough money to go to Paris.</p>
 
<p>When I am not playing with the Columbia Orchestra or busy with my day job, I am perfectly content to spend a quiet evening at home with my husband and 7-year old Black Lab. Otherwise, I am very active in the Laurel Church of Christ, love to scrapbook and make cards, and try to travel as much as our family budget and vacation days will allow.</p>','src_imgs/members/Sara_Reimers.jpg',3591,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(18,'Helen','','Rohleder',1,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(19,'Robin','','Strempek',1,0,0,0,'<p>Columbia Orchestra Member Since: 2003</p>

<p>How long you have played? Since 1988.</p>

<p>Other instruments played? Viola and a little of everything</p>

<p>What do you do for a living? I taught orchestra for Baltimore County Public Schools at Ridgely Middle School for 7 years. Now I am a systems analyst for the Federal Government. Big change, but loving it so far.</p>

<p>Where did you go to school and study? Annapolis High School 1996, Towson University 2002 Bachelor of Science in Music Education, and Boston University 2009 Masters of Music in Music Education.</p>

<p>Why did I join the orchestra? Who wouldn’t want to work with a crazy and talented conductor like Jason? Plus we play awesome pieces.</p>

<p>Favorite books: I have been reading business books and Nicholas Sparks novels lately.</p>

<p>Favorite composer: Russian composers.</p>

<p>Interesting Fact #1: I have an advance open water SCUBA license.</p>

<p>Interesting Fact #2: I earned a black belt in Tae Kwon Do when I was in middle school.</p>

<p>Interesting Fact #3: I have traveled to South Korea, Iceland, England, Wales, Scotland, Czech Republic, Bratislava, and Austria.</p>','src_imgs/members/Robin_Strempek.jpg',3869,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(20,'Annette','','Szawan',1,0,0,0,'<p>Grew up in Canton, Ohio and attended Baldwin-Wallace Conservatory of Music earning a Bachelor of Music Education degree. Went on to graduate school to receive a Masters of Music Education from Kent State University.</p>

<p>Presently an Orchestra Director in Howard County Schools for 22 years. Was director of Elementary Enrichment G/T Orchestra for 20 years. Was selected for Who''s Who Among America''s Teachers in 2004.</p>

<p>Chair for the Columbia Orchestra''s Young Artist Competition and is an active Adjudicator for Orchestra Festivals, All-State Auditions, and Solo & ensemble Events throughout the state.</p>

<p>Has played first violin in the Columbia Orchestra for 20 years and still loves every minute of it!!</p>

<p>Loves to relax with a good Sci-Fi movie/tv series. Resides in Ellicott City with husband, bernie, and has a daughter living in Florida.</p>','src_imgs/members/Annette_Szawan2.jpg',3848,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(21,'Jon','','Teske',1,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(22,'Tim','','Topoleski',1,0,0,0,'','src_imgs/members/Tim_Topoleski.jpg',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(23,'Chris ','','Nibali',2,1,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(24,'Viviana','','Acosta',2,0,0,0,'<p>After a disastrous attempt at learning piano at age 4 which ended in tears, my father said to me at age 7, "Pick an instrument." I remember watching Sesame Street at the time and Sarah Chang was playing her little prodigy heart out during a commercial break. I thought, she''s my age and it looks easy. Avoiding another argument about my then proven musical inability, I responded, "Violin." The very next day with my rented 1/4 size violin, I arrived at Settlement Music School in Jenkintown, PA, a suburb of Philadelphia. 

After a few years of being relegated to the garage behind soundproof walls, my squeaky bowings eventually turned into palatable musical tones. Still, I hated individual recitals and nearly gave up playing because of my petrifying stage fright as a soloist. Thankfully, I learned to love the violin when I joined my first chamber group and discovered the beauty in group melodies. Two years later, I joined my first orchestra.</p>

<p>Since then, I continued playing throughout high school and at the University of Pennsylvania in various orchestral and chamber groups. I was lucky enough to receive instruction by Ghislaine Fleshman, a member of the Philadelphia Orchestra. After college, I played in the Mainline Symphony Orchestra before moving from Philadelphia to the Columbia area and joined the Columbia Orchestra in 2009.</p>

<p>I am grateful for the opportunities a musical education provided me and believe music was a key factor in keeping me from falling into the pitfalls of an urban environment as an adolescent.</p>','',1472,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(25,'Jonathan','','Chang',2,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(26,'Jacquelyn','','DeBella',2,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(27,'Meg','','Glenn',2,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(28,'Heidi','','Goldberg',2,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(29,'Ariela','','Haber',2,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(30,'Sheila','','Hrapchak',2,0,0,0,'<p>Graduate of Mansfield (PA) University [BS in Music Ed] and Indiana University of PA [MS in Music Ed]</p>

<p>I have played in orchestras, each rehearsing on Monday evenings, every year since college: </p>
<ul>
<li>Mansfield Symphony Orchestra</li>
<li>Elmira (NY) Symphony</li>
<li>University of Missouri Orchestra</li> 
<li>Columbia Orchestra</li>
</ul>

<p>Originally from Pennsylvania, I currently live in Columbia with my husband John, and work at Travelers Insurance Company.</p>

<p>I also direct our church choir, and give piano lessons.</p>','src_imgs/members/SheilaHrapchak.jpg',4262,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(31,'Jeeyun','','Kim',2,0,0,0,'<p>I started playing the violin in 5th grade through my elementary school''s program.  Mr. Jan Turkiewicz taught me many things about music and math during private violin lessons from 8th through 11th grade.  Then, I studied violin for a year with Dr. Ronald Francois who taught me to always find a story in the music.</p>

<p>After high school, I put the violin on the back burner while getting my degree in electrical engineering.  I''m happy to be playing regularly again, after a long 14 year hiatus, with this orchestra.  I particularly appreciate the arrhythmic modern music we play, because it has forced me to learn to count my music better.</p>

<p>alter ego when not in orchestra: tools designer for plasma (physics) research, calligrapher.</p>
<p>hobbies: knitting, sewing, building speakers, ice cream, collecting stationery.</p>

<p>music likes: Andrew Bird, Bach, Bizet, Ida, Jack Johnson, Prokofiev, Rachmaninoff, Radiohead, Schubert, Shostakovich.</p>
<p>music hates: Andrew Lloyd Webber and polka.</p>
<p>favorite music played: Ravel''s Mother Goose Suite, Kabalevsky''s Colas Breugnon overture.</p>','src_imgs/members/Jeeyun_Kim.JPG',3757,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(32,'Tanesha','','Mitchell',2,0,0,0,'','src_imgs/members/Tanesha_Mitchell.jpg',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(33,'Stuart','','Silver',2,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(34,'Dorothy','','Elkin',3,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(35,'J.','Patrick','Femiano',3,0,0,0,'<p>I''m Patrick Femiano and I am a member of the viola section of the Columbia Orchestra. I have been with the orchestra since 1986.</p>

<p>My musical experience started out as a second violinist in the Montgomery College Orchestra of Rockville. After hearing the sound of a solo viola at a wedding though I turned my attention to the  study that instrument in 1984.</p>

<p>Along with playing the orchestral repetoire for the viola I had my first theatrical experience playing in a production of OKLAHOMA. Working with singers and  the stage proved to be a valuable learning experience. I also had the opportunity to play some of the Gilbert and Sullivan operettas.</p>

<p>Many of my summers were spent in music camps that specialized in playing the chamber music of great composers from Haydn to Schubert.</p>

<p>After years of playing these different genres of music, I have to say that playing the full orchestral works of the great compers such as Mozart, Beethoven, Tchaikovsky is a source of great satisfaction and I am glad that the Columbia Orchestra makes this music available to our community.</p>','src_imgs/members/PatrickFemiano.jpg',4678,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(36,'Chris','','Gosper',3,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(37,'Susan','','Laessig',3,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(38,'Bruce','','Newhall',3,0,0,0,'<p>In the fall of 1980 I joined the Columbia Chamber Orchestra, which was the string orchestra predecessor to the Columbia Orchestra.  Unlike most violists, I never played violin; I started on viola in 5th grade.  I have a PhD in Applied Mathematics from Rensselaer Polytechnic, and played in their orchestra during my undergraduate years.  I am employed at the Johns Hopkins Applied Physics Lab, where I am the Chief Scientist for the Maritime Security and Technology Program Area.  That means that I conduct research and development of Navy sonar systems and countermeasures against foreign sonars.  My wife, Elaine, is the principal flutist for the Columbia Orchestra, and my daughter, Katie, played cello in the orchestra when she was in high school.  When I’m not working or practicing music, I enjoy outdoor activities, especially fossil collecting, canoeing, and hiking.</p>','src_imgs/members/BruceNewhall.JPG',4296,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(39,'Alison','','Pack',3,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(40,'Margaret','','Pooler',3,0,0,0,'','src_imgs/members/Margaret_Pooler.jpg',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(41,'Julie','','Schwartz',3,0,0,0,'<p>Julie loves classical music and takes great joy in being one small part of a large orchestra.</p>','src_imgs/members/Julie_Schwartz.jpg',1645,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(42,'Annemarie','','Scimonelli',3,0,0,0,'<p>Annemarie Scimonelli</p>

<p>Columbia Orchestra Member Since: 2002, I think? </p>

<p>Favorite Instrument: Cello, I would have played it but my hands are too small</p>

<p>Fun Fact: I am a nut for anything Harry Potter</p>

<p>I have been playing the viola for about 25 years.  I love playing this instrument because violists are usually a down-to-earth, laid-back group and the music written for the viola is unique and interesting.  I will definitely never forget the string quartet I gigged with in high school.  We played in beautiful, old churches, malls, and even in the frozen food section of a grocery store (with a guy dressed up as a chicken conducting)!</p>
 
<p>As a child my parents encouraged my love of classical music.  My sister (she played the violin) and I listened to cassette tapes of composer biographies on family vacations and we even had a memory card game with composers and their most well-known pieces!</p>

<p>My favorite composer is Antonin Dvorak because he played the viola, and he wrote music inspired by the common man of his home country.  My favorite symphony is Tchaikovsky''s Pathetique Symphony #6.</p>

<p>I cherish Monday nights with the Columbia Orchestra.  I can get away from my real life as a Human Resources Manager and do what I really love.  It feeds my soul.</p>','src_imgs/members/AnnemarieScimonelli.jpg',4515,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(43,'Pamela','','Truitt',3,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(44,'Dottie','','Wayne',3,0,0,0,'<p>Columbia Orchestra member since 1998.</p>

<p>Growing up in Pittsburgh, PA, Dottie Wayne started on the violin at age 8, but switched from Violin I to Viola in her senior year of high school when its 2 violists graduated and the orchestra became “viola-less.”  She has never looked back!  Since moving to Maryland, following graduation from Dickinson College (and playing in the college orchestra), she played in the Prince Georges Symphony/Philharmonic (16 years), for Gilbert and Sullivan operettas, and for sundry other small musical groups.  After leaving the Prince Georges Philharmonic and before starting with the Columbia Orchestra, Dottie sang with groups such as the New Century Singers (5 years) and Elkridge Sweet Adeline Chorus (10 years). Currently, she sings with the Showtime Singers in addition to playing in the Columbia Orchestra.  Music, in some form, has always been a part of her life.</p>

<p>In her non-musical life, Dottie retired in 2004 after 36 years of Federal Government service.  She lives in Ellicott City with her husband, Larry. They are Co-Directors of the Central Maryland Chapter of Tasters Guild, International, a society of wine and food enthusiasts.  When not engaging in things musical or oenological, Dottie does research on her family genealogy, travels, reads books, solves crossword puzzles, and keeps up with the activities of their blended family of 3 adult children.</p>

<p>Memorable musical experience:  It was when she and her husband were living in Zagreb, Croatia.  She played regularly in a quartet with a flutist (Argentinean), violinist (German), cellist (Croatian), and herself.  It was quite a challenge trying to communicate - using English and Croatian as the common denominators - plus learning the different European musical notations and expressions!</p>

<p>Fun fact you may not know:  Dottie made the viola that she plays in the Columbia Orchestra.  She topped it in 1976.  It is now older than many of the young orchestra members!</p>','src_imgs/members/Dottie_Wayne.jpg',3328,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(45,'Penny','','Zahn',3,0,0,0,'<p>
I began playing in Elementary school over 40 years ago with a public school teacher named Mr. Dyer.  I continued playing in the school orchestras until I went off to college where I found that I fit right into the college orchestra, without ever having a private lesson!
</p>

<p>
The viola sat unused for about 5 years before I discovered a small string group called the Columbia Chamber Orchestra in Columbia, Maryland in 1986.  We were small enough to have practice in the basement of the director!
</p>

<p>
It has been a real pleasure to play with this expanding and continuously improving group.  The joy of playing in a full symphony is a treat for the performers as much as for the audience.  Enjoy!
</p>','src_imgs/members/PennyZahn.JPG',4094,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(46,'Bryan','','Barrett',4,0,0,0,'<p>I was born and brought up in England and started playing the cello at school. I spent 23 years as an officer in the Royal Navy, without many opportunities to play the cello, and played classical guitar for many years – easier to carry onboard a ship! I immigrated to the States in 1989 and we live in Annapolis.  I was so pleased to find a wealth of community music in Maryland and auditioned for the Columbia orchestra. I joined 7 years ago and have been thrilled to be able to play so much of the great orchestral repertoire that I have loved all my live, and also to be introduced to a lot of contemporary works that I would not otherwise have discovered. I have studied the cello here with Kerena Mueller and Gita Ladd. I am sort of retired, consulting in subsea engineering part time for the company I used to work for, and hope, as I turn 70 this year, to be able to continue to play for this wonderful orchestra for many years. </p>

<p>Member of Columbia Orchestra since 2003</p>','src_imgs/members/Bryan.jpg',4413,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(47,'John','','Carter',4,0,0,0,'<p>John B. Carter is completing his second season with the Columbia Orchestra as a member of the cello section.  John, a Pennsylvania native, was introduced to the cello as a junior-high student by Donald E. Sutter who was the lead violinist for a string quartet in which John took part at Trinity Lutheran Church in Coatesville, PA.  John, originally a trumpeter, switched to the French horn and held the first chair horn position in the Coatesville Area Senior High School Symphonic Band.  As the first chair cellist in the Coatesville Area Senior High Orchestra, John placed to sit third chair at the Mid-East All Star Orchestra during his junior year, and played the Grieg Piano Concerto and the Great Gate of Kiev from Mussorgsky’s Pictures at an Exhibition at the festival concert.  He attended the string workshops at West Chester University each summer as a teenager.  John studied Psychology at Waynesburg University, Waynesburg, Pennsylvania and graduated in 1973 with a Bachelor’s Degree.  At Waynesburg, he was a member of the fledgling Waynesburg Marching Band and its orchestra under the direction of Allen C Emerick.  John attended graduate school at Roosevelt University in Chicago, Illinois where he earned a Master’s Degree in Public Administration and played with the Chatham Symphony, the DePaul University Orchestra (Leon Stein) and the Lewis University Orchestra.  John continues to enjoy playing chamber music, and is a volunteer musician at St Mark’s Evangelical Lutheran Church in Baltimore where he is a member.  One of John’s favorite remembrances is of a comment made by his father, Lee, during  intermission at a Mid-East orchestra performance in Schwenksville, PA that featured the Beethoven 1st Symphony:  ‘Man, I thought that song would never end!’ quipped his Dad.  John chooses Brahms, Rachmaninoff and Chopin among his favorite composers and enjoys listening to music and reading in his spare time.</p>','src_imgs/members/JohnCarter.jpg',1883,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(48,'Sarah','','Cotterill',4,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(49,'Carolyn','','Ginnever',4,0,0,0,'<p>Moving to Columbia, Maryland with my husband, Richard, 4 children, 4 dogs, 7 cats and 1 boa constrictor was quite the adventure in June of 2001. In August of 2001 I auditioned for the Columbia Symphony Orchestra and have been enjoying music with them on a weekly basis for 9 years.  Several years ago I joined Classical Encounter String Quartet. The quartet has been going to Summer String-In for many years and I joined in that adventure!  How delightful to have the opportunity to play every day for a week, with no other responsibility!</p>

<p>I began playing the cello in the 4th grade on Long Island, New York. After a hiatus of several years, on a dare, I began taking lessons to “brush up” and in 1980 began playing with the Nassau Symphony (Symphony of Long Island). Since that time, there has never been a time when I have not been involved with a symphony, quartet and various other playing opportunities.</p>

<p>Before moving to Columbia from Monroe, Louisiana, I played with the Monroe Symphony Orchestra, one season as the principal cellist, the DiJullian Quartet, and several churches. All, in all, with great thanks to my Dad, playing the cello has been one of the constants in the adventure called my life.</p>','src_imgs/members/Carolyn_Ginnever.jpg',2726,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(50,'Kathy','','Hughes',4,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(51,'Dave','','Pumplin',4,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(52,'Hannah','','Oliver',4,0,0,0,'<p>Hannah Oliver</p>
<ul>
<li>Instrument: Cello</li>
<li>Columbia Orchestra Member Since: 2007</li>
<li>What you do for a living: Orchestra teacher in Howard County</li>
<li>Education: University of the Pacific, B.M. in music education. I studied under Nina Flyer.</li>
<li>Favorite Columbia Orchestra concert and why: Playing the Rite of Spring! I have wanted to play this piece my entire life and finally got to.</li>
<li>Favorite composers: Arvo Part or Elgar depending on the day</li>
<li>Favorite non-classical music/musicians: Regina Spektor and Bon Iver</li>
<li>Other hobbies and interests: reading many blogs and webcomics, gaming, and re-learning to skate.</li>
<li>Favorite Books: Mostly Science fiction and the occasional girly romance book.</li>
<li>Favorite Movie: Harold and Maude</li>
<li>Favorite TV Shows: I watch Glee and Bones nowadays.</li>
<li>What you love about the Columbia Orchestra: Being able to play cello with a group every week, and being involved in the musical community I teach in.</li>
</ul>','src_imgs/members/HannahOliver.jpg',4561,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(53,'Jonathan','','Terry',4,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(54,'Al','','McLaine',5,1,0,0,'<p>Al is shown here with his now 100 year old mother. This picture was taken after a concert, and you can see we are both pretty happy. Mom plays the piano and encouraged me to take up the bass so we could have a family band. My brother was the drummer, my sister played the marimba, and I learned how to pluck the bass strings. I played in the high school orchestra and was part of several small jazz groups during that time (we called ourselves The Marlboros because we were so cool). I played for one year in the Annapolis Symphony when it was a community orchestra in the early 1960s. In college, I played for several years until protesting the Vietnam War took up most of my time. After college, I lived with some ‘friends’ on a ranch in Colorado; I managed to learn a few notes on the tuba so I could play in the local fire department band. I also played the bass in a few gigs with a small group at a local bar.</p>

<p>Many years passed when the bass was just another piece of furniture. But when I ended up in Columbia in the late 1980s, the Columbia Orchestra beckoned, and I have been a member since 1989.</p>

<p>I have always preferred orchestral music, but recently I have taken up jazz again, folk/blue grass, and chamber music. Music will continue to play a major role in my life as I enter retirement years.</p>','src_imgs/members/AlMcLaine.JPG',4441,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(55,'Matthew','','Carroll',5,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(56,'Yoshiaki','','Horiguchi',5,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(57,'Colin','','O''Bryan',5,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(58,'Kevin','','Taylor',5,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(59,'Elaine','','Newhall',29,1,0,0,'<p>Elaine Newhall performs as principal flute with the Columbia
Orchestra as well as chamber music with Raphael Flute and
Strings, and 18th century folk music with Tasker''s Chance.
She has maintained a private flute studio in Howard County
since 1980. She earned her B.S. in Music Education from
College of St. Rose, Albany, NY, and M.M. in Music
Education from SUNY Potsdam, NY, Crane School of Music.
She was honored with the Howard County Arts Council
Howie Award, Outstanding Artist 2001.</p>','',1718,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(60,'Kathrin','','Kucharski',29,0,0,0,'<p>Kathrin Kucharski has played flute since she was ten years old and studied flute under Kathleen Trahan from the University of Maryland College Park School of Music.  She has played in a number of community church groups, performed with the Prince Georges County Orchestra and currently serves as second flute/piccolo for the Columbia Orchestra in Columbia Maryland.  In her “real” life, she is a wife, mom of two boys and a medical liaison pharmacist for sanofi-aventis pharmaceuticals.</p>','src_imgs/members/KathrinKucharski.jpg',4319,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(61,'Devona','Lee','Schiller',29,0,0,0,'<p>Devona Schiller, a native of Baltimore County, Maryland, joined the Columbia Orchestra as piccoloist in 2006.  She also currently serves as Principal Flutist of the U. S. Naval Academy Band.  She was formerly Principal Flutist of the U. S. ATLANTIC Fleet Band and has held positions with the Virginia Beach and Annapolis Wind Symphonies.</p>

<p>Mrs. Schiller received Bachelor of Music degrees in education and performance in 1998 from James Madison University, where she studied with Carol Kniebusch Noe. Under the tutelage of Anthony Maiello, she received a Master of Music in conducting from George Mason University in 2003. </p>

<p>An experienced soloist, Mrs. Schiller has been the first prize winner of the James Madison University Concerto Competition, Virginia Music Teacher’s Association Concerto Competition and the Sigma Alpha Iota Scholarship Competition.  She can be heard on the James Madison University Flute Choir feature compact disc Sounds and Colors. </p>

<p>A dedicated educator and advocate of the arts, Mrs. Schiller frequently teaches and serves as a clinician and adjudicator in Baltimore and Anne Arundel County schools.  Mrs. Schiller currently resides in Annapolis, MD and enjoys spending time with her husband, John and family.  Other interests include serving in church ministries, women’s lacrosse, weight training, cooking, biking, and interior design.</p>','src_imgs/members/DevonaSchiller.jpg',3750,0,31);
INSERT INTO "roster_orchestramember" VALUES(62,'Cassandra','Miranda','Valladares',29,0,0,0,'<p>Cassandra was born in San Juan, Puerto Rico. She started piano lessons when she was four years old and later picked up the violin and the flute. When the time came to start college she decided to major in flute, graduating summa cum laude with a Bachelor of Music in Flute Performance from the Conservatory of Music of Puerto Rico where she also received the Woodwind Department Achievement Medal awarded to the most outstanding overall student in the woodwind department.</p>

<p>Cassandra relocated to Maryland to pursue graduate studies at the Peabody Conservatory of the Johns Hopkins University. She graduated with a Masters in Music Education in 2007.</p>

<p>Currently, Cassandra is the band director at Harper''s Choice Middle School in Columbia and teaches flute privately. She is also a member of the Columbia Chamber Winds woodwind quintet. In 2010, Cassandra will begin studies at the University of Maryland School of Law.</p>

<p>In her spare time, Cassandra enjoys learning languages, traveling, and taking care of her Mini-Schnauzer mix, Beauty.</p>','src_imgs/members/Cassandra_Miranda_Valladares.jpg',568,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(63,'Susan','','Schultz',23,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(64,'Lindsey','','Spear',7,1,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(65,'Barbra','','Girdler',7,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(66,'Peggy ','','White',7,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(67,'Elizabeth','','Eber',7,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(68,'Kelly','','Klomparens',7,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(69,'Barbara','','Girdler',8,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(70,'Kelly','','Klomparens',8,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(71,'Karen','','Hopkinson',9,1,0,0,'','src_imgs/members/Karen_Hopkinson.jpg',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(72,'Bobby','','Lapinski',9,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(73,'Matthew','','Gunderson',9,0,0,0,'<p>Matt began playing the clarinet at age 10 and instantly fell in love with its flexibility and lyricism.  After graduating from high school, Matt studied clarinet at the University of South Carolina with Professor Emeritus R. Douglas Graham, earning a Bachelor’s of Music degree in Music Education with a minor in Performance. </p>

<p>Upon completion of his undergraduate degree, Matt returned to USC and worked toward a Master’s degree in Music History while continuing his study of the clarinet with Prof. Graham, becoming Principal Clarinetist of the Wind Ensemble and Symphony Orchestra and performing with numerous chamber ensembles.  He also served as a Graduate Assistant in the Music Appreciation department, teaching sections of 150 students, as well as working in the Music Library at USC under the tutelage of Jennifer Ottervik.</p>

<p>After meeting his future wife, Erin, Matt moved to Milwaukee and began pursuing a Master’s in Library Science and a Master’s in Clarinet Performance from the University of Wisconsin-Milwaukee.  He was a Graduate Assistant in the Music Library at UWM, learning from and assisting Head Librarian Rebecca Littman.  He studied clarinet with Todd Levy, Principal Clarinetist of the Milwaukee Symphony, while serving as Co-Principal Clarinetist of both the Wind Ensemble and Symphony Orchestra.</p>

<p>After completing his performance degree, and consequently realizing he was broke, Matt enlisted in the United States Army and joined the Training and Doctrine Command Band at Fort Monroe, VA.  He served as clarinetist in the concert band and ceremonial band, and as clarinetist and alto saxophonist with the jazz band.</p>

<p>In April of 2009, Matt joined the United States Army Field Band at Fort Meade, MD, currently serving as Assistant Librarian. /p>

<p>He joined the Columbia Orchestra in August of 2009, playing both clarinet and bass clarinet, and has embraced the joys of sharing music with the enthusiastic and hungry audiences that have graced the concert hall.</p>

<p>Matt currently lives in Linthicum Heights, MD, with his wife, Erin, his two young daughters, Abigail and Hannah, and their cat, Rachmaninoff (Rachy for short!).</p>','src_imgs/members/Matt_Gunderson.jpg',3878,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(74,'Edna','','Huang',10,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(75,'Lori','','Fowser',9,0,0,0,'','',0,0,30);
INSERT INTO "roster_orchestramember" VALUES(76,'Monica','','Schwartz',12,1,0,0,'<p>Monica Schwartz</p>
<p>Member since Fall 2007</p>

<p>Monica Schwartz is a bassoonist, composer, and music educator.  Monica attended the Peabody Conservatory of Johns Hopkins University and earned three undergraduate music degrees in Bassoon Performance, Music Education, and Composition with a minor in Jazz Voice on full tuition scholarship.  She is nearing completion of a double masters in Music Composition and Education also at Peabody. She has studied bassoon with Linda Harwell (retired National Symphony) as an undergraduate, Terry Ewell (Towson University), Truman Harris (National Symphony), and Barrick Stees (Cleveland Orchestra while attending Interlochen Arts Camp). </p>

<p>As of Fall 2010, Monica became bassoon and music theory faculty for the Peabody Preparatory and teaches private bassoon lessons and theory classes each week at the Baltimore campus.  Monica also teaches private bassoon lessons from her home with a very active studio of bassoonists of all ages.</p>   

<p>An avid performer, Monica regularly freelances with local orchestras and enjoys performing chamber music.  She meets regularly with the Columbia Chamber Winds and her bassoon quartet.  </p>

<p>Also a composer, her works have been featured locally and abroad. Her chamber opera, Wings of Fire, was produced by the Peabody Opera Department. A recital of her works for bassoon were performed at the International Double Reed Society Convention in Tempe, Arizona.  In 2008 she presented a complete recital of her works. She has studied composition with Thomas Benjamin, Nicolas Maw, Moris Cotel, and Mark Lanz Weiser. </p>

<p>Monica has been a band director in Howard County Public Schools since 2001 and has been twice nominated for ‘Music Teacher of the Year for Howard County.’ She currently teaches all woodwinds, brass, and percussion instruments at Manor Woods Elementary School. </p>

<p>Monica spends a lot time playing bassoon, teaching, and composing--but she also takes time to enjoy cooking delicious locally grown food, running, and oil painting.  She loves to travel and thinks Iceland and the Ice Hotel in Canada are the coolest places she has ever been (no pun intended).  She also loves walking her two crazy pugs-- Dizzy (Gillespie) and Miles (Davis).</p>','src_imgs/members/Monica.JPG',4561,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(77,'Norma','','Hooks',12,0,0,0,'','src_imgs/members/Norma_Hooks.jpg',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(78,'Stacy','','Hultzman',12,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(79,'Chris','','Holtzem',12,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(80,'Andrew','','Delclos',12,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(81,'Melissa','','Feliciano',12,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(82,'Andrew','','Delclos',13,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(83,'James','','Rodak',25,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(84,'Carl','','Reynolds',15,1,0,0,'<p>Carl Reynolds is the principal trumpet player with the Columbia Orchestra and has been serving in that capacity since 1994.  Throughout his music career he has performed with accomplished groups including both The McLean Orchestra and The Arlington Symphony.</p>

<p>Carl continues to freelance with many other musical ensembles in the Baltimore-Washington area, including the Ellicott Brass Quintet.  He is grateful for the support he receives from his family and is indebted to his teachers, Elisa Koehler, Alan Bachelder, and Dennis Edelbrock.</p>','',1282,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(85,'Roy','','Leierzapf',15,0,0,0,'<p>A Pittsburgh native, Roy has been playing with the Columbia Orchestra since 1999.  Prior appointments since moving to Maryland have been Assistant Principal Trumpet of the Rockville Concert Band and trumpet with the Columbia Concert Band.  While still in Pittsburgh, Roy was the Principal Trumpet of the Pittsburgh Civic Orchestra under the baton of Keith Lockhart, now Music Director of the Boston Pops.  Roy is a graduate of Duquesne University where he received a B.S Degree in Music Education.  He studied trumpet under Charles Hois, Jack McKee and Frank Woodbury, all members in the trumpet section of the Pittsburgh Symphony of the sixties through eighties.</p>

<p>Roy is a tax systems and software specialist within the Tax Operations group of USTrust, Bank of America Private Wealth Management.  In addition to providing technical support and leadership of several tax vendors systems, Roy has developed several custom software applications in use by the Tax Departments for specialized tax processing and tracking systems.</p>','src_imgs/members/Roy_Leierzapf_1.jpg',3580,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(86,'Paul','','Lindenmann',15,0,0,0,'<p>Paul has enjoyed playing trumpet for over 35 years.  After high school, he spent three years in the Marine Corps. Band while stationed in North Carolina, once performing for President Reagan during the 100 year anniversary of the Statue of Liberty.  He graduated with a degree in music composition from the University of Maryland, and now works for the Capitol Police in Washington D.C. </p>

<p>He plays Taps in the Capitol Police Ceremonial Unit for funerals or special occasions that honor federal police officers from the D.C. metropolitan area. Paul also enjoys playing trumpet for his church and in a Dixieland band that provides free concerts for senior citizens in the Howard County area.</p>
','src_imgs/members/Paul_Lindemann.jpg',2859,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(87,'Andrew','','Strempek',15,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(88,'Mario','','Fuentes',17,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(90,'Anne','','Ward',14,1,0,0,'<p>Anne has been a member of The Columbia Orchestra since 1997 and a member of the orchestra’s Board of Directors since 1999, currently serving as Vice President.  She also serves as Wind Personnel Manager and Audition Coordinator.</p>

<p>Anne holds a Bachelor of Science degree in music education from Towson State College and a Master of Education degree from Towson State University.  After 40 years of teaching instrumental music in MD and PA public and private schools, Anne retired in 2010.  She continues to maintain a small private studio.  In addition to performing as principal horn in the orchestra, she performs with the Ellicott Brass Quintet, the Resurrection Brass Quintet, and various local chamber ensembles.</p>

<p>Although music activities are dominant in her life, Anne enjoys golfing, skiing, walking, biking, and reading.  She shares her life with her husband, Duke, and black lab mix, Isabella.  They all enjoy mountain and lake activities at their vacation home in Garrett County.</p>

<p>Anne is looking forward to another exciting and challenging season of music.  She loves that the music director, staff, and orchestra members work together as a team to produce such a vibrant organization.</p>
<br>
<br>
<ul>
<li>How long you’ve played:  49 years!</li>
<li>Other instruments you play:  I play them all, enthusiastically if not proficiently.</li>
<li>Favorite musical memories or events:   They’re all special. </li>
<li>Favorite composers or pieces:  Brahms is always at the top of the list, but I sure loved Mahler Symphony #1.</li>
<li>Things you love about favorite composers or pieces:  They compose such delightful music, although their lives are agony.</li>
<li>Who’s in your family (and if they’re musicians):  mother/piano, sister/cello, father/radio, husband/guitar</li>
<li>With whom did you study (your instrument):  Rayburn Griffith, Ray Moore, Kathryn Mehrtens</li>
<li>Favorite non-classical music/musicians:  Andrew Lloyd Webber</li>
<li>Favorite Columbia Orchestra concert and why:  whatever we’re playing now!</li>
<li>Dream concert program to play:  Wagner or Strauss</li>
<li>Favorite or “Desert Island” CDs / What’s on your iPod:  shuffle all instrumental – no vocal</li>
<li>Other hobbies and interests:  downhill skiing, golf</li>
<li>Favorite Books:  The Once and Future King (T. H. White)</li>
<li>Favorite Movies:  light comedy, musical</li>
<li>Favorite TV Shows:  Who has time?</li>
</ul>
','src_imgs/members/Anne_Ward.jpg',4800,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(91,'Sarah','','Dorrance',14,0,0,0,'<p>Rev. Sarah Babylon Dorrance&ndash;2nd Horn.  The Columbia Orchestra and my life have intertwined ever since this group became a full orchestra, for over 21 years! My first child was born after the end of our first season together. This is a place where I can come make music with others, where we can become one unit as we work together to perform a particular piece of music. Through my own personal life journey the orchestra has been part of who I am. I am grateful for the opportunity to continue playing French Horn over the long haul. It is an honor and a privilege to be a part of these fine musicians. I am a graduate of Gettysburg College and Wesley Theological Seminary. On Monday nights, I belong to the orchestra, the rest of the time I am a Mom of two wonderful college age young women and a pastor at Taylorsville United Methodist Church. I am grateful to God for the gift of music, and as for me, I pray that all the music that I am a part of gives glory to God my Savior.</p>','src_imgs/members/SarahDorrance.jpg',4273,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(92,'Cally','','Messick',14,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(93,'Rebecca','','Lantz',14,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(94,'Jeffrey','','Girdler',14,0,0,0,'<p>A former member of the prestigious United States Navy Band, Jeff Girdler joined the Columbia Orchestra horn section with the 2008-2009 Season. A native of Farmingdale, New York, he began his horn studies at the age of 12. His teachers include Harry and Arthur Berv, former members of the NBC Symphony under Arturo Toscanini; Samuel Ramsay, former member of the National Symphony Orchestra and the Kennedy Center Opera House Orchestra; Forrest Standley, former principal horn of the Pittsburgh Symphony Orchestra; and Philip Myers, principal horn of the New York Philharmonic.</p>

<p>He attended the Manhattan School of Music in New York City, and has earned a Bachelor of Arts degree in Humanities from the University of Maryland University College, College Park, Maryland; a Master of Music degree in horn performance from The Catholic University of America in Washington, DC; and a Master of Divinity degree in Theology from the Southern Baptist Theological Seminary in Louisville, Kentucky. He also was recognized as a “distinguished graduate” of the United States Navy Senior Enlisted Academy at the Naval War College in Newport, Rhode Island.</p>

<p>Prior to joining the Navy Band, Jeff performed in the horn sections of the New York Youth Symphony and the National Orchestra Association. He also served on the staff of the Armed Forces School of Music in Little Creek, Virginia and was the principal horn with the NATO Band in Naples, Italy. While a member of the Navy Band, he performed with the Navy Concert Band and was the horn player with the Navy Band Brass Quintet for 25 years.</p>

<p>As a studio musician, chamber performer and soloist in the Washington, DC area, he has performed on numerous soundtracks and recordings some of which include: Smithsonian Institute’s Air and Space Museum Planetarium and movie productions, TV’s America’s Most Wanted and the multi-Grammy platinum album, The Symphonic Enya. He can be heard on numerous recordings of the Washington Winds and the Washington Pops Orchestra.</p>

<p>Jeff devotes much of his time to teaching privately and coaching student chamber ensembles. Many of his former students perform professionally with ensembles such as the Baltimore Symphony Orchestra, the National Symphony Orchestra, the Maryland Symphony, the National Philharmonic, major armed services bands, and as successful music educators all over the United States. He has been on the faculty of Prince Georges’ Community College, Howard County Community College, and The Catholic University of America. From 1996 through 2000, he was the adjunct professor of horn at the University of Maryland School of Music, College Park where he taught private studio lessons and conducted the horn ensemble and brass ensemble. While at the University, he was the coordinator of the very popular University of Maryland “Horn Fest” which drew such artists as Barry Tuckwell, Erick Ruske, David Jolly and Peter Landgren.</p>

<p>Jeff lives in Columbia, Maryland with his wife Barbara who plays English horn with the Columbia Orchestra. He is an Educational Specialist/Artist for the C. G. Conn Company. Jeff Girdler performs exclusively on the Conn 8-D French horn.</p>','src_imgs/members/Jeff_Girdler.jpg',3627,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(95,'Nancy','','Corporon',14,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(96,'Jessica','','Hughes',14,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(97,'Pamela','','Scheuermann',14,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(98,'George','','Werner',17,1,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(99,'Randy','','Malm',17,0,0,0,'<p>Columbia Orchestra Member for Decades (can’t remember when I started) </p>

<p>I began with piano at some single digit age, but piano was never my main instrument.  I tried trumpet in 6th grade, but switched to trombone in 7th and dropped it junior year due to a school change (no instrumental music at the new school). </p>

<p>I trained for a career in Electrical Engineering at the University of Bridgeport (Connecticut), and worked in that field and project management for just over 30 years, retiring early.  After about 7 years of retirement, I started a home improvement business which I still own and operate.  (I am really the only employee.) </p>

<p>I also trained as a pilot, holding a commercial license, with single-engine land and sea, multi-engine land, and instrument ratings.  While I owned a small plane back then, I am inactive in that field now.</p> 

<p>In the late 1970’s, I joined the Columbia Concert Band playing trombone after a 22 year hiatus, then moved to a jazz big band course at UMBC, then joined the Columbia Big Band (CBB).  In the early 1980’s I co-produced a Big Band jazz show at Ethel’s Place (which featured renowned jazz singer Ethel Ennis), Ethel’s Place being a new jazz club in Baltimore directly across the street from the Meyerhoff Theater.  Playing in that show was probably the greatest musical high of my life, certainly at that time, anyway.</p> 

<p>I never really lost interest in piano though, and in the early 1980’s received some piano lessons from Marc Cohen (now Marc Copeland), who is a pretty well known jazz pianist.  He had a remarkably different approach to teaching piano which I have never forgotten.  I would be happy to talk about it sometime.  After those lessons, I played much more piano than ever before, and I still play often, mostly just improv and mostly at home. </p>

<p>In the early 1990’s I joined the Columbia Jazz Band (CJB) (not to be confused with the Columbia Big Band (CBB)), but this time on bass guitar.  I had never played the bass guitar before, so I had to learn it really quickly.  At present, I am still in that position.  That band is currently under the direction of Pete Barrenbregge, former director of the Airmen of Note, the Air Force’s premier jazz band.  In 2008, I toured Europe with the CJB, playing in the Montreux (Switzerland) Jazz Festival, and three other locations in Europe.  More Europe touring is in the works.  We have also played at Blues Alley, Washington, DC’s top jazz supper club. </p>

<p>I don’t remember when I joined the Columbia Orchestra, but I know it was in the previous century.  I play 2nd trombone there.  I have no training in classical music, so every season is a new adventure. </p>

<p>I also play in a trombone choir which is (usually) 12 trombones, playing under the direction of David Fetter, a former Principal Trombone in the Baltimore Symphony Orchestra. </p>

<p>If you are in the market for any home improvements, please check my ad in the Orchestra Programs.</p>','src_imgs/members/Randy2.jpg',4086,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(100,'Randolph','','Capone',18,0,0,0,'<p>Columbia Orchestra Member Since: 2005</p>

<p>Bass trombonist Randy Capone was born in Syracuse, NY and switched from piano to trombone at age 9 after watching Bob Havens perform on the Lawrence Welk Show.  His early teachers included Al Balestra, Jerry Natoli, John Besten, and Bill Harris.  He won the NY State School Music Association solo competition for bass trombone in 1985 while playing with the Syracuse Symphony Youth Orchestra.  He later studied with Harold Van Schaik and George Osborne at The Eastman School of Music. He’s played with the Syracuse Symphony Orchestra, the Utica Symphony Orchestra, the Syracuse Summer Festival Orchestra, the University of Rochester Symphony Orchestra, the Emory Atlanta Orchestra, and the Regal Brass Quintet.  He plays a 1986 Bach Stradivarius 50 B3L with a custom Schilke mouthpiece.</p>

<p>After completing medical school in 1997, he moved to Baltimore and began his surgical training at the Johns Hopkins Hospital.  When not playing bass trombone, he is likely spending time with his family in Baltimore or is busy with his career as the Director of the <a href="http://www.BaltimoreFaces.com" target="co_link" title="Pop-up">Baltimore Center for Facial Plastic Surgery</a>.</p>



','src_imgs/members/Randy_Capone2.jpg',3477,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(101,'Douglas','','Lee',19,1,0,0,'<p>Columbia Orchestra member since: 1996 </p>

<p>What do you do for a living?  I’m an attorney with the federal court system. </p>

<p>Where else do you play?  Besides Columbia, I play with the Howard County Ballet Orchestra, the Ellicott Brass, and the Barleycorn Brass Quintet  </p>

<p>Who else in your family is a musicians?  Although my older brother is a college philosophy professor, he also composes music and fools around on the fiddle and the saxophone. </p>

<p>Where did you go to school and what did you study?   I got my undergraduate degree in American history at Brown University and I went to law school at the University of Pennsylvania</p>

<p>With whom have you studied?  I have studied in recent years with Dave Fedderly, tuba player with the Baltimore Symphony Orchestra.   </p>

<p>Favorite Columbia Orchestra concert and why? Three: (1) Playing “Tubby the Tuba” at the Children’s Concert in December 2005 (what can I say, I loved being a soloist in front of enthusiastic children); (2) Playing Stravinsky’s “Rite of Spring” in October 20009 (Rite of Spring was one of the first pieces of classical music I discovered as a child and it had been a dream of mine to play it someday); and (3) Playing Mahler’s Symphony No. 1 in May 2010 (another dream of mine).  Runner up:  My first concert with the Columbia Orchestra in October 1996.  I hadn’t played in an orchestra or band in 15 years and the return of musical performance to my life was an amazing gift.  It also didn’t hurt that I met my wife going into the dress rehearsal for that concert. </p>

<p>What are your favorite composers or pieces?  Very hard to pare it down:  Ralph Vaughan Williams, Aaron Copland, Walter Piston, Paul Hindemith, William Schuman, William Walton, Bach, Handel, Stravinsky, Mahler, Strauss, Dvorak, Elgar, John Adams, the list goes on & on.  Particular pieces: Stravinsky, Rite of Spring & Agon; Bartok, Concerto for Orchestra; William Schuman, Symphony No. 3; Lutoslawski, Concerto for Orchestra; Hindemith, Symphonic Metamorphosis; Vaughan Williams, Pastoral Symphony and Symphony No. 5; William Walton, Symphony No. 1 ... </p>

<p>What’s on your iPod?  All of the above, plus lots of jazz, plus eclectic ‘70 & 80''s folks & rock (Tom Petty, Bruce Hornsby, Fleetwood Mac, Eagles, James Taylor, etc) </p>

<p>Last book you read? “American Heroes” by Edmund Morgan & “The First Rule” by Robert Crais </p>

<p>Favorite TV shows?  “Friday Night Lights” </p>

<p>Other surprising facts about you?  I was born in North Dakota.  I’m married to Lynn Halverson, a former cello player in the orchestra (see dress rehearsal story above).  We collect many, many books, especially cookbooks.  I also collect an insane number of CDs.  I was a park ranger at Natural Bridges National Monument, Utah in 1976, the summer after my freshman year in college.  I was a trial lawyer in Philadelphia before moving to the D.C. area in 1989 (in another life...)   </p>','src_imgs/members/DougLee.JPG',4127,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(102,'Sarah','','Knapp',19,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(103,'Nancy','','Smith',22,0,0,0,'<p>Nancy Smith holds bachelors and masters degrees in Piano Performance from the Eastman School of Music and the Florida State University School of Music, respectively.  Since 2002, she has been Pianist of the Columbia Orchestra.  Previously, Nancy performed with the Florida State University Symphony Orchestra, and as pianist with numerous choral groups.  Her chamber music experience extends to performances as part of the International Institute for Chamber Music, the Sarasota Music Festival, the Festival of New Music, the Dickinson Piano Quartet, and The Columbia Orchestra Trio.  Over the years, Nancy’s career has morphed from free-lance musician to a career that has included stints in arts administration, non-profit management, and proposal development.  Her career has included tenures as Manager of the Tallahassee Symphony Orchestra, service with the Florida Arts Council, Executive Director of AEMS:  Arts Education in Maryland Schools Alliance, and work for the national consulting company MGT of America.  Currently, Nancy is Director of Grants Development for The Community College of Baltimore County, where she oversees the design of projects in a broad array of disciplines.  In 2010, with her help, the college received more than $10 million in grant funding. </p>','src_imgs/members/Nancy_Smith_Color.JPG',4615,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(104,'Meredith','','Mancini',24,0,0,0,'<p>Columbia Orchestra Member since: 1999 

<p>Harpist, Meredith Mancini, is an active free-lance harpist in the Washington/Baltimore metropolitan area. Meredith began playing the harp at age 8. She is a cum Laude graduate of The Benjamin T. Rome School of Music at The Catholic University of America, where she studied with Jeanne Chalifoux. She has also trained under Alice Chalifoux at the Salzedo Summer Harp Colony.  </p>

<p>In addition to Columbia Orchestra she performs with numerous regional orchestras, including the Prince George’s Philharmonic, the Capital Wind Symphony, and the Piedmont Symphony. Meredith performs regularly with the Washington Savoyards, Opera Camerata, the Howard County Ballet, the Rockville Summer Dinner Theatre for 30 years, and the Victorian Lyric Opera Company. Meredith is a former harpist of the Maryland Symphony. She has performed most major Broadway shows. Meredith performed for the critically acclaimed production of “The Fantasticks” at the Round House Theatre in 2000, as well as the 2009 production of Olney Theatre Center’s “Camelot.” Meredith has performed for Ford’s Theatre annual production of “A Christmas Carol.” Meredith has performed in the Vatican for Pope John Paul II, and in backup orchestras for Neil Sedaka and The Moody Blues. </p>

<p>Ms. Mancini is an active harp instructor in the Washington/Baltimore area of all ages and abilities. She has been the harp instructor for the D.C. Youth Orchestra Program for over 15 years. She is currently the harp instructor for Montgomery College, and maintains an active private studio as well. She has previously taught at Catholic University and the Ottley School of Music. </p>

<p>Meredith has been an active harpist for weddings, receptions, and all special events for over 20 years. Ms. Mancini is a published arranger for harp ensembles, solos, and musical scores.</p>','src_imgs/members/MeredithMancini.jpg',4323,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(105,'Jeffrey ','','Soulen',21,1,0,0,'<p>Columbia Orchestra Member since: 1992</p>

<p>Timpanist Jeff Soulen began playing percussion in 10th grade when his school band director,
needing more than two percussionists in the marching band, ignored Jeff''s complete lack of
experience and recruited him to play cymbals with instructions to “hit them together on every
beat and remember, left foot first.” Enchanted by the magic of making music with friends, he
started private lessons and was soon playing with community groups in the Philadelphia area.
College brought the opportunity to study with Michael Bookspan of the Philadelphia Orchestra
and Fred Hinger of the Metropolitan Opera. He has played steadily with a variety of
orchestras since then and enjoys playing occasional freelance gigs as well.</p>

<p>After a ''first career'' as a pediatrician, Jeff has practiced psychiatry since 1994. He maintains a
full time private practice in Ellicott City.</p>

<p>When not at work or playing music, he is likely be found in the great outdoors with his family
and friends or hosting meditation at the <a class="bodylink" href="http://www.hocodharmagroup.org" target="co_link" title="Pop-up">Howard County Dharma Group</a>.</p>','src_imgs/members/Jeff_Soulen2.jpg',3293,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(106,'Gretchen ','','McCracken',20,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(107,'Greg','','Herron',20,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(108,'Ken','','Walton',20,1,0,0,'<p>I started my musical studies with piano lessons when I was 9 years  
old, and switched to drums when I was in the 9th grade. I joined the  
school band, which proved to be a choice that led to my professional  
career! After graduating from the University of Maryland with a BS in  
Music Education, I taught instrumental music for 31 years, and am now  
retired. Although my first job was teaching at a junior high school  
in Anne Arundel County,  most of my career was spent directing band  
and orchestra programs at the high school level in Baltimore County.</p>

<p>In addition to teaching, I have done a lot of playing over the  
years.  As someone who enjoys a wide range of musical styles, I have  
played in everything from rock bands to big bands, wedding combos,  
church praise bands, musical theatre and more!</p>

<p>When not performing or going to concerts, I enjoy running, biking and  
hiking.  I am also a fan of both college and professional sports.</p>','src_imgs/members/Ken.jpg',4030,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(109,'Jane','','Creagan',20,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(110,'Randall','','Stewart',26,0,0,0,'<p>Randall Stewart was named Assistant Conductor of the Columbia Orchestra in September 2009. Mr. Stewart founded the Baltimore Sinfonietta in 2004 to bring unusual orchestral programming to the region. He has been active as an operatic conductor, having led young artist performances <i>Le Nozze di Figaro, Il barbiere di Siviglia,</i> and <i>Die Zauberflöte</i> in New York and <i>Il Coronazione di Poppea</i> at Catholic University in Washington. In the sphere of Musical Theater, he has conducted performances of <i>The Music Man</i> with the Washington Savoyards and <i>Sweeney Todd</i> at Catholic University. </p>

<p>Mr. Stewart’s has taught instrumental music in Maryland public schools for twelve years, serving as the band director at Catoctin High School in Thurmont from 1998 to 2001 and Eastern Technical High School in Essex from 2001 to 2008. He presently teaches instrumental music at Dundalk Middle School.</p>

<p>Mr. Stewart is a candidate for the Doctor of Musical Arts Degree in Orchestral Conducting at The Catholic University of America in Washington, D.C, where he studies with Maestro David Searle. He has also studied with Kenneth Kiesler and Gustav Meier.</p>','',582,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(111,'Brandi ','','Healey',4,0,0,0,'','src_imgs/members/Brandi_Healey.jpg',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(112,'Suzanne','','Sherwood',3,0,0,0,'<p>Columbia Orchestra Member Since: 2010</p>

 

<p>I started playing violin in fifth grade, but due to my large hands and the lack of school funds to rent more student violins; it was strongly suggested I switch to viola. I''ve never regretted the switch, and have fallen in love with the sound of the viola. </p>

 

<p>I''m currently in the military, stationed at Fort Meade. This is the first place I''ve been stationed with an orchestra where I can participate. Playing with the orchestra has been a fantastic experience so far; a great opportunity to meet people and expand musical abilities.</p>

 

<p>When I''m not working I enjoy sewing, reading and some video games. </p>','',1531,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(113,'Tedd','','Griepentrog',28,0,0,0,'<p>Tedd Griepentrog served with the U.S. Army Field Band of Washington, DC, the military’s premier touring concert band, for 20 years. As Saxophone Soloist, he performed in all 50 states and 14 countries, premiered 12 new works for saxophone, and was featured in numerous television broadcasts and recordings. As Educational Activities Coordinator, he developed the Field Band’s Legacy CD reference recordings and Instructional Video series, and coordinated clinics and performances that annually reached more than 100,000 students across the nation. During his tenure, he performed for every U.S. President from Ronald Reagan to George W. Bush.</p>

<p>Mr. Griepentrog served as a saxophone clinician for the Leblanc/Yanagisawa Corporation and received the 2003 Outstanding Music Educator Award from MENC—The National Association for Music Education. He has performed with the Boston Pops, Cincinnati Pops, Milwaukee Symphony, and Baltimore Symphony Orchestra. He was featured in a cover story in the internationally-distributed Saxophone Journal magazine. </p>

<p>He has been a presenter at conferences of the Music Educators National Conference, the Network of Visual and Performing Arts Schools, the National Association of Partners in Education, Created to Praise, and the National Association of Secondary School Principals. He holds a Bachelor of Fine Arts in Music Education from the University of Wisconsin-Milwaukee and a Master of Arts in Arts Administration from Goucher College.</p>

<p>Since retiring from the military in 2003, Mr. Griepentrog serves as Executive Director of the Columbia Orchestra and teaches Band and General Music at St. Paul’s Lutheran School in Glen Burnie, MD. He and his wife, Maureen Griepentrog, publish their choral compositions and band arrangements through their company, Treble C Music.</p>','src_imgs/members/Tedd_Griepentrog.jpg',4470,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(114,'Greg','','Tsalikis',20,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(115,'Elizabeth','','Horst',1,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(116,'Doug','','Dean',5,0,0,0,'','src_imgs/members/Doug_Dean.jpg',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(117,'Erin','','Hedden',1,0,0,0,'','src_imgs/members/Erin_Hedden.jpg',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(118,'Jessica','','Liberati',1,0,0,0,'','src_imgs/members/Jessica_Liberati.jpg',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(119,'Adam','','Waickman',2,0,0,0,'<p>Adam is a recent transplant to the Columbia area, originally hailing from Northern NY. He completed his bachelor degree in biological sciences at Cornell University in 2008 and is currently pursuing his PhD in immunology at the Johns Hopkins School of Medicine. He has previously played with the Cornell University Symphony Orchestra under the direction of Chris Kim, and with several smaller chamber groups. He currently lives in Elkridge with his wife Kathryn (who is a violist in the Columbia Orchestra).</p>','src_imgs/members/Adam_Waickman.jpg',3818,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(120,'Esther','','Wagner-Yuan',2,0,0,0,'<p>Mrs. Esther Wagner-Yuan holds a bachelor''s degree in violin performance from Duquesne University in Pittsburgh, PA. She began playing violin at the age of 3, studying using Suzuki method, then with Pittsburgh Symphony members. She performed as a free-lance musician in Pittsburgh for several years, playing in local orchestras and string quartets.</p>

<p>She holds a master''s degree in elementary education from California University of Pennsylvania, and taught sixth grade for the past two years in Virginia. Before that, she taught private lessons extensively. She also directed the California University of PA''s string ensemble and taught lessons as an adjunct professor there.</p>

<p>Mrs. Wagner-Yuan plays jazz, blues, and other styles of music. She has been a member and/or recorded with several bands: Mandorla, Joy Ike, B & G, Nadina''s Cube, and others. She has had the opportunity to play jazz at clubs in Pittsburgh, wine festivals in VA, and at Twins in DC.</p>','src_imgs/members/esther_yuan.jpg',1569,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(121,'Kate','','Kerr',3,0,0,0,'','src_imgs/members/Kate_Kerr.jpg',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(122,'Dami','','Soh',4,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(125,'Shari','','Rolnick',1,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(126,'Patricia','','DeOrio',2,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(127,'Kristin','','Huza',2,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(128,'Tracey','','Grasty',2,0,0,0,'<p>I am originally from Detroit, Michigan.  My parents are retired music teachers.  My brother, sister and I all learned to play musical instruments as children.   I started playing the violin in the third grade and played until I went to college.  I received a BS in Microbiology at the University of Michigan, Ann Arbor campus and years later, a BS in Nursing at the University of Maryland, Baltimore campus.  After an almost 20 year hiatus, I decided to reacquaint myself with my violin.  I took lessons for a year, then auditioned and joined the Columbia Orchestra.  It has been one of the best decisions ever. I enjoy playing with the Columbia orchestra so very much.  I love the variety of music we play, my fellow musicians are awesome, and Jason is the best!</p>

<p>I worked at Johns Hopkins hospital, in Baltimore, MD, in the Cardiac Surgical ICU (CSICU) until 2 years ago, when I decided to spend quality time with my sister, brother and their families, in California, and work as a travel nurse.  I usually take 3 month contracts, in various hospitals in CSICU and ICUs in the Los Angeles and Bay areas.  Whenever I am home, I look forward to playing with the orchestra.</p>

<p>Since joining Columbia Orchestra, I have also played with Prince Georges Philharmonic Orchestra, Summer Strings and Pasadena Community Orchestra in Pasadena, California.</p>','src_imgs/members/Tracey_Grasty.JPG',393,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(129,'Amy','','Sexauer',3,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(130,'Katie','','Kimble',3,0,0,0,'
<p>Katie Kimble is a Columbia native, returning to the area after a brief hiatus to upstate NY to earn her bachelor degree in viola performance and music education from Ithaca College where she studied with Debra Moree. Her orchestral experience includes playing with the Cornell Symphony Orchestra under the direction of Chris Kim, and the Ithaca College Chamber and Symphony Orchestras under the direction of Jeff Meyer.</p>

<p>She currently teaches elementary school strings in Anne Arundel County and lives in Elkridge with her husband, and fellow Columbia Orchestra member, Adam and their dog Angua.  When not teaching or playing music, Katie coaches rock climbing at Earth Treks Climbing Center.</p>','src_imgs/members/Katie_Kimble.JPG',3495,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(131,'Gregory','','Messa',20,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(132,'Christina','','Hernandez',4,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(133,'Eugene','','Bayer',17,1,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(134,'Carey','','Locke',4,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(135,'Jeremy','','Davis',5,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(136,'Brian','','Schuler',5,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(137,'Lynda','','Aldana',12,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(138,'Melissa','','Feliciano',13,0,0,0,'','',0,1,NULL);
INSERT INTO "roster_orchestramember" VALUES(139,'Daniel','','Carter',14,0,0,0,'','',0,0,NULL);
INSERT INTO "roster_orchestramember" VALUES(140,'Amanda','','Mazzaro',2,0,0,0,'','',0,0,NULL);
CREATE TABLE "news_news" (
    "id" integer NOT NULL PRIMARY KEY,
    "title" varchar(250) NOT NULL,
    "display_title" bool NOT NULL,
    "body" text NOT NULL,
    "post_date" datetime,
    "unpost_date" datetime,
    "order" integer NOT NULL UNIQUE,
    "create_date" datetime NOT NULL,
    "modified_date" datetime NOT NULL
);
INSERT INTO "news_news" VALUES(1,'Weather',0,'<p style="font-size: 1.4em; color: #aa4444;">The Young People''s Concerts on January 8th will go on as scheduled.  Check back here for any weather related information.</p>','2011-01-07 22:01:33','2011-01-08 16:00:00',2,'2011-01-07 22:01:43.113981','2011-08-29 15:29:42.700559');
INSERT INTO "news_news" VALUES(2,'Weather 2011/02/21',0,'<h3>Monday Feb 21:  We''re watching the weather closely. We don''t think road freezing will be a concern 
until closer to 11 pm. We''re intending to have rehearsal and keep a 
close watch on the pavement during the rehearsal.  If the weather in your area is different and you do not feel safe 
traveling, please just let Jason/Anne/Annette/your section leader know. </h3>','2011-02-21 18:02:20','2011-02-22 00:00:01',3,'2011-02-21 18:02:45.942529','2011-08-29 15:29:37.323520');
INSERT INTO "news_news" VALUES(3,'Early Bird Subscriptions',0,'<h3>Order 2011-2012 subscriptions by July 15 from our <a href="/tickets/">Tickets Page</a> and receive an "early bird" gift of two FREE ticket vouchers to share!</h3>','2011-06-20 11:07:55','2011-07-16 00:00:00',4,'2011-06-20 11:09:40.406854','2011-08-29 15:29:32.072426');
INSERT INTO "news_news" VALUES(4,'Administrative Assistant Vacancy',0,'<p><strong>
The Columbia Orchestra is currently seeking a part-time Administrative
Assistant. For more information, <a href="/employment/">click here</a>.
</strong></p>
','2011-07-11 21:30:00','2011-08-16 23:08:24',6,'2011-07-11 21:39:45.743927','2011-08-29 15:29:26.072569');
INSERT INTO "news_news" VALUES(5,'Operations Manager Vacancy',0,'<p><strong>
The Columbia Orchestra is currently seeking a part-time Operations Manager. For more information, <a href="/employment/">click here</a>.
</strong></p>
','2011-08-16 23:08:00','2012-08-16 23:08:02',7,'2011-08-16 23:08:11.549610','2011-08-29 15:28:39.191127');
INSERT INTO "news_news" VALUES(6,'Monday August 29, 2011 Rehearsal ON!',1,'Hope everyone made it through the tropical storm ok! The Gathering Place has functioning power, and as such, the Columbia Orchestra Rehearsal scheduled for Monday August 29, 2011 is still ON!!!','2011-08-29 15:27:22','2011-08-30 00:00:00',1,'2011-08-29 15:27:03.227624','2011-08-29 15:42:39.490426');
CREATE INDEX "auth_permission_1bb8f392" ON "auth_permission" ("content_type_id");
CREATE INDEX "auth_group_permissions_425ae3c4" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_1e014c8f" ON "auth_group_permissions" ("permission_id");
CREATE INDEX "auth_user_user_permissions_403f60f" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_1e014c8f" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "auth_user_groups_403f60f" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_425ae3c4" ON "auth_user_groups" ("group_id");
CREATE INDEX "auth_message_403f60f" ON "auth_message" ("user_id");
CREATE INDEX "django_admin_log_403f60f" ON "django_admin_log" ("user_id");
CREATE INDEX "django_admin_log_1bb8f392" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_flatpage_sites_21210108" ON "django_flatpage_sites" ("flatpage_id");
CREATE INDEX "django_flatpage_sites_6223029" ON "django_flatpage_sites" ("site_id");
CREATE INDEX "django_flatpage_a4b49ab" ON "django_flatpage" ("url");
CREATE INDEX "pieces_piece_soloist_2419b34d" ON "pieces_piece_soloist" ("piece_id");
CREATE INDEX "pieces_piece_soloist_2884c7c" ON "pieces_piece_soloist" ("soloist_id");
CREATE INDEX "pieces_piece_129ed196" ON "pieces_piece" ("composer_id");
CREATE INDEX "events_event_pieces_1647d06b" ON "events_event_pieces" ("event_id");
CREATE INDEX "events_event_pieces_2419b34d" ON "events_event_pieces" ("piece_id");
CREATE INDEX "events_event_soloists_1647d06b" ON "events_event_soloists" ("event_id");
CREATE INDEX "events_event_soloists_2884c7c" ON "events_event_soloists" ("soloist_id");
CREATE INDEX "events_event_319d859" ON "events_event" ("location_id");
CREATE INDEX "events_event_23579bcd" ON "events_event" ("season_id");
CREATE INDEX "roster_orchestramember_748c65e3" ON "roster_orchestramember" ("instrument_id");
COMMIT;
