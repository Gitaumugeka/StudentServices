-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2026 at 11:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_services`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `accounts_view`
-- (See below for the actual view)
--
CREATE TABLE `accounts_view` (
`student_id` int(11)
,`first_name` varchar(50)
,`last_name` varchar(50)
,`amount_due` decimal(10,2)
,`amount_paid` decimal(10,2)
,`balance` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `assessments`
--

CREATE TABLE `assessments` (
  `assessment_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `cat1` decimal(5,2) DEFAULT NULL CHECK (`cat1` between 0 and 20),
  `cat2` decimal(5,2) DEFAULT NULL CHECK (`cat2` between 0 and 20),
  `exam` decimal(5,2) DEFAULT NULL CHECK (`exam` between 0 and 60),
  `term` int(11) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assessments`
--

INSERT INTO `assessments` (`assessment_id`, `student_id`, `subject_id`, `cat1`, `cat2`, `exam`, `term`, `year`) VALUES
(1, 1, 1, 18.00, 17.00, 50.00, 1, '2026'),
(2, 2, 2, 16.00, 18.00, 48.00, 1, '2026'),
(3, 3, 3, 15.00, 16.00, 45.00, 1, '2026'),
(4, 4, 4, 19.00, 19.00, 55.00, 1, '2026'),
(5, 5, 5, 14.00, 15.00, 42.00, 1, '2026'),
(6, 6, 6, 17.00, 18.00, 49.00, 1, '2026'),
(7, 7, 7, 20.00, 19.00, 56.00, 1, '2026'),
(8, 8, 8, 13.00, 14.00, 40.00, 1, '2026'),
(9, 9, 9, 18.00, 17.00, 52.00, 1, '2026'),
(10, 10, 10, 16.00, 18.00, 47.00, 1, '2026');

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `attachment_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('Ongoing','Completed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`attachment_id`, `student_id`, `company_name`, `start_date`, `end_date`, `status`) VALUES
(1, 1, 'Safaricom PLC', '2026-01-10', '2026-04-10', 'Completed'),
(2, 2, 'Kenya Power', '2026-01-10', '2026-04-10', 'Completed'),
(3, 3, 'KRA', '2026-01-10', '2026-04-10', 'Completed'),
(4, 4, 'IBM Kenya', '2026-01-10', '2026-04-10', 'Completed'),
(5, 5, 'Microsoft Kenya', '2026-01-10', '2026-04-10', 'Completed'),
(6, 6, 'Equity Bank', '2026-01-10', '2026-04-10', 'Completed'),
(7, 7, 'NCBA Bank', '2026-01-10', '2026-04-10', 'Completed'),
(8, 8, 'Google Africa', '2026-01-10', '2026-04-10', 'Completed'),
(9, 9, 'KCB Bank', '2026-01-10', '2026-04-10', 'Completed'),
(10, 10, 'Huawei Kenya', '2026-01-10', '2026-04-10', 'Ongoing');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `intake_year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `course_id`, `class_name`, `intake_year`) VALUES
(1, 1, 'CS24A', '2024'),
(2, 1, 'CS24B', '2024'),
(3, 2, 'IT24A', '2024'),
(4, 3, 'BM24A', '2024'),
(5, 4, 'EE24A', '2024'),
(6, 5, 'ME24A', '2024'),
(7, 6, 'HM24A', '2024'),
(8, 7, 'BT24A', '2024'),
(9, 8, 'AE24A', '2024'),
(10, 9, 'FD24A', '2024');

-- --------------------------------------------------------

--
-- Table structure for table `clubmembers`
--

CREATE TABLE `clubmembers` (
  `membership_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `club_id` int(11) NOT NULL,
  `year_joined` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clubmembers`
--

INSERT INTO `clubmembers` (`membership_id`, `student_id`, `club_id`, `year_joined`) VALUES
(1, 1, 1, '2024'),
(2, 2, 2, '2024'),
(3, 3, 3, '2024'),
(4, 4, 4, '2024'),
(5, 5, 5, '2024'),
(6, 6, 6, '2024'),
(7, 7, 7, '2024'),
(8, 8, 8, '2024'),
(9, 9, 9, '2024'),
(10, 10, 10, '2024');

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `club_id` int(11) NOT NULL,
  `club_name` varchar(100) NOT NULL,
  `patron` varchar(100) NOT NULL,
  `chairperson` varchar(100) DEFAULT NULL,
  `meeting_day` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`club_id`, `club_name`, `patron`, `chairperson`, `meeting_day`) VALUES
(1, 'ICT Club', 'John Mwangi', 'Brian Otieno', 'Monday'),
(2, 'Drama Club', 'Grace Wanjiru', 'Mary Achieng', 'Tuesday'),
(3, 'Music Club', 'Peter Otieno', 'Kevin Mwangi', 'Wednesday'),
(4, 'Football Club', 'Susan Akinyi', 'James Mutua', 'Thursday'),
(5, 'Chess Club', 'David Kiptoo', 'Faith Njeri', 'Friday'),
(6, 'Journalism Club', 'Mary Njeri', 'Daniel Ouma', 'Monday'),
(7, 'Debate Club', 'James Kariuki', 'Lucy Akinyi', 'Tuesday'),
(8, 'Robotics Club', 'Faith Chebet', 'Peter Kamau', 'Wednesday'),
(9, 'Wildlife Club', 'Paul Ouma', 'Anne Wairimu', 'Thursday'),
(10, 'Red Cross Club', 'Lucy Atieno', 'Mercy Chebet', 'Friday');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_level` enum('Artisan','Certificate','Diploma') NOT NULL,
  `duration_years` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `department_id`, `course_name`, `course_level`, `duration_years`) VALUES
