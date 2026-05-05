-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2026 at 01:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `naacv_vi`
--

-- --------------------------------------------------------

--
-- Table structure for table `activitylogs`
--

CREATE TABLE `activitylogs` (
  `Id` int(11) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `Action` varchar(100) NOT NULL,
  `Module` varchar(100) NOT NULL,
  `Criteria` varchar(10) DEFAULT NULL,
  `Table` varchar(10) DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `Status` varchar(50) NOT NULL DEFAULT 'Success',
  `UserId` int(11) DEFAULT NULL,
  `CollegeName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activitylogs`
--

INSERT INTO `activitylogs` (`Id`, `Timestamp`, `UserName`, `Role`, `Action`, `Module`, `Criteria`, `Table`, `Details`, `Status`, `UserId`, `CollegeName`) VALUES
(1, '2026-04-18 14:05:55', 'Aary Mangukiya', 'Faculty', 'Added Record', 'Data Entry', '5', '5.1.1', 'Added new data record for 2024-25', 'Success', 5, NULL),
(2, '2026-04-18 14:39:31', 'Hardi Mangukiya', 'HOD', 'Rejected Record', 'Approvals', NULL, NULL, 'Rejected record for table 1. Reason: academic year mistake', 'Warning', 3, NULL),
(3, '2026-04-18 14:45:51', 'Aary Mangukiya', 'Faculty', 'Added Record', 'Data Entry', NULL, NULL, 'Added data record for 2025-26 in table 5.1.1', 'Success', 5, NULL),
(4, '2026-04-18 14:54:01', 'Aary Mangukiya', 'Faculty', 'Resubmitted Record', 'Data Entry', NULL, NULL, 'Updated data record for 2024-25 in table 5.1.1', 'Success', 5, NULL),
(5, '2026-04-18 14:58:06', 'Hardi Mangukiya', 'HOD', 'Verified Record', 'Approvals', NULL, NULL, 'Approved record for table 1', 'Success', 3, NULL),
(6, '2026-04-18 14:58:12', 'Hardi Mangukiya', 'HOD', 'Verified Record', 'Approvals', NULL, NULL, 'Approved record for table 1', 'Success', 3, NULL),
(7, '2026-04-18 14:45:50', 'Aary Mangukiya', 'Faculty', 'Added Record', 'Data Entry', NULL, NULL, 'Initial data entry for academic year 2025-26', 'Success', NULL, 'BMIIT'),
(8, '2026-04-18 21:16:13', 'Hardi Mangukiya', 'HOD', 'Assigned Lead', 'Criteria', '6', NULL, 'Assigned Khushi Mangukiya as lead for Criteria 2', 'Success', 3, 'BMIIT'),
(9, '2026-04-18 21:20:09', 'Darsh Kalathiya', 'Coordinator', 'Created Table', 'Criteria', NULL, '5.1.2', 'Added new structural table 5.1.2 to system.', 'Success', 6, ''),
(10, '2026-04-18 21:23:07', 'Darsh Kalathiya', 'Coordinator', 'Created Table', 'Criteria', NULL, '5.1.3', 'Added new structural table 5.1.3 to system.', 'Success', 6, ''),
(11, '2026-04-18 21:26:38', 'Darsh Kalathiya', 'Coordinator', 'Created Table', 'Criteria', NULL, '5.2.1', 'Added new structural table 5.2.1 to system.', 'Success', 6, ''),
(12, '2026-04-18 21:29:42', 'Darsh Kalathiya', 'Coordinator', 'Created Table', 'Criteria', NULL, '5.2.1', 'Added new structural table 5.2.1 to system.', 'Success', 6, ''),
(13, '2026-04-18 21:32:55', 'Darsh Kalathiya', 'Coordinator', 'Created Table', 'Criteria', NULL, '5.2.2', 'Added new structural table 5.2.2 to system.', 'Success', 6, ''),
(14, '2026-04-18 21:36:17', 'Darsh Kalathiya', 'Coordinator', 'Created Table', 'Criteria', NULL, '5.2.3', 'Added new structural table 5.2.3 to system.', 'Success', 6, ''),
(15, '2026-04-18 21:38:47', 'Darsh Kalathiya', 'Coordinator', 'Created Table', 'Criteria', NULL, '5.3.1', 'Added new structural table 5.3.1 to system.', 'Success', 6, ''),
(16, '2026-04-18 21:39:49', 'Darsh Kalathiya', 'Coordinator', 'Created Table', 'Criteria', NULL, '5.3.3', 'Added new structural table 5.3.3 to system.', 'Success', 6, ''),
(17, '2026-04-18 21:43:03', 'Darsh Kalathiya', 'Coordinator', 'Created Table', 'Criteria', NULL, '5.4.1', 'Added new structural table 5.4.1 to system.', 'Success', 6, ''),
(18, '2026-04-18 21:52:19', 'Darsh Kalathiya', 'Coordinator', 'Created Table', 'Criteria', NULL, '6.3.3', 'Added new structural table 6.3.3 to system.', 'Success', 6, ''),
(19, '2026-04-18 21:58:10', 'Darsh Kalathiya', 'Coordinator', 'Created Table', 'Criteria', NULL, '6.3.4', 'Added new structural table 6.3.4 to system.', 'Success', 6, ''),
(20, '2026-04-18 22:02:33', 'Darsh Kalathiya', 'Coordinator', 'Created Table', 'Criteria', NULL, '6.5.2', 'Added new structural table 6.5.2 to system.', 'Success', 6, ''),
(21, '2026-04-18 22:05:50', 'Darsh Kalathiya', 'Coordinator', 'Created Table', 'Criteria', NULL, '3.4.7', 'Added new structural table 3.4.7 to system.', 'Success', 6, ''),
(22, '2026-04-18 22:16:50', 'Darsh Kalathiya', 'Coordinator', 'Updated Criteria', 'Criteria', '5', NULL, 'Modified criteria metadata for: Student Support and Progression', 'Success', 6, ''),
(23, '2026-04-24 15:24:37', 'Hardi Mangukiya', 'HOD', 'Generated Report', 'Reports', NULL, NULL, 'HOD accessed/generated departmental summary report', 'Success', 3, 'BMIIT'),
(24, '2026-04-24 15:26:15', 'Hardi Mangukiya', 'HOD', 'Generated Report', 'Reports', NULL, NULL, 'HOD accessed/generated departmental summary report', 'Success', 3, 'BMIIT'),
(25, '2026-04-25 14:00:19', 'System Auditor', 'Admin', 'Compliance Reminder', 'Audit', '5', NULL, 'System Alert: Criteria 5 has pending documentation gaps.', 'Warning', 5, 'BMIIT'),
(26, '2026-04-25 14:00:19', 'System Auditor', 'Admin', 'Compliance Reminder', 'Audit', '6', NULL, 'System Alert: Criteria 6 has pending documentation gaps.', 'Warning', 7, 'BMIIT'),
(27, '2026-04-25 17:00:51', 'Hardi Mangukiya', 'HOD', 'Generated Report', 'Reports', NULL, NULL, 'HOD accessed/generated departmental summary report', 'Success', 3, 'BMIIT');

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `Id` int(11) NOT NULL,
  `Number` varchar(10) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`Id`, `Number`, `Title`, `Description`) VALUES
