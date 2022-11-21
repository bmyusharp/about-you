-- MySQL dump 10.13  Distrib 5.7.35, for Win64 (x86_64)
--
-- Host: k7a603.p.ssafy.io    Database: hay_dev
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vote` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `is_commentable` bit(1) DEFAULT NULL,
  `is_ended` bit(1) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `vote_count` int DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfdwfj3l1wtek4xhufgpiq8o8u` (`category_id`),
  KEY `FKcsaksoe2iepaj8birrmithwve` (`user_id`),
  CONSTRAINT `FKcsaksoe2iepaj8birrmithwve` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKfdwfj3l1wtek4xhufgpiq8o8u` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
INSERT INTO `vote` VALUES (20,'에어컨 춥지 않나요','2022-11-15 15:49:24.113000','2022-11-22 09:00:00.000000',_binary '',_binary '\0',37.5018598,127.0399935,'2022-11-15 15:49:24.000000','싸피 에어컨','2022-11-15 15:49:24.113000',11,1,9),(21,'회식으로 지아니스 나폴리 가려고 하는데 여기 맛있나요?','2022-11-16 16:06:05.826000','2022-11-20 09:00:00.000000',_binary '',_binary '',37.502,127.041,'2022-11-16 16:06:05.000000','지아니스나폴리 역삼 본점','2022-11-16 16:06:05.826000',4,2,14),(22,'자주 가시는 카페 투표해주세요','2022-11-17 16:21:29.829000','2022-11-24 09:00:00.000000',_binary '',_binary '\0',37.502,127.041,'2022-11-17 16:21:29.000000','다들 카페 어디 가시나요','2022-11-17 16:21:29.829000',11,1,15),(23,'안녕하세요. 저는 밤낮없이 일하는 개발자입니다. 저희 동네에 이런 식당이 있는데 어딜 가면 좋을지 고민할 시간이 없습니다.\n\n이 중에서 고를 수 없어서 여러분들께서 골라주셨으면 합니다.\n\n여러분이 골라주신 식당에 가서 맛있게 먹고 오늘도 힘내보겠습니다. 감사합니다.','2022-11-17 11:27:03.566000','2022-11-18 09:00:00.000000',_binary '',_binary '',37.489,127.053,'2022-11-17 11:27:03.000000','여러분이 정해주신 곳으로 가겠습니다.','2022-11-17 11:27:03.566000',6,2,21),(24,'퇴근....','2022-11-17 16:37:38.147000','2022-12-02 09:00:00.000000',_binary '',_binary '\0',37.5018598,127.0399935,'2022-11-17 16:37:38.000000','퇴근하고 싶다','2022-11-17 16:37:38.147000',7,1,21),(25,'점심메뉴 어떤거 드셨나요?','2022-11-17 16:47:51.132000','2022-11-18 09:00:00.000000',_binary '',_binary '',37.5017072,127.0397919,'2022-11-17 16:47:51.000000','점심메뉴?','2022-11-17 16:47:51.132000',8,2,7),(26,'민트초코는','2022-11-17 17:23:33.706000','2022-12-17 09:00:00.000000',_binary '',_binary '\0',37.5018598,127.0399935,'2022-11-17 17:23:33.000000','민트초코','2022-11-17 17:23:33.706000',8,1,9),(27,'죠습니다','2022-11-18 10:15:19.933000','2022-11-19 09:00:00.000000',_binary '',_binary '',37.4112256,126.9661696,'2022-11-18 10:15:19.000000','반갑습니다~','2022-11-18 10:15:19.933000',1,1,8),(28,'너는어떄 써보고 싶으신가요?','2022-11-18 10:52:45.117000','2022-11-19 09:00:00.000000',_binary '',_binary '',37.4112256,126.9661696,'2022-11-18 10:52:45.000000','너는어때가 죠습니까?','2022-11-18 10:52:45.117000',1,1,8),(29,'제가 다니고 있는 싸피에서 밋업을 진행했습니다. 즐거우셨나요? 여러분들의 의견이 궁금합니다.','2022-11-18 11:03:11.365000','2022-11-25 09:00:00.000000',_binary '',_binary '\0',37.4954954954955,127.03887148607944,'2022-11-18 11:03:11.000000','Happy meetup day~','2022-11-18 11:03:11.365000',1,3,10),(30,'오늘 무슨일 있나요? 버스나 너무 안오네요 \n회사 지각할꺼 같아요...','2022-11-18 11:03:13.767000','2022-11-19 09:00:00.000000',_binary '',_binary '',37.5017072,127.0397919,'2022-11-18 11:03:13.000000','버스나 너무 안와요 ㅠㅠ','2022-11-18 11:03:13.767000',3,3,7),(31,'다들 오늘 저녁에 뭐하시나요?','2022-11-18 11:03:31.924000','2022-11-19 09:00:00.000000',_binary '',_binary '',37.5018598,127.0399935,'2022-11-18 11:03:31.000000','오늘은 불금','2022-11-18 11:03:31.924000',3,3,9),(32,'\n하와와 저는 여고생쟝이라서 어제 수능을 본거시야요\n\n수능 국어부터 너모 어려웠다에요 ㅠㅜ\n\n점심에 도시락뚜껑이 안열려서 호에엥! 호에에엥!! 한 거시에요.,,, \n','2022-11-18 11:03:48.917000','2022-12-18 09:00:00.000000',_binary '',_binary '',37.50173430131867,127.03976205802942,'2022-11-18 11:03:48.000000','어제 수능은 다들 잘 보셨는지...','2022-11-18 11:03:48.917000',2,3,11),(33,'.','2022-11-18 11:12:01.126000','2022-12-18 09:00:00.000000',_binary '',_binary '\0',37.5017072,127.0397919,'2022-11-18 11:12:01.000000','치킨 추천해주세요','2022-11-18 11:12:01.126000',1,2,7),(35,'\n님들의 선택은?','2022-11-18 11:20:00.605000','2022-11-19 09:00:00.000000',_binary '',_binary '',37.50173430131867,127.03976205802942,'2022-11-18 11:20:00.000000','고양이 vs 강아지','2022-11-18 11:20:00.605000',2,1,11),(37,'다들 출퇴근 뭐로 하시나요?','2022-11-18 11:32:51.401000','2022-11-19 09:00:00.000000',_binary '',_binary '',37.5018598,127.0399935,'2022-11-18 11:32:51.000000','버스 vs 지하철','2022-11-18 11:32:51.401000',1,1,9),(38,'','2022-11-18 15:08:29.911000','2022-11-19 09:00:00.000000',_binary '',_binary '',37.4112256,126.9661696,'2022-11-18 15:08:29.000000','','2022-11-18 15:08:29.911000',1,1,8),(39,'겨울방학때 큰거온다고 햇어요 같이 해오','2022-11-20 19:58:01.526000','2022-12-05 09:00:00.000000',_binary '',_binary '\0',37.51087828595486,127.11492553227896,'2022-11-20 19:58:01.000000','12월 29일에 메이플스토리 같이 하실 분 구해요','2022-11-20 19:58:01.526000',1,1,11),(40,'게임 유튜버 중에서 추천좀요\n재밌으면 실력 안좋아도 괜찮아요','2022-11-20 19:58:51.897000','2022-11-21 09:00:00.000000',_binary '',_binary '',37.51087828595486,127.11492553227896,'2022-11-20 19:58:51.000000','요즘 유튜브 채널 뭐가 핫한가요?','2022-11-20 19:58:51.897000',0,1,11),(41,'여러분의 선택은?','2022-11-20 20:00:56.876000','2022-12-05 09:00:00.000000',_binary '',_binary '',37.51087828595486,127.11492553227896,'2022-11-20 20:00:56.000000','설빙 vs 베라','2022-11-20 20:00:56.876000',1,1,11),(42,'교토랑 도쿄중에 어디가 더 핫한가요?','2022-11-21 11:39:28.542000','2022-12-06 09:00:00.000000',_binary '',_binary '\0',37.50173430131867,127.03976205802942,'2022-11-21 11:39:28.000000','여행 어디로 갈까요?','2022-11-21 11:39:28.542000',0,1,11),(43,'근데 이제 머함?','2022-11-21 12:41:31.349000','2022-12-21 09:00:00.000000',_binary '',_binary '\0',37.5018186,127.039961,'2022-11-21 12:41:31.000000','끝났다~~~','2022-11-21 12:41:31.349000',3,1,8),(44,'쌀쌀한 날씨\n여러분은 뜨아 인가요 아아인가요','2022-11-21 14:36:51.440000','2022-11-22 09:00:00.000000',_binary '',_binary '\0',37.5018493,127.0399905,'2022-11-21 14:36:51.000000','뜨아 vs 아아','2022-11-21 14:36:51.440000',1,2,23);
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT NULL,
  `likes_count` int DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `original_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `vote_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs5dfye28dnneuwfusrpn6mulm` (`original_id`),
  KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`),
  KEY `FKn5xgv2ivnjge2emnql0hhq95i` (`vote_id`),
  CONSTRAINT `FK8kcum44fvpupyw6f5baccx25c` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKn5xgv2ivnjge2emnql0hhq95i` FOREIGN KEY (`vote_id`) REFERENCES `vote` (`id`),
  CONSTRAINT `FKs5dfye28dnneuwfusrpn6mulm` FOREIGN KEY (`original_id`) REFERENCES `comment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (15,'야근 동지들 힘내세요','2022-11-17 16:54:19.924000',_binary '\0',4,'2022-11-17 16:54:19.924000',NULL,15,24),(16,'당연히 제육먹었죠~~~~','2022-11-17 17:06:16.713000',_binary '\0',1,'2022-11-17 17:06:16.713000',NULL,12,25),(17,'그쵸 제육먹어야죠','2022-11-17 17:07:40.794000',_binary '\0',0,'2022-11-17 17:07:40.794000',16,14,25),(18,'짬뽕밥 맛있었습니다!!!','2022-11-17 17:09:27.586000',_binary '\0',3,'2022-11-17 17:09:27.586000',NULL,15,25),(19,'짬뽕 22222222','2022-11-17 17:13:25.604000',_binary '\0',1,'2022-11-17 17:13:25.604000',18,7,25),(20,'에어컨 그만 ㅠ','2022-11-18 10:13:41.813000',_binary '\0',0,'2022-11-18 10:13:41.813000',NULL,10,20),(21,'당연히 맛있죠~','2022-11-18 10:14:16.553000',_binary '\0',2,'2022-11-18 10:14:16.553000',NULL,8,26),(22,'시러','2022-11-18 10:14:51.985000',_binary '\0',0,'2022-11-18 10:14:51.985000',15,10,24),(23,'죠습니다','2022-11-18 10:51:53.306000',_binary '\0',1,'2022-11-18 10:51:53.306000',NULL,8,27),(24,'ㅇㅈ합니다 반박시맛알못~','2022-11-18 11:11:37.306000',_binary '\0',1,'2022-11-18 11:11:37.306000',NULL,11,26),(25,'뭐가 더 좋은지를 묻는 게 아니었군여.... 그래도 지하철이 덜흔들려서 폰하기에 딱','2022-11-18 14:02:59.175000',_binary '\0',0,'2022-11-18 14:02:59.175000',NULL,11,37),(26,'스타벅스 기프티콘 주세요','2022-11-21 11:38:22.518000',_binary '\0',1,'2022-11-21 11:38:22.518000',NULL,11,22);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `vote_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKq038bxx6t6p0vjejoun1vylne` (`vote_id`),
  CONSTRAINT `FKq038bxx6t6p0vjejoun1vylne` FOREIGN KEY (`vote_id`) REFERENCES `vote` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (18,'2022-11-17 15:49:24.120000','2022-11-17 15:49:24.120000','',20),(19,'2022-11-17 16:06:05.833000','2022-11-17 16:06:05.833000','',21),(20,'2022-11-17 16:21:29.837000','2022-11-17 16:21:29.837000','',22),(21,'2022-11-17 16:27:03.573000','2022-11-17 16:27:03.573000','',23),(22,'2022-11-17 16:37:38.151000','2022-11-17 16:37:38.151000','',24),(23,'2022-11-17 16:47:51.136000','2022-11-17 16:47:51.136000','',25),(24,'2022-11-17 17:23:33.710000','2022-11-17 17:23:33.710000','b25f8b50-ccc2-4877-beb0-322d4ed89b99',26),(25,'2022-11-18 10:15:19.936000','2022-11-18 10:15:19.936000','4a20bf27-29db-4f56-8cf2-2228d7cbed20',27),(26,'2022-11-18 10:52:45.121000','2022-11-18 10:52:45.121000','7dbab96b-ac7f-437b-8cff-142f7ef9fab9',28),(27,'2022-11-18 11:03:11.370000','2022-11-18 11:03:11.370000','1050fa9c-7f32-404d-94bc-5e6a8b6eaecc',29),(28,'2022-11-18 11:03:13.771000','2022-11-18 11:03:13.771000','218dcc3b-af4d-4a11-b7d3-472254649269',30),(29,'2022-11-18 11:03:31.931000','2022-11-18 11:03:31.931000','',31),(30,'2022-11-18 11:03:48.921000','2022-11-18 11:03:48.921000','b51a155a-465c-4856-ab0b-72f7722cdc91',32),(31,'2022-11-18 11:12:01.134000','2022-11-18 11:12:01.134000','2b450e6a-6357-4b17-bad5-15f3977ed632',33),(33,'2022-11-18 11:20:00.610000','2022-11-18 11:20:00.610000','b4799122-eb73-4d7c-b5fc-e5d62fedf18b',35),(35,'2022-11-18 11:32:51.406000','2022-11-18 11:32:51.406000','d3d16596-e674-46b2-9c52-b4a70a6c79e7',37),(36,'2022-11-18 15:08:29.914000','2022-11-18 15:08:29.914000','',38),(37,'2022-11-20 19:58:01.530000','2022-11-20 19:58:01.530000','ef4e3bdb-f023-4088-877a-337c983d0eb4',39),(38,'2022-11-20 19:58:51.901000','2022-11-20 19:58:51.901000','118a8d3c-1a8a-41e7-8b1d-4ea84b78587f',40),(39,'2022-11-20 20:00:56.880000','2022-11-20 20:00:56.880000','60a0d9a4-982e-47de-aa09-faa1f8bcdb8a',41),(40,'2022-11-21 11:39:28.546000','2022-11-21 11:39:28.546000','96eec168-68cb-467a-8645-508118ed37ec',42),(41,'2022-11-21 12:41:31.356000','2022-11-21 12:41:31.356000','d38ae948-3074-4137-b519-b7713bb5e73c',43),(42,'2022-11-21 14:36:51.445000','2022-11-21 14:36:51.445000','',44);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote_item`