(1, 1, 'Computer Science', 'Diploma', 3),
(2, 7, 'Information Technology', 'Diploma', 3),
(3, 2, 'Business Management', 'Diploma', 3),
(4, 3, 'Electrical Engineering', 'Diploma', 3),
(5, 4, 'Mechanical Engineering', 'Diploma', 3),
(6, 5, 'Hospitality Management', 'Certificate', 2),
(7, 6, 'Building Technology', 'Certificate', 2),
(8, 8, 'Automotive Engineering', 'Certificate', 2),
(9, 9, 'Fashion Design', 'Artisan', 1),
(10, 10, 'Liberal Studies', 'Diploma', 3);

-- --------------------------------------------------------

--
-- Stand-in structure for view `dean_view`
-- (See below for the actual view)
--
CREATE TABLE `dean_view` (
`student_id` int(11)
,`first_name` varchar(50)
,`last_name` varchar(50)
,`course_name` varchar(100)
,`class_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `block` varchar(30) NOT NULL,
  `hod` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`, `block`, `hod`) VALUES
(1, 'Computer Science', 'Block A', 'John Mwangi'),
(2, 'Business', 'Block B', 'Jane Wanjiku'),
(3, 'Electrical Engineering', 'Block C', 'Peter Otieno'),
(4, 'Mechanical Engineering', 'Block D', 'David Kiptoo'),
(5, 'Hospitality', 'Block E', 'Mary Njeri'),
(6, 'Building Technology', 'Block F', 'James Kariuki'),
(7, 'Information Technology', 'Block G', 'Susan Akinyi'),
(8, 'Automotive Engineering', 'Block H', 'Paul Ouma'),
(9, 'Fashion Design', 'Block I', 'Grace Atieno'),
(10, 'Liberal Studies', 'Block J', 'Samuel Mutiso');

-- --------------------------------------------------------