(1, '5', 'Student Support and Progression', 'This criterion evaluates the efforts an institution makes to provide necessary assistance to students and facilitate their holistic development and academic progression.\r\n'),
(2, '6', 'Governance, Leadership and Management', 'This criterion examines the institution\'s management practices, leadership effectiveness, and the systems in place for quality assurance.');

-- --------------------------------------------------------

--
-- Table structure for table `criteriaassignments`
--

CREATE TABLE `criteriaassignments` (
  `Id` int(11) NOT NULL,
  `CriteriaId` int(11) NOT NULL,
  `FacultyId` int(11) NOT NULL,
  `AssignedDate` datetime DEFAULT current_timestamp(),
  `IsActive` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criteriaassignments`
--

INSERT INTO `criteriaassignments` (`Id`, `CriteriaId`, `FacultyId`, `AssignedDate`, `IsActive`) VALUES
(4, 1, 5, '2026-04-16 14:01:26', 1),
(5, 2, 7, '2026-04-18 21:16:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `datarecords`
--

CREATE TABLE `datarecords` (
  `Id` int(11) NOT NULL,
  `TableId` int(11) NOT NULL,
  `FacultyId` int(11) NOT NULL,
  `AcademicYear` varchar(20) NOT NULL,
  `JsonData` longtext NOT NULL,
  `Status` varchar(50) DEFAULT 'Draft',
  `Remarks` text DEFAULT NULL,
  `CreatedAt` datetime DEFAULT current_timestamp(),
  `UpdatedAt` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datarecords`
--

INSERT INTO `datarecords` (`Id`, `TableId`, `FacultyId`, `AcademicYear`, `JsonData`, `Status`, `Remarks`, `CreatedAt`, `UpdatedAt`) VALUES
(2, 1, 5, '2025-26', '{\"Inst./Dept.\":\"BMIIT\",\"Year\":\"2026\",\"Name of the scheme\":\"Goverment\",\"Number of Students\":\"3\",\"Amount\":\"10000\",\"Link to relevant document\":null}', 'Finalized', 'Verified by HOD', '2026-04-18 14:45:50', '2026-04-18 17:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `naactables`
--

CREATE TABLE `naactables` (
  `Id` int(11) NOT NULL,
  `CriteriaId` int(11) NOT NULL,
  `TableNumber` varchar(20) DEFAULT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` text DEFAULT NULL,
  `CreatedAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `naactables`
--

INSERT INTO `naactables` (`Id`, `CriteriaId`, `TableNumber`, `Name`, `Description`, `CreatedAt`) VALUES
(1, 1, '5.1.1', 'Scholarship / Freeship', 'Total number of students benefited by scholarships and free ships provided by the institution, Government and non-government agencies (NGOs) during the year (other than the students receiving scholarships under the government schemes for reserved categories) ', '2026-04-18 14:05:10'),
(2, 1, '5.1.2', 'Career Counselling & Guidance', ' Total number of students benefited by career counselling and guidance for competitive examinations offered by the Institution during the year', '2026-04-18 21:20:09'),
(3, 1, '5.1.3', 'Development and Skill enhancement programs', 'Following Capacity  development and skills enhancement initiatives are taken by the institution\r\n1. Soft skills, 2. Language and communication skills, 3. Life skills (Yoga, physical fitness, health and hygiene), 4. Awareness of trends in technology ', '2026-04-18 21:23:07'),
(5, 1, '5.2.1', 'Competitive exams', 'Total number of students qualifying in state/ national/ international level examinations during the year (eg: NET/SLET/GATE/GMAT/CAT/GRE/TOEFL/Civil Services/State government examinations)', '2026-04-18 21:29:42'),
(6, 1, '5.2.2', 'Student Placement', 'Total number of placement of outgoing students during the year', '2026-04-18 21:32:55'),
(7, 1, '5.2.3', 'Higher education', 'Number of recently graduated students who have progressed to higher education (previous graduating batch)during the year', '2026-04-18 21:36:17'),
(8, 1, '5.3.1', 'Awards/medals won by students', 'Number of awards/medals won by students for outstanding performance in sports/cultural activities at  inter-university/state/national/international events (award for a team event should be counted as one) during the year', '2026-04-18 21:38:46'),
(9, 1, '5.3.3', 'events / competitions organised by the institution', 'Number of sports and cultural events / competitions organised by the institution during the year ', '2026-04-18 21:39:49'),
(10, 1, '5.4.1', 'Alumni contributes', 'The Alumni Association/Chapters (registered and functional) contributes significantly to the development of the institution  during the year ', '2026-04-18 21:43:03'),
(11, 2, '6.3.3', 'Development / administrative training  Programmes organized by the institution', 'Number of professional development / administrative training  Programmes organized by the institution for teaching and non teaching staff during the year', '2026-04-18 21:52:19'),
(12, 2, '6.3.4', ' Faculty Development Programmes', 'Total number of teachers undergoing online/ face-to-face  Faculty Development Programmes (FDP)during  the year\r\n(Professional Development Programmes, Orientation / Induction Programmes, Refresher Course, Short Term Course ) ', '2026-04-18 21:58:10'),
(13, 2, '6.5.2', 'Quality assurance', 'Institution  has adopted the following for  Quality assurance\r\n1. Academic Administrative Audit (AAA) and follow up action taken\r\n2.Confernces, Seminars, Workshops on quality conducted \r\n3. Collaborative quality initiatives with other institution(s)\r\n4.Orientation programme on quality issues for teachers and students\r\n5. Participation in NIRF\r\n6.Any other quality audit recognized by state, national or international agencies (ISO Certification, NBA)     \r\n', '2026-04-18 22:02:33'),
(14, 2, '3.4.7', 'Participation in Seminars/Conference', 'Faculty participation in Seminars/Conferences and Symposia during the year :', '2026-04-18 22:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Message` text NOT NULL,
  `IsRead` tinyint(1) DEFAULT 0,
  `CreatedAt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `systemsettings`
--

CREATE TABLE `systemsettings` (
  `Id` int(11) NOT NULL,
  `SystemName` varchar(100) NOT NULL,
  `SystemLogo` varchar(255) DEFAULT NULL,
  `InstitutionName` varchar(255) DEFAULT NULL,
  `UpdatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `systemsettings`
--

INSERT INTO `systemsettings` (`Id`, `SystemName`, `SystemLogo`, `InstitutionName`, `UpdatedAt`) VALUES
(1, 'NAAC', '/images/system-logo-639127317163954223.png', 'National Assessment and Accreditation Council', '2026-04-25 16:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `tablecolumns`
--

CREATE TABLE `tablecolumns` (
  `Id` int(11) NOT NULL,
  `TableId` int(11) NOT NULL,
  `ParentColumnId` int(11) DEFAULT NULL,
  `HeaderName` varchar(255) NOT NULL,
  `Description` varchar(250) DEFAULT NULL,
  `DataType` varchar(50) DEFAULT 'Text',
  `DropdownOptions` text DEFAULT NULL,
  `DependsOnColumnId` int(11) DEFAULT NULL,
  `DependsOnValue` varchar(100) DEFAULT NULL,
  `Order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tablecolumns`
--

INSERT INTO `tablecolumns` (`Id`, `TableId`, `ParentColumnId`, `HeaderName`, `Description`, `DataType`, `DropdownOptions`, `DependsOnColumnId`, `DependsOnValue`, `Order`) VALUES
(1, 1, NULL, 'Inst./Dept.', NULL, 'Text', NULL, NULL, NULL, 0),
(2, 1, NULL, 'Year', NULL, 'Year', NULL, NULL, NULL, 0),
(3, 1, NULL, 'Name of the scheme', NULL, 'Dropdown', 'Goverment, Institutional, NGO', NULL, NULL, 0),
(4, 1, NULL, 'Link to relevant document', NULL, 'File', NULL, NULL, NULL, 0),
(5, 1, 3, 'Number of Students', NULL, 'Number', NULL, NULL, 'Goverment', 0),
(6, 1, 3, 'Amount', NULL, 'Number', NULL, NULL, 'Goverment', 0),
(7, 1, 3, 'Number of Students', NULL, 'Number', NULL, NULL, 'Institutional', 0),
(8, 1, 3, 'Amount', NULL, 'Number', NULL, NULL, 'Institutional', 0),
(9, 1, 3, 'Name of Agency / NGO', NULL, 'Text', NULL, NULL, 'NGO', 0),
(10, 1, 3, 'Number of Students', NULL, 'Number', NULL, NULL, 'NGO', 0),
(11, 1, 3, 'Amount', NULL, 'Number', NULL, NULL, 'NGO', 0),
(12, 2, NULL, 'Inst./Dept.', NULL, 'Text', NULL, NULL, NULL, 0),
(13, 2, NULL, 'Year', NULL, 'Year', NULL, NULL, NULL, 0),
(14, 2, NULL, 'Name of Activity', NULL, 'Dropdown', 'Competitive Exam guidance, Career counselling guidance', NULL, NULL, 0),
(15, 2, NULL, 'Number of students placed through campus', NULL, 'Number', NULL, NULL, NULL, 0),
(16, 2, NULL, 'Link of relevant document', NULL, 'File', NULL, NULL, NULL, 0),
(17, 2, 14, 'Name of Activity', NULL, 'Text', NULL, NULL, 'Competitive Exam guidance', 0),
(18, 2, 14, 'Number of students attended / participate', NULL, 'Number', NULL, NULL, 'Competitive Exam guidance', 0),
(19, 2, 14, 'Number of students attended / participate', NULL, 'Number', NULL, NULL, 'Career counselling guidance', 0),
(20, 2, 14, 'Details of career counselling', NULL, 'Text', NULL, NULL, 'Career counselling guidance', 0),
(21, 3, NULL, 'Inst./Dept.', NULL, 'Text', NULL, NULL, NULL, 0),
(22, 3, NULL, 'Name of capability enhancement program', NULL, 'Dropdown', 'Soft-skill training, communication skill workshop, yoga session, awareness seminar, other', NULL, NULL, 0),
(23, 3, NULL, 'Date of implementation', NULL, 'Date', NULL, NULL, NULL, 0),
(24, 3, NULL, 'Number of student enrolled', NULL, 'Number', NULL, NULL, NULL, 0),
(25, 3, NULL, 'Name of the agencies / consultants involved with contact details(if any)', NULL, 'Text', NULL, NULL, NULL, 0),
(31, 5, NULL, 'Inst./Dept.', NULL, 'Text', NULL, NULL, NULL, 0),
(32, 5, NULL, 'Year', NULL, 'Year', NULL, NULL, NULL, 0),
(33, 5, NULL, 'Registration number / roll number for the exam', NULL, 'Text', NULL, NULL, NULL, 0),
(34, 5, NULL, 'Name of student selected/qualified', NULL, 'Text', NULL, NULL, NULL, 0),
(35, 5, NULL, 'Exam categories', NULL, 'Dropdown', 'NET, SLET, GATE, GMAT, CAT, JAM, IELTS, TOEFL, Civil Services, JRF, CMAT, Stat Government Exams, Other Exams, ', NULL, NULL, 0),
(36, 5, 35, 'Specify name of the exam', NULL, 'Text', NULL, NULL, 'Other Exams', 0),
(37, 6, NULL, 'Inst./Dept.', NULL, 'Text', NULL, NULL, NULL, 0),
(38, 6, NULL, 'Year', NULL, 'Year', NULL, NULL, NULL, 0),
(39, 6, NULL, 'Name of student placed and contact details', NULL, 'Text', NULL, NULL, NULL, 0),
(40, 6, NULL, 'Program graduated from ', NULL, 'Text', NULL, NULL, NULL, 0),
(41, 6, NULL, 'Name of Employer with contact details', 'Company name + contact info', 'Text', NULL, NULL, NULL, 0),
(42, 6, NULL, 'Pay package at appointment', 'salary offered', 'Number', NULL, NULL, NULL, 0),
(43, 7, NULL, 'Inst./Dept.', NULL, 'Text', NULL, NULL, NULL, 0),
(44, 7, NULL, 'Name of student enrolling into higher education', NULL, 'Text', NULL, NULL, NULL, 0),
(45, 7, NULL, 'Program graduated from  ', NULL, 'Dropdown', 'Bsc(IT), MSC(IT)', NULL, NULL, 0),
(46, 7, NULL, 'Name of institution joined', 'college/uni where student got addmission ', 'Text', NULL, NULL, NULL, 0),
(47, 7, NULL, 'Name of programme admitted to', 'course selected in higher education', 'Text', NULL, NULL, NULL, 0),
(48, 8, NULL, 'Inst./Dept.', NULL, 'Text', NULL, NULL, NULL, 0),
(49, 8, NULL, 'Year', NULL, 'Year', NULL, NULL, NULL, 0),
(50, 8, NULL, 'Name of award/medal', NULL, 'Text', NULL, NULL, NULL, 0),
(51, 8, NULL, 'Team/Individual', NULL, 'Dropdown', 'Team, Individual', NULL, NULL, 0),
(52, 8, NULL, 'Level of competition ', NULL, 'Dropdown', 'Inter-University, State, National, International', NULL, NULL, 0),
(53, 8, NULL, 'Name of event', NULL, 'Text', NULL, NULL, NULL, 0),
(54, 8, NULL, 'Name of student', NULL, 'Text', NULL, NULL, NULL, 0),
(55, 9, NULL, 'Inst./Dept.', NULL, 'Text', NULL, NULL, NULL, 0),
(56, 9, NULL, 'Date of event/competition', NULL, 'Date', NULL, NULL, NULL, 0),
(57, 9, NULL, 'Name of the event/competition', NULL, 'Text', NULL, NULL, NULL, 0),
(58, 10, NULL, 'Inst./Dept.', NULL, 'Text', NULL, NULL, NULL, 0),
(59, 10, NULL, 'Date of event', NULL, 'Date', NULL, NULL, NULL, 0),
(60, 10, NULL, 'Alumni Contribution Details of it', NULL, 'Dropdown', 'Expert Session, Industrial Visit Support, Placement Assistance, Member of BoS(Board of Studies), others', NULL, NULL, 0),
(61, 11, NULL, 'Inst./Dept.', NULL, 'Text', NULL, NULL, NULL, 0),
(62, 11, NULL, 'Dates(From)', NULL, 'Date', NULL, NULL, NULL, 0),
(63, 11, NULL, 'Date(To)', NULL, 'Date', NULL, NULL, NULL, 0),
(64, 11, NULL, 'Program Types', NULL, 'Dropdown', 'Professional Development(Teaching staff), Administrative Training(Non-Teaching staff)', NULL, NULL, 0),
(65, 11, NULL, 'No of participants', NULL, 'Number', NULL, NULL, NULL, 0),
(66, 11, 64, 'Title', NULL, 'Text', NULL, NULL, 'Professional Development(Teaching staff)', 0),
(67, 11, 64, 'Title', NULL, 'Text', NULL, NULL, 'Administrative Training(Non-Teaching staff)', 0),
(68, 12, NULL, 'Inst./Dept.', NULL, 'Text', NULL, NULL, NULL, 0),
(69, 12, NULL, 'Name of teacher who attended', 'faculty name', 'Text', NULL, NULL, NULL, 0),
(70, 12, NULL, 'Program Type', NULL, 'Dropdown', 'FDP, Orientation/Induction Program, Refresher Course, Short Term course, Other', NULL, NULL, 0),
(71, 12, NULL, 'Title of program', 'AI&ML Learning FDP', 'Text', NULL, NULL, NULL, 0),
(72, 12, NULL, 'Date(From)', NULL, 'Date', NULL, NULL, NULL, 0),
(73, 12, NULL, 'Date(To)', NULL, 'Date', NULL, NULL, NULL, 0),
(74, 12, 70, 'Program Name', NULL, 'Text', NULL, NULL, 'Other', 0),
(75, 13, NULL, 'Inst./Dept.', NULL, 'Text', NULL, NULL, NULL, 0),
(76, 13, NULL, 'Year', NULL, 'Year', NULL, NULL, NULL, 0),
(77, 13, NULL, 'Quality Initiative Type', NULL, 'Dropdown', 'Conferences/seminars/workshop, academic & administrative audit - AAA, NIRF participation, ISO Certificate, NBA/Other certification, Collaborative Quality Initiatives, Orientation Programs on quality issues', NULL, NULL, 0),
(78, 13, NULL, 'Title/Name of Activity', NULL, 'Text', NULL, NULL, NULL, 0),
(79, 13, NULL, 'Date(From', NULL, 'Date', NULL, NULL, NULL, 0),
(80, 13, NULL, 'Date(To)', NULL, 'Date', NULL, NULL, NULL, 0),
(81, 13, NULL, 'Description/Details', NULL, 'Text', NULL, NULL, NULL, 0),
(82, 13, NULL, 'Status', NULL, 'Dropdown', 'Completed, ongoing, certified', NULL, NULL, 0),
(83, 14, NULL, 'Inst./Dept.', NULL, 'Text', NULL, NULL, NULL, 0),
(84, 14, NULL, 'Name of faculty', NULL, 'Text', NULL, NULL, NULL, 0),
(85, 14, NULL, 'Nature of participation', NULL, 'Dropdown', 'Attended, Organizer, presented paper, resource person, session chair', NULL, NULL, 0),
(86, 14, NULL, 'Category of event', NULL, 'Dropdown', 'Conference, FDP, Webinar, Wokshop, Seminar, Online course, Refresher course', NULL, NULL, 0),
(87, 14, NULL, 'Name of Event', NULL, 'Text', NULL, NULL, NULL, 0),
(88, 14, NULL, 'Level', NULL, 'Dropdown', 'International, National, State, University, Local', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `userotps`
--

CREATE TABLE `userotps` (
  `Id` int(11) NOT NULL,
  `Email` longtext NOT NULL,
  `OTPCode` longtext NOT NULL,
  `ExpiryTime` datetime(6) NOT NULL,
  `IsUsed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userotps`
--

INSERT INTO `userotps` (`Id`, `Email`, `OTPCode`, `ExpiryTime`, `IsUsed`) VALUES
(1, 'hardimangukiya070@gmail.com', '167637', '2026-04-14 17:20:28.930490', 1),
(2, 'darshkalathiya3442@gmail.com', '325166', '2026-04-15 13:23:23.845896', 0),
(3, 'darshkalathiya3442@gmail.com', '499615', '2026-04-15 13:23:39.684424', 1),
(4, 'darshkalathiya3442@gmail.com', '796635', '2026-04-15 16:36:07.989273', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `FullName` longtext NOT NULL,
  `Email` varchar(255) NOT NULL,
  `MobileNumber` longtext NOT NULL,
  `PasswordHash` longtext NOT NULL,
  `CollegeName` longtext NOT NULL,
  `UniversityName` longtext NOT NULL,
  `CreatedAt` datetime(6) NOT NULL,
  `Role` longtext NOT NULL,
  `IsEmailVerified` tinyint(1) NOT NULL,
  `ProfilePicturePath` text DEFAULT NULL,
  `AddedByUserId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `FullName`, `Email`, `MobileNumber`, `PasswordHash`, `CollegeName`, `UniversityName`, `CreatedAt`, `Role`, `IsEmailVerified`, `ProfilePicturePath`, `AddedByUserId`) VALUES
(1, 'System Administrator', 'admin@gmail.com', '9999999999', '$2a$11$2d7NcQoXDDsBf1BpUhuH5OD6EDwycurcQ/5XBA5VX0h0HF6YZ4Eb2', 'NAAC Central', 'National University', '2026-01-01 00:00:00.000000', 'Admin', 1, '/uploads/profiles/profile_1_639118039978414506.webp', NULL),
(3, 'Hardi Mangukiya', 'hardimangukiya070@gmail.com', '7894561230', '$2a$11$2LMXj4qNG0pl5/dHek3TCuiuyVDkY2pOrMVgrCB/Br3szJn2XDyE2', 'BMIIT', 'Uka tarsadiya university', '2026-04-14 17:10:48.988516', 'HOD', 1, '/uploads/profiles/profile_3_639118035007375117.webp', NULL),
(5, 'Aary Mangukiya', '23bmiit039@gmail.com', '89745698567', '$2a$11$BjtkMWVJY0VAN8/.X.PH2uMfKaIMac8LlWLrLyCuJsmZVo6IYYi0O', 'BMIIT', 'Uka tarsadiya university', '2026-04-15 11:39:27.509914', 'Faculty', 1, '/uploads/profiles/profile_5_639118702483607533.webp', 3),
(6, 'Darsh Kalathiya', 'darshkalathiya3442@gmail.com', '9056895689', '$2a$11$JSu0IxuMotu7AH.3TV/LdO9Ap59mtZyo8GH1lpl7YMj0scZxeXo4u', 'BMIIT', 'Uka tarsadiya university', '2026-04-15 12:06:59.694526', 'Coordinator', 1, '/uploads/profiles/profile_6_639118715502839898.jpg', 3),
(7, 'Khushi Mangukiya', 'hardimangukiya@gmail.com', '9999999999', '$2a$11$X6NcsuYwitTqfEyoauB9S.nAx64V.4cc030sdyv4EnpaGSMr5yNcO', 'BMIIT', 'Uka tarsadiya university', '2026-04-15 12:57:59.704603', 'Faculty', 1, '/uploads/profiles/profile_7_639118745531414737.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20260414163124_AddAdminSeed', '9.0.0'),
('20260415113259_UpdateUserModelForHODManagement', '9.0.0'),
('20260415115140_RemoveDepartmentColumn', '9.0.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activitylogs`
--
ALTER TABLE `activitylogs`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `criteriaassignments`
--
ALTER TABLE `criteriaassignments`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CriteriaId` (`CriteriaId`),
  ADD KEY `FacultyId` (`FacultyId`);

--
-- Indexes for table `datarecords`
--
ALTER TABLE `datarecords`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `datarecords_ibfk_1` (`TableId`),
  ADD KEY `datarecords_ibfk_2` (`FacultyId`);

--
-- Indexes for table `naactables`
--
ALTER TABLE `naactables`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `naactables_ibfk_1` (`CriteriaId`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `notifications_ibfk_1` (`UserId`);

--
-- Indexes for table `systemsettings`
--
ALTER TABLE `systemsettings`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tablecolumns`
--
ALTER TABLE `tablecolumns`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `tablecolumns_ibfk_1` (`TableId`),
  ADD KEY `FK_tablecolumns_Parent` (`ParentColumnId`),
  ADD KEY `FK_tablecolumns_Depends` (`DependsOnColumnId`);

--
-- Indexes for table `userotps`
--
ALTER TABLE `userotps`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `IX_Users_Email` (`Email`);

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activitylogs`
--
ALTER TABLE `activitylogs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `criteriaassignments`
--
ALTER TABLE `criteriaassignments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `datarecords`
--
ALTER TABLE `datarecords`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `naactables`
--
ALTER TABLE `naactables`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `systemsettings`
--
ALTER TABLE `systemsettings`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tablecolumns`
--
ALTER TABLE `tablecolumns`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `userotps`
--
ALTER TABLE `userotps`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `criteriaassignments`
--
ALTER TABLE `criteriaassignments`
  ADD CONSTRAINT `criteriaassignments_ibfk_1` FOREIGN KEY (`CriteriaId`) REFERENCES `criteria` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `criteriaassignments_ibfk_2` FOREIGN KEY (`FacultyId`) REFERENCES `users` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `datarecords`
--
ALTER TABLE `datarecords`
  ADD CONSTRAINT `datarecords_ibfk_1` FOREIGN KEY (`TableId`) REFERENCES `naactables` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `datarecords_ibfk_2` FOREIGN KEY (`FacultyId`) REFERENCES `users` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `naactables`
--
ALTER TABLE `naactables`
  ADD CONSTRAINT `naactables_ibfk_1` FOREIGN KEY (`CriteriaId`) REFERENCES `criteria` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `tablecolumns`
--
ALTER TABLE `tablecolumns`
  ADD CONSTRAINT `FK_tablecolumns_Depends` FOREIGN KEY (`DependsOnColumnId`) REFERENCES `tablecolumns` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_tablecolumns_Parent` FOREIGN KEY (`ParentColumnId`) REFERENCES `tablecolumns` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tablecolumns_ibfk_1` FOREIGN KEY (`TableId`) REFERENCES `naactables` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