--

DROP TABLE IF EXISTS `vote_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vote_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `vote_count` int DEFAULT NULL,
  `vote_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKky2h5qevbsp1vtwsmjig0mnvt` (`vote_id`),
  CONSTRAINT `FKky2h5qevbsp1vtwsmjig0mnvt` FOREIGN KEY (`vote_id`) REFERENCES `vote` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote_item`
--

LOCK TABLES `vote_item` WRITE;
/*!40000 ALTER TABLE `vote_item` DISABLE KEYS */;
INSERT INTO `vote_item` VALUES (36,'춥다','2022-11-17 15:49:24.116000','2022-11-17 15:49:24.116000',5,20),(37,'덥다','2022-11-17 15:49:24.118000','2022-11-17 15:49:24.118000',2,20),(38,'괜찮다','2022-11-17 15:49:24.119000','2022-11-17 15:49:24.119000',4,20),(39,'맛있다','2022-11-17 16:06:05.827000','2022-11-17 16:06:05.827000',3,21),(40,'보통이다','2022-11-17 16:06:05.829000','2022-11-17 16:06:05.829000',1,21),(41,'별로다','2022-11-17 16:06:05.832000','2022-11-17 16:06:05.832000',0,21),(42,'바나프레소','2022-11-17 16:21:29.831000','2022-11-17 16:21:29.831000',1,22),(43,'커피빈','2022-11-17 16:21:29.832000','2022-11-17 16:21:29.832000',1,22),(44,'스타벅스','2022-11-17 16:21:29.833000','2022-11-17 16:21:29.833000',4,22),(45,'매머드','2022-11-17 16:21:29.834000','2022-11-17 16:21:29.834000',2,22),(46,'블루샥','2022-11-17 16:21:29.836000','2022-11-17 16:21:29.836000',3,22),(47,'서플라이 국밥','2022-11-17 16:27:03.569000','2022-11-17 16:27:03.569000',3,23),(48,'팩토리 분식','2022-11-17 16:27:03.571000','2022-11-17 16:27:03.571000',2,23),(49,'스타포트 레스토랑','2022-11-17 16:27:03.572000','2022-11-17 16:27:03.572000',1,23),(50,'난 칼퇴다','2022-11-17 16:37:38.149000','2022-11-17 16:37:38.149000',3,24),(51,'난 야근이다','2022-11-17 16:37:38.150000','2022-11-17 16:37:38.150000',4,24),(52,'제육','2022-11-17 16:47:51.134000','2022-11-17 16:47:51.134000',3,25),(53,'짬뽕밥','2022-11-17 16:47:51.135000','2022-11-17 16:47:51.135000',5,25),(54,'맛있다','2022-11-17 17:23:33.708000','2022-11-17 17:23:33.708000',5,26),(55,'맛없다','2022-11-17 17:23:33.709000','2022-11-17 17:23:33.709000',3,26),(56,'죠습니다','2022-11-18 10:15:19.934000','2022-11-18 10:15:19.934000',1,27),(57,'안죠습니다','2022-11-18 10:15:19.935000','2022-11-18 10:15:19.935000',0,27),(58,'써볼거다','2022-11-18 10:52:45.118000','2022-11-18 10:52:45.118000',1,28),(59,'안써볼거다','2022-11-18 10:52:45.120000','2022-11-18 10:52:45.120000',0,28),(60,'또 하고 싶어요','2022-11-18 11:03:11.367000','2022-11-18 11:03:11.367000',1,29),(61,'그냥 그랬어요','2022-11-18 11:03:11.368000','2022-11-18 11:03:11.368000',0,29),(62,'별루 ㅠ','2022-11-18 11:03:11.369000','2022-11-18 11:03:11.369000',0,29),(63,'나도 안온다 ','2022-11-18 11:03:13.769000','2022-11-18 11:03:13.769000',1,30),(64,'평소랑 같다','2022-11-18 11:03:13.770000','2022-11-18 11:03:13.770000',2,30),(65,'논다','2022-11-18 11:03:31.927000','2022-11-18 11:03:31.927000',1,31),(66,'쉰다','2022-11-18 11:03:31.929000','2022-11-18 11:03:31.929000',2,31),(67,'일한다','2022-11-18 11:03:31.930000','2022-11-18 11:03:31.930000',0,31),(68,'잘 봤다 올 1등급 각이다','2022-11-18 11:03:48.919000','2022-11-18 11:03:48.919000',1,32),(69,'망했다 한강에서 만나자','2022-11-18 11:03:48.920000','2022-11-18 11:03:48.920000',1,32),(70,'bbq','2022-11-18 11:12:01.127000','2022-11-18 11:12:01.127000',0,33),(71,'페리카나','2022-11-18 11:12:01.128000','2022-11-18 11:12:01.128000',1,33),(72,'교촌','2022-11-18 11:12:01.130000','2022-11-18 11:12:01.130000',0,33),(73,'굽네','2022-11-18 11:12:01.131000','2022-11-18 11:12:01.131000',0,33),(74,'bhc','2022-11-18 11:12:01.132000','2022-11-18 11:12:01.132000',0,33),(75,'멕시카나','2022-11-18 11:12:01.133000','2022-11-18 11:12:01.133000',0,33),(78,'고양이가 좋다','2022-11-18 11:20:00.607000','2022-11-18 11:20:00.607000',2,35),(79,'강아지가 좋다','2022-11-18 11:20:00.609000','2022-11-18 11:20:00.609000',0,35),(82,'버스','2022-11-18 11:32:51.403000','2022-11-18 11:32:51.403000',0,37),(83,'지하철','2022-11-18 11:32:51.404000','2022-11-18 11:32:51.404000',1,37),(84,'','2022-11-18 15:08:29.912000','2022-11-18 15:08:29.912000',1,38),(85,'','2022-11-18 15:08:29.913000','2022-11-18 15:08:29.913000',0,38),(86,'좋아요','2022-11-20 19:58:01.528000','2022-11-20 19:58:01.528000',1,39),(87,'실어요','2022-11-20 19:58:01.529000','2022-11-20 19:58:01.529000',0,39),(88,'1','2022-11-20 19:58:51.898000','2022-11-20 19:58:51.898000',0,40),(89,'2','2022-11-20 19:58:51.899000','2022-11-20 19:58:51.899000',0,40),(90,'3','2022-11-20 19:58:51.900000','2022-11-20 19:58:51.900000',0,40),(91,'베라','2022-11-20 20:00:56.878000','2022-11-20 20:00:56.878000',0,41),(92,'설빙','2022-11-20 20:00:56.879000','2022-11-20 20:00:56.879000',1,41),(93,'도쿄','2022-11-21 11:39:28.544000','2022-11-21 11:39:28.544000',0,42),(94,'교토','2022-11-21 11:39:28.545000','2022-11-21 11:39:28.545000',0,42),(95,'사가','2022-11-21 11:39:28.546000','2022-11-21 11:39:28.546000',0,42),(96,'취업준비','2022-11-21 12:41:31.350000','2022-11-21 12:41:31.350000',3,43),(97,'다른 교육기관 가기','2022-11-21 12:41:31.351000','2022-11-21 12:41:31.351000',0,43),(98,'놀기','2022-11-21 12:41:31.352000','2022-11-21 12:41:31.352000',0,43),(99,'아무것도 안하기','2022-11-21 12:41:31.353000','2022-11-21 12:41:31.353000',0,43),(100,'기타','2022-11-21 12:41:31.354000','2022-11-21 12:41:31.354000',0,43),(101,'뜨아','2022-11-21 14:36:51.441000','2022-11-21 14:36:51.441000',1,44),(102,'아아','2022-11-21 14:36:51.444000','2022-11-21 14:36:51.444000',0,44);
/*!40000 ALTER TABLE `vote_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `comment_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8arpx7i3g3e5dammtdsira2m6` (`comment_id`),
  KEY `FKi2wo4dyk4rok7v4kak8sgkwx0` (`user_id`),
  CONSTRAINT `FK8arpx7i3g3e5dammtdsira2m6` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`),
  CONSTRAINT `FKi2wo4dyk4rok7v4kak8sgkwx0` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (23,'2022-11-17 17:12:47.683000','2022-11-17 17:12:47.683000',16,9),(25,'2022-11-17 17:13:13.238000','2022-11-17 17:13:13.238000',18,7),(27,'2022-11-17 17:14:09.143000','2022-11-17 17:14:09.143000',18,10),(28,'2022-11-17 17:16:28.511000','2022-11-17 17:16:28.511000',19,7),(30,'2022-11-17 17:19:32.701000','2022-11-17 17:19:32.701000',15,9),(31,'2022-11-17 17:25:49.940000','2022-11-17 17:25:49.940000',15,16),(32,'2022-11-17 17:27:28.483000','2022-11-17 17:27:28.483000',18,9),(33,'2022-11-18 10:14:20.814000','2022-11-18 10:14:20.814000',21,8),(34,'2022-11-18 10:14:44.595000','2022-11-18 10:14:44.595000',15,10),(35,'2022-11-18 10:51:57.944000','2022-11-18 10:51:57.944000',23,8),(36,'2022-11-18 11:16:22.702000','2022-11-18 11:16:22.702000',15,7),(37,'2022-11-21 11:38:29.219000','2022-11-21 11:38:29.219000',26,11),(38,'2022-11-21 15:22:03.378000','2022-11-21 15:22:03.378000',21,9),(39,'2022-11-21 15:22:04.236000','2022-11-21 15:22:04.236000',24,9);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote_log`
--

DROP TABLE IF EXISTS `vote_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vote_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `vote_id` bigint DEFAULT NULL,
  `vote_item_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKagqnk6olk4wvwyodxbhod4prx` (`user_id`),
  KEY `FKhljehbsl2c17derfgewsnfw1y` (`vote_id`),
  KEY `FKn9d4q6kql9xg6161qgiv7oxlc` (`vote_item_id`),
  CONSTRAINT `FKagqnk6olk4wvwyodxbhod4prx` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKhljehbsl2c17derfgewsnfw1y` FOREIGN KEY (`vote_id`) REFERENCES `vote` (`id`),
  CONSTRAINT `FKn9d4q6kql9xg6161qgiv7oxlc` FOREIGN KEY (`vote_item_id`) REFERENCES `vote_item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote_log`
--

LOCK TABLES `vote_log` WRITE;
/*!40000 ALTER TABLE `vote_log` DISABLE KEYS */;
INSERT INTO `vote_log` VALUES (27,'2022-11-17 15:54:30.157000','2022-11-17 15:54:30.157000',9,20,36),(28,'2022-11-17 15:54:57.610000','2022-11-17 15:54:57.610000',15,20,36),(29,'2022-11-17 15:55:09.808000','2022-11-17 15:55:09.808000',16,20,38),(30,'2022-11-17 15:55:26.960000','2022-11-17 15:55:26.960000',17,20,38),(31,'2022-11-17 15:55:37.017000','2022-11-17 15:55:37.017000',18,20,38),(32,'2022-11-17 15:55:48.229000','2022-11-17 15:55:48.229000',19,20,37),(33,'2022-11-17 15:56:04.258000','2022-11-17 15:56:04.258000',20,20,38),(34,'2022-11-17 15:59:00.279000','2022-11-17 15:59:00.279000',8,20,36),(35,'2022-11-17 16:06:24.983000','2022-11-17 16:06:24.983000',9,21,39),(36,'2022-11-17 16:06:34.886000','2022-11-17 16:06:34.886000',15,21,39),(37,'2022-11-17 16:06:49.458000','2022-11-17 16:06:49.458000',16,21,40),(38,'2022-11-17 16:07:03.100000','2022-11-17 16:07:03.100000',17,21,39),(39,'2022-11-17 16:21:38.765000','2022-11-17 16:21:38.765000',17,22,44),(40,'2022-11-17 16:21:49.176000','2022-11-17 16:21:49.176000',16,22,44),(41,'2022-11-17 16:22:09.077000','2022-11-17 16:22:09.077000',18,22,44),(42,'2022-11-17 16:22:25.235000','2022-11-17 16:22:25.235000',21,22,43),(43,'2022-11-17 16:22:37.316000','2022-11-17 16:22:37.316000',9,22,42),(44,'2022-11-17 16:22:46.817000','2022-11-17 16:22:46.817000',20,22,46),(45,'2022-11-17 16:33:38.986000','2022-11-17 16:33:38.986000',9,23,47),(46,'2022-11-17 16:37:44.673000','2022-11-17 16:37:44.673000',9,24,51),(47,'2022-11-17 16:43:59.832000','2022-11-17 16:43:59.832000',7,22,46),(48,'2022-11-17 16:48:50.430000','2022-11-17 16:48:50.430000',7,25,53),(49,'2022-11-17 16:53:41.723000','2022-11-17 16:53:41.723000',21,24,51),(50,'2022-11-17 16:53:53.132000','2022-11-17 16:53:53.132000',20,24,50),(51,'2022-11-17 16:54:06.543000','2022-11-17 16:54:06.543000',15,24,51),(52,'2022-11-17 16:56:08.734000','2022-11-17 16:56:08.734000',8,23,48),(53,'2022-11-17 16:56:21.431000','2022-11-17 16:56:21.431000',14,23,47),(54,'2022-11-17 16:56:32.977000','2022-11-17 16:56:32.977000',16,23,49),(55,'2022-11-17 16:57:00.533000','2022-11-17 16:57:00.533000',21,23,47),(56,'2022-11-17 16:57:08.447000','2022-11-17 16:57:08.447000',18,23,48),(57,'2022-11-17 17:05:34.126000','2022-11-17 17:05:34.126000',12,25,52),(58,'2022-11-17 17:07:10.419000','2022-11-17 17:07:10.419000',14,25,52),(59,'2022-11-17 17:08:41.442000','2022-11-17 17:08:41.442000',15,25,53),(60,'2022-11-17 17:10:16.890000','2022-11-17 17:10:16.890000',10,25,53),(61,'2022-11-17 17:11:08.002000','2022-11-17 17:11:08.002000',8,25,53),(62,'2022-11-17 17:12:36.501000','2022-11-17 17:12:36.501000',9,25,52),(63,'2022-11-17 17:23:47.172000','2022-11-17 17:23:47.172000',9,26,54),(64,'2022-11-17 17:24:13.121000','2022-11-17 17:24:13.121000',14,26,54),(65,'2022-11-17 17:24:22.447000','2022-11-17 17:24:22.447000',15,26,55),(66,'2022-11-17 17:24:33.625000','2022-11-17 17:24:33.625000',16,26,54),(67,'2022-11-17 17:25:34.258000','2022-11-17 17:25:34.258000',16,24,50),(68,'2022-11-18 10:13:28.405000','2022-11-18 10:13:28.405000',10,20,36),(69,'2022-11-18 10:14:09.347000','2022-11-18 10:14:09.347000',8,26,54),(70,'2022-11-18 10:14:14.277000','2022-11-18 10:14:14.277000',10,26,55),(71,'2022-11-18 10:14:28.433000','2022-11-18 10:14:28.433000',8,22,45),(72,'2022-11-18 10:14:32.742000','2022-11-18 10:14:32.742000',10,22,45),(73,'2022-11-18 10:14:42.128000','2022-11-18 10:14:42.128000',10,24,50),(74,'2022-11-18 10:51:45.204000','2022-11-18 10:51:45.204000',8,27,56),(75,'2022-11-18 11:03:46.316000','2022-11-18 11:03:46.316000',10,30,64),(76,'2022-11-18 11:04:16.747000','2022-11-18 11:04:16.747000',11,32,68),(77,'2022-11-18 11:04:44.872000','2022-11-18 11:04:44.872000',7,30,64),(78,'2022-11-18 11:04:58.683000','2022-11-18 11:04:58.683000',11,22,44),(79,'2022-11-18 11:05:00.469000','2022-11-18 11:05:00.469000',10,31,66),(80,'2022-11-18 11:05:06.962000','2022-11-18 11:05:06.962000',7,26,55),(81,'2022-11-18 11:06:21.648000','2022-11-18 11:06:21.648000',11,31,65),(82,'2022-11-18 11:10:49.020000','2022-11-18 11:10:49.020000',11,25,53),(83,'2022-11-18 11:11:22.822000','2022-11-18 11:11:22.822000',11,26,54),(85,'2022-11-18 11:14:38.542000','2022-11-18 11:14:38.542000',7,33,71),(88,'2022-11-18 11:16:14.444000','2022-11-18 11:16:14.444000',7,20,36),(89,'2022-11-18 11:16:19.861000','2022-11-18 11:16:19.861000',7,24,51),(90,'2022-11-18 11:16:31.514000','2022-11-18 11:16:31.514000',10,29,60),(91,'2022-11-18 11:18:43.144000','2022-11-18 11:18:43.144000',9,32,69),(92,'2022-11-18 11:19:02.009000','2022-11-18 11:19:02.009000',9,31,66),(93,'2022-11-18 11:20:16.753000','2022-11-18 11:20:16.753000',9,35,78),(94,'2022-11-18 11:20:19.134000','2022-11-18 11:20:19.134000',11,35,78),(95,'2022-11-18 11:33:52.626000','2022-11-18 11:33:52.626000',9,30,63),(96,'2022-11-18 14:02:12.961000','2022-11-18 14:02:12.961000',11,37,83),(97,'2022-11-18 15:06:00.286000','2022-11-18 15:06:00.286000',8,28,58),(98,'2022-11-18 15:12:46.630000','2022-11-18 15:12:46.630000',8,38,84),(99,'2022-11-20 20:00:59.980000','2022-11-20 20:00:59.980000',11,41,92),(100,'2022-11-20 20:01:04.734000','2022-11-20 20:01:04.734000',11,39,86),(101,'2022-11-21 14:03:44.981000','2022-11-21 14:03:44.981000',9,43,96),(102,'2022-11-21 14:12:03.383000','2022-11-21 14:12:03.383000',8,43,96),(103,'2022-11-21 14:35:12.724000','2022-11-21 14:35:12.724000',23,22,46),(104,'2022-11-21 14:35:29.923000','2022-11-21 14:35:29.923000',23,20,37),(105,'2022-11-21 14:37:00.293000','2022-11-21 14:37:00.293000',23,44,101),(106,'2022-11-21 14:38:43.844000','2022-11-21 14:38:43.844000',23,43,96);
/*!40000 ALTER TABLE `vote_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'2022-11-10 10:11:15.267000','1','2022-11-10 10:11:15.267000'),(2,'2022-11-10 10:11:22.633000','2','2022-11-10 10:11:22.633000'),(3,'2022-11-10 10:11:26.181000','3','2022-11-10 10:11:26.181000');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `birth_year` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `current_location` bigint DEFAULT NULL,
  `current_range` int DEFAULT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `kakao` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (7,1994,'2022-11-08 13:21:03.132000',27,2000,NULL,'rdt2359@gmail.com','male','2496672432','김윤석','2022-11-08 13:21:03.132000'),(8,2000,'2022-11-15 11:18:04.067000',28,2000,NULL,'orien93@naver.com','male','2505817822','발표자김종휘','2022-11-15 11:18:04.067000'),(9,1997,'2022-11-15 11:21:59.215000',52,2000,NULL,'s_kzxcv@naver.com','male','2506780773','kwon','2022-11-15 11:21:59.215000'),(10,1996,'2022-11-15 16:39:48.368000',46,2000,NULL,'glowdonor@gmail.com','male','2516559339','태경','2022-11-15 16:39:48.368000'),(11,1996,'2022-11-15 17:54:23.424000',54,2000,NULL,'1004romeo@naver.com','male','2524466141','전설의 쫄보','2022-11-15 17:54:23.424000'),(12,1972,'2022-11-15 19:10:47.128000',43,2000,NULL,'sh7ryu@hanmail.net','female','2526672617','여유상이','2022-11-15 19:10:47.128000'),(13,2022,'2022-11-15 21:09:38.110000',23,500,NULL,'jt0618@naver.com','male','2526835282','unknown','2022-11-15 21:09:38.110000'),(14,1995,'2022-11-17 06:36:12.000000',34,1000,NULL,'test1@test.com','female','1','싸피인','2022-11-17 06:36:12.000000'),(15,1995,'2022-11-17 06:36:21.000000',35,1000,NULL,'test2@test.com','female','2','커피사랑','2022-11-17 06:36:21.000000'),(16,1995,'2022-11-17 06:41:24.000000',36,1000,NULL,'test3@test.com','female','3','테스트3','2022-11-17 06:41:24.000000'),(17,1995,'2022-11-17 06:41:31.000000',37,1000,NULL,'test4@test.com','female','4','테스트4','2022-11-17 06:41:31.000000'),(18,1995,'2022-11-17 06:41:38.000000',38,1000,NULL,'test5@test.com','female','5','테스트5','2022-11-17 06:41:38.000000'),(19,1995,'2022-11-17 06:41:46.000000',39,1000,NULL,'test6@test.com','female','6','테스트6','2022-11-17 06:41:46.000000'),(20,1995,'2022-11-17 06:41:54.000000',40,1000,NULL,'test7@test.com','female','7','테스트7','2022-11-17 06:41:54.000000'),(21,1995,'2022-11-17 07:09:30.000000',41,1000,NULL,'test8@test.com','male','8','건설로봇','2022-11-17 07:09:30.000000'),(22,1996,'2022-11-18 10:13:21.257000',44,500,NULL,'shy625@kakao.com','male','2539137330','shy','2022-11-18 10:13:21.257000'),(23,1980,'2022-11-21 14:30:17.153000',55,500,NULL,'haney0y@gmail.com','female','2543510609','한하하','2022-11-21 14:30:17.153000'),(24,1985,'2022-11-21 14:31:07.383000',56,500,NULL,'fufru@naver.com','male','2543517406','피나코','2022-11-21 14:31:07.383000');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `end_date` datetime(6) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `seq` int DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeua4vn06qu0iq9d32qnmuhqkl` (`user_id`),
  CONSTRAINT `FKeua4vn06qu0iq9d32qnmuhqkl` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (12,'역삼동','2022-11-15 16:40:26.776000','2022-12-15 16:40:26.776000',37.4954954954955,127.03887148607944,0,'2022-11-15 16:40:26.776000',10),(16,'역삼동','2022-11-15 17:55:10.246000','2022-12-15 17:55:10.246000',37.5018598,127.0399935,1,'2022-11-15 17:55:10.246000',9),(19,'방이동','2022-11-15 19:06:11.497000','2022-12-15 19:06:11.497000',37.51087828595486,127.11492553227896,1,'2022-11-15 19:06:11.497000',11),(20,'방이동','2022-11-15 19:11:10.463000','2022-12-15 19:11:10.463000',37.510897525244914,127.11488676857138,0,'2022-11-15 19:11:10.463000',12),(23,'방이동','2022-11-15 21:10:10.025000','2022-12-15 21:10:10.025000',37.510883,127.1148965,0,'2022-11-15 21:10:10.025000',13),(27,'역삼동','2022-11-16 09:10:05.431000','2022-12-16 09:10:05.431000',37.5017072,127.0397919,1,'2022-11-16 09:10:05.431000',7),(28,'역삼동','2022-11-16 10:19:32.662000','2022-12-16 10:19:32.662000',37.5018186,127.039961,1,'2022-11-16 10:19:32.662000',8),(34,'역삼동','2022-11-17 06:39:35.000000','2022-11-17 06:39:35.000000',37.502,127.041,0,'2022-11-17 06:39:35.000000',14),(35,'역삼동','2022-11-17 06:39:42.000000','2022-11-17 06:39:42.000000',37.502,127.041,0,'2022-11-17 06:39:42.000000',15),(36,'역삼동','2022-11-17 06:42:12.000000','2022-11-17 06:42:12.000000',37.502,127.041,0,'2022-11-17 06:42:12.000000',16),(37,'역삼동','2022-11-17 06:42:15.000000','2022-11-17 06:42:15.000000',37.502,127.041,0,'2022-11-17 06:42:15.000000',17),(38,'역삼동','2022-11-17 06:42:19.000000','2022-11-17 06:42:19.000000',37.502,127.041,0,'2022-11-17 06:42:19.000000',18),(39,'역삼동','2022-11-17 06:42:22.000000','2022-11-17 06:42:22.000000',37.502,127.041,0,'2022-11-17 06:42:22.000000',19),(40,'역삼동','2022-11-17 06:42:25.000000','2022-11-17 06:42:25.000000',37.502,127.041,0,'2022-11-17 06:42:25.000000',20),(41,'역삼동','2022-11-17 07:09:37.000000','2022-11-17 07:09:37.000000',37.489,127.054,0,'2022-11-17 07:09:37.000000',21),(42,'기본값','2022-11-17 16:43:46.679000','2022-12-17 16:43:46.679000',37.5018494,127.0399722,0,'2022-11-17 16:43:46.679000',7),(43,'역삼동','2022-11-17 17:05:17.252000','2022-12-17 17:05:17.252000',37.5016972,127.0397567,1,'2022-11-17 17:05:17.252000',12),(44,'신림동','2022-11-18 10:14:14.849000','2022-12-18 10:14:14.849000',37.483602,126.9337328,0,'2022-11-18 10:14:14.849000',22),(46,'삼선동5가','2022-11-18 10:15:22.579000','2022-12-18 10:15:22.579000',37.5881724,127.014911,1,'2022-11-18 10:15:22.579000',10),(52,'가좌동','2022-11-18 11:10:35.006000','2022-12-18 11:10:35.006000',37.6903755,126.7208416,0,'2022-11-18 11:10:35.006000',9),(53,'관양동','2022-11-18 15:14:04.398000','2022-12-18 15:14:04.398000',37.4112256,126.9661696,0,'2022-11-18 15:14:04.398000',8),(54,'역삼동','2022-11-21 11:41:11.305000','2022-12-21 11:41:11.305000',37.50174533872952,127.03951704689719,0,'2022-11-21 11:41:11.305000',11),(55,'역삼동','2022-11-21 14:32:01.192000','2022-12-21 14:32:01.192000',37.5018493,127.0399905,0,'2022-11-21 14:32:01.192000',23),(56,'기본값','2022-11-21 14:33:12.690000','2022-12-21 14:33:12.690000',-1,-1,0,'2022-11-21 14:33:12.690000',24);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-21 15:31:48