--
-- Stand-in structure for view `exam_performance_view`
-- (See below for the actual view)
--
CREATE TABLE `exam_performance_view` (
`student_id` int(11)
,`first_name` varchar(50)
,`last_name` varchar(50)
,`subject_name` varchar(100)
,`cat1` decimal(5,2)
,`cat2` decimal(5,2)
,`exam` decimal(5,2)
,`Total_Marks` decimal(7,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `fee_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `payment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`fee_id`, `student_id`, `amount_due`, `amount_paid`, `balance`, `payment_date`) VALUES
(1, 1, 50000.00, 50000.00, 0.00, '2026-01-15'),
(2, 2, 50000.00, 45000.00, 5000.00, '2026-01-16'),
(3, 3, 50000.00, 50000.00, 0.00, '2026-01-17'),
(4, 4, 50000.00, 30000.00, 20000.00, '2026-01-18'),
(5, 5, 50000.00, 50000.00, 0.00, '2026-01-19'),
(6, 6, 50000.00, 40000.00, 10000.00, '2026-01-20'),
(7, 7, 50000.00, 50000.00, 0.00, '2026-01-21'),
(8, 8, 50000.00, 25000.00, 25000.00, '2026-01-22'),
(9, 9, 50000.00, 50000.00, 0.00, '2026-01-23'),
(10, 10, 50000.00, 35000.00, 15000.00, '2026-01-24');

-- --------------------------------------------------------

--
-- Stand-in structure for view `hod_view`
-- (See below for the actual view)
--
CREATE TABLE `hod_view` (
`department_name` varchar(100)
,`course_name` varchar(100)
,`student_id` int(11)
,`first_name` varchar(50)
,`last_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `hostelallocation`
--

CREATE TABLE `hostelallocation` (
  `allocation_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `hostel_id` int(11) NOT NULL,
  `allocation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hostelallocation`
--

INSERT INTO `hostelallocation` (`allocation_id`, `student_id`, `hostel_id`, `allocation_date`) VALUES
(1, 1, 1, '2026-01-05'),
(2, 2, 2, '2026-01-05'),
(3, 3, 3, '2026-01-05'),
(4, 4, 4, '2026-01-05'),
(5, 5, 5, '2026-01-05'),
(6, 6, 6, '2026-01-05'),
(7, 7, 7, '2026-01-05'),
(8, 8, 8, '2026-01-05'),
(9, 9, 9, '2026-01-05'),
(10, 10, 10, '2026-01-05');

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `hostel_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `hostel_name` varchar(100) NOT NULL,
  `room_number` varchar(20) NOT NULL,
  `term` int(11) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hostels`
--

INSERT INTO `hostels` (`hostel_id`, `student_id`, `hostel_name`, `room_number`, `term`, `year`) VALUES
(1, 1, 'Hostel A', 'A101', 1, '2026'),
(2, 2, 'Hostel A', 'A102', 1, '2026'),
(3, 3, 'Hostel B', 'B201', 1, '2026'),
(4, 4, 'Hostel B', 'B202', 1, '2026'),
(5, 5, 'Hostel C', 'C301', 1, '2026'),
(6, 6, 'Hostel C', 'C302', 1, '2026'),
(7, 7, 'Hostel D', 'D401', 1, '2026'),
(8, 8, 'Hostel D', 'D402', 1, '2026'),
(9, 9, 'Hostel E', 'E501', 1, '2026'),
(10, 10, 'Hostel E', 'E502', 1, '2026');

-- --------------------------------------------------------

--
-- Table structure for table `lecturers`
--

CREATE TABLE `lecturers` (
  `lecturer_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `employment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lecturers`
--

INSERT INTO `lecturers` (`lecturer_id`, `department_id`, `first_name`, `last_name`, `gender`, `phone`, `email`, `specialization`, `employment_date`) VALUES
(1, 1, 'John', 'Mwangi', 'Male', '0711000001', 'john.mwangi@college.ac.ke', 'Database Systems', '2021-01-10'),
(2, 1, 'Grace', 'Wanjiru', 'Female', '0711000002', 'grace.wanjiru@college.ac.ke', 'Programming', '2020-06-15'),
(3, 2, 'Peter', 'Otieno', 'Male', '0711000003', 'peter.otieno@college.ac.ke', 'Accounting', '2019-03-20'),
(4, 3, 'Susan', 'Akinyi', 'Female', '0711000004', 'susan.akinyi@college.ac.ke', 'Electrical Installation', '2022-02-01'),
(5, 4, 'David', 'Kiptoo', 'Male', '0711000005', 'david.kiptoo@college.ac.ke', 'Mechanical Engineering', '2020-08-12'),
(6, 5, 'Mary', 'Njeri', 'Female', '0711000006', 'mary.njeri@college.ac.ke', 'Hospitality', '2018-09-25'),
(7, 6, 'James', 'Kariuki', 'Male', '0711000007', 'james.kariuki@college.ac.ke', 'Building Technology', '2019-11-11'),
(8, 7, 'Faith', 'Chebet', 'Female', '0711000008', 'faith.chebet@college.ac.ke', 'Networking', '2021-04-18'),
(9, 8, 'Paul', 'Ouma', 'Male', '0711000009', 'paul.ouma@college.ac.ke', 'Automotive Engineering', '2023-01-05'),
(10, 9, 'Lucy', 'Atieno', 'Female', '0711000010', 'lucy.atieno@college.ac.ke', 'Fashion Design', '2022-07-30');

-- --------------------------------------------------------

--
-- Stand-in structure for view `lecturer_view`
-- (See below for the actual view)
--
CREATE TABLE `lecturer_view` (
`lecturer_id` int(11)
,`first_name` varchar(50)
,`last_name` varchar(50)
,`subject_name` varchar(100)
,`hours_per_week` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `module_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `module_name` varchar(100) NOT NULL,
  `module_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`module_id`, `course_id`, `module_name`, `module_number`) VALUES
(1, 1, 'Module 1', 1),
(2, 1, 'Module 2', 2),
(3, 1, 'Module 3', 3),
(4, 2, 'Module 1', 1),
(5, 3, 'Module 1', 1),
(6, 4, 'Module 1', 1),
(7, 5, 'Module 1', 1),
(8, 6, 'Module 1', 1),
(9, 7, 'Module 1', 1),
(10, 8, 'Module 1', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `registrar_view`
-- (See below for the actual view)
--
CREATE TABLE `registrar_view` (
`student_id` int(11)
,`first_name` varchar(50)
,`last_name` varchar(50)
,`gender` enum('Male','Female')
,`enrollment_status` enum('In Session','On Attachment','Completed')
);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `enrollment_status` enum('In Session','On Attachment','Completed') NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `class_id`, `course_id`, `first_name`, `last_name`, `gender`, `date_of_birth`, `phone`, `address`, `enrollment_status`, `email`) VALUES
(1, 1, 1, 'Brian', 'Otieno', 'Male', '2004-02-10', '0712345678', 'Nairobi', 'In Session', 'brian.new@gmail.com'),
(2, 1, 1, 'Mary', 'Achieng', 'Female', '2003-05-18', '0722222222', 'Kisumu', 'On Attachment', 'mary@gmail.com'),
(3, 2, 1, 'Kevin', 'Mwangi', 'Male', '2004-07-20', '0733333333', 'Kiambu', 'In Session', 'kevin@gmail.com'),
(4, 3, 2, 'Faith', 'Njeri', 'Female', '2003-08-09', '0744444444', 'Nakuru', 'Completed', 'faith@gmail.com'),
(5, 4, 3, 'James', 'Mutua', 'Male', '2002-10-01', '0755555555', 'Machakos', 'In Session', 'james@gmail.com'),
(6, 5, 4, 'Mercy', 'Chebet', 'Female', '2004-12-11', '0766666666', 'Eldoret', 'In Session', 'mercy@gmail.com'),
(7, 6, 5, 'Daniel', 'Ouma', 'Male', '2003-03-22', '0777777777', 'Siaya', 'On Attachment', 'daniel@gmail.com'),
(8, 7, 6, 'Lucy', 'Akinyi', 'Female', '2004-04-14', '0788888888', 'Kisii', 'Completed', 'lucy@gmail.com'),
(9, 8, 7, 'Peter', 'Kamau', 'Male', '2003-09-06', '0799999999', 'Nyeri', 'In Session', 'peter@gmail.com'),
(10, 9, 8, 'Anne', 'Wairimu', 'Female', '2004-01-19', '0700000000', 'Murang\'a', 'In Session', 'anne@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `hours_per_week` int(11) NOT NULL CHECK (`hours_per_week` between 2 and 6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `module_id`, `lecturer_id`, `subject_code`, `subject_name`, `hours_per_week`) VALUES
(1, 1, 1, 'CSC101', 'Introduction to Programming', 4),
(2, 2, 2, 'CSC102', 'Database Systems', 4),
(3, 3, 1, 'CSC103', 'Web Design', 3),
(4, 4, 3, 'BUS101', 'Business Communication', 3),
(5, 5, 4, 'EEE101', 'Electrical Installation', 5),
(6, 6, 5, 'MEC101', 'Engineering Drawing', 4),
(7, 7, 6, 'HOS101', 'Food Production', 4),
(8, 8, 7, 'BIT101', 'Building Materials', 3),
(9, 9, 8, 'AUTO101', 'Motor Vehicle Technology', 5),
(10, 10, 9, 'FAD101', 'Fashion Illustration', 3);

-- --------------------------------------------------------

--
-- Table structure for table `supplementaryexams`
--

CREATE TABLE `supplementaryexams` (
  `supplementary_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `exam_date` date NOT NULL,
  `marks` decimal(5,2) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplementaryexams`
--

INSERT INTO `supplementaryexams` (`supplementary_id`, `student_id`, `subject_id`, `exam_date`, `marks`, `remarks`) VALUES
(1, 1, 1, '2026-08-01', 65.00, 'Pass'),
(2, 2, 2, '2026-08-01', 58.00, 'Pass'),
(3, 3, 3, '2026-08-02', 62.00, 'Pass'),
(4, 4, 4, '2026-08-02', 45.00, 'Fail'),
(5, 5, 5, '2026-08-03', 70.00, 'Pass'),
(6, 6, 6, '2026-08-03', 55.00, 'Pass'),
(7, 7, 7, '2026-08-04', 68.00, 'Pass'),
(8, 8, 8, '2026-08-04', 49.00, 'Fail'),
(9, 9, 9, '2026-08-05', 73.00, 'Pass'),
(10, 10, 10, '2026-08-05', 60.00, 'Pass');

-- --------------------------------------------------------

--
-- Table structure for table `transcripts`
--

CREATE TABLE `transcripts` (
  `transcript_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `total_marks` decimal(5,2) NOT NULL,
  `grade` char(2) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transcripts`
--

INSERT INTO `transcripts` (`transcript_id`, `student_id`, `subject_id`, `total_marks`, `grade`, `remarks`) VALUES
(1, 1, 1, 85.00, 'A', 'Excellent'),
(2, 2, 2, 78.00, 'B+', 'Very Good'),
(3, 3, 3, 72.00, 'B', 'Good'),
(4, 4, 4, 90.00, 'A', 'Excellent'),
(5, 5, 5, 65.00, 'C+', 'Credit'),
(6, 6, 6, 80.00, 'A-', 'Very Good'),
(7, 7, 7, 92.00, 'A', 'Excellent'),
(8, 8, 8, 60.00, 'C', 'Pass'),
(9, 9, 9, 88.00, 'A', 'Excellent'),
(10, 10, 10, 75.00, 'B+', 'Very Good');

-- --------------------------------------------------------

--
-- Stand-in structure for view `workload_view`
-- (See below for the actual view)
--
CREATE TABLE `workload_view` (
`lecturer_id` int(11)
,`first_name` varchar(50)
,`last_name` varchar(50)
,`Total_Hours` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Structure for view `accounts_view`
--
DROP TABLE IF EXISTS `accounts_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `accounts_view`  AS SELECT `s`.`student_id` AS `student_id`, `s`.`first_name` AS `first_name`, `s`.`last_name` AS `last_name`, `f`.`amount_due` AS `amount_due`, `f`.`amount_paid` AS `amount_paid`, `f`.`balance` AS `balance` FROM (`students` `s` join `fees` `f` on(`s`.`student_id` = `f`.`student_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `dean_view`
--
DROP TABLE IF EXISTS `dean_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dean_view`  AS SELECT `s`.`student_id` AS `student_id`, `s`.`first_name` AS `first_name`, `s`.`last_name` AS `last_name`, `c`.`course_name` AS `course_name`, `cl`.`class_name` AS `class_name` FROM ((`students` `s` join `courses` `c` on(`s`.`course_id` = `c`.`course_id`)) join `classes` `cl` on(`s`.`class_id` = `cl`.`class_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `exam_performance_view`
--
DROP TABLE IF EXISTS `exam_performance_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `exam_performance_view`  AS SELECT `s`.`student_id` AS `student_id`, `s`.`first_name` AS `first_name`, `s`.`last_name` AS `last_name`, `sub`.`subject_name` AS `subject_name`, `a`.`cat1` AS `cat1`, `a`.`cat2` AS `cat2`, `a`.`exam` AS `exam`, `a`.`cat1`+ `a`.`cat2` + `a`.`exam` AS `Total_Marks` FROM ((`assessments` `a` join `students` `s` on(`a`.`student_id` = `s`.`student_id`)) join `subjects` `sub` on(`a`.`subject_id` = `sub`.`subject_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `hod_view`
--
DROP TABLE IF EXISTS `hod_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hod_view`  AS SELECT `d`.`department_name` AS `department_name`, `c`.`course_name` AS `course_name`, `s`.`student_id` AS `student_id`, `s`.`first_name` AS `first_name`, `s`.`last_name` AS `last_name` FROM ((`students` `s` join `courses` `c` on(`s`.`course_id` = `c`.`course_id`)) join `departments` `d` on(`c`.`department_id` = `d`.`department_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `lecturer_view`
--
DROP TABLE IF EXISTS `lecturer_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lecturer_view`  AS SELECT `l`.`lecturer_id` AS `lecturer_id`, `l`.`first_name` AS `first_name`, `l`.`last_name` AS `last_name`, `sub`.`subject_name` AS `subject_name`, `sub`.`hours_per_week` AS `hours_per_week` FROM (`lecturers` `l` join `subjects` `sub` on(`l`.`lecturer_id` = `sub`.`lecturer_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `registrar_view`
--
DROP TABLE IF EXISTS `registrar_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `registrar_view`  AS SELECT `students`.`student_id` AS `student_id`, `students`.`first_name` AS `first_name`, `students`.`last_name` AS `last_name`, `students`.`gender` AS `gender`, `students`.`enrollment_status` AS `enrollment_status` FROM `students` ;

-- --------------------------------------------------------

--
-- Structure for view `workload_view`
--
DROP TABLE IF EXISTS `workload_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `workload_view`  AS SELECT `l`.`lecturer_id` AS `lecturer_id`, `l`.`first_name` AS `first_name`, `l`.`last_name` AS `last_name`, sum(`sub`.`hours_per_week`) AS `Total_Hours` FROM (`lecturers` `l` join `subjects` `sub` on(`l`.`lecturer_id` = `sub`.`lecturer_id`)) GROUP BY `l`.`lecturer_id`, `l`.`first_name`, `l`.`last_name` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessments`
--
ALTER TABLE `assessments`
  ADD PRIMARY KEY (`assessment_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`attachment_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `fk_class_course` (`course_id`);

--
-- Indexes for table `clubmembers`
--
ALTER TABLE `clubmembers`
  ADD PRIMARY KEY (`membership_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `club_id` (`club_id`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`club_id`),
  ADD UNIQUE KEY `club_name` (`club_name`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `fk_course_department` (`department_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`fee_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `hostelallocation`
--
ALTER TABLE `hostelallocation`
  ADD PRIMARY KEY (`allocation_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`hostel_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`lecturer_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_lecturer_department` (`department_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `fk_module_course` (`course_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `uq_student` (`first_name`,`last_name`,`date_of_birth`),
  ADD KEY `fk_student_class` (`class_id`),
  ADD KEY `fk_student_course` (`course_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`),
  ADD UNIQUE KEY `subject_code` (`subject_code`),
  ADD KEY `fk_subject_module` (`module_id`),
  ADD KEY `fk_subject_lecturer` (`lecturer_id`);

--
-- Indexes for table `supplementaryexams`
--
ALTER TABLE `supplementaryexams`
  ADD PRIMARY KEY (`supplementary_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `transcripts`
--
ALTER TABLE `transcripts`
  ADD PRIMARY KEY (`transcript_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assessments`
--
ALTER TABLE `assessments`
  MODIFY `assessment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `attachment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `clubmembers`
--
ALTER TABLE `clubmembers`
  MODIFY `membership_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `club_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hostelallocation`
--
ALTER TABLE `hostelallocation`
  MODIFY `allocation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `hostel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lecturers`
--
ALTER TABLE `lecturers`
  MODIFY `lecturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `supplementaryexams`
--
ALTER TABLE `supplementaryexams`
  MODIFY `supplementary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transcripts`
--
ALTER TABLE `transcripts`
  MODIFY `transcript_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assessments`
--
ALTER TABLE `assessments`
  ADD CONSTRAINT `assessments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `assessments_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `fk_class_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `clubmembers`
--
ALTER TABLE `clubmembers`
  ADD CONSTRAINT `clubmembers_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `clubmembers_ibfk_2` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`club_id`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `fk_course_department` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`);

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `hostelallocation`
--
ALTER TABLE `hostelallocation`
  ADD CONSTRAINT `hostelallocation_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `hostelallocation_ibfk_2` FOREIGN KEY (`hostel_id`) REFERENCES `hostels` (`hostel_id`);

--
-- Constraints for table `hostels`
--
ALTER TABLE `hostels`
  ADD CONSTRAINT `hostels_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `lecturers`
--
ALTER TABLE `lecturers`
  ADD CONSTRAINT `fk_lecturer_department` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`);

--
-- Constraints for table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `fk_module_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `fk_student_class` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`),
  ADD CONSTRAINT `fk_student_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `fk_subject_lecturer` FOREIGN KEY (`lecturer_id`) REFERENCES `lecturers` (`lecturer_id`),
  ADD CONSTRAINT `fk_subject_module` FOREIGN KEY (`module_id`) REFERENCES `modules` (`module_id`);

--
-- Constraints for table `supplementaryexams`
--
ALTER TABLE `supplementaryexams`
  ADD CONSTRAINT `supplementaryexams_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `supplementaryexams_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);

--
-- Constraints for table `transcripts`
--
ALTER TABLE `transcripts`
  ADD CONSTRAINT `transcripts_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `transcripts_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
