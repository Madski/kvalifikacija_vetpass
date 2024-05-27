-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for vetpass
DROP DATABASE IF EXISTS `vetpass`;
CREATE DATABASE IF NOT EXISTS `vetpass` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vetpass`;

-- Dumping structure for table vetpass.appointments
DROP TABLE IF EXISTS `appointments`;
CREATE TABLE IF NOT EXISTS `appointments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pet_id` int DEFAULT NULL,
  `vet_id` int DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  `owner_name` varchar(100) DEFAULT NULL,
  `owner_contact` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vetpass.appointments: ~0 rows (approximately)
DELETE FROM `appointments`;

-- Dumping structure for table vetpass.college
DROP TABLE IF EXISTS `college`;
CREATE TABLE IF NOT EXISTS `college` (
  `id` int NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vetpass.college: ~0 rows (approximately)
DELETE FROM `college`;

-- Dumping structure for table vetpass.pets
DROP TABLE IF EXISTS `pets`;
CREATE TABLE IF NOT EXISTS `pets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `pet_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `species` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vetpass.pets: ~0 rows (approximately)
DELETE FROM `pets`;

-- Dumping structure for table vetpass.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pdate` int DEFAULT NULL,
  `animalname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vetpass.user: ~3 rows (approximately)
DELETE FROM `user`;
INSERT INTO `user` (`id`, `username`, `fname`, `lname`, `phone`, `email`, `pdate`, `animalname`, `password`) VALUES
	(1, 'admin123', '', NULL, 0, 'admin123@gmail.com', 0, '0', '21232f297a57a5a743894a0e4a801fc3'),
	(2, 'annaberzina', 'Anna', NULL, 0, 'anna.berzina@gmail.com', 0, NULL, '2daf881dc5b218a3bc67ab5141a74883'),
	(3, 'marta_', 'Marta', 'Lapiņa', 23456567, 'marta.lapina@gmail.com', NULL, 'Pūka', 'a763a66f984948ca463b081bf0f0e6d0');

-- Dumping structure for table vetpass.veterinarians
DROP TABLE IF EXISTS `veterinarians`;
CREATE TABLE IF NOT EXISTS `veterinarians` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `specialty` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table vetpass.veterinarians: ~0 rows (approximately)
DELETE FROM `veterinarians`;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
