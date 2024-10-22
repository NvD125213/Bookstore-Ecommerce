-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: da3
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentID` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Hư cấu',NULL,NULL,NULL,NULL),(2,'Phi hư cấu',NULL,NULL,NULL,NULL),(3,'Thiếu nhi',NULL,NULL,NULL,NULL),(4,'Phân loại khác',NULL,NULL,NULL,NULL),(5,'Văn học hiện đại',1,NULL,NULL,NULL),(6,'Văn học kinh điển',1,NULL,NULL,NULL),(7,'Văn học lãng mạn',1,NULL,NULL,NULL),(8,'Văn học kỳ ảo',1,NULL,NULL,NULL),(9,'Trinh thám',1,NULL,NULL,NULL),(10,'Triết học phương tây',2,NULL,NULL,NULL),(11,'Sử học',2,NULL,NULL,NULL),(12,'Khoa học',2,NULL,NULL,NULL),(13,'Công nghệ',2,NULL,NULL,NULL),(14,'Văn học',2,NULL,NULL,NULL),(15,'Truyện tranh',3,NULL,NULL,NULL),(16,'Truyện tranh thiếu nhi',3,NULL,NULL,NULL),(17,'0-5 tuổi thôi',3,NULL,NULL,NULL),(18,'12-16 tuổi',3,NULL,NULL,NULL),(19,'Sách tô màu',4,NULL,NULL,NULL),(20,'Dụng cụ học tập',4,NULL,NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_06_03_161727_create_personal_access_tokens_table',1),(5,'2024_06_07_191153_create_table__category',2),(6,'2024_06_07_191548_create_table__categories',3),(7,'2024_06_09_145955_add_deleted_at_to_categories_table',4),(8,'2024_06_10_005539_create_product_table',5),(9,'2024_06_10_013139_create_product_images_table',6),(10,'2024_06_14_164100_create_orders_table',7),(11,'2024_06_14_164610_create_order__detail_table',8),(12,'2024_06_14_165102_create_orderdetails_table',9),(13,'2024_06_17_152000_add_timestamp_table_sliders',10);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,1,7,5,120000,'2024-06-14 11:26:13','2024-06-14 11:26:13'),(2,1,8,4,20000,'2024-06-14 11:26:13','2024-06-14 11:26:13'),(3,2,7,2,120000,'2024-06-14 22:11:50','2024-06-14 22:11:50'),(4,2,8,1,20000,'2024-06-14 22:11:50','2024-06-14 22:11:50'),(5,3,8,2,20000,'2024-06-14 22:11:50','2024-06-14 22:11:50'),(6,4,8,5,20000,'2024-06-14 22:11:50','2024-06-14 22:11:50'),(7,5,7,4,120000,'2024-06-16 20:47:39','2024-06-16 20:47:39'),(8,6,9,2,96000,'2024-06-16 21:41:56','2024-06-16 21:41:56'),(9,7,9,3,96000,'2024-06-18 02:09:09','2024-06-18 02:09:09');
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,2,'Ngô Văn Đức','ilovejapansong@gmail.com','0834802680','Số 210, Thành Trì, Hoàng Mai','Hà Nội','2024-06-14 11:26:13','2024-06-14 11:26:13',1),(2,2,'Long Trương','duc@gmail.com','0834802680','Số 210, Thành Trì, Hoàng Mai','Hà Nội','2024-06-14 22:11:50','2024-06-14 22:11:50',1),(3,3,'Raman','ram@gmail.com','0834802680','Số 210, Thành Trì, Hoàng Mai','Hà Nội','2024-06-14 22:11:50','2024-06-14 22:11:50',1),(4,3,'Basich','bas@gmail.com','0834802680','Số 210, Thành Trì, Hoàng Mai','Hà Nội','2024-06-14 22:11:50','2024-06-14 22:11:50',1),(5,2,'Trần Thoại','duc@gmail.com','0834802680','Số 479/29, Lĩnh Nam','Hà Nội','2024-06-16 20:47:39','2024-06-16 20:47:39',0),(6,2,'NNN','duc@gmail.com','0834802680','Số 210, Thành Trì, Hoàng Mai','Hà Nội','2024-06-16 21:41:56','2024-06-16 21:41:56',1),(7,2,'Nguyễn Như Phương','duc@gmail.com','0834802680','Số 210, Thành Trì, Hoàng Mai','Hà Nội','2024-06-18 02:09:09','2024-06-18 02:09:09',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (29,'App\\Models\\User',6,'ddt@gmail.com_Token','f0ee22e9ab73a20ec29af0908fcdcac748af151fb86091db58538353cf9bd856','[\"*\"]',NULL,NULL,'2024-06-13 03:34:40','2024-06-13 03:34:40'),(30,'App\\Models\\User',6,'ddt@gmail.com_Token','ec86f425bc0d0b7d7f37efa2e02a6cd9cce2ea308bc0593c6ab502d33c52b3eb','[\"*\"]',NULL,NULL,'2024-06-13 03:35:26','2024-06-13 03:35:26'),(36,'App\\Models\\User',2,'nvd@gmail.com_AdminToken','19a7a710e5b14708cce382617ed873cf2c3d159a18f708bad5df2626e299a41e','[\"server:admin\"]',NULL,NULL,'2024-06-13 19:04:42','2024-06-13 19:04:42'),(37,'App\\Models\\User',2,'nvd@gmail.com_AdminToken','4ff405f56d289578b90b586ba33511ac2b017373c307eb20b624f0c0ea31391c','[\"server:admin\"]',NULL,NULL,'2024-06-13 19:06:46','2024-06-13 19:06:46'),(39,'App\\Models\\User',2,'nvd@gmail.com_AdminToken','b4c93e5034c5bbf056ef7e7dfca4a7dad8809efc9953d8bfccd824b21570ef56','[\"server:admin\"]',NULL,NULL,'2024-06-15 09:10:02','2024-06-15 09:10:02'),(49,'App\\Models\\User',2,'nvd@gmail.com_AdminToken','6b970e519e570b1c643333789033b37ec2efb3f19112fab9cbe64df934a614f0','[\"server:admin\"]','2024-06-18 02:17:50',NULL,'2024-06-18 02:06:46','2024-06-18 02:17:50');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tittle` varchar(150) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `userID` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentID` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `view` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (7,'KHỔNG GIÁO PHÊ BÌNH TIỂU LUẬN 3',120000,198,'uploads/product/ckndPqsrx5Y1JbCHLt4YFO5zYfNZoHhp.jpg',NULL,'Vào những thập niên đầu thế kỷ 20, Nho giáo ở Trung Quốc cũng như ở Việt Nam, sau hàng nghìn năm tồn tại ở địa vị độc tôn về tư tưởng, chính trị, bắt đầu lung lạc và bị chất vấn hơn bao giờ hết. Các chủ nghĩa, học phái nổi lên ở các nước Á Đông như Trung Quốc và Việt Nam đều không đứng ngoài những câu hỏi lớn đương thời: Nho giáo đã hết thời hay chưa? Nên duy trì hay đào thải, dung hòa hay công kích Nho giáo khi mà mưa Âu gió Mỹ đang tràn vào làm thay đổi tận gốc xã hội?',5,'2024-06-12 09:00:03','2024-06-12 09:00:03','Đào Duy Hải',3,0),(8,'BÓNG ĐÊM BÁT XÍCH MÔN',20000,95,'uploads/product/gl67ceE3flk9JTtg5MctptDedr9LDl41.jpg',NULL,'Con thỏ nguyền rủa là tập truyện ngắn đầy ám ảnh, hài hước, gớm ghiếc và ghê rợn về những cơn ác mộng của cuộc sống hiện đại, trong một thế giới \"nhìn chung là khốc liệt và xa lạ, đôi khi cũng đẹp và mê hoặc, nhưng ngay cả trong những giây phút đó, về cơ bản nó vẫn là một chốn man rợ.\"',3,'2024-06-12 10:33:38','2024-06-12 10:33:38','Trần Đình Nam',0,0),(9,'TOTTOCHAN BÊN CỬA SỔ',96000,92,'uploads/product/w9VtHJIGI6QzkWUC1aAUDHNV7SOTEHvW.jpg',NULL,'Cuốn sách là tuyển tập 10 truyện ngắn kinh dị của nhà văn Hàn Quốc Chung Bora, tái hiện lại những cuộc đời cô độc giữa xã hội vô cảm lạnh lùng.',13,'2024-06-12 08:04:39','2024-06-12 08:04:39','Hoàng Văn Khánh',1,0),(10,'CON THỎ NGUYỀN RỦA',10000,10,'uploads/product/y2vnCMr8zx0Mulwhe3d0qWGaxc4dc3Rf.jpg',NULL,'Cuốn sách là tuyển tập 10 truyện ngắn kinh dị của nhà văn Hàn Quốc Chung Bora, tái hiện lại những cuộc đời cô độc giữa xã hội vô cảm lạnh lùng.',13,'2024-06-12 08:11:39','2024-06-12 08:11:39','John Bell',5,0),(11,'Ngụ Ngôn Triết Học - Khong con gi',10000,1004,'uploads/product/tAiRJtHqPht768idr4IDTlr4PrYn4Av8.jpg',NULL,'Giá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh',11,'2024-06-12 08:11:59','2024-06-12 08:11:59','Micah Larce',6,0),(12,'Instagram',100,100,'uploads/product/mFuN0NVrX4RVkGhoUp437jynLOZmCD50.jpg',NULL,'Giá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh',11,'2024-06-12 08:10:10','2024-06-12 08:12:20','John Doe',10,0),(13,'Thần Thú Diễn Võ',10000,100,'uploads/product/cVkihusMG06HKrbzdXauvyoyCDReFT9E.jpg',NULL,'Giá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh',11,'2024-06-12 08:12:20','2024-06-12 08:12:20','Trần Trọng Nghĩa',11,0),(14,'Cardcaptor Sakura',20000,100,'uploads/product/35yWMLkx6mwVfccF3BVmbOoYY811lNqh.jpg',NULL,'Giá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh',11,'2024-06-12 08:08:47','2024-06-12 08:08:47','Pháp Trương',15,0),(15,'Hãy Nghe Con Nói',20999,200,'uploads/product/RjtVWSXyXg25Yzbaet4RKrgLpy4mDrch.jpg',NULL,'Giá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh',13,'2024-06-12 08:30:30','2024-06-12 08:32:37','Duy Hải',20,0),(16,'Ngụ Ngôn Triết Học',21998,202,'uploads/product/AsOIJyb2FBXr8afYuuKIKXT8MaXIDfi0.jpg',NULL,'Giá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh',10,'2024-06-12 08:32:37',NULL,'Phú Nam',0,0),(17,'Ngụ Ngôn Triết Học - Con Chó Của Diognes',43741,484,'uploads/product/hSDXOamJISQYOvcw63v6JJS1mwFAaroe.jpg',NULL,'Giá sản phẩm trên Fahasa.com đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như Phụ phí đóng gói, phí vận chuyển, phụ phí hàng cồng kềnh',10,'2024-06-17 03:38:27',NULL,'Hiền Trần',5,0),(18,'Thiên Sứ Nhà Bên - Tập 8.5 - Bản Đặc Biệt',76000,100,'uploads/product/QoorDoPjSeuoySuqX9GMPz4BRrHIvQ0q.jpg',NULL,'Từ cuộc gặp gỡ tình cờ, Fujimiya Amane - một học sinh trung học đang sống tự lập và khá cẩu thả, đã bắt đầu kết thân cùng Shiina Mahiru - cô gái xinh đẹp nhất trường với biệt danh thiên sứ.\r\n\r\nKhông biết từ lúc nào, đôi bên dần bị thu hút và trở thành người không thể thay thế trong tim đối phương.\r\n\r\nĐây là tập ngoại truyện khắc họa những hồi ức xoay quanh các mối quan hệ đã dần thay hình đổi dạng.\r\n\r\nMột câu chuyện tình yêu ngọt ngào và chậm rãi.',5,'2024-06-17 03:38:27','2024-06-17 03:38:27','Nguyễn Vũ Tín',4,0),(19,'Đối Thoại Với Những Người Tiên Phong',224000,100,'uploads/product/JTcow34hKxTcC0bM0kBZ2J16vYV9zk95.jpg',NULL,'Bà Vũ Kim Hạnh từng là Tổng Biên tập và là một trong những người đầu tiên xây dựng báo Tuổi Trẻ Thành phố Hồ Chí Minh thành tờ báo hàng đầu Việt Nam. Sau khi rời báo Tuổi Trẻ, bà Kim Hạnh hiện là Chủ tịch Hội Doanh nghiệp Hàng Việt Nam Chất lượng cao và Giám đốc Trung tâm Nghiên cứu kinh doanh và Hỗ trợ doanh nghiệp (BSA).\r\n\r\nSau khi về hưu chính thức, bà thành lập trung tâm xúc tiến thương mại tư nhân đầu tiên của Việt Nam với tên gọi Trung tâm Nghiên cứu Kinh doanh và Hỗ trợ Doanh nghiệp. Từ BSA, bà Kim Hạnh cùng cộng đồng những doanh nghiệp Hàng Việt Nam Chất lượng cao tiên phong lập nên Câu lạc bộ các doanh nghiệp dẫn đầu (LBC) một tổ chức tập hợp những doanh nhân hàng đầu Việt Nam với nhiều hoạt động xúc tiến, hỗ trợ doanh nghiệp và thiện nguyện.\r\n\r\nLà người đã đồng hành với Hàng Việt Nam chất lượng cao trong mấy chục năm kể từ khi chương trình này được khởi động trên báo Sài Gòn Tiếp thị năm 1996. Bà Kim Hạnh vẫn còn nhiều trăn trở về tương lai của hàng Việt trong bối cảnh thương mại toàn cầu. Những năm gần đây, cùng với Hội, BSA và Câu lạc bộ LBC, bà Kim Hạnh xây dựng phong trào thúc đẩy thanh niên khởi nghiệp, sản xuất theo chuẩn, sản xuất xanh để hội nhập sâu rộng vào thị trường thế giới.\r\nĐối Thoại Với Những Người Tiên Phong - Cuốn sách truyền cảm hứng cho giới trẻ Việt',10,'2024-06-17 04:12:50','2024-06-17 04:12:50','Vũ Kim Hạnh',4,0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_images_product_id_foreign` (`product_id`),
  CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('17stJubWbTS3kJ79UTi7aeqN632K4L4pzSB8shaQ',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTENrTjRma3dyMUxrWUlBdFhQZ0ZOUzRWMWdEenNTMnExR2VDM3l0aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODEwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718622911),('1uSA4pievvdqfQeSjmmzDUzmpes1q81lLJow7zVO',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmtDeldaNXc4VXM5OHJFc0lXS3BBODBHNTVFU2F5WEJyV21XSGFqayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODEwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718701813),('ci1U75XqaXoP5qsfQJ0AtkheyCtG0K5exZuKQcin',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDNpRzhzTloxWFhuNHZzdHdCMDltdEJsUGFJYTIwelFLVFp3YWF5RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODEwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718623061),('CNXJzvTcNnJYKN9VC86FbaA2wlcsJuQNBU2zNLS1',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFJtSVFrS3UxRHBVRTRVQXdyeUp1ZHcwOGxNOEtzY0xrbUoxOHdPZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODEwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718677260),('jDcELhYgu3KCpeeff2z294qK7HMDiM5zCPabtZLD',NULL,'127.0.0.1','PostmanRuntime/7.37.3','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUVQNDNjOG12a0k1alByOHpuTUh4bnFrYkVEZlZUMUlyaVBqNjVsRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODEwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1718697463),('xkYYLLdobiGCLAQ3Pc2YvtHzHAZGXUCI4pYAJqFs',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiR1Y0U0dHdUJBeGhZV2xBd01wdVNzcUNScnhpZDNqSFhuTTNwZnlnMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODEwMC9zYW5jdHVtL2NzcmYtY29va2llIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1718697126);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sliders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(150) DEFAULT NULL,
  `link` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (4,'uploads/slider/G9bD08mxKwtfzb4YhGSEeP39TsFGodM6.png','https://www.fahasa.com/sale?fhs_campaign=homepageslider1','2024-06-17 09:19:39','2024-06-17 09:33:24'),(6,'uploads/slider/dIQ6nMQPEy5HZpUR5K3ERb7fQzKUxGnU.png','https://www.fahasa.com/trang-bach-hoa?fhs_campaign=homepageslider4','2024-06-17 09:41:14','2024-06-17 09:41:14'),(7,'uploads/slider/uj9EXdnxKWFE2hagxEFwtZAFGaqnpiY5.jpg','https://www.fahasa.com/trang-bach-hoa?fhs_campaign=homepageslider6','2024-06-17 09:42:54','2024-06-17 09:42:54'),(8,'uploads/slider/lbOUd8Yu7a3wRzzGZ3eNctW2w7K1nWGS.jpg','https://www.fahasa.com/trang-bach-hoa?fhs_campaign=homepageslider4','2024-06-17 09:43:17','2024-06-17 09:43:17');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_as` int DEFAULT '0' COMMENT '0=users, 1=admin',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Duc','duc@gmail.com',NULL,'$2y$12$jcFcbsXZTJlj3pSfT6rdheFnNjD/G9Ljx2co.oOAI2uUTSpZC1zzG',NULL,'2024-06-03 10:01:07','2024-06-03 10:01:07',0),(2,'Đức','nvd@gmail.com',NULL,'$2y$12$m9lQgMCQpcu42pEGBxInLeUgLAlwVJ1ekGY5nyq1WaBFJYKS7omaC',NULL,'2024-06-03 10:37:33','2024-06-03 10:37:33',1),(3,'Hoàng Văn Khoa','hvk@gmail.com',NULL,'$2y$12$0le1/IGu4t1AcrAIFfadT.UiD4SzzrVi0W9TDotIW1JwX6EoYukmq',NULL,'2024-06-03 10:43:33','2024-06-03 10:43:33',0),(4,'Hoàng Long','long@gmail.com',NULL,'$2y$12$G7g/DXS8rmI23cvLQYc7A.WGFpkZ5OyUTUMR5GTDlvFvSuzICAQme',NULL,'2024-06-04 11:05:24','2024-06-04 11:05:24',0),(5,'Hà','ha@gmail.com',NULL,'$2y$12$7GPr3or4A7EeCRcHgjnYP.ratlPSxNYXtQrNkSn7gxhrgS5O31jte',NULL,'2024-06-04 11:10:57','2024-06-04 11:10:57',0),(6,'Đi đâu thế','ddt@gmail.com',NULL,'$2y$12$2B/XspjgAjl07z/hwSENIO/i8oG4ewDiEKycr.QB1D7Rup6Mtkh3i',NULL,'2024-06-13 03:34:40','2024-06-13 03:34:40',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-22 22:13:49
