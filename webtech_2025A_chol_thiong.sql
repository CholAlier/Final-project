CREATE DATABASE webtech_2025A_chol_thiong;
USE webtech_2025A_chol_thiong;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
SET NAMES utf8mb4;

-- --------------------- tbladmin ---------------------
CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Bol Akech Deng', 'admin', 7896541230, 'admin@gmail.com', 'e08b2513662643ccfb14b8cf79eaee96', NOW());

ALTER TABLE `tbladmin` ADD PRIMARY KEY (`ID`);
ALTER TABLE `tbladmin` MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- --------------------- tblblooddonars ---------------------
CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Address`, `Message`, `PostingDate`, `status`, `Password`) VALUES
(6, 'Gatluak Saad Chol', '7797987981', 'saad.chol@ssmail.com', 'Male', 35, 'O-', 'Juba City, South Sudan', 'Call me if blood is required.', NOW(), 1, '202cb962ac59075b964b07152d234b70'),
(9, 'Wani Rit Deng', '9789797979', 'rit.deng@ssmail.com', 'Male', 56, 'A+', 'Malakal, South Sudan', 'Available for donation.', NOW(), 1, '202cb962ac59075b964b07152d234b70'),
(10, 'Bol Furqan Lado', '1236547890', 'furqan.bol@ssmail.com', 'Male', 25, 'O-', 'Bor Town, South Sudan', 'NA', NOW(), 1, 'f925916e2754e5e03f75dd58a5733251'),
(11, 'Ayuel Amrat Kuol', '1231231230', 'amrat.ayuel@ssmail.com', 'Male', 26, 'AB+', 'Rumbek, South Sudan', 'NA', NOW(), 1, 'f925916e2754e5e03f75dd58a5733251'),
(12, 'Mading Lual Jok', '1425362514', 'sasuke.mading@ssmail.com', 'Male', 30, 'A-', 'Wau, South Sudan', 'NA', NOW(), 1, 'f925916e2754e5e03f75dd58a5733251'),
(13, 'Gai Eren Tong', '32421421', 'eren.gai@ssmail.com', 'Male', 23, 'O-', 'Yei, South Sudan', 'ADFSAD', NOW(), 1, 'e08c822067e64be2037d020826b078f1'),
(16, 'Chol Deng Maker', '0912', 'demo.chol@ssmail.com', 'Male', 21, 'O+', 'Juba Medical Center, South Sudan', 'Asda', NOW(), 1, '81dc9bdb52d04dc20036dbd8313ed055'),
(17, 'Ayuel Mabior Ruot', '12345', 'noor.ayuel@ssmail.com', 'Male', 20, 'AB-', 'Malakal Housing Estate, South Sudan', 'I am Hero', NOW(), 1, '81dc9bdb52d04dc20036dbd8313ed055'),
(18, 'Bol Doremon Chol', '098', 'doremon.bol@ssmail.com', 'Male', 20, 'O-', 'Bor Town, South Sudan', 'Nice', NOW(), 1, '81dc9bdb52d04dc20036dbd8313ed055');

ALTER TABLE `tblblooddonars` ADD PRIMARY KEY (`id`);
ALTER TABLE `tblblooddonars` ADD KEY `bgroup` (`BloodGroup`);
ALTER TABLE `tblblooddonars` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

-- --------------------- tblbloodgroup ---------------------
CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(1, 'A-', NOW()),
(2, 'AB-', NOW()),
(3, 'O-', NOW()),
(4, 'A+', NOW()),
(5, 'B+', NOW()),
(6, 'AB+', NOW()),
(8, 'O+', NOW()),
(9, 'B-', NOW());

ALTER TABLE `tblbloodgroup` ADD PRIMARY KEY (`id`);
ALTER TABLE `tblbloodgroup` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

-- --------------------- tblbloodrequirer ---------------------
CREATE TABLE `tblbloodrequirer` (
  `ID` int(10) NOT NULL,
  `BloodDonarID` int(10) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `EmailId` varchar(250) DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `BloodRequirefor` varchar(250) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblbloodrequirer` (`ID`, `BloodDonarID`, `name`, `EmailId`, `ContactNumber`, `BloodRequirefor`, `Message`, `ApplyDate`) VALUES
(1, 6, 'Deng Rakesh Bol', 'rakesh.deng@ssmail.com', 7894561236, 'Father', 'Please help', NOW()),
(2, 3, 'Bol Mukesh Lual', 'mukesh.bol@ssmail.com', 5896231478, 'Others', 'Please help', NOW()),
(3, 6, 'Ayuel Hitesh Maker', 'hitesh.ayuel@ssmail.com', 1236547896, 'Brother', 'Do the needful', NOW()),
(4, 10, 'Gai Rahul Wani', 'rahul.gai@ssmail.com', 2536251425, 'Mother', 'Please help me', NOW()),
(5, 11, 'Chol Anuj Deng', 'anuj.chol@ssmail.com', 8525232102, 'Others', 'Need blood urgently', NOW()),
(6, 12, 'Chol Sad Gatwech', 'sad.chol@ssmail.com', 0, 'Brother', 'Asd', NOW()),
(7, 9, 'Deng Saad Malual', 'saad.deng@ssmail.com', 1234, 'Others', 'Hello shb', NOW()),
(8, 9, 'Bol Saad Nyang', 'saad.bol@ssmail.com', 1234, 'Father', 'Hello to the universe', NOW()),
(9, 13, 'Ayuel Noor Ruot', 'noor.ayuel@ssmail.com', 3242142, 'Father', 'Please work kindly', NOW()),
(10, 9, 'Chol Noor Kelei', 'noor.chol@ssmail.com', 12345, 'Sister', 'Please donate', NOW()),
(11, 17, 'Bol Dora Kur', 'dora.bol@ssmail.com', 98, 'Mother', 'Please donate', NOW()),
(12, 18, 'Gai Muhammad Saad', 'muhammad.gai@ssmail.com', 3033173484, 'Mother', 'Please contact urgently.', NOW()),
(13, 18, 'Gai Muhammad Saad', 'muhammad.gai@ssmail.com', 3033173484, 'Brother', 'Please donate', NOW()),
(14, 17, 'Bol Naruto Lual', 'naruto.bol@ssmail.com', 123, 'Brother', 'Please donate', NOW());

ALTER TABLE `tblbloodrequirer` ADD PRIMARY KEY (`ID`);
ALTER TABLE `tblbloodrequirer` ADD KEY `donorid` (`BloodDonarID`);
ALTER TABLE `tblbloodrequirer` MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

-- --------------------- tblcontactusinfo ---------------------
CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Juba Main Road, South Sudan', 'info@ssbdbms.com', '0922222222');

ALTER TABLE `tblcontactusinfo` ADD PRIMARY KEY (`id`);
ALTER TABLE `tblcontactusinfo` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- --------------------- tblcontactusquery ---------------------
CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(8, 'Chol Saad Gatluak', 'saad.chol@ssmail.com', '2131', 'Yeah!!', NOW(), 1);

ALTER TABLE `tblcontactusquery` ADD PRIMARY KEY (`id`);
ALTER TABLE `tblcontactusquery` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

-- --------------------- tblpages ---------------------
CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', 'Blood donation saves lives. Join the movement today.'),
(3, 'About Us', 'aboutus', 'Welcome to VitalDrop Management System.');

ALTER TABLE `tblpages` ADD PRIMARY KEY (`id`);
ALTER TABLE `tblpages` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

COMMIT;
