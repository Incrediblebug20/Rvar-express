-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2021 at 08:34 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE  IF NOT EXISTS `cmsdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cmsdb`;

--
-- Database: `cmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` INT(11) NOT NULL,
  `AdminName` VARCHAR(50) DEFAULT NULL,
  `UserName` VARCHAR(50) DEFAULT NULL,
  `MobileNumber` BIGINT(10) DEFAULT NULL,
  `Email` VARCHAR(120) DEFAULT NULL,
  `Password` VARCHAR(120) DEFAULT NULL,
  `AdminRegdate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP()
) ENGINE=INNODB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 9878987987, 'sarita@gmail.com', '202cb962ac59075b964b07152d234b70', '2021-03-26 06:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblbranch`
--

CREATE TABLE `tblbranch` (
  `ID` INT(11) NOT NULL,
  `BranchName` VARCHAR(120) DEFAULT NULL,
  `BranchContactnumber` BIGINT(11) DEFAULT NULL,
  `BranchEmail` VARCHAR(120) DEFAULT NULL,
  `BranchAddress` VARCHAR(120) DEFAULT NULL,
  `BranchCity` VARCHAR(120) DEFAULT NULL,
  `BranchState` VARCHAR(120) DEFAULT NULL,
  `BranchPincode` VARCHAR(120) DEFAULT NULL,
  `BranchCountry` VARCHAR(120) DEFAULT NULL,
  `PostingDate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP()
) ENGINE=INNODB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbranch`
--

INSERT INTO `tblbranch` (`ID`, `BranchName`, `BranchContactnumber`, `BranchEmail`, `BranchAddress`, `BranchCity`, `BranchState`, `BranchPincode`, `BranchCountry`, `PostingDate`) VALUES
(6, 'CMS Arlington', 8977977778, 'rvararlington@gmail.com', '2345 South avenue blvd', 'Arlington', 'Texas', '77880', 'USA','2022-02-26 04:48:25'),
(7, 'CMS Agra', 8797987777, 'agra@gmail.com', 'D-124, gohana road, near reliance fresh', 'Agra', 'UP', '221001', 'India', '2022-01-26 04:48:25'),
(8, 'CMS Kanpur', 8988898889, 'kanpur@gmail.com', 'F-171, Maharana Pratap Road Near SBI Bank Block C', 'Kanpur', 'UP', '2210014', 'India', '2022-09-26 04:48:25'),
(9, 'Test branch', 1234567890, 'test@gmail.com', 'Test Address', 'New Delhi', 'Delhi', '110091', 'India', '2022-09-26 04:48:25'),
(10, 'Noida Branch', 3121321131, 'noidacm@test.com', 'A-1 Sector 63', 'Noida', 'UP', '201301', 'India', '2022-09-26 04:48:25'),
(13, 'CMS Banglore', 7979797979, 'cms@gmail.com', '#909 Ajanar Buliding, Gandhi Nagar', 'Banglore', 'Maharatra', '877897', 'India', '2021-09-26 04:48:25'),
(14, 'Test Branch', 1234567890, 'testbranch@gmail.com', 'ABc Street', 'New Delhi', 'Delhi', '110001', 'India', '2021-09-27 16:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplains`
--

CREATE TABLE `tblcomplains` (
  `ID` INT(10) NOT NULL,
  `TicketNumber` INT(10) DEFAULT NULL,
  `TrackingNumber` VARCHAR(120) DEFAULT NULL,
  `NatureofComplain` VARCHAR(200) DEFAULT NULL,
  `IssuesDesc` MEDIUMTEXT DEFAULT NULL,
  `CompDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `Status` VARCHAR(50) DEFAULT NULL,
  `Remark` VARCHAR(200) DEFAULT NULL,
  `UpdationDate` TIMESTAMP NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP()
) ENGINE=INNODB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplains`
--

INSERT INTO `tblcomplains` (`ID`, `TicketNumber`, `TrackingNumber`, `NatureofComplain`, `IssuesDesc`, `CompDate`, `Status`, `Remark`, `UpdationDate`) VALUES
(1, 977131, '884766920', 'Test Complaint', 'This is for testing.', '2021-09-26 08:06:12', 'Closed', 'Issue Resolved', '2021-09-26 08:10:45'),
(2, 289982, '809274137', 'PAckage Not recevied', 'I have not received my package yet.', '2021-09-27 16:20:31', 'Closed', 'Package deliver to customer succesffuly', '2021-09-27 16:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` INT(10) NOT NULL,
  `Name` VARCHAR(200) DEFAULT NULL,
  `MobileNumber` BIGINT(10) DEFAULT NULL,
  `Email` VARCHAR(200) DEFAULT NULL,
  `Message` MEDIUMTEXT DEFAULT NULL,
  `MsgDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `IsRead` INT(5) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `Name`, `MobileNumber`, `Email`, `Message`, `MsgDate`, `IsRead`) VALUES
(1, 'Rahul Singh', 9879879797, 'rahul@gmail.com', 'Send price list of courier', '2021-05-07 18:30:00', 1),
(2, 'Anuj', 1234567890, 'ak@gahgha.com', 'This is for testing.', '2021-09-27 16:22:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcourier`
--

CREATE TABLE `tblcourier` (
  `ID` INT(11) NOT NULL,
  `RefNumber` VARCHAR(120) DEFAULT NULL,
  `SenderBranch` VARCHAR(120) DEFAULT NULL,
  `SenderName` VARCHAR(120) DEFAULT NULL,
  `SenderContactnumber` BIGINT(11) DEFAULT NULL,
  `SenderAddress` VARCHAR(120) DEFAULT NULL,
  `SenderCity` VARCHAR(120) DEFAULT NULL,
  `SenderState` VARCHAR(120) DEFAULT NULL,
  `SenderPincode` VARCHAR(120) DEFAULT NULL,
  `SenderCountry` VARCHAR(120) DEFAULT NULL,
  `RecipientName` VARCHAR(120) DEFAULT NULL,
  `RecipientContactnumber` BIGINT(11) DEFAULT NULL,
  `RecipientAddress` VARCHAR(120) DEFAULT NULL,
  `RecipientCity` VARCHAR(120) DEFAULT NULL,
  `RecipientState` VARCHAR(120) DEFAULT NULL,
  `RecipientPincode` VARCHAR(120) DEFAULT NULL,
  `RecipientCountry` VARCHAR(120) DEFAULT NULL,
  `CourierDes` VARCHAR(250) DEFAULT NULL,
  `ParcelWeight` VARCHAR(120) DEFAULT NULL,
  `ParcelDimensionlen` VARCHAR(120) DEFAULT NULL,
  `ParcelDimensionwidth` VARCHAR(120) DEFAULT NULL,
  `ParcelDimensionheight` VARCHAR(120) DEFAULT NULL,
  `ParcelPrice` DECIMAL(10,2) DEFAULT NULL,
  `Status` VARCHAR(124) DEFAULT NULL,
  `CourierDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP()
) ENGINE=INNODB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcourier`
--

INSERT INTO `tblcourier` (`ID`, `RefNumber`, `SenderBranch`, `SenderName`, `SenderContactnumber`, `SenderAddress`, `SenderCity`, `SenderState`, `SenderPincode`, `SenderCountry`, `RecipientName`, `RecipientContactnumber`, `RecipientAddress`, `RecipientCity`, `RecipientState`, `RecipientPincode`, `RecipientCountry`, `CourierDes`, `ParcelWeight`, `ParcelDimensionlen`, `ParcelDimensionwidth`, `ParcelDimensionheight`, `ParcelPrice`, `Status`, `CourierDate`) VALUES
(1, '995097847', 'CMS Agra', 'Jairam', 7797979798, 'F-124, shivala kailash puram,\r\n', 'Varanasi', 'UP', '222221', 'India', 'Kumar', 8987897897, 'G-134, Mayur niwas', 'New Delhi', 'Delhi', '110096', '', 'hjguyuythui', '.5 kg', '25', '35', '20', '200.00', 'Arrived at Destination', '2021-05-07 18:30:00'),
(2, '148776252', 'CMS Agra', 'Akash Jha', 8978897989, 'B-20/122, hauzkhas, Near MTNL office', 'New Delhi', 'Delhi', '222222', 'India', 'Parakash Sharma', 3698745687, 'Flat No.145 frist floor Neeva Aparment Southwest', 'Kanpur', 'UP', '4545145', 'India', 'Parcel Contain Toys', '2kg', '25 inch', '35 inch', '20 inch', '500.00', 'Delivered', '2021-05-07 18:30:00'),
(3, '887985411', 'CMS Agra', 'Gyan Ganga', 8989898898, 'H-120 gali no 82 near relaince fresh', 'Agra', 'UP', '55555555', 'India', 'Harish', 9898989898, 'koohinoor apartment bulding no 4', 'Allahabad', 'UP', '45445445', 'India', 'NA', '.5kg', '15', '16', '10', '250.00', 'Delivered', '2021-05-07 18:30:00'),
(4, '997614830', 'CMS Kanpur', 'Rahul Mahajan', 8569745697, 'H.N0-B-3/4, Gulmar Colony ', 'Kanpur', 'UP', '221441', 'India', 'Deepika Singh', 987456123, 'Flat No:104, harishnagar', 'Manaili', 'HP', '551224', 'India', 'Parcel Contain fibre', '3.5 kg', '45 inch', '30 inch', '25 inch', '800.00', 'Delivered', '2021-04-02 18:30:00'),
(5, '824523415', 'CMS Kanpur', 'Mohan Das', 8979797979, 'abc niwas', 'Kanpur', 'UP', '254879', 'India', 'Kaushal', 9879797979, 'xyz b-3/4 ', 'Muradabad', 'UP', '897979', 'India', 'NA', '1.4 kg', '25 inch', '20 inch', '15 inch', '300.00', 'Out for Delivery', '2021-04-02 18:30:00'),
(6, '347227212', 'CMS Kanpur', 'Falguni Singh', 8987897744, 'abc hauz khas', 'Kanpur', 'UP', '897979', 'India', 'Drashan Singh', 7998789887, 'fhgjhuihkkjhklj', 'Lucknow', 'UP', '789898', 'India', 'Parcel contain fibre', '.5 kg', '8 inch', '10 inch', '12 inch', '80.00', 'Courier Pickup', '2021-04-02 18:30:00'),
(7, '486484879', 'CMS Delhi', 'Ankush Sharma', 789456133, 'Firoz colony H.No:34/44', 'Delhi', 'New Delhi', '456879', 'India', 'Divyansh', 8979797977, 'Viraz Niwas H.No:45-34 A, Near SBI Bank', 'Kanpur', 'UP', '456123', 'India', 'Parcel contains crockery', '2.5 kg', '45 inch', '30 inch', '25 inch', '450.00', 'Shipped', '2021-04-03 18:30:00'),
(8, '338122505', 'CMS Agra', 'Raghav', 8977997979, 'H.NO:B3/4 shival bajrang park', 'Agra', 'UP', '897977', 'India', 'Manish', 7897798979, 'Banglo No:183, goregao', 'Mumbai', 'Maharastra', '987989', 'India', 'NA', '.50 Kg', '85 inch', '75 inch', '25 inc', '200.00', NULL, '2021-04-09 18:30:00'),
(9, '700159918', 'Noida Branch', 'Anuj kumar', 2112441241, 'New Dlehi India', 'New Delhi', 'Delhi', '110091', 'India', 'Rahul', 4571545127, 'Pune', 'Pune', 'MH', '123123', 'India', 'This is sample text for Testing', '200 gm', '12', '10', '12', '200.00', NULL, '2021-04-13 18:30:00'),
(10, '791805913', 'Noida Branch', 'Amit kumar', 1234567890, 'A-10  Noida 63', 'Nodia', 'UP', '201301', 'India', 'Sanjeev', 987654432, 'Gurugram', 'Gurugram', 'Haryana', '124124', 'India', 'This is sample text for testing', '200gm', '12', '10', '20', '125.00', 'Intransit', '2021-04-13 18:30:00'),
(11, '884766920', 'CMS Delhi', 'Jai Prakash', 8945724545, 'H-9700 Kailash 2', 'New Delhi', 'Delhi', '110096', 'India', 'Mr Jaon', 6646465464, 'M00877 Suhan Street', 'Pauli', 'Pauli', '454454', 'United Kindom', 'Parcel contains cloth', '.8kg', '12', '12', '12', '789.89', 'Courier Pickup', '2021-05-07 18:30:00'),
(12, '395775593', 'CMS Delhi', 'gjgjhg', 4564464654, 'mkmlkjl', 'jlkjlkjlkjlk', 'ljljlkjlkj', '654654', 'kjhkjhkhkh', 'lkjjkljlkj', 4465464654, 'khkjhkjh', 'hkjhkh', 'khkjh', '654646', 'k;lk;kl', 'jjjlkjl', 'ljlkj', '12', '12', '12', '0.00', NULL, '2021-05-07 18:30:00'),
(13, '809274137', 'Test Branch', 'Anuj kumar', 1234567899, 'ABC Streext ', 'Ghaziabad', 'UP', '201017', 'India', 'Rahul', 123569712, 'XYZ Street Kanpur', 'Kanpur', 'UP', '202001', 'Inida', 'BOOKS', '1KG', '10', '20', '20', '200.00', 'Arrived at Destination', '2021-09-27 16:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblcouriertracking`
--

CREATE TABLE `tblcouriertracking` (
  `ID` INT(11) NOT NULL,
  `CourierId` INT(11) DEFAULT NULL,
  `remark` MEDIUMTEXT DEFAULT NULL,
  `status` VARCHAR(255) DEFAULT NULL,
  `StatusDate` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP()
) ENGINE=INNODB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcouriertracking`
--

INSERT INTO `tblcouriertracking` (`ID`, `CourierId`, `remark`, `status`, `StatusDate`) VALUES
(1, 2, ' Courier Shipped', 'Shipped', '2021-03-30 18:30:00'),
(2, 2, ' Product Intransit ', 'Intransit', '2021-03-30 18:30:00'),
(3, 2, ' Product has been deliver to abc.', 'Delivered', '2022-03-12 18:30:00'),
(4, 1, ' Intransit', 'Intransit', '2022-03-20 18:30:00'),
(5, 3, ' Shipped', 'Shipped', '2022-03-21 18:30:00'),
(6, 3, ' Intransit', 'Intransit', '2022-03-15 18:30:00'),
(7, 3, ' Arrived at nearest hub in city', 'Arrived at Destination', '2022-02-21 18:30:00'),
(8, 3, ' Out for delivery Today', 'Out for Delivery', '2022-03-10 18:30:00'),
(9, 3, ' Delivered Receive by Harish', 'Courier Pickup', '2022-02-24 18:30:00'),
(10, 3, ' Delivered', 'Delivered', '2022-03-19 18:30:00'),
(11, 4, ' Parcel Has been picked', 'Shipped', '2022-03-02 18:30:00'),
(12, 4, ' Parcel reached hub city', 'Intransit', '2022-02-22 18:30:00'),
(13, 4, ' Arrived at destination', 'Arrived at Destination', '2022-02-12 19:30:00'),
(14, 4, ' Parcel out for delivery', 'Out for Delivery', '2022-03-02 18:30:00'),
(15, 4, ' Parcel has been delivered', 'Delivered', '2022-03-28 18:30:00'),
(16, 7, ' Courier Pick Up', 'Courier Pickup', '2022-03-03 18:30:00'),
(17, 5, ' Courier has been picked', 'Courier Pickup', '2022-03-07 18:30:00'),
(18, 5, ' Shipped', 'Shipped', '2022-01-03 18:30:00'),
(19, 5, ' Parcel is on the way', 'Intransit', '2022-01-23 18:30:00'),
(20, 5, ' Arrived at destination', 'Arrived at Destination', '2022-01-13 18:30:00'),
(21, 5, ' Out for delivery', 'Out for Delivery', '2022-02-03 18:30:00'),
(22, 6, ' Courier is pickup', 'Courier Pickup', '2022-03-09 18:30:00'),
(23, 7, ' Shipped', 'Shipped', '2022-01-09 18:30:00'),
(24, 10, ' Courier picked up', 'Courier Pickup', '2022-03-13 18:30:00'),
(25, 10, ' Courier is in Intrnaist', 'Intransit', '2022-02-14 18:30:00'),
(26, 1, ' Arrived atd detination', 'Arrived at Destination', '2022-01-07 18:30:00'),
(27, 11, ' Courier Pickup', 'Courier Pickup', '2022-02-17 18:30:00'),
(28, 13, ' Courier', 'Shipped', '2022-01-27 16:17:56'),
(29, 13, ' Arrived at Kanpur Hub', 'Arrived at Destination', '2022-03-08 16:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` INT(10) NOT NULL,
  `PageType` VARCHAR(200) DEFAULT NULL,
  `PageTitle` MEDIUMTEXT DEFAULT NULL,
  `PageDescription` MEDIUMTEXT DEFAULT NULL,
  `Email` VARCHAR(200) DEFAULT NULL,
  `MobileNumber` BIGINT(10) DEFAULT NULL,
  `UpdationDate` TIMESTAMP NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP()
) ENGINE=INNODB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<font color=\"#000000\"><span style=\"font-family: Raleway, Arial, sans-serif; font-size: 13px;\">CMS has been in business in the xyz area since 1985 and is locally managed and operated subsidiary of &nbsp;</span><em style=\"outline: 0px; padding: 0px; margin: 0px; background-repeat: no-repeat; font-family: Raleway, Arial, sans-serif; font-size: 13px;\">Need it Now Courier</em><span style=\"font-family: Raleway, Arial, sans-serif; font-size: 13px;\">. With an on location Connecticut office plus a large company backup of resources, Expressway is able to offer a combination of very personal touch to high efficiency. With a reputation built on prompt and reliable service, we operate 24 hours a day&nbsp; 365 days a year</span></font>', NULL, NULL, '2021-09-27 16:24:33'),
(2, 'contactus', 'Contact Us', '#890 CFG Apartment, Mayur Vihar, Delhi-India', 'info@gmail.com', 1234567890, '2021-09-27 16:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `ID` INT(10) NOT NULL,
  `BranchName` VARCHAR(120) DEFAULT NULL,
  `StaffName` VARCHAR(120) DEFAULT NULL,
  `StaffMobilenumber` BIGINT(11) DEFAULT NULL,
  `StaffEmail` VARCHAR(120) DEFAULT NULL,
  `StaffPassword` VARCHAR(120) DEFAULT NULL,
  `StaffRegdate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `status` INT(1) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`ID`, `BranchName`, `StaffName`, `StaffMobilenumber`, `StaffEmail`, `StaffPassword`, `StaffRegdate`, `status`) VALUES
(2, 'CMS Delhi', 'Harish Pandey', 8978987996, 'harish@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-03-2 18:30:00', 0),
(3, 'CMS Delhi', 'Ragubhir Singh', 7987464678, 'jao@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-01-5 18:30:00', 1),
(5, 'CMS Agra', 'Kumar', 4789747897, 'kumar@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-03-15 18:30:00', 1),
(6, 'CMS Kanpur', 'Girish Chandra', 8989985624, 'chandra@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-01-02 18:30:00', 1),
(7, 'Noida Branch', 'Anuj', 1234567890, 'noidatest@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-01-13 18:30:00', 1),
(8, 'CMS Banglore', 'Ganesh', 5646464564, 'ganesh@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-05-07 18:30:00', 1),
(9, 'Test Branch', 'XYZ', 1234567890, 'abc@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2021-09-27 16:14:50', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);
  DELETE PRIMARY KEY(`ID`);
  

--
-- Indexes for table `tblbranch`
--
ALTER TABLE `tblbranch`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BranchName` (`BranchName`);

--
-- Indexes for table `tblcomplains`
--
ALTER TABLE `tblcomplains`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TrackingNumber` (`TrackingNumber`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcourier`
--
ALTER TABLE `tblcourier`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `branchname` (`SenderBranch`),
  ADD KEY `RefNumber` (`RefNumber`);

--
-- Indexes for table `tblcouriertracking`
--
ALTER TABLE `tblcouriertracking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `refrenceid` (`CourierId`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `branchid` (`BranchName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbranch`
--
ALTER TABLE `tblbranch`
  MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcomplains`
--
ALTER TABLE `tblcomplains`
  MODIFY `ID` INT(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` INT(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcourier`
--
ALTER TABLE `tblcourier`
  MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcouriertracking`
--
ALTER TABLE `tblcouriertracking`
  MODIFY `ID` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` INT(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `ID` INT(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcomplains`
--
ALTER TABLE `tblcomplains`
  ADD CONSTRAINT `refnoid` FOREIGN KEY (`TrackingNumber`) REFERENCES `tblcourier` (`RefNumber`) ON DELETE NO ACTION;

--
-- Constraints for table `tblcourier`
--
ALTER TABLE `tblcourier`
  ADD CONSTRAINT `branchname` FOREIGN KEY (`SenderBranch`) REFERENCES `tblbranch` (`BranchName`) ON DELETE NO ACTION;

--
-- Constraints for table `tblcouriertracking`
--
ALTER TABLE `tblcouriertracking`
  ADD CONSTRAINT `refrenceid` FOREIGN KEY (`CourierId`) REFERENCES `tblcourier` (`ID`) ON DELETE NO ACTION;

--
-- Constraints for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD CONSTRAINT `branchid` FOREIGN KEY (`BranchName`) REFERENCES `tblbranch` (`BranchName`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
