-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 18, 2023 at 08:45 PM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mlr24`
--
CREATE DATABASE IF NOT EXISTS `mlr24` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mlr24`;

-- --------------------------------------------------------

--
-- Table structure for table `adress`
--

DROP TABLE IF EXISTS `adress`;
CREATE TABLE IF NOT EXISTS `adress` (
  `ID_ADRESS` bigint NOT NULL AUTO_INCREMENT,
  `ADRESS` char(255) NOT NULL,
  PRIMARY KEY (`ID_ADRESS`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `adress`
--

TRUNCATE TABLE `adress`;
--
-- Dumping data for table `adress`
--

INSERT INTO `adress` (`ID_ADRESS`, `ADRESS`) VALUES(1, 'Tripoli');
INSERT INTO `adress` (`ID_ADRESS`, `ADRESS`) VALUES(2, 'Beirut');
INSERT INTO `adress` (`ID_ADRESS`, `ADRESS`) VALUES(3, 'Jbeil');
INSERT INTO `adress` (`ID_ADRESS`, `ADRESS`) VALUES(4, 'Batroun');
INSERT INTO `adress` (`ID_ADRESS`, `ADRESS`) VALUES(5, 'Saida');
INSERT INTO `adress` (`ID_ADRESS`, `ADRESS`) VALUES(6, 'Sour');
INSERT INTO `adress` (`ID_ADRESS`, `ADRESS`) VALUES(7, 'Jounieh');
INSERT INTO `adress` (`ID_ADRESS`, `ADRESS`) VALUES(8, 'Zahleh');
INSERT INTO `adress` (`ID_ADRESS`, `ADRESS`) VALUES(9, 'Baalbek');
INSERT INTO `adress` (`ID_ADRESS`, `ADRESS`) VALUES(10, 'Akkar');
INSERT INTO `adress` (`ID_ADRESS`, `ADRESS`) VALUES(11, 'Chouf');
INSERT INTO `adress` (`ID_ADRESS`, `ADRESS`) VALUES(12, 'Hermel');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `ID_CATEGORIES` bigint NOT NULL AUTO_INCREMENT,
  `NAME` varchar(128) NOT NULL,
  PRIMARY KEY (`ID_CATEGORIES`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `categories`
--

TRUNCATE TABLE `categories`;
--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID_CATEGORIES`, `NAME`) VALUES(1, 'Breakfast');
INSERT INTO `categories` (`ID_CATEGORIES`, `NAME`) VALUES(2, 'Lunch');
INSERT INTO `categories` (`ID_CATEGORIES`, `NAME`) VALUES(3, 'Dinner');
INSERT INTO `categories` (`ID_CATEGORIES`, `NAME`) VALUES(4, 'Dessert');
INSERT INTO `categories` (`ID_CATEGORIES`, `NAME`) VALUES(5, 'Drinks');
INSERT INTO `categories` (`ID_CATEGORIES`, `NAME`) VALUES(6, 'Salad');
INSERT INTO `categories` (`ID_CATEGORIES`, `NAME`) VALUES(7, 'Soup');

-- --------------------------------------------------------

--
-- Table structure for table `comment_user`
--

DROP TABLE IF EXISTS `comment_user`;
CREATE TABLE IF NOT EXISTS `comment_user` (
  `ID_COMMENT` bigint NOT NULL AUTO_INCREMENT,
  `ID_RECIPES` bigint NOT NULL,
  `ID_USER` bigint NOT NULL,
  `TEXT` text NOT NULL,
  `DATE_COMMENT` date NOT NULL,
  PRIMARY KEY (`ID_COMMENT`),
  KEY `I_FK_COMMENT_USER_RECIPES` (`ID_RECIPES`),
  KEY `I_FK_COMMENT_USER_USER` (`ID_USER`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `comment_user`
--

TRUNCATE TABLE `comment_user`;
--
-- Dumping data for table `comment_user`
--

INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(18, 13, 7, 'it takes a lot of time', '2023-08-16');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(17, 1, 7, 'Perfect!', '2023-08-16');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(19, 36, 7, 'delicious &#128525;', '2023-08-16');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(16, 34, 7, 'Amazing', '2023-08-16');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(20, 36, 7, 'Your dishes always look so delicious!! ', '2023-08-16');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(21, 49, 7, 'We have to cook soon', '2023-08-10');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(22, 45, 7, 'Love this !', '2023-08-10');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(23, 7, 7, 'it looks amazing and appetite', '2023-08-10');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(24, 47, 7, 'can we add cumin to this recipe?', '2023-08-10');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(25, 25, 3, 'I added some mushrooms to this recipe , and it turned out amazinggg', '2023-08-10');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(26, 29, 3, 'should we use white or brown sugar?', '2023-08-15');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(27, 45, 3, 'I cant wait to try this recipe in my own kitchen', '2023-08-15');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(28, 36, 3, 'this food is similar to the one I was cooking yesterday', '2023-08-15');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(29, 31, 3, 'Oh! I did not know eggs were added to this recipe!', '2023-08-15');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(30, 15, 3, 'This recipe did not work when I made it! Oh,my God !', '2023-08-15');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(31, 30, 3, 'I am beginner and this recipe looks so easy, it is perfect', '2023-08-14');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(32, 18, 3, 'Cant we replace the lemon juice with some vinegar?', '2023-08-14');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(33, 47, 2, 'I was wondering what to cook tomorrow for my guests and now I know ! &#128525;', '2023-08-14');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(34, 43, 2, 'This food looks so disgusting &#128567;', '2023-08-14');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(35, 6, 2, 'I was so happy I finally found this recipe, until I noticed it had onions in it, which I do not like at all  &#128533;', '2023-08-14');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(36, 12, 2, 'A few days ago, I tasted this food in a restaurant and wondered how to prepare it. Here it is today in front of me &#128527;', '2023-08-12');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(37, 11, 2, 'This recipe seems difficult to prepare, unfortunately I will not be able to apply it', '2023-08-12');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(38, 49, 2, 'After seeing this food, I think I am hungry', '2023-08-12');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(39, 20, 2, 'These ingredients are not found in my kitchen', '2023-08-12');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(40, 32, 2, 'This is the first time I know that this food is prepared in this way', '2023-08-12');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(41, 36, 4, 'For a week my children have been asking me for a brownie recipe, and I finally found it', '2023-08-18');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(42, 20, 4, 'Sooo expensive', '2023-08-18');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(43, 32, 4, ' This is a new way of cooking this food', '2023-08-18');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(44, 2, 8, ' I ordered this food, and it was very tasty, I advise everyone to try it', '2023-08-18');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(45, 49, 8, ' I really like all the recipes you put on this website, keep going &#128170;', '2023-08-18');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(46, 45, 6, 'I love this kind of food', '2023-08-17');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(47, 29, 6, 'After seeing this recipe, I probably will not eat another for a year because of how beautiful it is', '2023-08-17');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(48, 13, 5, 'I do not think that the specified time for this recipe is sufficient, it may take longer to cook.', '2023-08-17');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(49, 34, 5, 'How do you say this recipe is easy, I find it very difficult', '2023-08-17');
INSERT INTO `comment_user` (`ID_COMMENT`, `ID_RECIPES`, `ID_USER`, `TEXT`, `DATE_COMMENT`) VALUES(50, 6, 5, 'I have never tried this recipe, I think people should try new things', '2023-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
CREATE TABLE IF NOT EXISTS `delivery` (
  `ID_FROM` bigint NOT NULL,
  `ID_TO` bigint NOT NULL,
  `DELIVERY_PRICE` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID_FROM`,`ID_TO`),
  KEY `ID_TO` (`ID_TO`),
  KEY `ID_FROM` (`ID_FROM`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `delivery`
--

TRUNCATE TABLE `delivery`;
--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(1, 1, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(2, 2, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(3, 3, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(4, 4, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(5, 5, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(6, 6, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(7, 7, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(8, 8, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(9, 9, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(10, 10, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(11, 11, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(12, 12, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(1, 2, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(1, 3, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(1, 4, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(1, 5, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(1, 6, '7.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(1, 7, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(1, 8, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(1, 9, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(1, 10, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(1, 11, '6.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(1, 12, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(2, 1, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(2, 3, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(2, 4, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(2, 5, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(2, 6, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(2, 7, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(2, 8, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(2, 9, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(2, 10, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(2, 11, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(2, 12, '6.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(3, 1, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(3, 2, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(3, 4, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(3, 5, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(3, 6, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(3, 7, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(3, 8, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(3, 9, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(3, 10, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(3, 11, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(3, 12, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(4, 1, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(4, 2, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(4, 3, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(4, 5, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(4, 6, '6.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(4, 7, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(4, 8, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(4, 9, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(4, 10, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(4, 11, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(4, 12, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(5, 1, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(5, 2, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(5, 3, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(5, 4, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(5, 6, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(5, 7, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(5, 8, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(5, 9, '6.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(5, 10, '6.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(5, 11, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(5, 12, '7.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(6, 1, '7.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(6, 2, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(6, 3, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(6, 4, '6.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(6, 5, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(6, 7, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(6, 8, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(6, 9, '7.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(6, 10, '8.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(6, 11, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(6, 12, '9.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(7, 1, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(7, 2, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(7, 3, '1.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(7, 4, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(7, 5, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(7, 6, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(7, 8, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(7, 9, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(7, 10, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(7, 11, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(7, 12, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(8, 1, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(8, 2, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(8, 3, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(8, 4, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(8, 5, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(8, 6, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(8, 7, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(8, 9, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(8, 10, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(8, 11, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(8, 12, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(9, 1, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(9, 2, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(9, 3, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(9, 4, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(9, 5, '6.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(9, 6, '7.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(9, 7, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(9, 8, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(9, 10, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(9, 11, '7.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(9, 12, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(10, 1, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(10, 2, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(10, 3, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(10, 4, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(10, 5, '6.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(10, 6, '8.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(10, 7, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(10, 8, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(10, 9, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(10, 11, '8.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(10, 12, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(11, 1, '6.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(11, 2, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(11, 3, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(11, 4, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(11, 5, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(11, 6, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(11, 7, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(11, 8, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(11, 9, '7.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(11, 10, '8.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(11, 12, '9.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(12, 1, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(12, 2, '6.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(12, 3, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(12, 4, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(12, 5, '7.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(12, 6, '9.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(12, 7, '5.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(12, 8, '4.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(12, 9, '3.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(12, 10, '2.00');
INSERT INTO `delivery` (`ID_FROM`, `ID_TO`, `DELIVERY_PRICE`) VALUES(12, 11, '9.00');

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
CREATE TABLE IF NOT EXISTS `follow` (
  `ID_USER_FOLLOWEE` bigint NOT NULL,
  `ID_USER_FOLLOWER` bigint NOT NULL,
  PRIMARY KEY (`ID_USER_FOLLOWEE`,`ID_USER_FOLLOWER`),
  KEY `I_FK_FOLLOW_USER` (`ID_USER_FOLLOWEE`),
  KEY `I_FK_FOLLOW_USER1` (`ID_USER_FOLLOWER`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `follow`
--

TRUNCATE TABLE `follow`;
--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(2, 4);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(2, 5);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(2, 6);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(2, 8);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(3, 2);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(3, 5);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(3, 7);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(4, 2);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(4, 3);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(4, 7);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(4, 8);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(5, 3);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(5, 4);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(5, 6);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(5, 8);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(6, 2);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(6, 3);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(6, 5);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(6, 8);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(7, 3);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(7, 4);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(7, 8);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(8, 2);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(8, 3);
INSERT INTO `follow` (`ID_USER_FOLLOWEE`, `ID_USER_FOLLOWER`) VALUES(8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `havetools`
--

DROP TABLE IF EXISTS `havetools`;
CREATE TABLE IF NOT EXISTS `havetools` (
  `ID_TOOLS` bigint NOT NULL,
  `ID_RECIPES` bigint NOT NULL,
  PRIMARY KEY (`ID_TOOLS`,`ID_RECIPES`),
  KEY `I_FK_HAVETOOLS_TOOLS` (`ID_TOOLS`),
  KEY `I_FK_HAVETOOLS_RECIPES` (`ID_RECIPES`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `havetools`
--

TRUNCATE TABLE `havetools`;
--
-- Dumping data for table `havetools`
--

INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(1, 3);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(1, 4);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(1, 7);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(1, 14);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(1, 15);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(1, 20);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(1, 25);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(1, 27);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(1, 28);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(1, 29);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(1, 32);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(1, 36);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(1, 42);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(1, 43);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(1, 48);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(2, 5);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(2, 11);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(2, 23);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(2, 39);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 1);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 2);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 3);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 7);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 8);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 10);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 11);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 12);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 17);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 18);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 19);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 21);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 22);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 23);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 24);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 25);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 27);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 29);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 30);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 31);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 33);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 34);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 36);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 37);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 39);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 45);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 46);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(3, 47);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(4, 4);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(4, 15);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(4, 27);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(4, 32);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(4, 36);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(4, 42);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(4, 43);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(5, 9);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(5, 26);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(5, 28);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(5, 29);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(5, 30);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(5, 34);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(5, 37);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(5, 38);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(5, 40);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(5, 41);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(5, 47);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(6, 12);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(6, 13);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(6, 20);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(6, 21);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(6, 35);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(6, 42);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(6, 43);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(6, 45);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(7, 6);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(7, 16);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(7, 44);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(7, 49);
INSERT INTO `havetools` (`ID_TOOLS`, `ID_RECIPES`) VALUES(7, 50);

-- --------------------------------------------------------

--
-- Table structure for table `have_cat`
--

DROP TABLE IF EXISTS `have_cat`;
CREATE TABLE IF NOT EXISTS `have_cat` (
  `ID_CATEGORIES` bigint NOT NULL,
  `ID_RECIPES` bigint NOT NULL,
  PRIMARY KEY (`ID_CATEGORIES`,`ID_RECIPES`),
  KEY `I_FK_HAVE_CAT_CATEGORIES` (`ID_CATEGORIES`),
  KEY `I_FK_HAVE_CAT_RECIPES` (`ID_RECIPES`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `have_cat`
--

TRUNCATE TABLE `have_cat`;
--
-- Dumping data for table `have_cat`
--

INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(1, 1);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(1, 33);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(1, 46);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(2, 2);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(2, 8);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(2, 9);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(2, 11);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(2, 13);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(2, 14);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(2, 22);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(2, 23);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(2, 24);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(2, 29);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(2, 34);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(2, 39);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(2, 45);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(2, 47);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(3, 3);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(3, 25);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(3, 27);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(3, 30);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(3, 31);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(3, 32);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(3, 37);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(3, 41);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(3, 42);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(3, 43);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(3, 50);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(4, 4);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(4, 7);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(4, 10);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(4, 12);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(4, 15);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(4, 20);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(4, 21);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(4, 36);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(4, 48);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(5, 5);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(6, 16);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(6, 17);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(6, 26);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(6, 35);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(6, 38);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(6, 44);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(6, 49);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(7, 6);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(7, 18);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(7, 19);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(7, 28);
INSERT INTO `have_cat` (`ID_CATEGORIES`, `ID_RECIPES`) VALUES(7, 40);

-- --------------------------------------------------------

--
-- Table structure for table `have_ing`
--

DROP TABLE IF EXISTS `have_ing`;
CREATE TABLE IF NOT EXISTS `have_ing` (
  `ID_INGREDIENTS` bigint NOT NULL,
  `ID_RECIPES` bigint NOT NULL,
  `QUANTITY` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `UNIT_OF_MEASURE` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID_INGREDIENTS`,`ID_RECIPES`),
  KEY `I_FK_HAVE_ING_INGERDIENTS` (`ID_INGREDIENTS`),
  KEY `I_FK_HAVE_ING_RECIPES` (`ID_RECIPES`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `have_ing`
--

TRUNCATE TABLE `have_ing`;
--
-- Dumping data for table `have_ing`
--

INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(1, 1, '2', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 1, NULL, 'pinch');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(3, 1, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(4, 1, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(5, 1, '4', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(7, 1, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(8, 2, '2', 'pounds');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 2, '4', 'cloves');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(13, 2, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(10, 2, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(11, 2, '1 3/4', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 2, '1 1/2', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(12, 2, '6', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(177, 2, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(3, 3, '6', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(14, 3, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(15, 3, '10', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(16, 3, '5', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(17, 3, '5', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(18, 3, '5', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(19, 4, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(20, 4, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(21, 4, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(22, 4, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(23, 4, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(24, 4, '1/4', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 4, '1/8', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(25, 4, '1', 'small');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(202, 4, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(1, 4, '1', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(26, 4, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(27, 4, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(28, 4, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(29, 4, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(30, 4, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(31, 5, '1/3', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(32, 5, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(120, 5, '1/2 to 2', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(24, 5, '1/8 to 1/4', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(177, 6, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 6, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(13, 6, '1', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(35, 6, '2', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(36, 6, '2', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(37, 6, '4', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(38, 6, '1 1/4 ', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(39, 6, '2', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(31, 6, '2', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 6, '1 1/2', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(41, 6, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(42, 6, '2', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(43, 6, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(44, 6, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(115, 6, '2', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(174, 6, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(45, 7, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(46, 7, '1', 'pint');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(47, 7, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(48, 7, '2', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(43, 7, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(26, 7, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(49, 8, '4', 'medium');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(50, 8, '3/4', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 8, '3', 'cloves');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(51, 8, '1/3', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 8, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(52, 8, '1/2', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 8, '3', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(53, 9, '8', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(3, 9, '3 to 4', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(54, 9, '2/3', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(79, 9, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(80, 9, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(56, 9, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(19, 10, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(28, 10, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 10, '1/4', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(57, 10, '1 1/2', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(1, 10, '4', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(202, 10, '3', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(169, 11, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 11, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(0, 11, '3', 'cloves');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(59, 11, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(60, 11, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(61, 11, '1/2', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(62, 11, '1/2', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(63, 11, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 11, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(64, 11, '2', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(36, 11, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(65, 11, '1', 'inch');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(66, 11, '3/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(49, 11, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(11, 11, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 11, '3', 'cloves');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(69, 12, '3', 'pounds');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(70, 12, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(120, 12, '1/2 to 2/3', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(19, 12, '3', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(24, 12, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(72, 12, '1/4', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(56, 12, '1/4', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(26, 12, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(73, 12, '1', 'double');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(75, 12, '1', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(76, 12, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(79, 14, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 13, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(11, 13, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(78, 13, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 13, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(79, 13, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 14, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 14, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(94, 14, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(81, 14, '2', 'pounds');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(177, 14, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(13, 14, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 14, '2', 'cloves');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(183, 14, '300', 'g');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(279, 14, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(19, 14, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(39, 14, '500', 'ml');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(36, 14, '2', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(103, 14, '250', 'ml');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(7, 14, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(83, 15, '4', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(28, 15, '3/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(3, 15, '2', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(1, 15, '3', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(22, 15, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(19, 15, '3', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(280, 16, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(84, 16, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(86, 16, '1', 'small');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(85, 16, '1/2', 'small');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 16, '1', 'small clove');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(87, 16, '1', 'can');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(88, 16, '1/2', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(89, 16, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 16, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(90, 16, '1', 'packed cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(91, 16, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(92, 16, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(70, 16, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(93, 16, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(94, 16, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(31, 16, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(95, 16, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(11, 16, '', '');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(8, 17, '1', 'lb');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(96, 17, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(97, 17, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(98, 17, '8', 'oz');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(99, 17, '1 1/3', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(100, 17, '3/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(101, 17, '1', 'medium');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(0, 17, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(103, 17, '1/3', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(168, 17, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 18, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(13, 18, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 3, NULL, 'large cloves');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(104, 18, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(105, 18, '3', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(106, 18, '14 1/2', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(107, 18, '14 1/2', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(68, 18, '10', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(109, 18, '2', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(110, 18, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(111, 18, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(108, 18, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(93, 18, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(70, 18, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(101, 18, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(144, 18, '6', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(113, 18, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 18, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(114, 19, '1/2', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(115, 19, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(13, 19, '1', 'small');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(116, 19, '1', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 19, '2', 'large cloves');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(249, 19, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(282, 19, '1', 'bottle');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(105, 19, '2 1/4', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(3, 19, '4', 'tablspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(19, 19, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(123, 19, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(281, 19, '1/2', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(118, 19, '4', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 19, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(11, 19, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(119, 19, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(75, 20, '6', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(120, 20, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(283, 20, '3', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(121, 20, '1 1/2', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(123, 20, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(122, 20, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(124, 20, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(125, 20, '1', 'package');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(126, 20, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(127, 21, '500', 'g');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(128, 21, '150', 'g');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(120, 21, '3/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(177, 21, '2/3', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(284, 21, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(31, 21, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(129, 21, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(130, 21, '120', 'g');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(123, 21, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(131, 22, '16', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(132, 22, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(66, 22, '1/3', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(133, 22, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(83, 22, '3', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(134, 22, '2', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(135, 22, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(21, 22, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(31, 22, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(113, 22, '4', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(136, 22, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(137, 22, '4', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(138, 22, '2', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(280, 22, '1/2', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(285, 22, '1/2', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 22, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(139, 22, '2', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(286, 22, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 22, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(11, 22, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(140, 23, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(141, 23, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(142, 23, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(120, 23, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 23, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 23, '1', 'clove');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(143, 23, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(132, 23, '3', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 23, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(38, 23, '4 to 6', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(144, 23, '8', 'small');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(287, 23, '3', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(145, 23, '2', 'medium');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(146, 23, '4', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(5, 23, '1/2', 'pint');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(167, 23, '1/4', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(147, 23, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(103, 23, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(148, 23, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(149, 23, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(109, 24, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(176, 24, '1', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 24, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(21, 24, '2', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(150, 24, '1', 'can');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(151, 24, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(152, 24, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(153, 24, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(27, 24, '2 to 3', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(113, 24, '4', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(280, 24, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(288, 24, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(154, 24, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(155, 25, '4', 'medium');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(113, 25, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(280, 25, '2', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(169, 25, '1', 'medium');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 25, '1 1/2', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(108, 25, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(156, 25, '14', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(157, 25, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(111, 25, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(70, 26, '1/3', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 26, '3/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(159, 26, '3', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(276, 26, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(249, 26, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(248, 26, '2', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(161, 26, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(162, 26, '2 to 3', 'cans');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(164, 26, '6', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(165, 26, '1 1/4', 'pounds');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(158, 26, '2', 'medium');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(49, 26, '3', 'small');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(167, 26, '1', 'small');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(170, 26, '8', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(171, 26, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(172, 26, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 26, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(11, 26, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(173, 27, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 27, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(3, 27, '3', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(11, 27, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(54, 27, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(75, 27, '2', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(174, 27, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(175, 27, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(176, 27, '2', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(113, 27, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 27, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(169, 28, '6', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 28, '4', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(177, 28, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(120, 28, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 28, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 28, '2', 'cloves');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(178, 28, '8', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(36, 28, '2', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(179, 28, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(11, 28, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(181, 28, '8', 'slices');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(182, 28, '1 1/2', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(54, 28, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(183, 29, '1 1/2', 'pounds');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(289, 29, '1/2', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 29, '1/4', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(13, 29, '1', 'generous cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 29, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 29, '4', 'cloves');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(185, 29, '1', 'can');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(184, 29, '2', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(106, 29, '1', 'can');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(31, 29, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(180, 29, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(186, 29, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(120, 29, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(187, 29, '2', 'boxes');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(188, 29, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(189, 29, '1', 'container');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(276, 29, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(190, 29, '1/4', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(191, 29, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(192, 30, '12', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 30, '1 1/2', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(11, 30, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(193, 30, '1/3', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(194, 30, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(195, 30, '2', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 31, '7', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(13, 31, '3/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(35, 31, '3/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(34, 31, '3/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(7, 31, '3', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 31, '3 to 4', 'garlic');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(196, 31, '1 3/4', 'pounds');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(197, 31, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(185, 31, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(57, 31, '2/3', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(198, 31, '3', 'slices');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(8, 31, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(199, 31, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(189, 31, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(200, 31, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(1, 31, '2', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 31, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(11, 31, '2', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(141, 31, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(19, 31, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(184, 31, '2 1/2', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(202, 32, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(203, 32, '2/3', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(54, 32, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 32, '3 3/4', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(204, 32, '1/8', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(205, 32, NULL, 'pinch');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(206, 32, '10', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(3, 32, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(208, 32, '4', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(100, 32, '10', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(57, 32, '2 1/2', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(209, 32, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(210, 32, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(211, 32, '1/4', 'turmeric');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(7, 32, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(212, 33, '4', 'medium');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(260, 33, '1', 'medium');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(1, 33, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 33, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(79, 33, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(113, 33, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(177, 34, '3', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(213, 34, '1', 'medium');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(214, 34, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(109, 34, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(215, 34, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(11, 34, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(216, 34, '1', 'package');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(105, 34, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(148, 34, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(10, 34, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(103, 34, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(19, 34, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(7, 34, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(191, 35, '3', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(217, 35, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 35, '3', 'cloves');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(218, 36, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(219, 36, '3', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(220, 36, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(221, 36, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(23, 36, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 36, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(222, 36, '5', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(120, 36, '1 1/2', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(26, 36, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(223, 37, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 37, '1/4', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 37, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(213, 37, '1', 'medium');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(285, 37, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(290, 37, '2', 'smalls');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 37, '3', 'cloves');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(224, 37, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(225, 37, '2', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(153, 37, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(184, 37, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(71, 37, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(27, 37, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(31, 37, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(11, 37, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(12, 37, '8', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(167, 37, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(226, 37, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(31, 38, '4', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(39, 38, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 38, '2', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(36, 38, '2 to 3', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(11, 38, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(13, 38, '1', 'small');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(115, 38, '2', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(227, 38, '1', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(196, 38, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(174, 38, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(228, 38, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(229, 38, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(230, 38, '1/2', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(231, 38, '1/2', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 38, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(70, 38, '1 to 2', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(39, 39, '4 1/2', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(232, 39, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 39, '1/4', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 39, '3', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(169, 39, '1/2', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(61, 39, '1/2', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 39, '3', 'cloves');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(233, 39, '6', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(234, 39, '3', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(235, 39, '1', 'can');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(236, 39, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(237, 39, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(238, 39, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(239, 39, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(7, 39, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 40, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(169, 40, '1', 'medium');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 40, '2', 'cloves');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(185, 40, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(94, 40, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(240, 40, '1', 'medium');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(35, 40, '3', 'medium');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(36, 40, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(241, 40, '8', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(106, 40, '1', 'can');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(71, 40, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(27, 40, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(70, 40, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 40, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(79, 40, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(7, 40, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(242, 41, '3', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(213, 41, '1', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 41, '2 1/2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 41, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(120, 41, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(152, 41, '3', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(291, 41, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(5, 42, '2', 'pints');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(58, 42, '2', 'medium');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 42, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(40, 42, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(11, 42, '1/4', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(243, 42, '2', 'kernels');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(244, 42, '2', 'sheets');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(116, 42, '1 to 2', 'small ');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(245, 42, '4', 'ounces');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(1, 42, '1', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(246, 43, '1', 'sheet');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(161, 43, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(217, 43, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(247, 43, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(248, 43, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(249, 43, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(250, 43, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(1, 43, '1', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(31, 43, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(19, 43, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(278, 43, '4', 'slices');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(54, 43, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(6, 44, '1', 'pound');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(167, 44, '1/2', 'medium');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(117, 44, '1/3', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(160, 44, '1/3', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(71, 44, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(251, 44, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(161, 44, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 44, '1', 'medium clove');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 44, '3', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 44, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(79, 44, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(109, 45, '1 1/4 to 1 1/2', 'pounds');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 45, '5', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(252, 45, '1', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(292, 45, '3', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(111, 45, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(293, 45, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 45, '1', 'clove');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(70, 45, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 45, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(93, 45, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(108, 45, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(253, 45, '8 to 12', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(102, 45, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(145, 45, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(103, 45, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(254, 45, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(71, 45, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(255, 46, '2', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(113, 46, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(256, 46, '1', 'can');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(44, 46, '3', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(70, 46, '1/2', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 46, '1 to 2', 'cloves');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(92, 46, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(91, 46, NULL, 'handful');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(177, 46, '3', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 46, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(257, 47, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(260, 47, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(258, 47, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(261, 47, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(259, 47, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(9, 47, '3 to 4', 'cloves');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(36, 47, '3', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(262, 47, '3 to 4', 'pods');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(293, 47, '10', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 47, '3', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(122, 47, '2', 'l');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(41, 47, '3', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(13, 47, '1', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(263, 47, '200', 'g');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(264, 47, '2 to 3', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(265, 47, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(11, 47, '1/4', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(24, 47, '1/4', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(177, 47, '2', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(266, 47, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(267, 48, '2', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(19, 48, '2', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(23, 48, '2', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 48, NULL, 'pinch');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(120, 48, '1 1/2', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(211, 48, '1 1/2', 'teaspoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(148, 48, '1 1/2', 'cups');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(31, 48, '1/2', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(113, 48, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(268, 48, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(269, 48, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(92, 48, '2 to 3', 'tablespoons');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(294, 49, NULL, 'bunch');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(196, 49, '2', 'medium');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(13, 49, '1/3', 'small');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(168, 49, '1 to 2', 'talks');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(271, 49, 'few', 'sprigs');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(70, 49, '1', 'large');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 49, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(265, 49, NULL, 'pinch');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(272, 49, '1/2', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(273, 49, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 49, NULL, NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(274, 50, '500', 'g');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(273, 50, '1', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(13, 50, '1/2', 'small');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(61, 50, '1/4', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(55, 50, '1/2', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(275, 50, '5 to 10', NULL);
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(276, 50, '1/4', 'cup');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(277, 50, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(270, 50, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(93, 50, '1', 'tablespoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(265, 50, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(2, 50, '1', 'teaspoon');
INSERT INTO `have_ing` (`ID_INGREDIENTS`, `ID_RECIPES`, `QUANTITY`, `UNIT_OF_MEASURE`) VALUES(33, 50, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `have_order`
--

DROP TABLE IF EXISTS `have_order`;
CREATE TABLE IF NOT EXISTS `have_order` (
  `ID_ORDER` bigint NOT NULL,
  `ID_RECIPES` bigint NOT NULL,
  `QUANTITY` bigint NOT NULL,
  `PRICE` decimal(10,2) NOT NULL,
  `STATUS` varchar(7) NOT NULL DEFAULT 'order',
  PRIMARY KEY (`ID_ORDER`,`ID_RECIPES`),
  KEY `I_FK_HAVE_ORDER_DELIVERY_ORDER` (`ID_ORDER`),
  KEY `I_FK_HAVE_ORDER_RECIPES` (`ID_RECIPES`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `have_order`
--

TRUNCATE TABLE `have_order`;
--
-- Dumping data for table `have_order`
--

INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(84, 42, 1, '12.00', 'order');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(84, 30, 1, '11.00', 'order');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(83, 39, 1, '15.00', 'order');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(83, 50, 1, '10.00', 'order');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(83, 49, 2, '14.00', 'unorder');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(82, 16, 2, '20.00', 'unorder');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(82, 20, 1, '20.00', 'order');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(82, 19, 1, '8.00', 'order');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(81, 32, 1, '18.00', 'order');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(81, 36, 2, '24.00', 'order');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(80, 12, 2, '36.00', 'order');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(80, 37, 1, '15.00', 'unorder');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(79, 29, 1, '15.00', 'order');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(79, 48, 1, '12.00', 'order');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(79, 47, 1, '18.00', 'order');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(78, 2, 1, '8.00', 'order');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(78, 8, 1, '10.00', 'order');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(77, 24, 2, '16.00', 'order');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(76, 46, 2, '14.00', 'order');
INSERT INTO `have_order` (`ID_ORDER`, `ID_RECIPES`, `QUANTITY`, `PRICE`, `STATUS`) VALUES(76, 45, 1, '8.00', 'order');

-- --------------------------------------------------------

--
-- Table structure for table `having_tag`
--

DROP TABLE IF EXISTS `having_tag`;
CREATE TABLE IF NOT EXISTS `having_tag` (
  `ID_RECIPES` bigint NOT NULL,
  `ID_TAG` bigint NOT NULL,
  PRIMARY KEY (`ID_RECIPES`,`ID_TAG`),
  KEY `I_FK_HAVING_TAG_RECIPES` (`ID_RECIPES`),
  KEY `I_FK_HAVING_TAG_TAG` (`ID_TAG`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `having_tag`
--

TRUNCATE TABLE `having_tag`;
--
-- Dumping data for table `having_tag`
--

INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(1, 10);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(2, 6);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(3, 8);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(4, 3);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(5, 10);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(6, 6);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(7, 3);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(8, 7);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(9, 6);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(10, 3);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(11, 9);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(12, 3);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(13, 6);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(14, 6);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(15, 3);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(16, 9);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(17, 9);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(18, 1);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(19, 1);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(20, 3);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(21, 3);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(22, 1);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(23, 1);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(24, 2);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(25, 3);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(26, 9);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(27, 5);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(28, 10);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(29, 5);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(30, 4);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(31, 6);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(32, 10);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(33, 5);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(34, 6);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(35, 5);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(36, 4);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(37, 4);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(38, 7);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(39, 7);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(40, 2);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(41, 2);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(42, 8);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(43, 8);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(44, 9);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(45, 9);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(46, 10);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(47, 6);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(48, 3);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(49, 9);
INSERT INTO `having_tag` (`ID_RECIPES`, `ID_TAG`) VALUES(50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
CREATE TABLE IF NOT EXISTS `ingredients` (
  `ID_INGREDIENTS` bigint NOT NULL AUTO_INCREMENT,
  `NAME` varchar(128) NOT NULL,
  PRIMARY KEY (`ID_INGREDIENTS`)
) ENGINE=MyISAM AUTO_INCREMENT=304 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `ingredients`
--

TRUNCATE TABLE `ingredients`;
--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(1, 'eggs');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(2, 'salt');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(3, 'unsalted butter');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(4, 'grated cheese');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(5, 'cherry tomatoes');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(7, 'chopped fresh parsley');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(8, 'ground beef');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(9, 'garlic , chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(10, 'worcestershire sauce');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(11, 'freshly ground black pepper');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(12, 'hamburger buns');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(13, 'minced onion');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(14, 'herbed goat cheese');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(15, 'thick white bread slices');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(16, 'sharp white cheddar cheese slices');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(17, 'provolone cheese slices');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(18, 'Swiss cheese slices');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(19, 'flour');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(20, 'rolled oats');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(21, 'cornstarch');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(22, 'baking soda');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(23, 'baking powder');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(24, 'ground cinnamon');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(25, 'over-ripe banana');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(26, 'vanilla extract');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(27, 'brown sugar');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(28, 'granulated sugar');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(29, 'walnuts, chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(30, 'chocolate chips');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(31, 'water');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(32, 'Turkish coffee grounds');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(33, 'extra virgin olive oil');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(34, 'celery , chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(35, 'carrots, chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(36, 'bay leaves');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(37, 'curry powder');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(38, 'boneless, skinless chicken thighs, trimmed of visible fat');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(39, 'chicken stock');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(40, 'kosher salt');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(41, 'uncooked basmati rice');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(42, 'tart apples, cored, peeled, and chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(43, 'heavy whipping cream');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(44, 'plain yogurt');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(45, 'sliced almonds');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(46, 'strawberries, hulled and sliced');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(47, 'strawberry jam');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(48, 'meringues broken into pieces');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(49, 'ripe tomatoes');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(50, 'raw, peeled, deveined shrimp');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(51, 'torn fresh basil leaves');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(52, 'angel hair pasta');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(53, 'dry fettuccine');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(54, 'finely grated parmesan cheese');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(55, 'green chilli finely chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(56, 'ground nutmeg');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(57, 'whole milk');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(58, 'zucchini, cubed');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(59, 'yellow squash, cubed');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(60, 'green bell peppers, seeds removed, chopped ');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(61, 'red bell peppers, seeds removed, chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(62, 'yellow bell peppers, seeds removed, chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(63, 'eggplant, cubed');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(64, 'sprigs thyme');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(65, 'sprig rosemary');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(66, 'vegetable stock');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(67, 'thin tomato juice');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(68, 'canned tomatoes, chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(69, 'good cooking apples');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(70, 'lemon juice');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(71, 'apple cider vinegar');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(72, 'ground allspice');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(73, 'crust sour cream pie dough');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(74, 'all-butter crust');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(75, 'egg yolks');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(76, 'cream');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(77, 'whole packer brisket');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(78, 'garlic powder');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(79, 'pepper');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(80, 'cooking cream');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(81, 'chicken thighs, skin-on, bone-in');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(82, 'buttom mushrooms, quartered');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(83, 'honey');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(84, 'ripe mango, cubed');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(85, 'red onion, diced');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(86, 'cucumber, chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(87, 'chickpeas, drained and rinsed');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(88, 'chopped fresh herbs');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(89, 'uncooked orzo');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(90, 'arugula');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(91, 'toasted pine nuts');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(92, 'tahini');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(93, 'ground cumin');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(94, 'sweet paprika');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(95, 'sea salt');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(96, 'avocado oil');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(97, 'taco seasoning');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(98, 'lettuce , chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(99, 'grape tomatoes , halved');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(100, 'cheddar cheese , shredded');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(101, 'avocado , cubed');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(102, 'salsa');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(103, 'sour cream');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(104, 'jalapeño , diced ');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(105, 'chicken broth');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(106, 'crushed tomatoes');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(107, 'black beans rinsed & drained');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(108, 'chili powder');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(109, 'chicken breasts boneless, skinless');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(110, 'corn drained if canned');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(111, 'cilantro chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(112, 'corn tortilla pieces');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(113, 'vegetable oil');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(114, 'beef bacon, sliced');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(115, 'celery ribs, finely chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(116, 'jalapeño, seeded and chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(160, 'dried cranberries');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(118, 'smoked cheddar cheese, coarsely shredded');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(119, 'garlic-rubbed toasts');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(120, 'sugar');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(121, 'mascarpone cheese, cold from the fridge');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(122, 'boiling water');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(123, 'heavy cream');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(124, 'instant espresso powder');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(125, 'ladyfingers');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(126, 'unsweetened cocoa powder');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(127, 'Digestive biscuits/crackers');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(128, 'hazelnuts , roasted');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(129, 'coffee');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(130, 'dark chocolate');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(131, 'extra-firm tofu');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(132, 'orange juice');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(133, 'soy sauce');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(134, 'rice vinegar');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(135, 'garlic chili sauce');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(136, 'sesame oil');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(137, 'shiitake mushrooms, stems removed');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(138, 'sugar snap peas');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(139, 'minced ginger');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(140, 'Ancho chili powder');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(141, 'dried oregano');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(142, 'dried cumin');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(143, 'finely grated orange zest');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(144, 'corn tortillas');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(281, 'sharp yellow cheddar cheese');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(145, 'ripe avocados, sliced');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(146, 'radishes, thinly sliced');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(147, 'roughly chopped cilantro');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(148, 'milk');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(149, 'lime, cut into wedges');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(150, 'pineapple chunks, drained, juice reserved');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(151, 'canned pineapple juice\r\n');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(152, 'white vinegar');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(153, 'ketchup');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(154, 'grated fresh ginger');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(155, 'sweet potatoes');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(156, 'fresh chorizo, casings removed');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(157, 'cotija cheese');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(158, 'butter lettuce');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(159, 'finely chopped shallot');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(6, 'Brussels sprouts, shaved');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(117, 'toasted pecans , chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(161, 'Dijon mustard');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(162, 'tuna ,drained');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(163, 'grilled or otherwise cooked tuna steaks');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(164, 'hard boiled eggs, peeled');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(165, 'small young red potatoes');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(166, 'fingerling potatoes');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(167, 'red onion, thinly sliced');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(168, 'green onion , chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(169, 'yellow onion , chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(170, 'green beans, trimmed and cut');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(171, 'Niçoise olives');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(172, 'capers, rinsed ');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(173, 'Yukon Gold potatoes, peeled and quartered');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(174, 'finely chopped chives');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(175, 'fine breadcrumbs');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(176, 'egg whites');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(177, 'butter');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(178, 'beef stock');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(179, 'fresh thyme leaves');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(180, 'dried thyme');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(181, 'French bread');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(182, 'grated Gruyere cheese');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(183, 'cremini mushrooms, roughly chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(184, 'prepared tomato sauce');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(185, 'tomato paste');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(186, 'red pepper flakes');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(187, 'frozen chopped spinach');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(188, 'lasagna noodles');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(189, 'ricotta cheese');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(190, 'shredded pecorino cheese');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(191, 'shredded mozzarella cheese');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(192, 'bucatini pasta');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(193, 'unsweetened cashew butter');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(194, 'nutritional yeast');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(195, 'miso');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(196, 'fresh tomatoes');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(197, 'dried basil');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(198, 'white bread, crusts removed');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(199, 'ground pork');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(200, 'romano cheese');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(201, 'marjoram');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(202, 'melted unsalted butter');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(203, 'plain panko breadcrumbs');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(204, 'smoked paprika');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(205, 'cayenne pepper');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(206, 'elbow macaroni pasta');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(207, 'cavatappi macaroni pasta');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(208, 'cream cheese');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(209, 'white pepper');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(210, 'mustard powder');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(211, 'turmeric powder');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(212, 'floury potatoes, peeled');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(213, 'onion, diced');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(214, 'sliced mushrooms');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(215, 'Greek seasoning');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(216, 'egg noodles');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(217, 'mayonnaise');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(218, 'coconut oil');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(219, 'ground flax');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(220, 'gluten-free flour blend');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(221, 'dairy-free cocoa powder');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(222, 'bittersweet dairy-free chocolate, chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(223, 'green lentils');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(224, 'mild chili powder');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(225, 'paprika');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(226, 'pickles');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(227, 'orange bell pepper, diced');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(228, 'cocktail shrimp');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(229, 'clams in shell');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(230, 'bay scallops');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(231, 'calamari');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(232, 'saffron threads');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(233, 'mild dried chorizo sausage');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(234, 'short-grain rice');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(235, 'fire-roasted diced tomatoes');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(236, 'frozen green peas');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(237, 'shrimp, peeled and deveined, with tails left on');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(238, 'mussels , scrubbed');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(239, 'littleneck clams scrubbed');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(240, 'head green cabbage');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(241, 'low-sodium vegetable broth');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(242, 'globe artichokes');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(243, 'ears of corn');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(244, 'frozen puff pastry');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(245, 'crumbled goat cheese');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(246, 'store-bought puff pastry');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(247, 'finely chopped fresh basil leaves');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(248, 'finely chopped fresh oregano leaves');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(249, 'finely chopped fresh thyme leaves');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(250, 'finely chopped fresh rosemary leaves');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(251, 'maple syrup');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(252, 'onion, sliced lengthwise');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(253, 'flour tortillas');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(254, 'iceberg lettuce , thinly sliced');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(255, 'Lebanese flat breads');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(256, 'chickpeas with water retained');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(257, 'chicken quartered');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(258, 'celery stick');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(259, 'cinnamon stick');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(260, 'onion peeled');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(261, 'carrot peeled');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(262, 'cardamom');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(263, 'ground meat lamb, beef or both');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(264, 'mild olive oil');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(265, 'seven spices');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(266, 'assorted nuts lightly toasted');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(267, 'fine semolina');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(268, 'orange blossom water');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(269, 'peeled almonds');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(278, 'prosciutto');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(271, 'mint');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(272, 'sumac');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(273, 'fine bulgur wheat');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(274, 'finely ground lean lamb trimmed of all fat');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(275, 'fresh mint leaves chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(276, 'fresh basil chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(277, 'dried marjoram');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(270, 'dried mint');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(279, 'fresh dill');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(280, 'red bell pepper');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(282, 'lager , divided');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(283, 'dark rum , divided');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(284, 'cocoa powder');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(286, 'green onion , thinly sliced');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(285, 'green bell pepper , diced');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(287, 'baby arugula');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(288, 'yellow bell pepper');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(289, 'shiitake mushrooms , roughly chopped');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(290, 'carrots , diced');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(291, 'lemon');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(292, 'mixed bell peppers');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(293, 'hot pepper');
INSERT INTO `ingredients` (`ID_INGREDIENTS`, `NAME`) VALUES(294, 'parsley');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
CREATE TABLE IF NOT EXISTS `likes` (
  `ID_USER` bigint NOT NULL,
  `ID_RECIPES` bigint NOT NULL,
  PRIMARY KEY (`ID_USER`,`ID_RECIPES`),
  KEY `I_FK_FAVORITE_USER` (`ID_USER`),
  KEY `I_FK_FAVORITE_RECIPES` (`ID_RECIPES`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `likes`
--

TRUNCATE TABLE `likes`;
--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(2, 1);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(2, 2);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(2, 7);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(2, 25);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(2, 29);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(2, 34);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(2, 36);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(2, 45);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(2, 47);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(2, 49);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(3, 1);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(3, 2);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(3, 4);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(3, 20);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(3, 25);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(3, 28);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(3, 30);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(3, 34);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(3, 45);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(3, 47);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(4, 1);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(4, 2);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(4, 4);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(4, 25);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(4, 29);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(4, 30);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(4, 34);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(4, 47);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(4, 48);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(4, 49);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(5, 1);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(5, 2);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(5, 25);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(5, 34);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(5, 49);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(6, 29);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(6, 34);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(6, 45);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(6, 47);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(6, 49);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(7, 1);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(7, 2);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(7, 7);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(7, 25);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(7, 34);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(7, 36);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(7, 37);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(7, 45);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(7, 46);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(7, 49);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(8, 1);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(8, 2);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(8, 7);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(8, 25);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(8, 28);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(8, 29);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(8, 34);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(8, 45);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(8, 47);
INSERT INTO `likes` (`ID_USER`, `ID_RECIPES`) VALUES(8, 49);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `ID_RECIPES` bigint DEFAULT NULL,
  `CONTENT` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `I_FK_MEDIA_RECIPES` (`ID_RECIPES`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `media`
--

TRUNCATE TABLE `media`;
--
-- Dumping data for table `media`
--

INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(3, 3, './img/3.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(1, 1, './img/1.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(2, 2, './img/2.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(4, 4, './img/4.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(5, 5, './img/5.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(6, 6, './img/6.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(7, 7, './img/7.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(8, 8, './img/8.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(9, 9, './img/9.jpg');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(10, 10, './img/10.jpg');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(11, 11, './img/11.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(12, 12, './img/12.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(13, 13, './img/13.jpg');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(14, 14, './img/14.jpg');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(15, 15, './img/15.jpg');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(16, 16, './img/16.jpg');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(17, 17, './img/17.jpg');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(18, 18, './img/18.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(19, 19, './img/19.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(20, 20, './img/20.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(21, 21, './img/21.jpg');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(22, 22, './img/22.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(23, 23, './img/23.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(24, 24, './img/24.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(25, 25, './img/25.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(26, 26, './img/26.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(27, 27, './img/27.webp\r\n');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(28, 28, './img/28.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(29, 29, './img/29.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(30, 30, './img/30.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(31, 31, './img/31.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(32, 32, './img/32.jpg');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(33, 33, './img/33.jpeg');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(34, 34, './img/34.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(35, 35, './img/35.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(36, 36, './img/36.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(37, 37, './img/37.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(38, 38, './img/38.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(39, 39, './img/39.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(40, 40, './img/40.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(41, 41, './img/41.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(42, 42, './img/42.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(43, 43, './img/43.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(44, 44, './img/44.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(45, 45, './img/45.webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(46, 46, './img/46.jpg');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(47, 47, './img/47.jpg');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(48, 48, './img/48.jpg');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(49, 49, './img/49.jpg');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(50, 50, './img/50.jpg');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(53, 26, './img/26(1).webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(52, 4, './img/4(2).webp');
INSERT INTO `media` (`ID`, `ID_RECIPES`, `CONTENT`) VALUES(51, 4, './img/4(1).webp');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `ID_NOTIFICATION` bigint NOT NULL AUTO_INCREMENT,
  `ID_COMMENT` bigint DEFAULT NULL,
  `ID_ORDER` bigint DEFAULT NULL,
  `ID_RECIPES` bigint DEFAULT NULL,
  `ID_USER` bigint NOT NULL,
  `ID_FOLLOWER` bigint DEFAULT NULL,
  `DATE_NOTIFICATION` date NOT NULL,
  `TYPE` varchar(128) NOT NULL,
  `OPENED` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID_NOTIFICATION`),
  KEY `I_FK_NOTIFICATIONS_COMMENT_USER` (`ID_COMMENT`),
  KEY `I_FK_NOTIFICATIONS_USER` (`ID_USER`),
  KEY `ID_RECIPES` (`ID_RECIPES`),
  KEY `ID_FOLLOWER` (`ID_FOLLOWER`),
  KEY `ID_ORDER` (`ID_ORDER`)
) ENGINE=MyISAM AUTO_INCREMENT=243 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `notifications`
--

TRUNCATE TABLE `notifications`;
--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(149, NULL, NULL, 45, 5, NULL, '2023-08-10', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(148, NULL, NULL, 7, 3, NULL, '2023-08-11', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(147, NULL, NULL, 47, 4, NULL, '2023-08-12', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(146, NULL, NULL, 25, 6, NULL, '2023-08-12', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(145, NULL, NULL, 49, 3, NULL, '2023-08-13', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(144, NULL, NULL, 1, 2, NULL, '2023-08-18', 'like', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(143, NULL, NULL, 34, 8, NULL, '2023-08-18', 'like', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(142, NULL, NULL, 30, 7, NULL, '2023-08-10', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(141, NULL, NULL, 4, 2, NULL, '2023-08-11', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(140, NULL, NULL, 48, 4, NULL, '2023-08-10', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(139, NULL, NULL, 25, 6, NULL, '2023-08-11', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(138, NULL, NULL, 49, 3, NULL, '2023-08-12', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(137, NULL, NULL, 47, 4, NULL, '2023-08-13', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(136, NULL, NULL, 29, 7, NULL, '2023-08-18', 'like', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(135, NULL, NULL, 1, 2, NULL, '2023-08-14', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(134, NULL, NULL, 2, 2, NULL, '2023-08-16', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(133, NULL, NULL, 34, 8, NULL, '2023-08-18', 'like', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(132, NULL, NULL, 45, 5, NULL, '2023-08-01', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(131, NULL, NULL, 29, 7, NULL, '2023-08-01', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(130, NULL, NULL, 25, 6, NULL, '2023-08-02', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(129, NULL, NULL, 49, 3, NULL, '2023-08-03', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(128, NULL, NULL, 36, 8, NULL, '2023-08-02', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(127, NULL, NULL, 7, 3, NULL, '2023-08-03', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(126, NULL, NULL, 2, 2, NULL, '2023-08-05', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(125, NULL, NULL, 1, 2, NULL, '2023-08-05', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(123, NULL, NULL, 47, 4, NULL, '2023-08-04', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(124, NULL, NULL, 34, 8, NULL, '2023-08-03', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(122, NULL, NULL, 47, 4, NULL, '2023-08-10', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(121, NULL, NULL, 20, 5, NULL, '2023-08-11', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(120, NULL, NULL, 30, 7, NULL, '2023-08-09', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(119, NULL, NULL, 28, 7, NULL, '2023-08-09', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(117, NULL, NULL, 25, 6, NULL, '2023-08-18', 'like', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(118, NULL, NULL, 4, 2, NULL, '2023-08-18', 'like', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(116, NULL, NULL, 45, 5, NULL, '2023-08-17', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(115, NULL, NULL, 2, 2, NULL, '2023-08-17', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(114, NULL, NULL, 1, 2, NULL, '2023-08-17', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(113, NULL, NULL, 34, 8, NULL, '2023-08-16', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(112, NULL, NULL, 37, 8, NULL, '2023-08-14', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(111, NULL, NULL, 46, 5, NULL, '2023-08-15', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(110, NULL, NULL, 7, 3, NULL, '2023-08-14', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(109, NULL, NULL, 45, 5, NULL, '2023-08-15', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(108, NULL, NULL, 2, 2, NULL, '2023-08-12', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(107, NULL, NULL, 36, 8, NULL, '2023-08-10', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(106, NULL, NULL, 25, 6, NULL, '2023-08-18', 'like', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(105, NULL, NULL, 49, 3, NULL, '2023-08-16', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(104, NULL, NULL, 34, 8, NULL, '2023-08-17', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(103, NULL, NULL, 1, 2, NULL, '2023-08-11', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(150, NULL, NULL, 28, 7, NULL, '2023-08-10', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(151, NULL, NULL, 29, 7, NULL, '2023-08-11', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(152, NULL, NULL, 2, 2, NULL, '2023-08-11', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(153, NULL, NULL, 34, 8, NULL, '2023-08-12', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(154, NULL, NULL, 29, 7, NULL, '2023-08-13', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(155, NULL, NULL, 49, 3, NULL, '2023-08-18', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(156, NULL, NULL, 45, 5, NULL, '2023-08-17', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(157, NULL, NULL, 47, 4, NULL, '2023-08-16', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(158, NULL, NULL, 34, 8, NULL, '2023-08-14', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(159, NULL, NULL, 1, 2, NULL, '2023-08-13', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(160, NULL, NULL, 49, 3, NULL, '2023-08-09', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(161, NULL, NULL, 25, 6, NULL, '2023-08-08', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(162, NULL, NULL, 2, 2, NULL, '2023-08-07', 'like', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(163, NULL, NULL, NULL, 2, 5, '2023-08-18', 'follow', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(164, NULL, NULL, NULL, 6, 5, '2023-08-17', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(165, NULL, NULL, NULL, 3, 5, '2023-08-10', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(166, NULL, NULL, NULL, 6, 8, '2023-08-09', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(167, NULL, NULL, NULL, 5, 8, '2023-08-14', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(168, NULL, NULL, NULL, 7, 8, '2023-08-15', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(169, NULL, NULL, NULL, 2, 8, '2023-08-16', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(170, NULL, NULL, NULL, 4, 8, '2023-08-17', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(171, NULL, NULL, NULL, 2, 6, '2023-08-17', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(172, NULL, NULL, NULL, 5, 6, '2023-08-18', 'follow', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(173, NULL, NULL, NULL, 8, 4, '2023-08-15', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(174, NULL, NULL, NULL, 2, 4, '2023-08-12', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(175, NULL, NULL, NULL, 5, 4, '2023-08-08', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(176, NULL, NULL, NULL, 7, 4, '2023-08-07', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(177, NULL, NULL, NULL, 6, 2, '2023-08-07', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(178, NULL, NULL, NULL, 8, 2, '2023-08-08', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(179, NULL, NULL, NULL, 3, 2, '2023-08-09', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(180, NULL, NULL, NULL, 4, 2, '2023-08-10', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(181, NULL, NULL, NULL, 6, 3, '2023-08-10', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(182, NULL, NULL, NULL, 8, 3, '2023-08-11', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(183, NULL, NULL, NULL, 5, 3, '2023-08-12', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(184, NULL, NULL, NULL, 4, 3, '2023-08-04', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(185, NULL, NULL, NULL, 7, 3, '2023-08-05', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(186, NULL, NULL, NULL, 3, 7, '2023-08-05', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(187, NULL, NULL, NULL, 4, 7, '2023-08-06', 'follow', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(188, 16, NULL, 34, 8, NULL, '2023-08-16', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(189, 17, NULL, 1, 2, NULL, '2023-08-16', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(190, 18, NULL, 13, 4, NULL, '2023-08-16', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(191, 19, NULL, 36, 8, NULL, '2023-08-16', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(192, 20, NULL, 36, 8, NULL, '2023-08-16', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(193, 21, NULL, 49, 3, NULL, '2023-08-10', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(194, 22, NULL, 45, 5, NULL, '2023-08-10', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(195, 23, NULL, 7, 3, NULL, '2023-08-10', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(196, 24, NULL, 47, 4, NULL, '2023-08-10', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(197, NULL, 76, 45, 5, NULL, '2023-08-16', 'order', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(198, NULL, 76, 46, 5, NULL, '2023-08-16', 'order', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(199, NULL, 77, 24, 6, NULL, '2023-08-17', 'order', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(200, NULL, 78, 8, 3, NULL, '2023-08-10', 'order', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(201, NULL, 78, 2, 2, NULL, '2023-08-10', 'order', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(202, NULL, 79, 47, 4, NULL, '2023-08-08', 'order', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(203, NULL, 79, 48, 4, NULL, '2023-08-08', 'order', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(204, NULL, 79, 29, 7, NULL, '2023-08-08', 'order', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(205, NULL, 80, 37, 8, NULL, '2023-08-05', 'unorder', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(206, NULL, 80, 12, 4, NULL, '2023-08-05', 'order', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(207, NULL, 81, 36, 8, NULL, '2023-08-18', 'order', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(208, NULL, 81, 32, 8, NULL, '2023-08-18', 'order', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(209, NULL, 82, 19, 5, NULL, '2023-08-18', 'order', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(210, NULL, 82, 20, 5, NULL, '2023-08-18', 'order', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(211, NULL, 82, 16, 5, NULL, '2023-08-18', 'unorder', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(212, NULL, 83, 49, 3, NULL, '2023-08-13', 'unorder', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(213, NULL, 83, 50, 3, NULL, '2023-08-13', 'order', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(214, NULL, 83, 39, 3, NULL, '2023-08-13', 'order', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(215, NULL, 84, 30, 7, NULL, '2023-08-15', 'order', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(216, NULL, 84, 42, 6, NULL, '2023-08-15', 'order', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(217, 25, NULL, 25, 6, NULL, '2023-08-10', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(218, 26, NULL, 29, 7, NULL, '2023-08-15', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(219, 27, NULL, 45, 5, NULL, '2023-08-15', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(220, 28, NULL, 36, 8, NULL, '2023-08-15', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(221, 29, NULL, 31, 7, NULL, '2023-08-15', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(222, 30, NULL, 15, 4, NULL, '2023-08-15', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(223, 31, NULL, 30, 7, NULL, '2023-08-14', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(224, 32, NULL, 18, 5, NULL, '2023-08-14', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(225, 33, NULL, 47, 4, NULL, '2023-08-14', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(226, 34, NULL, 43, 6, NULL, '2023-08-14', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(227, 35, NULL, 6, 3, NULL, '2023-08-14', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(228, 36, NULL, 12, 4, NULL, '2023-08-12', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(229, 37, NULL, 11, 4, NULL, '2023-08-12', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(230, 38, NULL, 49, 3, NULL, '2023-08-12', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(231, 39, NULL, 20, 5, NULL, '2023-08-12', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(232, 40, NULL, 32, 8, NULL, '2023-08-12', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(233, 41, NULL, 36, 8, NULL, '2023-08-18', 'comment', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(234, 42, NULL, 20, 5, NULL, '2023-08-18', 'comment', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(235, 43, NULL, 32, 8, NULL, '2023-08-18', 'comment', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(236, 44, NULL, 2, 2, NULL, '2023-08-18', 'comment', 0);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(237, 45, NULL, 49, 3, NULL, '2023-08-18', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(238, 46, NULL, 45, 5, NULL, '2023-08-17', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(239, 47, NULL, 29, 7, NULL, '2023-08-17', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(240, 48, NULL, 13, 4, NULL, '2023-08-17', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(241, 49, NULL, 34, 8, NULL, '2023-08-17', 'comment', 1);
INSERT INTO `notifications` (`ID_NOTIFICATION`, `ID_COMMENT`, `ID_ORDER`, `ID_RECIPES`, `ID_USER`, `ID_FOLLOWER`, `DATE_NOTIFICATION`, `TYPE`, `OPENED`) VALUES(242, 50, NULL, 6, 3, NULL, '2023-08-17', 'comment', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `ID_ORDER` bigint NOT NULL AUTO_INCREMENT,
  `ID_BUYER` bigint NOT NULL,
  `DATEORDER` date NOT NULL,
  `DATERETURN` date NOT NULL,
  `PRICE_TOTAL` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID_ORDER`),
  KEY `I_FK_DELIVERY_ORDER_USER` (`ID_BUYER`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `orders`
--

TRUNCATE TABLE `orders`;
--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID_ORDER`, `ID_BUYER`, `DATEORDER`, `DATERETURN`, `PRICE_TOTAL`) VALUES(84, 5, '2023-08-15', '2023-08-16', '30.00');
INSERT INTO `orders` (`ID_ORDER`, `ID_BUYER`, `DATEORDER`, `DATERETURN`, `PRICE_TOTAL`) VALUES(83, 5, '2023-08-13', '2023-08-14', '27.00');
INSERT INTO `orders` (`ID_ORDER`, `ID_BUYER`, `DATEORDER`, `DATERETURN`, `PRICE_TOTAL`) VALUES(82, 4, '2023-08-18', '2023-08-19', '32.00');
INSERT INTO `orders` (`ID_ORDER`, `ID_BUYER`, `DATEORDER`, `DATERETURN`, `PRICE_TOTAL`) VALUES(81, 7, '2023-08-18', '2023-08-19', '46.00');
INSERT INTO `orders` (`ID_ORDER`, `ID_BUYER`, `DATEORDER`, `DATERETURN`, `PRICE_TOTAL`) VALUES(80, 2, '2023-08-05', '2023-08-06', '42.00');
INSERT INTO `orders` (`ID_ORDER`, `ID_BUYER`, `DATEORDER`, `DATERETURN`, `PRICE_TOTAL`) VALUES(79, 8, '2023-08-08', '2023-08-09', '53.00');
INSERT INTO `orders` (`ID_ORDER`, `ID_BUYER`, `DATEORDER`, `DATERETURN`, `PRICE_TOTAL`) VALUES(78, 8, '2023-08-10', '2023-08-11', '24.00');
INSERT INTO `orders` (`ID_ORDER`, `ID_BUYER`, `DATEORDER`, `DATERETURN`, `PRICE_TOTAL`) VALUES(77, 3, '2023-08-17', '2023-08-18', '18.00');
INSERT INTO `orders` (`ID_ORDER`, `ID_BUYER`, `DATEORDER`, `DATERETURN`, `PRICE_TOTAL`) VALUES(76, 3, '2023-08-16', '2023-08-17', '24.00');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
CREATE TABLE IF NOT EXISTS `recipes` (
  `ID_RECIPES` bigint NOT NULL AUTO_INCREMENT,
  `ID_USER` bigint NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CALORIES` bigint DEFAULT NULL,
  `NUMBER_OF_PERSONS` int NOT NULL,
  `PREPERATION_TIME` bigint NOT NULL,
  `PREPERATION_METHOD` text NOT NULL,
  `UNIT_PRICE` decimal(10,2) DEFAULT NULL,
  `DIFFICULTY` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `COUNTRY` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `DATE_RECIPE` date NOT NULL,
  `VIEW_COUNT` int DEFAULT '0',
  PRIMARY KEY (`ID_RECIPES`),
  KEY `ID_USER` (`ID_USER`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `recipes`
--

TRUNCATE TABLE `recipes`;
--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(1, 2, 'Omelette', 'Not only is an omelette quick and easy to make, it is a paragon of economy. Odds and ends (a.k.a. leftovers) rise to a new level when placed inside an omelette.\r\n\r\nLeftover, cooked vegetables paired with a little cheese and folded into eggs present a much', 322, 1, 6, '1-Crack the eggs into a bowl. Add a small pinch of salt and beat the eggs with a fork until they are well combined.\r\n2-In an 8-inch nonstick skillet over medium-low heat, melt the butter.\r\n3-Add the eggs to the skillet and cook without stirring until the edges begin to set. With a silicone spatula, push the edges toward the center of the pan and tilt the pan so the uncooked eggs move to the edge.\r\nRepeat until the eggs are somewhat set but still a little soft in the center, about 6 minutes.\r\n4-Place the cheese, tomatoes, and herbs in a line down the center of the omelette and cook for about 1 minute longer, or until the eggs are mostly set but still a little soft in the center.\r\n5-Slide the spatula around one side of the omelette at the edge to loosen it. Slip it under the eggs, and use it to carefully fold the omelette in half. Slide the spatula under the folded omelette to loosen it from the pan. Tilt the pan over a plate and use the spatula to nudge it onto the plate. Voila!', NULL, 'Easy', 'Others', '2023-05-20', 431);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(2, 2, 'Burger', 'No grill, no problemo! Here\'s how to make an incredible burger indoors on the stove. An optional quick seasoning mix takes it to the next level.', 781, 3, 15, '1-Before you start cooking, prepare the seasoning mix. In a small bowl, mix together the salt, pepper, and garlic powder. Set aside.\n2-In another small bowl, mix the mayonnaise, mustard, and ketchup together until smooth. Set aside.\n3-Preheat a large sturdy skillet (cast iron is best) over medium heat. \n\nLoosely divide the ground beef into three 1/3-pound patties. Shape into discs about 1/2 inch thick and put a divot in the center of each patty to prevent swelling in the center. Season the patties with 1/2 teaspoon of seasoning mix per side of the patty, if using.\n4-Turn on the fan over the stove and open a window to help with air flow. \n\nSpray your skillet with a little non-stick spray and place burgers in the skillet. Press down on each patty with a spatula for 10 seconds. This is to encourage browning. \n\nCook the burgers over medium heat for 4 minutes. Don’t touch them too much so you get a nice crust on the first side. Use a sturdy metal spatula to flip the burgers, being sure to scrape up any caramelization with the burger.\n5-After you flip the burgers, add the cheese, if using, and continue to cook for 3 minutes until the burger is cooked to desired doneness, usually medium. \n\nIf you are only cooking one burger, you can toast your buns in the same skillet as your patty, or you can toast them separately if you are cooking multiple burgers at once.\n\nIf you want the cheese to be very melted, cover the burgers with a lid for the last minute of cooking.\n6-Build your burgers by spreading some burger sauce on each bun. Put the burgers on the bottom bun and top with the lettuce, onions, tomatoes, and the top bun. Serve immediately with a cold drink.', '8.00', 'Easy', 'American', '2023-05-20', 239);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(3, 2, 'Sheet Pan Grilled Cheese Sandwiches', 'This simple sheet pan technique allows you to make five grilled cheese sandwiches at the same time—meaning everyone around the table gets an equally gooey and warm sandwich at the same time—with barely more effort than it takes to prep one.', 661, 5, 20, '1-Preheat the oven to 425°F with a rack in the upper third of the oven. Place the butter on a rimmed baking sheet and place in the preheated oven until the butter melts, about 5 minutes.\n2-Spread goat cheese evenly on 5 of the bread slices.\n\nCarefully tilt the pan so the melted butter coats the bottom. Arrange all of the bread slices in a single layer in the melted butter on the baking sheet. Ensure the goat cheese is facing up.\n\nPlace 1 cheddar slice on each bread slice with goat cheese and place 1 slice each of provolone and 1 slice of Swiss on each plain bread slice.\n3-Return to the oven and bake at 425°F until the cheese is bubbly and the bread is beginning to brown, about 7 minutes.\n4-Remove from the oven and assemble the sandwiches by combining each of the goat cheese slices with the provolone and Swiss slices. Return to oven and bake until bread is golden and toasted, 3 to 4 minutes.', NULL, 'Easy', 'Others', '2023-05-20', 101);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(4, 2, 'Oatmeal Banana Cookies', 'This recipe is a marriage between oatmeal cookies and banana bread. We are taking all the classic banana bread flavors and baking it in a soft oatmeal cookie. Cinnamon, walnuts, and chocolate chips reinforce the banana bread flavors.', 204, 16, 32, '1-Preheat the oven to 350°F and position a rack in the center. Line two baking sheets with parchment paper and set aside.\n2-In a small bowl stir together the all purpose flour, rolled oats, cornstarch, baking soda, baking powder, cinnamon, and salt.\n3-In a medium bowl mash the overripe banana until it is a puree. You want about 1/4 cup.\n\nAdd the melted butter and stir. Add the brown and white sugar into the banana mixture and stir well. Then add the egg and vanilla and mix to combine.\n4-Add the dry mixture into the wet ingredients and fold together. Add the walnuts and chocolate chips and mix until well incorporated.\n\nYour dough may be loose or wet. It often depends on the brand and type of oats you are using. If your dough is wet, let it rest for 20-30 minutes so the oats can absorb some of the moisture. If it’s still too loose to scoop, fold in a few more tablespoons of flour.\n5-Using a small ice cream scoop or spoon, scoop out dough (about 2 tablespoons per cookie) onto the lined baking tray, placing 2 inches apart as they will spread a little while baking. \n\nBake the cookies for 10-12 minutes. I like to bake one sheet of 6-8 cookies at a time in batches on the middle rack of the oven. If you are baking two sheets at a time, rotate the sheets from top to bottom and back to front halfway through.\n\nThe cookies are done when they have spread out, are golden brown, dry to the touch on top, and crispy around the edges. If you press one down gently it down it should still be soft but not wet. The cookies firm up as they cool down.\n6-Once the cookies are out of the oven, transfer to a wire rack with a thin metal spatula to let them cool. \n\nServe the cookies with milk.\n7-Once the cookies are baked, you can store them in an airtight container at room temperature for 1 week. \n\nOr, do what I do and transfer half of them to zip-top bags and freeze for up to 2 months. When ready to eat, warm the cookie in the microwave for around 30-60 seconds until soft.', '15.00', 'Easy', 'Others', '2023-05-20', 108);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(5, 2, 'Turkish Coffee', 'Turkish coffee is a rich and thick small cup of coffee, often no larger than 2 ounces, best served and enjoyed with friends and family. It’s made with a powder-fine ground coffee that is brewed in a coffee pot called a cezve or ibrik, which is used direct', 0, 1, 9, '1-Place the water and Turkish coffee grounds in a metal cezve (Turkish coffee pot). Add the sugar and/or spice, if using, to the pot along with the grounds. Stir with a small spoon or chopstick to combine.\n2-Place the cezve on the stovetop and cook on medium-low heat, until the water just starts to boil. This should take about 3 to 4 minutes. Don’t try to rush the boiling, you want it to come to a slow simmer to give the coffee time to brew.\nOnce you see the Turkish coffee start to boil and rise, remove from the heat. If you’d like foam with your Turkish coffee, spoon some of the foam out of the cezve and into your finjan (cup).\n\nOnce the coffee has settled down, return the pot to the stove and let it boil again. Repeat this process, removing the pot from the stove to let the coffee settle, and then re-boiling it 3 more times.\n3-After the 4th time, pour the rest of the coffee into the finjan. Serve with a glass of cold water and a sweet treat like Turkish delight on the side.', NULL, 'Easy', 'Others', '2023-05-20', 20);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(6, 3, 'Chicken Mulligatawny Soup', 'Mulligatawny is the ultimate \"fusion\" food, invented centuries before anyone would even know what that meant. It hails from the early days of the British Raj in India.', 368, 5, 65, '1-Heat butter and olive oil on medium high heat in a large (4 to 5 quart), thick-bottomed pot. Add the onions, celery, and carrots. Cook for 5 minutes until just starting to soften. Add the bay leaves. Add the curry powder and mix to coat.\r\n2-Add the chicken thighs and stir to coat with the curry mixture. Add the stock and water to the pot. Add the salt. Bring to a simmer and reduce the heat to maintain a simmer. Cover and cook for 20 minutes.\r\n3-Remove the chicken pieces from the pot. (They should be just cooked through. If not, return them to the pot for another 5 minutes or so, until they are cooked through.) Place on a cutting board and allow to cool to the touch.\r\n4-Add the rice and the chopped apples to the soup. Return to a simmer on high heat, then lower the heat to maintain a low simmer. Cover and cook for 15 minutes, or until the rice is cooked through.\r\n5-While the apples and rice are cooking in the soup, shred the chicken, discarding any tough bits. Once the rice and apples in the soup are cooked, add the chicken back to the pot. Heat for 5 minutes more. Then stir in the cream.\r\n6-Serve with yogurt and chives.', NULL, 'Easy', 'British', '2023-05-26', 153);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(7, 3, 'Strawberry Eton Mess', 'This ultra-easy berry dessert with a funny name consists of a mixture of juicy macerated strawberries, broken pieces of meringue, and whipped cream.\r\n\r\nThis is a beloved sweet treat throughout England as soon as strawberries are in season.', 326, 4, 25, '1-Preheat the oven to 350°F. Spread the almonds on a baking sheet and bake for 8 to 10 minutes, or until fragrant and golden. Cool the almonds on the baking sheet. \r\n\r\nIf you don’t want to turn on the oven, toast the almonds in a dry skillet (no oil) over medium heat. Stir constantly for 4 to 5 minutes, or until the nuts are lightly browned. Immediately transfer them to a plate to cool, since they can easily burn if you don’t watch them.\r\n2-Set aside some strawberry slices to garnish the finished dessert with.\r\n\r\nIn a medium bowl, toss half the strawberries with the jam. Using a potato masher or a fork, crush them coarsely. Let sit while you whip the cream. \r\n\r\nSet the other half of the strawberries aside—everything will be mixed into the whipped cream.\r\n3-In a mixer bowl, combine the cream and vanilla. Beat until soft peaks begin to form. Once the cream is thickened halfway, use a wire whisk to beat it by hand to the desired consistency. The cream should be thickened but still soft and loose.\r\n4-Add the crushed strawberries and the sliced strawberries to the bowl of cream and mix to swirl them in.\r\n5-In the bottom of 4 (8-ounce) serving glasses or bowls, place a spoonful of the strawberries and cream mixture. Top with a spoonful of broken meringue pieces. Continue to layer the strawberries and cream and the broken meringues into the dishes. \r\n\r\nTop with toasted almonds and reserved strawberry slices and serve.', NULL, 'Easy', 'British', '2023-05-26', 209);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(8, 3, 'Pasta Pomodoro With Shrimp', 'What\'s your go-to quick midweek meal? Mine often involves angel hair pasta, because it cooks in only 3 minutes. My other standby is shrimp, which also cooks almost as fast.\r\n\r\nIn this Pasta Pomodoro with Shrimp we are using both, and tossing them with qui', 302, 3, 30, '1-Fill a large pot with 2 quarts of water. Bring to a boil. (You will be using this water to both blanch the tomatoes and boil the pasta.)\r\n\r\nCore the tomatoes and use a sharp knife to cut a small X into the bottom end of each tomato. When the water is boiling, use a slotted spoon to lower the tomatoes into the water.\r\nBlanch for no more than one minute, just enough to loosen the skins. Remove tomatoes with a slotted spoon to a bowl of icy water, saving the blanching water.\r\nPeel off the tomato skins from the tomatoes. Cut the tomatoes crosswise in half, and squeeze out most of the seeds and juices.\r\n\r\nChop the tomatoes into 1-inch pieces.\r\n2-Heat 1 tablespoon olive oil in a large sauté pan on medium high heat. Add the shrimp to the pan and cook for 1 minute. Turn the shrimp over in the pan. Lower the heat to medium.\r\n3-Add the garlic, cook a minute more. Add the chopped tomatoes and basil. Sprinkle with salt. Cook for a minute more and remove from heat.\r\n4-Add a tablespoon of salt to the water you used to blanch the tomatoes. Bring to a boil again. Add the angel hair pasta and cook for 3 minutes.\r\n5-Drain the pasta and immediately add to pot with the shrimp and tomatoes. Drizzle the pasta with 2 Tbsp of olive oil. Then stir the pasta in with the shrimp and tomatoes.\r\n\r\nServe immediately or at room temp.', '10.00', 'Easy', 'Italian', '2023-05-26', 53);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(9, 3, 'Fettucine Alfredo', 'There are certain recipes that are essential to have in your recipe box and one of them has to be a phenomenal Fettuccine alfredo recipe.  Years ago, when I was teaching kids\' cooking classes, this was one of the first things I taught them.', NULL, 4, 20, '1-Start by bringing water to a boil in a large pot. Add salt to the water to season the pasta. Once it is boiling, add pasta and cook according to package instructions.\r\n2-Saute the garlic and butter together until softened -- about 1 to 2 minutes.\r\n3-Add heavy cream and let simmer over medium-high heat for about 5 minutes to chicken. Add salt and pepper to taste. Add half of the parmesan cheese to the mixture and whisk well until smooth.\r\n4-Save some pasta water. The pasta water is full of flavor and can be used to thin out the sauce.\r\n5-Toss alfredo sauce with fettuccine pasta and add half of the parmesan cheese. Once it is tossed, garnish with the remaining parmesan cheese. Add a little pasta water if it needs to be thinned out.\r\n6-Garnish with Italian parsley, if so desired.', '10.00', 'Easy', 'Italian', '2023-05-26', 104);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(10, 3, 'Crepes', 'Crêpes are an ultra-thin pancake common in France that can be made sweet or savory, typically rolled or folded with a variety of fillings from jam or Nutella to ham and cheese to seafood.', NULL, 2, 15, '1-In a blender, add milk, water, eggs, sugar, melted butter, flour, and salt. Blend until it is completely smooth. Make sure to check the sides of the blender to ensure no flour has clumped on the sides.\r\n2-Heat a non-stick skillet or crepe pan over medium or medium-low heat. Once it has warmed, add a pat of butter or spray non-stick cooking spray all over the pan.\r\n3-Pour batter into the center and then lift up the skillet and quickly move it around until the batter has reached the edges of the pan. You want to watch for the batter to start to become opaque.\r\n4-Take a spatula and run it along the edges of the pan. Once the crepe looks set, carefully flip to the other side. The other side only needs about 30 seconds to cook. Remove from the pan and place on a plate.\r\n5-Serve warm and top with your favorite toppings. See the post for toppings ideas. ', '5.00', 'Easy', 'French', '2023-05-26', 154);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(11, 4, 'Ratatouille', 'Ratatouille is a classic summer dish from the South of France. It\'s essentially a stew of vegetables, including tomatoes, eggplant, summer squash, bell pepper, onions, and garlic.', 230, 7, 110, '1-Preheat the oven to 400° F.\r\n2-Using a large oven-proof pan over medium-high heat, sauté onions in 2 tablespoons of olive oil until they begin to soften, about 5 minutes. Add garlic and reduce heat to low.\r\n3-While the onions and garlic are cooking over low heat, heat 2 tablespoons of olive oil in another frying pan over high heat. As soon as oil starts to smoke, quickly add enough zucchini cubes all at once to cover the bottom of the pan.\r\n\r\nKeep on cooking over high heat, stirring, until zucchini is lightly browned on all sides. Remove zucchini cubes, and add them to pan with the onions.\r\n\r\nWorking in batches, repeat this process until all of the zucchini cubes have been cooked.\r\n4-Cook the yellow squash in the same manner as the zucchini. Make sure to add a little olive oil between each new batch.\r\n\r\nContinue with the bell peppers, then the eggplant cubes, adding the browned vegetables to the onion pan as soon as they are cooked.\r\n5-When all the vegetables (except the tomatoes) are browned and in the pan with the onions, increase the heat to high and stir, making sure they don\'t stick to the bottom of the pan.\r\n\r\nAdd salt to taste, along with thyme, bay leaf, rosemary, and the vegetable stock. Stir well.\r\n6-Place the pan in a 400°F oven, and bake, uncovered, for 30 minutes. Alternatively, you can cook on the stovetop on low heat for 30 minutes.\r\n7-If using fresh tomatoes, boil water in a saucepan. Remove the stems from tomatoes, and crisscross the bottoms with a knife. Plunge the tomatoes into boiling water for a minute or two, until skin starts to fall away. Rinse in cold water and remove the skin.\r\n\r\nCut tomatoes in half lengthwise, remove seeds, chop coarsely, and set aside\r\n8-After the vegetables have been in the oven for a half hour, remove from oven, drain vegetables in a colander set over a bowl to catch the juices. Clean browned bits (if any) off the bottom of pan with a paper towel.\r\n\r\nReturn any liquid to the pan and reduce to a thick glaze over medium-high heat. Keep on adding juices to the pan as they run out of the vegetables into the bowl.\r\n9-When all the juices have been reduced, return vegetables to the heavy pan. At this point the ratatouille should be moist and shiny, with very little liquid. Turn heat off. Add the chopped tomatoes and cover.\r\n10-Remove the bay leaf, and season to taste with salt and pepper. If serving as a warm side dish, let the ratatouille stand for 10 minutes, just enough to \"cook\" the tomatoes. The ratatouille can be served at room temperature or refrigerated and reheated the next day.', '14.00', 'Hard', 'French', '2023-05-26', 8);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(12, 4, 'Homemade Apple Pie', 'This is absolutely the best homemade apple pie you\'ll ever make! It has a flaky, buttery crust and a tender, lightly-spiced apple pie filling. Use a combination of apples for best flavor, and bake until the top is golden and the filling is bubbly!', 460, 8, 170, '1-Peel, core and slice or roughly chop the apples into 1/4-inch to 1/2-inch slices or chunks.\r\n\r\nAs you cut your apple slices, add them to a large bowl and toss them with the lemon juice or apple cider vinegar to help keep them from turning brown.\r\n2-Combine the sugar, flour and spices (allspice, nutmeg, cinnamon) in a bowl. Add the flour mixture to the apple slices and use your hands to distribute the flour through the apples so they are well coated.\r\n\r\nSprinkle with and vanilla extract and stir to coat all the apples.\r\n3-Place one oven rack in the lowest position and put a large rimmed baking sheet on it to catch any drippings from the pie. Position a second rack the next rung up (still in the lower third of the oven).\r\n4-Remove one disk of pie dough from the refrigerator. Let sit at room temperature for 5 to 10 minutes. Place disk on a lightly floured, clean, flat surface. Using a rolling pin, roll out the pie dough to a 12-inch circle, about 1/8-inch thick.\r\n\r\nAs you roll out the dough, check to make sure it isn\'t sticking. If and when it starts to stick, gently lift it up and sprinkle a little more flour on the table surface or on the pie dough to keep the dough from sticking.\r\n\r\nGently place the rolled out dough onto a 9 inch pie plate. Press down to line the pie dish with the dough.\r\n5-Arrange the apple slices in the dough-lined pie plate. Mound the apples in the center.\r\n6-Roll out the second disk of dough, again to 12-inches. Gently place the second round of pie dough over the apples. Trim excess dough with kitchen shears, leaving a 3/4 inch overhang from the edges of the pie pan.\r\n\r\nFold the dough under itself so that the edge of the fold comes right to the edge of the pan. Press the top and bottom dough rounds together as you flute edges using thumb and forefinger or press with a fork.\r\n7-Place egg yolk and cream in a small bowl and use a fork to stir until well combined. Use a pastry brush to brush the egg wash over the top and fluted edges of the pie. Use a sharp knife to cut slits in the top of the pie crust for steam vents.\r\n8-Place pie on oven rack centered over the baking sheet on the rack below it to catch any drippings. Bake the pie at 375°F until crust begins to lightly brown, about 20 minutes, then reduce heat to 350°F.\r\n\r\nBake until the crust is golden brown and the juices are bubbling all over, an additional hour or up to another hour and a half, depending on the type of apples you are using. If you have an instant-read thermometer, it should read 200°F when inserted in the center of the pie.\r\n9-Transfer the apple pie to a rack to cool for at least 1 hour. Serve slightly warm or at room temperature. Great with a side of vanilla ice cream.', '18.00', 'Hard', 'American', '2023-05-26', 75);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(13, 4, 'Texas Style Beef Brisket', 'Texas Style Smoked Beef Brisket is more than a simple recipe, it’s a process for melt in your mouth smoked brisket. All you need is salt, pepper, smoke, and time, and you’re on your way to eating the best beef brisket of your life.', 282, 18, 990, '1-Store your brisket in the refrigerator until you are ready to start trimming. Cold briskets are much easier to work with. Flip your brisket over so the point end is underneath. Remove any silver skin or excess fat from the flat muscle. Trim down the large crescent moon shaped fat section until it is a smooth transition between the point and the flat. Trim and excessive or loose meat and fat from the point. Square the edges and ends of the flat. Flip the brisket over and trim the top fat cap to about 1/4 of an inch thickness across the surface of the brisket.\r\n2-In a mixing bowl or empty spice container, mix the salt, pepper, and garlic. Share over the brisket to evenly distribute the spices on all sides.\r\n3-Preheat your smoker to 225 degrees F using indirect heat and hardwood smoke. Place the brisket on the smoker with the point end facing your main heat source. This is a thicker part of the brisket and it can handle the additional heat. Close the lid and smoke until and internal thermometer reads 165 degrees F (usually takes around 8 hours).\r\n4-On a large work surface, roll out a big piece of butcher paper (or foil) and center your brisket in the middle. Wrap the brisket by folding edge over edge, creating a leak proof seal all the way around. Return the wrapped brisket to the smoker, seam side down so the weight from the brisket crimps the edges of the paper wrap down tight.\r\n5-Close the lid on the smoker and, maintaining 225 degrees F, continue cooking until the internal temperature of the brisket reaches 202 degrees F in the thickest part of the meat (takes anywhere from 5-8 hours).\r\n6-Remove the brisket to a large cutting board and allow to rest for 1 hour before slicing. Slice both the point and the flat against the grain with a sharp knife and serve immediately.', NULL, 'Hard', 'American', '2023-05-26', 85);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(14, 4, 'Braised Chicken And Mushrooms In Sour Cream Sauce ', 'There’s nothing quite as tender as slow braised chicken, and a sour cream sauce makes it mouth-wateringly rich and slightly tangy too. And the best part? Only one pan to wash up.', 533, 6, 80, '1-Season the chicken thighs with salt, pepper and mild paprika, then brown in 1 tbsp of olive oil for 5 minutes on each side or until the skin is golden but the chicken is not cooked all the way through. Remove the chicken to a plate and set aside for now.\r\n\r\n2-Remove excess fat from the pan but leave 2 tbsp in, then add 1 tbsp of butter and melt, bring in chopped onions and cook them over low heat for 5-7 minutes, then add the whole mushrooms and brown them for 5 minutes longer, finally add the minced garlic and cook no longer than 30 seconds.\r\n\r\n3-Start preheating the oven to 180C/350F. Sprinkle the flour all over the pan and mix in with the fat to form a paste, then add the chicken stock and mix to combine, add the bay leaves and bring to a low simmer.\r\n\r\n4-Take off the heat and stir in the sour cream or creme fraiche until it’s incorporated into the sauce. The sprinkle the fresh herbs all over and mix. \r\n\r\n5-Bring the chicken back to the pan and arrange the pieces between the mushrooms. Cook uncoverd in the preheated oven for 45 minutes.', '16.00', 'Medium', 'Russian', '2023-05-26', 92);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(15, 4, 'Russian Honey Cake Medovik', 'This iconic Russian honey cake aka tort Medovik is something everyone needs to try at least once. Layers upon layers of honey goodness filled with the most delicious cream. It’s quite unforgettable.', 682, 12, 150, '1-Make the sponge cake batter. \r\n2-Spread the batter thinly over the back of an inverted sheet pan into the shape of a large rectangle. \r\n3-Bake the thin cake layers until browned and aromatic (7-8 minutes.) \r\n4-Cool completely before peeling off the parchment paper. \r\n5-Cut out two round cake layers from each rectangle using an 8-inch salad plate, reserving a cake layer for crumbs. \r\n6-Make the cream filling by mixing together the sour cream and whipped topping. Frost each layer including the top and sides.\r\n7-Garnish with the reserved cake crumbs. \r\n8-Soak for at least 1 hour before serving! ', NULL, 'Hard', 'Russian', '2023-05-26', 98);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(16, 5, 'Rainbow Orzo Salad', 'This Orzo Salad recipe is light, fresh, and filled with veggies, chickpeas, and fresh herbs. It will quickly become a go-to pasta salad in your house! Enjoy for a light lunch, dinner, or take to a potluck!', 205, 6, 25, '1-In a large bowl, combine the red pepper, mango, cucumber, red onion, garlic, chickpeas, herbs, salt, and several grinds of fresh black pepper.\r\n2-Cook the orzo according to the package directions or until al dente. Drain, gently rinse, toss with a little olive oil and set aside to cool to room temp before adding to the salad.\r\n3-Make the dressing. In a small bowl, stir together the tahini, olive oil, lemon juice, vinegar, cumin, sweet paprika, salt and pepper. Add a few tablespoons of water until it\'s a drizzle-able consistency.\r\n4-Add the orzo, dressing, and arugula to the salad and toss to coat. Season to taste and top with toasted pine nuts.', '10.00', 'Easy', 'Others', '2023-05-26', 28);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(17, 5, 'Healthy Taco Salad', 'You’ve probably seen ground beef taco salad at restaurants before. It’s basically like an enormous Mexican taco in bowl form — no taco shell needed! Unlike most restaurant versions, my healthy taco salad recipe is low carb and gluten-free.', 526, 3, 25, '1-Heat oil in a skillet over high heat. Add ground beef. Stir fry, breaking up the pieces with a spatula, for about 7-10 minutes, until the beef is browned and moisture has evaporated.\r\n2-Stir taco seasoning into the ground beef until well combined. If you like, you can also add 1/4 cup of water when adding the seasoning and let it simmer a bit.\r\n3-Meanwhile, combine all remaining ingredients in a large bowl. Add the ground beef. Toss everything together.', '4.00', 'Easy', 'Others', '2023-05-26', 26);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(18, 5, 'Tortilla Soup', 'Tortilla soup (Spanish: sopa de tortilla) is a traditional Mexican soup made of fried corn tortilla pieces,[1] submerged into a broth of tomato, garlic, onion, and chile de árbol and epazote. It is served with pieces of pasilla chiles, chicharrón, avocado', 278, 8, 40, '1-For the tortilla strips, cut the tortillas into ¼-inch strips. In a small pan, heat ¼ cup of vegetable oil over medium-high heat.\r\n2-Add the tortillas, in small batches to the oil and fry them until they are crisp, about 1 minute per side. Remove from the oil and drain on paper towel. While warm, sprinkle with salt to taste.\r\n3-In a large pot, heat olive oil over medium heat. Add the onion, garlic, and jalapeño to the pot, and cook until the onion is softened, about 3 to 4 minutes.\r\n4-Add in the chicken broth, black beans, crushed tomatoes, diced tomatoes with juices, corn, lime juice, cilantro, ground cumin, and chili powder. Stir to combine.\r\n5-Add the chicken breasts and bring the soup to a boil over high heat. Reduce the heat to a simmer and cook uncovered for 20 minutes, or until the chicken is cooked through.\r\n6-Remove the chicken from the pot and shred it with two forks. Add the shredded chicken back to the pot and simmer for an additional 3 minutes. Taste and season with salt and pepper.\r\n7-Spoon soup into bowls and top with tortilla strips, lime wedges, and sliced avocado.', NULL, 'Medium', 'Others', '2023-05-26', 33);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(19, 5, 'Beer Cheese Soup', 'Beer soup is a soup which is usually roux-based and made with beer. In medieval Europe, it was served as a breakfast soup, sometimes poured over bread.', 518, 6, 25, '1-In a large saucepan, cook the bacon over moderate heat until the fat is rendered and the bacon is crisp, 7 minutes. Using a slotted spoon, transfer the bacon to a bowl. Add the celery, onion, jalapeño, garlic, and thyme to the saucepan and cook over moderate heat, stirring, until softened, 8 minutes. Add half of the beer and cook until reduced by half, 5 minutes. Add 2 1/4 cups of chicken broth and bring to a simmer.\r\n2-In a small skillet, melt the butter. Add the flour and cook over moderate heat, stirring, until lightly browned, about 2 minutes. Whisk this roux into the soup until incorporated and bring to a simmer. Cook until thickened, about 8 minutes. Add the heavy cream, cheddar cheeses, and the remaining beer and simmer, stirring occasionally, until thick and creamy, about 5 minutes. Stir in the bacon and season with salt and pepper. Add a few more tablespoons of broth if the soup is too thick. Serve the soup with garlic toasts.', '8.00', 'Easy', 'Others', '2023-05-26', 38);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(20, 5, 'Tiramisu', 'Here\'s how to make tiramisu, step-by-step. Made with egg yolks, sugar, rum, mascarpone, and whipped cream, then layered with coffee-dipped ladyfingers, this classic tiramisu recipe is a great make-ahead dessert for holiday gatherings or special occasions.', 630, 12, 300, '1-Heat oven to 350°F (325°F for dark or nonstick pans). Grease 2 (9-inch) round cake pans with shortening; line pans with cooking parchment paper. Make cake mix as directed on box, using water, oil and eggs. Pour batter into pans.\r\n\r\n2-Bake 25 to 29 minutes or until toothpick inserted in center comes out clean. Cool 10 minutes; remove from pans to cooling racks. Cool completely.\r\n\r\n3-In small bowl, mix coffee syrup ingredients. Set aside to cool.\r\n4-Meanwhile, in large bowl, beat mascarpone cheese, 1 1/2 cups powdered sugar, 2 tablespoons cognac and the vanilla with electric mixer on medium speed until smooth. In small bowl, beat whipping cream with electric mixer on high speed until stiff peaks form. Gently fold whipped cream into mascarpone mixture until combined.\r\n\r\n5-To assemble, cut each cake horizontally to make 2 layers. Place 1 cake layer on plate; moisten generously with coffee syrup, then spread with about 1 cup of the filling. Repeat with remaining 3 cake layers. Spread remaining filling over top and side of cake.\r\n6-Sprinkle cocoa over cake. Arrange coffee beans around top edge of cake. Sprinkle chopped chocolate around bottom edge of cake. Refrigerate at least 3 hours before serving.', '20.00', 'Hard', 'Others', '2023-05-26', 166);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(21, 6, 'Lazy Cake', 'The ultimate in ease, lazy cake is a delicious chocolate biscuit cake made with only four ingredients and with 5 minutes of effort. It’s cold and chocolatey and crunchy and delicious, absolutely addictive!', NULL, 12, 150, '1-Crush/ break the biscuits into small pieces. Place them in a large bowl. if you are using nuts, crush them as well and add to the bowl. set aside.\r\n2-In a saucepan combined sugar, butter, cocoa powder and water/coffee. Place the saucepan over medium heat and bring to a boil. Cook for 5-6 minutes, stirring constantly.\r\n3-Pour chocolate syrup over the biscuits and stir until well coated.\r\n4-Transfer the mixture into a 9-inch (23cm) pan. Press firmly to create flat surface cake. Refrigerate while making the ganache.\r\n5-Make chocolate ganache: chop the chocolate and place in a heatproof bowl. In a small saucepan heat the cream, when starts to simmer remove from heat and pour over the chocolate. Let sit for 1-2 minutes and stir until melted and smooth.\r\n6-Pour the ganache over the cake and refrigerate for at least 2-3 hours before serving.\r\n7-Decorate with nuts.', '12.00', 'Medium', 'Others', '2023-05-26', 101);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(22, 6, 'Spicy Tofu Stir-Fry', 'This one-pot, vegetarian stir-fry uses cubes of extra-firm tofu fried until the surface is crispy. It’s then tossed with crunchy vegetables and a lightly sweet, spicy, and sticky orange sauce.', 214, 4, 50, '1- Make the Sauce Mixture.  Combine soy sauce, sherry, rice vinegar, cornstarch, sugar, and red pepper flakes in a small bowl. Stir to combine.\r\n2-Fry the Tofu.  Add 1 tablespoon of oil to a pan and cook the tofu on medium-high until golden brown. Remove and set aside. 3-Stir-fry the Veggies.  Using the same pan, set heat to medium, then add 1 tablespoon of oil. Saute shallots and garlic, then add snow peas, mushrooms, and sesame seeds.  Stir the veggies frequently until the peas turn a vibrant green in color. \r\n4-Combine. Add the tofu and the soy sauce mixture into the pan until the sauce thickens.  Whisk and blend well; otherwise, you will get a lumpy sauce. \r\n5-Serve.  Serve the Spicy Sesame Tofu Stir-fry over a bed of rice and enjoy!', NULL, 'Medium', 'Others', '2023-05-26', 86);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(23, 6, 'Spicy Grilled Chicken Tacos', 'Spicy grilled chicken tacos! Quick marinade, then grill. Ready in about 30 minutes. Great for a quick weeknight dinner, backyard cookouts, and tailgate parties.', 655, 4, 35, '1-Prepare the grill: Prepare either a gas or charcoal grill for medium-high, direct heat. \r\n2-Make the marinade and coat the chicken: In a large bowl, stir together the chili powder, oregano, cumin, sugar, salt, garlic and orange zest. Stir in the orange juice and olive oil to make a loose paste. Add the chicken to the bowl and toss to coat all over.  Set aside to marinate while the grill heats and you prepare the rest of the toppings. \r\n3-Grill the chicken: Grill the chicken for 3 to 4 minutes per side, or until a thermometer inserted into the thickest part of the meat registers 165°F. Transfer to a plate and rest for 5 minutes.  \r\n4-Thin the sour cream with milk: Stir together the sour cream and milk to thin out the sour cream to make it easy to drizzle. \r\n5-Assemble the tacos: Slice the chicken into strips. On each tortilla, place a small handful of arugula. Top with chicken slices, sliced avocado, radishes, tomatoes, and onion slices. Drizzle with the thinned sour cream. Serve with lime wedges. \r\n6-Warm the tortillas: Place each tortilla on the grill or on a hot, dry skillet over medium-high heat. As soon as you see pockets of the air start to puff up in the tortilla, turn it with tongs and heat for a few seconds on the other side.  Wrap warmed tortillas in a tea towel to keep them warm until serving.', NULL, 'Easy', 'Others', '2023-05-26', 42);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(24, 6, 'Sweet And Sour Chicken', 'Make your favorite takeaway Chinese at home with this sweet and sour chicken recipe. It’s the perfect, easy weeknight main dish.', 602, 4, 25, '1-To make the sauce, whisk together the sugar, brown sugar, apple cider vinegar, ketchup, soy sauce and garlic into a small bowl. \r\n2-Pour enough canola oil into a dutch oven or frying pan that is comes up from the bottom about an inch to an inch and a half. \r\n3-Heat the oil on medium high to high heat, you’re looking for the chicken to cook and brown in about 2-3 minutes. \r\n4-Add the cornstarch to a large ziplock bag. \r\n5-Add the chicken pieces to the large ziplock bag and shake until all the pieces are well coated. \r\n6-Dip the pieces into the egg, then into the flour before adding to the hot oil. Add chicken in batches so as not to have more than a single layer of it in the oil at a time. \r\n7-Cook the chicken for 2-3 minutes, until cooked through and crispy. \r\n8-Remove to a cookie sheet (no paper towels!) and continue cooking the remaining batches of chicken pieces. \r\n9-When done cooking remove all but a tablespoon of the oil. \r\n10-Add the bell peppers, onion and pineapple and cook for 1-2 minutes, until crisp-tender. \r\n11-Add the sauce back in and stir to coat the pieces and cook for 30 seconds to help the garlic warm through. \r\n12-Add the chicken pieces back in and stir until the sauce has thickened and bubbling. \r\n13-Serve immediately, with optional garnishes of sesame seeds or green onions.', '8.00', 'Easy', 'Others', '2023-05-26', 65);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(25, 6, 'Chorizo - Stuffed Sweet Potatoes', 'Check out these Chorizo-Stuffed Sweet Potatoes! That\'s right: Russets aren\'t the only potatoes worth stuffing! Here, we\'re stuffing roasted sweet potatoes with a mixture of spicy chorizo, tangy cotija cheese, peppers, and onions.\n\n', 983, 8, 90, '1-Preheat your oven to 425 degrees.  \r\n2-In a large skillet over medium heat, add the chorizo, onions and garlic and cook them for 7 to 8 minutes or until the chorizo is fully cooked through and make sure you break it up as much as you can with a wooden spoon.  \r\n3-While the chorizo mixture is cooking, prep your sweet potatoes by cutting them in half lengthwise and scooping out the flesh leaving a little bit around the edges to help keep their shape. Add the potato mixture to a large bowl, mash it with a potato masher and set aside.  \r\n4-When the chorizo is ready, remove it from the pan with a slotted spoon (try your best not to add any of the fat to the potatoes) add the cilantro, scallions, black pepper and about 1 cup of the cheese, stir it all together and divide the filling in the prepared potato shells. \r\n5-Top them with the remaining cheese and roast them for about 20 minutes or until golden bubbly!', NULL, 'Medium', 'Others', '2023-05-26', 221);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(26, 7, 'Salade Nicoise', 'Salad Niçoise (pronounced nee-suahz) is essentially a French composed salad, much like our American Cobb salad, but with tuna, green beans, and potatoes, instead of chicken, beef bacon, and avocado.', 508, 6, 55, '1-In a jar, place the oil, lemon juice or vinegar, shallots, herbs, and mustard. Cover with a lid and shake until well blended. Add salt and pepper to taste.\r\n2-Place onion slices in a small bowl and sprinkle with 3 tablespoons of the vinaigrette. (The onions soaking in the vinaigrette will help take some of the bite out of them.)\r\n3-Place potatoes in a large pot and cover with 2 inches of water. Add 1 tablespoon of salt. Heat on high to bring to a boil. Lower the heat to maintain a simmer. Cook for 10 to 12 minutes or so, until the potatoes are fork tender. Drain.\r\n\r\nWhile the potatoes are still warm, cut them into halves or quarters, depending on the size of the potatoes.\r\n\r\nPlace them in a bowl and dress them with about 1/4 cup of the vinaigrette.\r\n4-While the potatoes are cooking, fill a medium sized pot halfway with water, and add 2 teaspoons of salt. Bring to a boil on high heat. Add the green beans to the boiling water.\r\n\r\nCook until tender but still firm to the bite, about 3 to 5 minutes (more or less, depending on the toughness of the beans).\r\n\r\nDrain and either rinse with cold water to stop the cooking, or shock for half a minute in ice water.\r\n5-Arrange a bed of lettuce on a serving platter. If using tuna steaks, cut them into 1/2-inch thick slices. Mound tuna in the center of lettuce. Sprinkle the tomatoes and onions around the tuna.\r\n\r\nArrange the potatoes and green beans in mounds at the edge of the lettuce.\r\n\r\nArrange hard boiled eggs, olives, and anchovies (if using) in mounds on the lettuce bed.\r\n6-Sprinkle with capers if using.\r\n\r\nServe immediately. Should be served slightly warm or at room temperature.', NULL, 'Medium', 'French', '2023-06-01', 25);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(27, 7, 'Potato Croquettes', 'Potato croquettes take something amazing (mashed potatoes) and make them even better! Crispy outside and tender and rich inside, croquettes are to fry at home with our step-by-step recipe.', 320, 7, 130, '1-Make the mashed potatoes:\r\nPlace the peeled, quartered potatoes in a medium pot and cover with at least an inch of cold water. Add 2 tablespoons salt and bring to a boil over medium-high heat. Once boiling, cook until fork tender, about 10 minutes. \r\n\r\nDrain and transfer back to the pot you cooked them in and set on the stove over medium heat. Let any excess water cook off, shaking the pot a few times. \r\n\r\nIf you have a potato ricer, rice the hot potatoes into a large bowl. If you don’t, let the potatoes cool for about 10 minutes before carefully pressing them through the large holes of a box grater. \r\n\r\nAdd the butter and pepper. Use a spatula to gently mix until the butter is melted. Do not overmix. Set aside until room temperature, about 1 hour.\r\n2-Make and form the croquettes:\r\nOnce the mashed potatoes are at room temperature, add the Parmesan cheese, egg yolks, and chives. Use a spatula to mix just until combined. \r\n\r\nUse a spoon to scoop out one golf ball-sized croquette at a time, then use your hands to roll each into a uniform ball. Place on a baking sheet and continue until the mixture is used up.\r\n3-Preheat the oil:\r\nPrepare a baking sheet by lining it with paper towels. Add enough oil to a medium saucepan so that it’s at least 2 inches deep. Make sure the oil does not come more than halfway up the sides of the pot. Heat over medium heat to exactly 350°F while you bread the first batch of croquettes. \r\n4-Bread the croquettes:\r\nMeanwhile, add the fine breadcrumbs to a plate. Add the egg whites to a small bowl, whisking until well combined. Dip one croquette at a time into the egg whites, then into the breadcrumbs, turning to coat. \r\n\r\nSet back on the baking sheet and repeat until 1/4 of the croquettes are breaded and ready to fry.\r\n5-Fry and serve the croquettes:\r\nCarefully add a few croquettes to the hot oil (you will need to cook them in batches). Fry until they’re golden brown all over, about 3 minutes. Use tongs or a spider to move them around gently as they cook to ensure even browning.\r\n\r\nTransfer the fried croquettes to the prepared baking sheet. Sprinkle lightly with salt.\r\n\r\nRepeat breading the croquettes and frying them in batches until all the croquettes are fried. If the oil level gets too low, add more oil in between batches, bringing it to 350°F before frying.\r\n\r\nServe immediately as is or with a simple dip.', '8.00', 'Medium', 'French', '2023-06-01', 91);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(28, 7, 'French Onion Soup', 'Warm, cozy, and flavorful, this French onion soup is prepared with beef stock and caramelized onions. Top with croutons covered in melty Gruyere and Parmesan cheese.', 699, 5, 80, '1-Peel and slice the onions:\r\nPeel and thinly slice the onions from root to stem. There should be about 10 cups of sliced onions in total.\r\n2-Begin caramelizing the onions with olive oil and butter:\r\nIn a 5 to 6 quart thick-bottomed pot, heat 3 tablespoons of olive oil on medium heat. Add the onions and toss to coat with the olive oil.\r\n\r\nCook the onions, stirring often, until they have softened, about 15 to 20 minutes.\r\n\r\nIncrease the heat to medium high. Add the remaining tablespoon of olive oil and the butter and cook, stirring often, until the onions start to brown, about 20 to 40 minutes. The amount of time will vary depending on your pot, stove, and onions.\r\n3-Sprinkle with the sugar, finish caramelizing, and add garlic:\r\nSprinkle with sugar (to help with the caramelization) and 1 teaspoon of salt. Continue to cook until the onions are well browned, about 10 to 15 more minutes.\r\n\r\nAdd the minced garlic and cook for a minute more.\r\n4-Add the stock, bay leaves, and thyme:\r\nAdd the stock, bay leaves, and thyme. Bring to a simmer, cover the pot and lower the heat to maintain a low simmer. Cook for about 30 minutes.\r\n5-Season:\r\nSeason to taste with more salt and add freshly ground black pepper. Discard the bay leaves.\r\n6-Toast the French bread slices:\r\nWhile the soup is simmering, line a sheet pan with parchment paper or foil and preheat the oven to 450°F with a rack in the upper third of the oven.\r\n\r\nBrush both sides of the French bread or baguette slices lightly with olive oil (you\'ll end up using about a tablespoon and a half of olive oil for this).\r\n\r\nPut in the oven and toast until lightly browned, about 5 to 7 minutes. Remove from oven.\r\nTurn the toasts over and sprinkle with the grated Gruyere cheese and Parmesan. Return to oven when it\'s close to serving time and bake until the cheese is bubbly and lightly browned.\r\n7-Serve:\r\nTo serve, ladle soup into a bowl and transfer one cheesy toast onto the top of each bowl of soup.\r\n\r\nAlternatively, you can use individual oven-proof bowls or one large casserole dish. Ladle the soup into the bowls or casserole dish. Cover with the toast and sprinkle with cheese. Put into the broiler for 10 minutes at 350° F, or until the cheese bubbles and is slightly browned.', NULL, 'Medium', 'French', '2023-06-01', 125);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(29, 7, 'Vegetarian Spinach And Mushroom Lasagna', 'This vegetarian lasagna recipe is made with meaty shiitake and crimini mushrooms, spinach, and ricotta and mozzarella cheeses. It feeds a crowd and will satisfy both vegetarian and meat-eaters!', 473, 9, 135, '1-Sauté the mushrooms:\r\nPlace mushrooms in a large (6 to 8 quart) sauté pan on high or medium-high heat. Stir them with a wooden spoon or shake the pan from time to time. You may hear them squeak.\r\n\r\nSprinkle salt over the mushrooms. The mushrooms will sizzle and then start to release water. (Note that you are not adding fat at this point to the pan; this method of cooking mushrooms in their own moisture is called \"dry sautéing.)\r\n\r\nOnce the mushrooms start to release water into the pan, stir in the chopped onions. Cook until the mushrooms are no longer releasing moisture and the mushroom water has boiled away, about 5 minutes more.\r\n2-Make the sauce:\r\nAdd the olive oil to the mushrooms and stir to coat. Sauté the mushrooms and onions for about a minute. Add the garlic and cook for another minute.\r\n\r\nStir in the tomato paste, cook for a minute longer. Reserve 1 cup of the tomato sauce (it will go in the bottom of the casserole dish), and put the remaining cup of tomato sauce into the pot with the mushrooms. Add the large can of crushed tomatoes and one cup of water.\r\n\r\nStir in the thyme, sugar, and red pepper flakes. (If you are using dried basil instead of fresh, add it now.) Bring to a simmer, then lower the heat and simmer on a low simmer, for 20 minutes.\r\n3-Preheat the oven and prep the pan:\r\nPreheat the oven to 350°F.\r\n\r\nSpread the one cup of reserved tomato sauce over the bottom of a large (preferably 10- x 15-inch) casserole dish. (If your casserole dish is smaller, you may need to add another layer as you go through this step.)\r\n4-Boil and drain the lasagna noodles:\r\nOnce the sauce is simmering, salt the boiling pasta water, and add the dry lasagna noodles to the boiling water. (The water should be at a vigorous, rolling boil.) Stir gently, making sure that the noodles are not sticking to each other. Set the timer for 8 minutes, or however long is indicated on the package of the noodles. Cook uncovered on a high boil.\r\n\r\nWhen the noodles are ready (al dente, cooked through but still firm to the bite), drain the noodles in a colander, and rinse them to cool them with cold water. As you rinse them, gently separate them with your fingers so they don\'t stick to each other.\r\nPrepare a couple large cookie sheets or baking sheets by spreading a tablespoon of olive oil over the baking sheets.\r\n\r\nPlace the lasagna noodles on the sheets, gently coating them with a bit of that olive oil, and spreading them out. This will help keep them from sticking to each other while you finish the sauce and prepare the layered casserole.\r\n5-Assemble the lasagna:\r\nTurn off the heat on the stovetop for the sauce.\r\n\r\nPlace a layer of lasagna noodles down over the tomato sauce, slightly overlapping. (For our 10x15-inch dish, we ultimately fit 3 layers of 6 noodles each, with 2 extra noodles on which to nosh.)\r\n\r\nSprinkle half of the ricotta cheese over the noodles, and half of the defrosted, drained, and squeezed out spinach over the ricotta.\r\n\r\nSprinkle half of the mozzarella cheese over the spinach, and just a quarter of the pecorino cheese.\r\n\r\nThen spoon 1/3 of your mushroom sauce over the mozzarella. Sprinkle half of the fresh basil over the sauce.\r\n6-Repeat the layers:\r\nRepeat the layering process. Place a second layer of noodles over the sauce. Spread the remaining ricotta, spinach, and mozzarella over the noodles. Sprinkle another quarter of the pecorino along with the mozzarella. Top with another third of the mushroom sauce and the remaining fresh basil.\r\n\r\nLayer your final layer of lasagna noodles over the sauce. Spread the remaining sauce over the lasagna noodles, and sprinkle with the remaining pecorino or parmesan cheese.\r\n7-Cover with foil and bake:\r\nPull out a sheet of aluminum foil large enough to cover the casserole dish. Spread a little olive oil over the inside of the piece of foil (the side that will have contact with the lasagna). Place the foil over the casserole dish and crimp the edges.\r\n\r\nBake at 350°F for 25 minutes, then remove the foil and bake uncovered for an additional 25 minutes.\r\n\r\nTake the lasagna out of the oven when done and let it rest 10 minutes before cutting to serve. Once made, the lasagna will last a week in the fridge.', '15.00', 'Hard', 'Italian', '2023-06-01', 372);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(30, 7, 'Vegan Cacio e Pepe', 'Cacio e pepe is a simple, classic Roman pasta dish. This easy vegan recipe swaps the cheese for cashew butter, miso, and nutritional yeast for a satisfying supper.', 291, 4, 26, '1-Cook the pasta:\r\nBring a large pot of water to a boil. Add the pasta and salt. Cook until al dente (according to the package directions). \r\n\r\nReserve 1 1/2 cups of pasta water and drain the pasta in a colander.\r\n2-Toast the black pepper:\r\nMeanwhile, add the coarsely ground pepper to a large, deep skillet over medium-low heat and toast until fragrant, about a minute. Transfer the pepper to a medium bowl. You’ll add the pasta back to this skillet, so make sure it is large enough.\r\n3-Make the sauce:\r\nAdd the cashew butter, nutritional yeast, and miso to the bowl with the pepper. While whisking, slowly pour in 1 cup of the reserved, hot pasta water into the cashew butter mixture. Whisk until creamy and well combined.\r\n4-Combine and serve:\r\nAdd the drained pasta and sauce to the skillet over medium-low heat. Stir and toss constantly until the sauce thickens—this may take a few minutes. If this sauce becomes too thick, add more pasta water, a small splash at a time. \r\n\r\nSeason with salt to taste and garnish with more pepper. Serve immediately.\r\n\r\nVegan cacio e pepe is best served fresh. Any leftovers can be stored in an airtight container in the fridge for up to 3 days. To reheat, add a splash of water or nondairy milk and place in a skillet over medium heat and cook until warmed through. ', '11.00', 'Easy', 'Italian', '2023-06-01', 157);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(31, 7, 'Italian Meatballs', 'These classic Italian-American style meatballs are huge and pillowy soft! They\'re made with ground beef and pork, loaded with herbs and cheese, and served with a traditional tomato sauce. Make them baseball-sized for a dinner entree or roll them smaller f', 577, 8, 85, '1-Make the tomato sauce:\r\nHeat the olive oil in a large skillet on medium heat. Add the onion, carrots, celery, and parsley. Stir to coat with the oil, reduce the heat to low, and cover the pan. Cook until the vegetables are soft and cooked through, 15 to 20 minutes.\r\n\r\nRemove the cover, add the garlic, and increase the heat to medium-high. Cook the garlic for half a minute, then add the tomatoes (if using whole canned tomatoes, break up with your fingers as you add them to the pan). Add the basil and tomato paste. Season with salt and pepper.\r\n\r\nBring to a low simmer, reduce the heat to low, and let cook uncovered until thickened while you prepare the meatballs, 15 to 30 minutes.\r\n\r\nPurée in a blender, or push through a food mill if you\'d like a smooth consistency. Return to the pan and adjust the seasonings.\r\n2-Soak the torn bread in hot milk:\r\nTo make the meatballs, heat the milk in a small pot until steamy. Turn off the heat, tear the bread into little pieces and soak it in the milk until it partially dissolves. Mash it until you get something that resembles a paste. Turn it out onto a plate to let it cool.\r\n3-Make the meatball mixture:\r\nIn a large bowl, combine the beef, pork, ricotta cheese, grated Parmesan, eggs, garlic, parsley, oregano, salt, pepper, and the bread-milk mixture. Mix it well with your hands until it barely combines.\r\n\r\nDon\'t overwork the mixture or it will become tough. It is OK to have some discernible bits of bread or meat in the mix; better that than overworked meatballs.\r\n4-Form the meatballs:\r\nWet your hands and form the meatballs. A traditional size for this sort of meatball is 2 to 3 inches across, but you can make them any size you want.\r\n\r\nOnce you roll the meatball in your hands, roll it in the flour to give it a good coating. Set each one on a baking sheet as you work. You might need to rinse your hands a few times as you make the meatballs.\r\n5-Brown the meatballs:\r\nWhen all the meatballs are formed, heat the olive oil in a large skillet over medium-high heat. Brown the meatballs on at least 2 sides. Don\'t worry about the center getting cooked through, as you will finish these in the sauce.\r\n6-Finish cooking the meatballs in tomato sauce:\r\nOnce all the meatballs are browned, arrange them in the sauce, turning each one over in the sauce to coat.\r\n\r\nCover the pot and simmer gently for 15 to 20 minutes. Serve with the sauce and pasta or crusty bread. Sprinkle with a little chopped parsley for garnish if you want.', NULL, 'Easy', 'Italian', '2023-06-01', 103);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(37, 8, 'Vegan Sloppy Joes', 'These vegan sloppy Joes are made with green lentils and a spice blend so good you’ll be licking the plate. You won\'t miss the meat! Great make-ahead or freezer meal, too.', 264, 8, 40, '1-Cook the lentils:\r\nRinse the lentils well and add them to a pot along with 4 cups of water and 1/4 teaspoon of salt. Bring to a simmer, cover, and continue simmering over low heat until lentils are tender but not mushy, about 20 to 25 minutes. Drain lentils and set aside.\r\n2-Make the sloppy joe filling:\r\nHeat olive oil in a large skillet over medium heat. Add onion, green pepper, carrots, and garlic. Sprinkle with a pinch of salt and pepper. Cook until vegetables soften, 5-6 minutes. Stir in spices, ketchup, tomato sauce, vinegar, brown sugar, 1/2 cup of water, and the reserved lentils. Stir well.\r\n3-Simmer the sloppy joe mixture:\r\nSimmer the mixture for a few minutes to combine flavors. Taste and adjust seasonings to your liking. It will probably need a pinch of salt and pepper. Add an extra tablespoon of brown sugar to make it sweeter or a dash of apple cider vinegar to make it a bit more tart.\r\n4-Make the sandwiches:\r\nToast your buns and add thinly sliced red onions to the bottom half of the bun. Top with 1/3 to 1/2 cup of the vegan sloppy joe filling. Add pickles and eat immediately.', '15.00', 'Easy', 'Others', '2023-06-02', 100);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(34, 8, 'Creamy Chicken and Mushroom Stroganoff', 'This chicken stroganoff is a tasty spinoff of the classic beef stroganoff! Dinner will be ready in under 45 minutes, and goes great with a side dish like green beans!', 637, 4, 45, '1-Melt butter in a heavy skillet over medium heat; stir in onion and mushrooms. Reduce heat; cook and stir until onions release their liquid and mushrooms soften, about 5 minutes.\r\n\r\n2-Season chicken strips with Greek seasoning and black pepper. Place chicken in the skillet; cook and stir over medium heat until lightly browned on all sides, about 5 minutes.\r\n\r\n3-Meanwhile, bring a large pot of lightly salted water to a boil. Cook noodles at a boil until tender yet firm to the bite, about 10 minutes; drain.\r\n\r\n4-Pour chicken broth, milk, and Worcestershire sauce into skillet; slowly stir in sour cream, a tablespoonful at a time. Spoon out a small amount of sauce and whisk with flour in a small bowl until smooth. Stir flour mixture back into sauce; simmer until sauce thickens, about 5 minutes. Season with salt and ground black pepper. Serve over egg noodles; garnish with parsley.', NULL, 'Easy', 'Russian', '2023-06-01', 474);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(35, 8, 'Russian Cheese Salad', 'This cheese salad recipe was the favorite of the Russian dishes served at our wedding. It\'s simple, tangy, and can be used as more than a side dish. Serve on top of bread or crackers, or spoon onto tomato slices for a low-carb option.', 134, 8, 5, '1-Stir together mozzarella cheese, mayonnaise, and garlic in a bowl. Chill in the refrigerator until serving.', NULL, 'Easy', 'Russian', '2023-06-01', 76);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(36, 8, 'Vegan Brownies', 'These rich and fudgy vegan brownies are so good, you’ll never miss the eggs or dairy! This is also a gluten-free brownie recipe for those looking for gluten-free dessert options. The best part? You only need one bowl to make them!', 238, 16, 45, '1-Preheat the oven and prepare the pan:\r\nPreheat the oven to 350°F.\r\n\r\nLine an 8×8-inch square baking pan with parchment paper, and grease the parchment paper and pan with a little coconut oil.\r\n\r\n2-Prepare the flax \"egg\":\r\nCombine the flax with 8 tablespoons of water in a small bowl. Let stand for 7 to 10 minutes to thicken. (This will be used as an egg replacer in this recipe.)\r\n\r\n3-Whisk the dry ingredients:\r\nIn a small mixing bowl, whisk together the flour, cocoa powder, baking powder, and kosher salt.\r\n\r\n4-Melt the coconut oil and chocolate:\r\nIn a small saucepan over low heat, warm the coconut oil and chopped chocolate, stirring until the chocolate is completely melted, about 2 minutes.\r\n\r\n5-Add the sugar and vanilla:\r\nWhisk the sugar and the vanilla into the chocolate mixture, stirring vigorously until combined. The mixture will be a little grainy at this point, which is perfectly OK.\r\n\r\n6-Make the batter:\r\nPour the chocolate mixture into a large mixing bowl, scraping everything from the pan using a silicone spatula. Fold in the flax eggs.\r\n\r\nAdd the dry ingredients and stir well with a wooden spoon or silicone spatula until well combined. The batter will be quite thick and will gather into a ball—it won’t be loose and thin like many traditional brownie batters.\r\n\r\n7-Scoop the batter into the prepared pan:\r\nUse a rubber spatula or the palm of your hand to press it into the pan in an even layer.\r\n\r\n8-Bake the brownies:\r\nBake for 30 to 35 minutes, or until the edges are set and no longer jiggly. The tops of the brownies will still feel very soft and may even be bubbling a little. Don\'t worry! They’ll firm up as they cool.\r\n\r\n9-Let cool:\r\nLet the brownies cool completely before slicing, at least 2 to 3 hours. Because these are so fudgy, they really will slice best if you allow them to fully cool.\r\n\r\n10-Slice, serve, and store:\r\nUsing the parchment paper as a handle, lift the cooled brownies up out of the pan and onto a cutting board. Slice into a 4x4 grid (making 16 small squares). Leftover brownies can be stored in an airtight container at room temperature for up to five days (or frozen for up to three months).', '12.00', 'Easy', 'Others', '2023-06-02', 250);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(32, 8, 'Creamy Macaroni And Cheese ', 'The traditional macaroni and cheese is a casserole baked in the oven; however, it may be prepared in a sauce pan on top of the stove or using a packaged mix.', 400, 7, 100, '1-Heat oven to 375 degrees and position an oven rack in upper third of oven. Use 1 tablespoon butter to grease a 9-inch round or square baking pan.\r\n2-In a blender, purée cottage cheese, milk, mustard, cayenne, nutmeg and salt and pepper. Reserve ¼ cup grated Cheddar for topping. In a large bowl, combine remaining grated Cheddar, milk mixture and uncooked pasta. Pour into prepared pan, cover tightly with foil and bake 30 minutes.\r\n3-Uncover pan, stir gently, sprinkle with reserved cheese and dot with remaining tablespoon butter. Bake, uncovered, 30 minutes more, until browned. Let cool at least 15 minutes before serving.', '18.00', 'Easy', 'American', '2023-06-01', 62);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(33, 8, 'Hash Browns', 'Hash browns, also spelled hashed browns and hashbrowns, are a popular American breakfast dish consisting of finely julienned potatoes that have been fried until golden browned. Hash browns are a staple breakfast food at diners in North America, where they', 235, 1, 40, '1-Coarsely grate the potatoes and onion into a clean tea towel and then squeeze out the excess liquid by twisting the towel. Place the mix in a large bowl.\r\n\r\n2-Add the egg, a good couple of pinches of salt and freshly ground black pepper (you need to salt the mixture well otherwise the hash browns can be quite bland). Mix the ingredients well.\r\n\r\n3-Heat a good glug of oil in a heavy based frying pan and when the oil is hot (but not smoking), add spoonfuls of the potato mixture into the pan and flatten into patties about 1cm/½in thick. Flip over once browned and crispy – about 2–3 minutes each side.\r\n\r\n4-Serve hot as a breakfast or supper side dish. Especially good with bacon and eggs.', NULL, 'Easy', 'American', '2023-06-01', 42);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(38, 2, 'Frutti di Mare Seafood Salad', 'Frutti di Mare is a classic Italian mixed seafood salad recipe made with calamari, shrimp, clams, and scallops. It will transport you to the Mediterranean Coast.', 318, 7, 40, '1-Make the poaching broth:\r\nPut all the poaching broth ingredients together in a medium pot, cover and bring to a boil. Turn off the heat to let the flavors steep while you cut the veggies.\r\n\r\n2-Prep the salad vegetables:\r\nWhile the poaching broth is steeping, prep the vegetables if you haven\'t done so already. Dice the yellow pepper, seed and dice the tomatoes and slice the celery ribs very thin. Chop the chives. Juice the lemons and remove any seeds. Put the diced peppers, tomatoes and celery into very large bowl. Most cocktail shrimp are pre-cleaned and cooked, so you you can put them in the bowl, too.\r\n\r\n3-Poach the clams:\r\nBring the poaching broth back to a boil and add all the clams. Boil 3 to 4 minutes, or until the clams all open up. As soon as you see each clam open, fish it out and set it aside. Remove the meat and put in the bowl with the veggies.\r\n\r\n4-Poach the scallops:\r\nTurn off the heat and put the scallops in the poaching water. Cover the pot and let stand for 3 to 4 minutes. Fish out the scallops and put into the bowl.\r\n\r\n5-Poach the calamari rings:\r\nBring the broth to a boil once more. Add the calamari rings and boil 30 seconds to 1 minute, then pour the contents of the pot into a strainer set over a bowl. You can save the broth or discard it. Pick out all the calamari rings and add to the bowl.\r\n\r\n6-Dress the salad:\r\nTo finish, add the olive oil and a little salt and half the lemon juice. Mix well and taste. Add more olive oil, lemon and salt until you get the flavors you want: The salad should be glistening with oil, briny and tart with lemon. Finally, mix in the chives and chill. This salad is better a few hours after it\'s made.', '6.00', 'Easy', 'Italian', '2023-06-02', 47);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(39, 3, 'Seafood Paella', 'This saffron-infused paella recipe is loaded with mussels, clams, and shrimp. Grill it in your biggest skillet for best flavor (no special pan required). Paella serves a crowd for your next cookout!', 680, 6, 65, '1-Preheat the grill:\r\nHeat a gas grill to medium-high heat (375°F), or light a charcoal grill and let burn until the charcoal is covered with gray ash.\r\n\r\n2-Steep the saffron:\r\nIn a saucepan over medium heat, bring the stock to a boil. Add the saffron and salt. Turn off the heat and let the saffron steep for at least 15 minutes. Taste and add more salt, if needed.\r\n3-Cook the sofrito base:\r\nIn a 12- to 14-inch stainless steel skillet or cast iron pan, heat the oil over medium heat on top of the stove. Add the onion and red pepper, and cook for 5 to 7 minutes, or until the onion is translucent. Stir in the garlic and chorizo.\r\n4-Assemble the ingredients by the grill:\r\nOn a table next to the grill, set the skillet with the sofrito, the rice, tomatoes, infused stock, salt, peas, shrimp, mussels, and clams.\r\n5-Begin cooking the paella:\r\nSet the skillet with the sofrito on the grill. Add the rice, and cook, stirring often, for 4 to 5 minutes, or until the rice is coated with oil and lightly toasted.\r\n\r\nStir in the stock, tomatoes, and peas. Taste for seasoning and add more salt, if you like.\r\nSpread the rice evenly over the bottom of the pan. Close the grill cover and simmer the rice without stirring for 15 minutes, or until the rice absorbs most of the stock. If the mixture looks dry, pour about 1 cup of hot water over it, but do not stir.\r\n6-Add the seafood:\r\nNestle the mussels and clams into the rice with the hinge sides up so they release their juices into the rice. Arrange the shrimp around the shellfish.\r\n\r\nCover the pan with foil, close the grill and cook for 6 to 10 minutes longer (depending on the heat of your grill), or until the rice and shrimp are both cooked through and the mussels and clams are open. (Discard any shellfish that remain tightly shut once everything else is cooked.)\r\n7-Check to see if the bottom is browned:\r\nSlip a spatula under the rice and check to see if you have achieved the elusive golden brown socarrat. If not, set the pan over the heat, uncovered, for a few minutes to lightly caramelize the bottom.\r\n\r\nSprinkle with parsley and bring the whole pan to the table for serving.', '15.00', 'Medium', 'Others', '2023-06-02', 88);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(40, 4, 'Sweet And Sour Cabbage Soup', 'With lots of savory, sweet, and sour flavor, this easy-as-can-be sweet and sour cabbage soup will be your wintertime go-to. The vegetarian recipe freezes well, too.', 137, 8, 50, '1-Sauté the onion, garlic, tomato paste, and paprika:\r\nHeat the oil in a large, heavy-bottomed pot (about 4 to 5 quarts) over medium heat. Add the onion and sauté until it softens slightly, about 3 minutes. Add the garlic, tomato paste, and paprika and stir. Cook for another minute.\r\n2-Add the soup ingredients:\r\nAdd the cabbage, carrots, and bay leaf to the pot. Pour the broth, crushed tomatoes, vinegar, and brown sugar over the cabbage. Stir to combine. \r\n\r\n\r\nBring to a boil and adjust the heat to a simmer. Cover with a lid and simmer until the cabbage is fully cooked and tender, 25 to 30 minutes. \r\n3-Finish and serve:\r\nAdd the lemon juice and season with salt and pepper to taste. Add more sugar or seasoning as needed.\r\n\r\nServe topped with fresh parsley and freshly ground pepper.\r\n\r\nStore any leftovers in an airtight container in the fridge for up to 5 days.', NULL, 'Easy', 'Others', '2023-06-02', 46);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(41, 5, 'Sweet And Sour Glazed Artichokes With Caramelized Onions', 'Artichoke hearts, sliced and slowly cooked with onions with sweetened vinegar until both are beautifully caramelized.', 183, 4, 65, '1-Prep the artichokes:\r\nPrepare a large bowl of water, squeeze half a lemon into the water. Working with the artichokes one at a time, pull off the outer leaves of the artichoke until they easily snap off.\r\n\r\nPeel the stem, and cut off all but 1 to 1 1/2 inches of the stem. Cut off the top half of the artichokes.\r\nUse a paring knife to cut around the edge of the artichoke, removing any green parts. Angle the knife toward the center of the artichoke while you do this so the result is more cone-shaped.\r\nUse a melon baller to scoop out and discard the fuzzy choke in the center of the artichoke.\r\n\r\nCut the artichoke into quarters, and cut each quarter into 3 or 4 slices. Place in the acidified water.\r\n2-Cook artichokes with sliced onions in olive oil:\r\nHeat olive oil in a 3 to 4 quart, thick-bottomed pot on medium heat. Add the sliced onions and artichoke hearts. Toss to coat with the olive oil.\r\n\r\nCook on medium low to low heat for 40 minutes or so, stirring occasionally, until the artichokes are completely cooked through and tender, and the onions are caramelized.\r\n3-Sprinkle with salt, sugar, and vinegar and cook for a few minutes more.', '8.00', 'Medium', 'Others', '2023-06-02', 36);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(42, 6, 'Roasted Corn, Tomato, And Zucchini Tart', 'Enjoy the flavors of summer with this easy savory tart made with roasted corn, tomatoes, and zucchini. Frozen puff pastry crust makes it a breeze!', 198, 6, 80, '1-Preheat the oven to 400°F.\r\nSet the oven racks on the top and center shelves of the oven before preheating.\r\n\r\n2-Arrange the tomatoes on a sheet pan:\r\nArrange the sliced tomatoes, cut side up, in a single layer on a sheet pan, filling about 3/4 of the pan.\r\n3-Season the zucchini:\r\nIn a large mixing bowl, toss the zucchini with 1 teaspoon olive oil, 1/2 teaspoon salt, and 1/8 teaspoon pepper until well coated.\r\n4-Arrange zucchini on a sheet pan:\r\nArrange the zucchini in a single layer on a second sheet pan, filling about 3/4 of the pan.\r\n5-Season corn and arrange on sheet pans:\r\nIn the same mixing bowl you used to season the zucchini, toss the corn with the remaining oil, salt, and pepper. \r\n\r\nDivide the corn in the remaining spaces on the two pans in a single layer.\r\n6-Roast the vegetables:\r\nPlace both pans in the oven and roast the vegetables for 30 to 35 minutes, rotating the pans between shelves halfway through. \r\n\r\nThe tomatoes should look slightly shriveled, the zucchini should be fork tender and have a few brown charred spots, and the corn should have a few brown charred spots.  \r\n\r\nRemove the pans from the oven and let the vegetables cool. Toss the cooled tomatoes, zucchini, and corn into a large bowl so they are all combined.\r\n7-Let the puff pastry come to temp:\r\nRemove the thawed puff pastry from the fridge and let it warm until it’s pliable enough to unfold without cracking, about 5 to 10 minutes.\r\n\r\n8-Prepare the puff pastry:\r\nPlace a 20-inch long piece of parchment paper on the counter. Unfold both pieces of puff pastry, arranging them on the parchment paper so that they slightly overlap. \r\n\r\nUse a rolling pin to press the two pastry pieces together and create an 18- by 9-inch rectangle. \r\n\r\nLifting with the parchment paper, carefully transfer the pastry to a sheet pan (if you’d like, transfer the cooled zucchini and corn to a mixing bowl, and re-use the sheet pan).\r\n9-Assemble the tart:\r\nEvenly scatter the cooled roasted vegetables, sliced peppers, and goat cheese over the pastry, leaving a 1-inch border on all sides. \r\n\r\nFold each side of pastry in, over the vegetables, creating a crust.\r\n10-Chill and egg wash the puff pastry: \r\nTransfer the assembled tart to the refrigerator to chill for 10 minutes.\r\n\r\nMeanwhile, in a small bowl, whisk the egg with 1 teaspoon water, making an egg wash. \r\n\r\nUsing a pastry brush, brush the chilled pastry with egg wash.\r\n11-Bake:\r\nBake the tart for 35 to 40 minutes until the pastry is puffed up and golden brown.\r\n12-Slice and serve:\r\nLet the tart cool for 10 minutes before slicing into squares to serve. You can serve this tart warm or at room temperature.\r\n\r\n13-Storage and reheating:\r\nLeftovers can be wrapped in plastic wrap and refrigerated for up to 3 days. \r\n\r\nReheat the tart in the oven at 350˚F for about 10 minutes to bring back some of the crisp to the pastry. ', '12.00', 'Medium', 'Others', '2023-06-02', 103);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(43, 6, 'Prosciutto And Cheese Puff Pastry Pinwheels', 'Creamy Italian herb spread, prosciutto, and parmesan cheese are layered in a crisp puff pastry pinwheel for an easy party appetizer.', 87, 16, 72, '1-Prepare the puff pastry:\r\nThaw the puff pastry overnight in the fridge. Alternatively, you can thaw it on the counter: Remove the frozen puff pastry from its packaging and defrost it on a baking sheet set on the kitchen counter until cool but pliable, about 40 minutes.\r\n2-Preheat the oven:\r\nSet the oven rack to the middle position. Preheat it to 400ºF. Line two baking sheets with parchment paper and set them aside.\r\n3-Make the herb spread:\r\nIn a small bowl, combine the mustard, mayonnaise, basil, oregano, thyme, and rosemary. Set it aside.\r\n4-Make egg wash:\r\nIn a small bowl, whisk the egg and water. Set it aside.\r\n5-Roll out the puff pastry:\r\nLightly dust your countertop with flour. Gently unfold the defrosted puff pastry on it. If the surface of the puff pastry feels sticky, lightly dust it with flour.\r\n\r\nUse a rolling pin to roll the puff pastry into a 12x10-inch rectangle. The long (12-inch) edge should be closest to you.\r\n6-Fill the puff pastry:\r\nUsing the back of a spoon or an offset spatula, evenly spread the herb spread over the puff pastry, making sure to leave a 1/2-inch border.\r\n\r\nEvenly lay the slices of prosciutto horizontally on top of the herb mixture trying not to overlap them too much. Evenly sprinkle parmesan cheese all over the prosciutto.\r\n7-Roll the puff pastry:\r\nBrush the top 1/2-inch border with the egg wash to help seal the dough.\r\n\r\nStarting at the edge closest to you, tightly roll the filled puff pastry into a jelly roll shape. Tightly cover the roll with plastic wrap and freeze it for 15 minutes or refrigerate it for 30 minutes.\r\n8-Slice the roll:\r\nUse a serrated knife to slice the roll into 24 pinwheels, about 1/2-inch wide. Arrange 12 pinwheels on each prepared baking sheet cut side-up, at least 1 1/2 inches apart.\r\n\r\nLightly brush the sides and the tops of each pinwheel with the egg wash.\r\n9-Bake the pinwheels:\r\nBake the pinwheels, one baking sheet at a time, until golden brown, 14 to 16 minutes.\r\n\r\nBake the second baking sheet. \r\n10-Serve:\r\nGarnish with herbs if desired and serve warm or at room temperature.', NULL, 'Medium', 'Italian', '2023-06-02', 78);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(44, 6, 'Brussels Sprout Slaw', 'Shredded Brussels sprouts form the base of this crunchy salad. Topped with cranberries, toasted nuts, red onion, and tossed with maple dressing, this Brussels sprouts slaw is a winter winner.', 145, 6, 15, '1-Assemble the salad ingredients:\r\nAdd the Brussels sprouts, red onion, pecans, and cranberries to a large bowl.\r\n2-Make the dressing:\r\nWhisk together the apple cider vinegar, maple syrup, Dijon mustard, and garlic. While whisking, slowly pour in the olive oil. Season with salt and pepper.\r\n3-Combine and serve:\r\nDrizzle the dressing over the salad and toss well to combine. Let sit for 5 to 10 minutes before serving.', NULL, 'Easy', 'Others', '2023-06-02', 61);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(45, 5, 'Easy Chicken Fajitas', 'A flavorful marinade and a quick sear make for easy homemade chicken fajitas. Onions and bell peppers make it a meal. This is a classic you can make yourself!', 294, 4, 55, '1-Cut thick chicken breasts in half horizontally:\r\nChicken breasts come in different sizes. If you have chicken breasts that are around a half pound each or more, you will want to slice them in half horizontally, so that the center thickness is around 1/2-inch to 3/4-inch thick.\r\n\r\n(We do not recommend pounding the chicken breasts, doing so will not result in the right texture/consistency for fajitas.)\r\n2-Marinate the chicken:\r\nMix all the marinade ingredients together in a glass or plastic container. Add the chicken, mix well, cover and let marinate at room temperature for 30 minutes or up to 8 hours in the fridge.\r\n3-Remove the chicken from the marinade:\r\nWipe off most of the marinade and sprinkle the chicken pieces with salt.\r\n4-Sear the chicken on high heat:\r\nHeat a tablespoon of oil in a large cast iron frying pan on high heat for a minute or so.\r\n\r\nAs soon as the oil begins to smoke, lay the chicken breast pieces in the pan. Depending on the size of the pan, and if you have had to cut the chicken breasts, you may have to work in batches.\r\n\r\nLet the chicken cook undisturbed for 2 to 3 minutes, until you have a good sear. Once seared well on one side, turn the pieces over and cook for another 2 to 3 minutes until well seared on the second side.\r\n5-Stack the seared breasts, cover with foil, and let rest:\r\nOnce seared on the second side, remove to a cutting board and cover with aluminum foil to rest for 5 minutes.\r\n\r\nIf you want to test for doneness, cut into one piece with the tip of a sharp knife. It should be just done, if not, you can put it back in the hot pan for a minute or two.\r\n\r\nHere\'s a tip: Stack the seared chicken breasts and then cover them in foil. Together they will retain heat better as you cook the peppers and onions.\r\n6-Sauté the peppers and onions:\r\nWhile the chicken is resting, cook the onions and peppers. Add another tablespoon of oil to the frying pan. Heat on high. As soon as the oil is hot, add the onions and peppers to the pan.\r\n\r\nUse a metal spatula to scrape up some of the browned bits from the chicken and stir to coat the onions and peppers with the oil and brown bits. Spread the onions and peppers in an even layer in the pan.\r\n\r\nLet them cook undisturbed for 2 minutes. You want them to sear with some blackening. Stir the vegetables and continue to cook for another 2 minutes.\r\n7-Slice the chicken and serve:\r\nSlice the chicken across the grain into strips. Serve at once with the peppers and onions, some warm tortillas, and sides of shredded cheese, salsa, guacamole, and/or thinly sliced iceberg lettuce dressed with vinegar and salt.\r\n', '8.00', 'Easy', 'Others', '2023-06-02', 239);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(46, 5, 'Easy Lebanese Fatteh With Chickpeas', 'Fatteh is the king of Lebanese breakfasts. You know its a special occasion when your mum tells you to get the bread ready in the morning, usually for a visiting VIP or family gathering.\r\nIn Lebanon, people go to special fatteh shops that are experts in th', 411, 4, 20, '1-Tear the Lebanese flatbreads into bite size pieces and deep fry until just golden, avoiding browning them too much. Drain on kitchen towel and set aside.\r\n2-Toast the pine nuts in a heavy non stick pan until golden, set aside.\r\n3-In a pot, heat the chickpeas with their water, topping up with boiling water if necessary so they are covered by at least an inch for around 5 minutes.\r\n4-In a wide mixing bowl, crush the garlic cloves with the salt.\r\n5-Add the yoghurt, lemon and tahini as well as the chickpeas with a slotted spoon.\r\n6-Stir well, taste and if necessary adjust the lemon/salt or add a few tablespoons of the water to loosen the sauce.\r\n7-Heat the butter in a small pot on low heat until it starts to foam and turn golden brown. Turn off the heat and set aside.\r\n8-You are now ready to assemble your fatteh. Prepare a large serving plate or individual plates and add the bread croutons as a base.\r\n9-Ladel on some of the yoghurt tahini chickpea sauce on top.\r\n10-Scatter with pine nuts and drizzle on the brown butter.\r\n11-Serve immediately.', '7.00', 'Easy', 'Arabian', '2023-06-02', 156);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(47, 4, 'Lebanese Chicken And Rice (Rez A Djaj)', 'This comforting dish features mince meat rice topped with chicken and nuts. The rice is cooked in the chicken broth which is made beforehand.\r\nIt\'s not as loud and glamorous as it\'s cousin the maqluba, which relies on frying the different elements, yet it', 315, 8, 90, '1-Lightly toast the assorted nuts (pistachios, cashews, almonds) in a non stick pan on low heat until golden. Set aside.\r\n2-In a large stock pot, add the washed chicken, onion, carrot, celery, cinnamon stick, cloves, bay leaves cardamom, peppercorns and salt with the boiling water. Bring to the boil then simmer for at least 45 minutes, removing any foam that comes to the surface.\r\n3-As the chicken broth is simmering, soak the rice in a bowl of water for around half an hour and set aside.\r\n4-When the chicken broth is done after 45 minutes, remove the chicken and drain the liquid over a fine colander into a pot.\r\n5-Shred the chicken from the bone and keep the chicken breast in large chunks, cover and set aside.\r\n6-In a wide casserole pan, sauté the chopped onion in a good drizzle of mild olive oil on low heat until soft and translucent. This may take 15 minutes.\r\n7-Then add the mince meat, black pepper, 7 spice, cinnamon and around a teaspoon of salt. Increase the heat to medium and sauté for around 5-10 minutes until well browned, pressing with the back of a wooden spoon to break apart.\r\n8-Drain the rice in a fine sieve and add to the mince meat along with the butter and sauté for a few minutes. Add 4.5 cups of chicken broth to the rice, bring to the boil and then cover with a lid then simmer for 20 minutes.\r\n9-The rice is done when there should be no extra liquid, fluff it with a fork and add to a large platter.\r\n10-Lay the shredded chicken on top and sprinkle with the assorted nuts.\r\n11-Serve with a side of yoghurt or green salad.', '18.00', 'Medium', 'Arabian', '2023-06-02', 223);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(48, 4, 'Sfouf (Lebanese Turmeric Cake)', 'Sfouf are the perfect cake to have with your daily cup of tea. They are not too sweet or creamy and the subtle hint of turmeric makes them a little more interesting than your average sponge.\r\nWhat\'s even better is that they don\'t require eggs so if you\'ve', 283, 10, 30, '1-Preheat the oven to 180C (350F).\r\n2-Combine the semolina, salt and sugar in a large mixing bowl. Sieve the flour, turmeric, and baking powder. Mix everything together well.\r\n3-Add the milk, orange blossom and water. Fold together gently then add the oil and keep folding until well combined. Be patient as this will take a few minutes but it will come together soon.\r\n4-Brush a large cake tin (approx 30 x 35 cm) with tahini. Pour in the cake batter and add the peeled almonds or pine nuts where you imagine the middle of the slice would be.\r\n5-Leave to stand for half an hour or so, then bake for around 25 minutes, turning the cake ¾ of the way through to get an even bake.\r\n6-Slice the cake once cooled and store in an airtight container for up to 3 days.', '12.00', 'Easy', 'Arabian', '2023-06-02', 196);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(49, 3, 'Tabbouleh', 'Tabbouleh is a parsley salad. Let me clarify again; it is not a bulghur wheat salad with a sprinkle of parsley as I have seen in many supermarkets.\r\nIn every family Lebanese family there is someone who is really really good at making tabbouleh.', 136, 4, 30, '1-Wash the tomatoes, parsley and mint.\r\n2-Hold the bunch of parsley tightly between one hand and finely chop with a sharp knife.\r\n3-Slice the tomato into several rings, then finely chop each one.\r\n4-Chop the mint and onion finely. Add everything to a large bowl.\r\n5-Sprinkle on the seven spice, sumac and salt.\r\n6-Soak the bulghur wheat for five minutes before serving.\r\n7-Add a generous drizzling of extra virgin olive oil.\r\n8-Squeeze the lemon and add to the bowl, taste everything and balance the dressing with extra salt/lemon if required.\r\n9-Add the bulghur wheat and mix thoroughly.\r\n10-Serve with optional lettuce leaves.', '7.00', 'Easy', 'Arabian', '2023-06-02', 329);
INSERT INTO `recipes` (`ID_RECIPES`, `ID_USER`, `NAME`, `DESCRIPTION`, `CALORIES`, `NUMBER_OF_PERSONS`, `PREPERATION_TIME`, `PREPERATION_METHOD`, `UNIT_PRICE`, `DIFFICULTY`, `COUNTRY`, `DATE_RECIPE`, `VIEW_COUNT`) VALUES(50, 3, 'Frakeh (Raw Kibbeh)', 'Lebanese people love raw kibbeh so much they have made several versions of it. Frakeh is traditionally shaped by hand into little ridged croquettes.\r\nTraditionally, raw kibbeh was made using a large stone mortar with which the meat was continuously pounde', 320, 4, 15, '1-In a fine sieve, rinse the bulgur wheat and drain well. Add the spices, salt, chopped green chilli, red pepper, onion and herbs.\r\n2-In a wide bowl, combine the finely ground meat and ¾ of the kamouneh mix using your hands.\r\n3-Add a drizzle of extra virgin olive oil and continue to combine until you have smooth ball.\r\n4-Dip your fingers in a little extra virgin olive oil and make a little croquette that fits snugly into your palm, gently squeeze to make ridges.\r\n5-Arrange the croquettes onto a platter and serve with the remainder kamouneh mix, another drizzle of extra virgin olive oil and fresh onions, radishes and herbs.', '10.00', 'Easy', 'Arabian', '2023-06-02', 182);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `ID_ROLE` bigint NOT NULL AUTO_INCREMENT,
  `NAME` varchar(128) NOT NULL,
  PRIMARY KEY (`ID_ROLE`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `role`
--

TRUNCATE TABLE `role`;
--
-- Dumping data for table `role`
--

INSERT INTO `role` (`ID_ROLE`, `NAME`) VALUES(1, 'Admin\r\n');
INSERT INTO `role` (`ID_ROLE`, `NAME`) VALUES(2, 'User\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `saved`
--

DROP TABLE IF EXISTS `saved`;
CREATE TABLE IF NOT EXISTS `saved` (
  `ID_RECIPES` bigint NOT NULL,
  `ID_USER` bigint NOT NULL,
  PRIMARY KEY (`ID_RECIPES`,`ID_USER`),
  KEY `I_FK_SAVE_RECIPES` (`ID_RECIPES`),
  KEY `I_FK_SAVE_USER` (`ID_USER`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `saved`
--

TRUNCATE TABLE `saved`;
--
-- Dumping data for table `saved`
--

INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(1, 4);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(1, 8);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(2, 5);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(2, 6);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(2, 8);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(7, 2);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(7, 5);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(8, 2);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(9, 7);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(13, 6);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(14, 7);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(18, 6);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(19, 2);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(21, 2);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(22, 6);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(24, 3);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(25, 5);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(29, 4);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(29, 5);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(29, 8);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(31, 2);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(32, 7);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(33, 6);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(34, 4);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(34, 5);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(34, 8);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(36, 4);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(36, 5);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(36, 7);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(37, 3);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(41, 3);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(43, 3);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(45, 4);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(45, 7);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(45, 8);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(46, 3);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(47, 3);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(47, 6);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(47, 7);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(47, 8);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(49, 2);
INSERT INTO `saved` (`ID_RECIPES`, `ID_USER`) VALUES(49, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `ID_TAG` bigint NOT NULL AUTO_INCREMENT,
  `NAME` varchar(128) NOT NULL,
  PRIMARY KEY (`ID_TAG`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `tag`
--

TRUNCATE TABLE `tag`;
--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`ID_TAG`, `NAME`) VALUES(1, 'Spicy');
INSERT INTO `tag` (`ID_TAG`, `NAME`) VALUES(2, 'Sweet and sour');
INSERT INTO `tag` (`ID_TAG`, `NAME`) VALUES(3, 'Sweet');
INSERT INTO `tag` (`ID_TAG`, `NAME`) VALUES(4, 'Vegan');
INSERT INTO `tag` (`ID_TAG`, `NAME`) VALUES(5, 'Vegetarian');
INSERT INTO `tag` (`ID_TAG`, `NAME`) VALUES(6, 'Meat');
INSERT INTO `tag` (`ID_TAG`, `NAME`) VALUES(7, 'Sea food');
INSERT INTO `tag` (`ID_TAG`, `NAME`) VALUES(8, 'Pastries');
INSERT INTO `tag` (`ID_TAG`, `NAME`) VALUES(9, 'Healthy And Diet');
INSERT INTO `tag` (`ID_TAG`, `NAME`) VALUES(10, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

DROP TABLE IF EXISTS `tools`;
CREATE TABLE IF NOT EXISTS `tools` (
  `ID_TOOLS` bigint NOT NULL AUTO_INCREMENT,
  `NAME` varchar(128) NOT NULL,
  PRIMARY KEY (`ID_TOOLS`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `tools`
--

TRUNCATE TABLE `tools`;
--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`ID_TOOLS`, `NAME`) VALUES(6, 'Refrigerator');
INSERT INTO `tools` (`ID_TOOLS`, `NAME`) VALUES(7, 'Others');
INSERT INTO `tools` (`ID_TOOLS`, `NAME`) VALUES(5, 'Pot');
INSERT INTO `tools` (`ID_TOOLS`, `NAME`) VALUES(4, 'Baking pan');
INSERT INTO `tools` (`ID_TOOLS`, `NAME`) VALUES(3, 'Frying pan');
INSERT INTO `tools` (`ID_TOOLS`, `NAME`) VALUES(2, 'Stovetop');
INSERT INTO `tools` (`ID_TOOLS`, `NAME`) VALUES(1, 'Oven');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `ID_USER` bigint NOT NULL AUTO_INCREMENT,
  `ID_ADRESS` bigint NOT NULL,
  `ID_ROLE` bigint NOT NULL,
  `FIRST_NAME` varchar(255) NOT NULL,
  `LAST_NAME` varchar(128) NOT NULL,
  `EMAIL` char(32) NOT NULL,
  `PASSWORD` char(32) NOT NULL,
  PRIMARY KEY (`ID_USER`),
  KEY `I_FK_USER_ROLE` (`ID_ROLE`),
  KEY `ID_ADRESS` (`ID_ADRESS`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `user`
--

TRUNCATE TABLE `user`;
--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID_USER`, `ID_ADRESS`, `ID_ROLE`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PASSWORD`) VALUES(1, 2, 1, 'Aicha', 'Khayat', 'aichaKhayat@gmail.com', '12345');
INSERT INTO `user` (`ID_USER`, `ID_ADRESS`, `ID_ROLE`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PASSWORD`) VALUES(2, 2, 2, 'Samir', 'Hamoud', 'SamirHamood@gmail.com', '67890');
INSERT INTO `user` (`ID_USER`, `ID_ADRESS`, `ID_ROLE`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PASSWORD`) VALUES(3, 3, 2, 'Mariam', 'Eid', 'mariameid@gmail.com', '121212');
INSERT INTO `user` (`ID_USER`, `ID_ADRESS`, `ID_ROLE`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PASSWORD`) VALUES(5, 1, 2, 'Adam', 'Sayegh', 'adamSayegh@gmail.com', 'adammm');
INSERT INTO `user` (`ID_USER`, `ID_ADRESS`, `ID_ROLE`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PASSWORD`) VALUES(4, 12, 2, 'Raghad ', 'Najem', 'Raghadnajem@gmail.com', '11111');
INSERT INTO `user` (`ID_USER`, `ID_ADRESS`, `ID_ROLE`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PASSWORD`) VALUES(6, 8, 2, 'Walid', 'Hamzeh', 'walidHamzeh@gmail.com', '333333');
INSERT INTO `user` (`ID_USER`, `ID_ADRESS`, `ID_ROLE`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PASSWORD`) VALUES(7, 2, 2, 'Assil', 'Kahil', 'assilKahil@gmail.com', 'assilll');
INSERT INTO `user` (`ID_USER`, `ID_ADRESS`, `ID_ROLE`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PASSWORD`) VALUES(8, 1, 2, 'Mona', 'Al haj', 'monaAlhaj@gmail.com', 'qwert');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
