-- phpMyAdmin SQL Dump
-- version 4.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 06, 2015 at 05:14 AM
-- Server version: 5.5.41
-- PHP Version: 5.6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ocm_basic`
--

-- --------------------------------------------------------

--
-- Table structure for table `advance`
--

CREATE TABLE IF NOT EXISTS `advance` (
`id` int(11) NOT NULL,
  `exp_id` int(11) NOT NULL,
  `dep_id` int(11) NOT NULL,
  `year` varchar(10) NOT NULL,
  `bh_name` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `drawn_on` varchar(15) NOT NULL,
  `settled_on` varchar(15) NOT NULL,
  `status_adv` varchar(15) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `source_ip` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `advance_settle`
--

CREATE TABLE IF NOT EXISTS `advance_settle` (
`id` int(11) NOT NULL,
  `ocr_no` int(11) DEFAULT NULL,
  `bill_no` varchar(50) DEFAULT NULL,
  `bill_diary` varchar(50) DEFAULT NULL,
  `bill_date` varchar(15) DEFAULT NULL,
  `bill_amount` varchar(20) DEFAULT NULL,
  `vendor_details` text,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advance_settle`
--

INSERT INTO `advance_settle` (`id`, `ocr_no`, `bill_no`, `bill_diary`, `bill_date`, `bill_amount`, `vendor_details`, `remarks`) VALUES
(60, 98, '121', '4545', '30-01-2015', '122', 'gfgfh', 'ggh'),
(61, 103, '4554', '545', '08-01-2015', '225', 'amazon', 'flipkart ni mila'),
(62, 103, '5656', '1212', '22-01-2015', '275', 'ebay', 'bekaar nikla');

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE IF NOT EXISTS `budget` (
`id` int(11) NOT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `date_order` varchar(12) DEFAULT NULL,
  `file_ref_no` varchar(50) DEFAULT NULL,
  `budget_head` varchar(30) DEFAULT NULL,
  `bh_fund` varchar(15) DEFAULT NULL,
  `deduction` int(5) DEFAULT NULL,
  `bh_netfund` varchar(15) DEFAULT NULL,
  `bh_desc` text,
  `user_id` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `source_ip` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`id`, `dep_id`, `year`, `date_order`, `file_ref_no`, `budget_head`, `bh_fund`, `deduction`, `bh_netfund`, `bh_desc`, `user_id`, `timestamp`, `source_ip`) VALUES
(259, 10, '2014-15', 'Jan 5, 2015', 'lp45', 'Office-Expense', '3000', 1, '2970.00', '', 1, '2015-01-22 10:35:09', '127.0.0.1'),
(260, 10, '2014-15', 'Jan 5, 2015', 'lp45', 'Miscellaneous', '3000', 4, '2880.00', '', 1, '2015-01-22 10:35:09', '127.0.0.1'),
(261, 10, '2014-15', 'Jan 5, 2015', 'lp45', 'Stationary', '3000', 2, '2940.00', '', 1, '2015-01-22 10:35:09', '127.0.0.1'),
(262, 10, '2014-15', 'Jan 5, 2015', 'lp45', 'man power', '3000', 3, '2910.00', '', 1, '2015-01-22 10:35:10', '127.0.0.1'),
(263, 9, '2014-15', 'Jan 14, 2015', '121', 'Office-Expense', '100000', 1, '99000.00', '', 1, '2015-01-22 12:34:41', '127.0.0.1'),
(264, 9, '2014-15', 'Jan 14, 2015', '121', 'Miscellaneous', '100000', 2, '98000.00', '', 1, '2015-01-22 12:34:41', '127.0.0.1'),
(265, 9, '2014-15', 'Jan 14, 2015', '121', 'Stationary', '100000', 3, '97000.00', '', 1, '2015-01-22 12:34:41', '127.0.0.1'),
(266, 9, '2014-15', 'Jan 14, 2015', '121', 'man power', '150000', 4, '144000.00', '', 1, '2015-01-22 12:34:41', '127.0.0.1'),
(267, 11, '2014-15', '02-02-2015', 'eewq', 'Office-Expense', '100000', 2, '98000.00', 'Description', 1, '2015-02-02 11:02:02', '10.107.107.121'),
(268, 11, '2014-15', '02-02-2015', 'eewq', 'Miscellaneous', '400000', 2, '392000.00', 'Description', 1, '2015-02-02 11:02:02', '10.107.107.121'),
(269, 11, '2014-15', '02-02-2015', 'eewq', 'Stationary', '300000', 2, '294000.00', 'Description', 1, '2015-02-02 11:02:02', '10.107.107.121'),
(270, 11, '2014-15', '02-02-2015', 'eewq', 'man power', '300000', 2, '294000.00', 'Description', 1, '2015-02-02 11:02:02', '10.107.107.121');

-- --------------------------------------------------------

--
-- Table structure for table `budget_heads`
--

CREATE TABLE IF NOT EXISTS `budget_heads` (
`id` int(11) NOT NULL,
  `bh_name` varchar(20) DEFAULT NULL,
  `bh_description` text,
  `source_ip` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `budget_heads`
--

INSERT INTO `budget_heads` (`id`, `bh_name`, `bh_description`, `source_ip`, `user_id`, `timestamp`) VALUES
(1, 'Office-Expense', 'bhfgbifig', '127.0.0.1', 1, '2015-01-05 05:50:29'),
(2, 'Miscellaneous', 'fvbxbfgfn', '127.0.0.1', 1, '2015-01-03 12:40:20'),
(3, 'Stationary', 'fdhfdhfdh', '127.0.0.1', 1, '2015-01-03 12:40:42'),
(4, 'man power', 'man power', '10.107.107.121', 1, '2015-01-21 06:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `budget_head_status`
--

CREATE TABLE IF NOT EXISTS `budget_head_status` (
`id` int(11) NOT NULL,
  `year` varchar(10) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `bh_name` varchar(20) DEFAULT NULL,
  `bh_total_amount` varchar(15) DEFAULT NULL,
  `bh_expend` varchar(15) DEFAULT NULL,
  `bh_balance` varchar(15) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bh_advance` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `budget_head_status`
--

INSERT INTO `budget_head_status` (`id`, `year`, `dep_id`, `bh_name`, `bh_total_amount`, `bh_expend`, `bh_balance`, `timestamp`, `bh_advance`) VALUES
(77, '2014-15', 10, 'Office-Expense', '2970.00', '200', '2770', '2015-01-23 08:44:36', '0'),
(78, '2014-15', 10, 'Miscellaneous', '2880.00', '1055', '1825', '2015-01-29 08:56:25', '0'),
(79, '2014-15', 10, 'Stationary', '2940.00', '1150', '1790', '2015-01-29 08:40:15', '0'),
(80, '2014-15', 10, 'man power', '2910.00', '444', '2466', '2015-01-22 11:28:05', '0'),
(81, '2014-15', 9, 'Office-Expense', '99000.00', '31000', '68000', '2015-02-02 12:52:02', '0'),
(82, '2014-15', 9, 'Miscellaneous', '98000.00', '1001', '96999', '2015-02-02 13:35:09', '0'),
(83, '2014-15', 9, 'Stationary', '97000.00', '1000', '96000', '2015-02-02 13:00:34', '0'),
(84, '2014-15', 9, 'man power', '144000.00', '1000', '143000', '2015-02-02 13:28:30', '0'),
(85, '2014-15', 11, 'Office-Expense', '98000.00', NULL, '98000.00', '2015-02-02 11:02:02', ''),
(86, '2014-15', 11, 'Miscellaneous', '392000.00', NULL, '392000.00', '2015-02-02 11:02:02', ''),
(87, '2014-15', 11, 'Stationary', '294000.00', NULL, '294000.00', '2015-02-02 11:02:02', ''),
(88, '2014-15', 11, 'man power', '294000.00', NULL, '294000.00', '2015-02-02 11:02:02', '');

-- --------------------------------------------------------

--
-- Table structure for table `budget_transfer`
--

CREATE TABLE IF NOT EXISTS `budget_transfer` (
`id` int(11) NOT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `from_bh` varchar(40) DEFAULT NULL,
  `to_bh` varchar(40) DEFAULT NULL,
  `amount` varchar(25) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `source_ip` varchar(20) DEFAULT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE IF NOT EXISTS `cms` (
`id` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `msg` text,
  `status` varchar(20) NOT NULL,
  `tag` varchar(20) NOT NULL,
  `file` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `heading`, `msg`, `status`, `tag`, `file`) VALUES
(2, 'uui', '<p>iiuuiuiuiuuiui</p>', 'publish', 'alerts', ''),
(3, '11', '<p>11</p>', 'none', 'alerts', 'uploads/fac.txt'),
(4, 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cra', '<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sitDuis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit</p>', 'none', 'alerts', ''),
(5, 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cra', '<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sitDuis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sitDuis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sitDuis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sitDuis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit</p>', 'publish', 'alerts', NULL),
(6, 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cra', '<p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit</p>', 'publish', 'alerts', NULL),
(7, 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cra', '', 'publish', 'alerts', NULL),
(9, 'Mar 30, 2012 - I''m wonder how the custom scrollbar on Facebook has been made. ... This link should g', '<p><span class="st"><span class="f">Mar 30, 2012 - </span>I''m wonder how the <em>custom scrollbar</em> on Facebook has been made. ... This link should get you started. Long story short, a <em>custom</em> css-styled div is&nbsp;...</span></p>', 'none', 'alerts', ''),
(10, 'Mar 30, 2012 - I''m wonder how the custom scrollbar on Facebook has been made. ... This link should g', '<p><span class="st"><span class="f">Mar 30, 2012 - </span>I''m wonder how the <em>custom scrollbar</em> on Facebook has been made. ... This link should get you started. Long story short, a <em>custom</em> css-styled div is&nbsp;...</span></p>', 'publish', 'alerts', NULL),
(11, 'HeadingHeadingHeadingHeading', '<pre><code class="language-html" data-lang="html">Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch<br /> Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.<br /> Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft<br /> beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven''t heard of them accusamus labore sustainable VHS.</code></pre>', 'publish', 'notification', ''),
(12, 'try try ', '<ol>\r\n<li>Make sure that you have <a href="http://gruntjs.com/">Grunt</a> installed.</li>\r\n<li>In terminal move to nanoscroller folder and run <code>npm install</code> to install all dependencies.</li>\r\n<li>Make all Javascript changes in Coffeescript file(s), CSS changes in CSS file(s).</li>\r\n<li>run <code>grunt</code> to build nanoScroller</li>\r\n<li>Make sure that all changes are valid and open a pull requ</li>\r\n</ol>', 'publish', 'notification', NULL),
(13, 'Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. ', '<p>&lt;p&gt;Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sitDuis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sitDuis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sitDuis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sitDuis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit&lt;/p&gt;</p>', 'publish', 'notification', NULL),
(14, 'testing testing testing file', '<p>testing testing testing file testing testing testing file testing testing testing file testing testing testing file testing testing testing file testing testing testing file</p>', 'publish', 'notification', 'uploads/fac.txt'),
(15, 'kmkmkmk mkm mkm mkm kmkmkm kmm km m ', '<p>kmkmkmk mkm mkm mkm kmkmkm kmm km m&nbsp; kmkmkmk mkm mkm mkm kmkmkm kmm km m&nbsp; kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m kmkmkmk mkm mkm mkm kmkmkm kmm km m</p>', 'publish', 'notification', 'uploads/essential_snmp_2nd_edition.pdf'),
(16, 'huh huh huhuh huhuh uhuhuh huhuhuh', '<p>huh huh huhuh huhuh uhuhuh huhuhuhhuh huh huhuh huhuh uhuhuh huhuhuhhuh huh huhuh huhuh uhuhuh huhuhuhhuh huh huhuh huhuh uhuhuh huhuhuhhuh huh huhuh huhuh uhuhuh huhuhuhhuh huh huhuh huhuh uhuhuh huhuhuhhuh huh huhuh huhuh uhuhuh huhuhuhhuh huh huhuh huhuh uhuhuh huhuhuhhuh huh huhuh huhuh uhuhuh huhuhuhhuh huh huhuh huhuh uhuhuh huhuhuhhuh huh huhuh huhuh uhuhuh huhuhuhhuh huh huhuh huhuh uhuhuh huhuhuh</p>', 'publish', 'notification', NULL),
(17, 'huh huh huhuh huhuh uhuhuh huhuhuh', '<p>huh huh huhuh huhuh uhuhuh huhuhuhhuh huh huhuh huhuh uhuhuh huhuhuhhuh huh huhuh huhuh uhuhuh huhuhuhhuh huh huhuh huhuh uhuhuh huhuhuh</p>', 'publish', 'notification', NULL),
(18, 'If I could go to college all over again, here''s what I''d do differently', '<p>For the most part, however, I was a very dull student that showed up to class on time, and then went home. I feel like I missed out on some of the standard college-life experiences, and if If I could go back and do it over again, there are so many things I would do differently.</p>', 'publish', 'notification', 'uploads/22pdf.pdf'),
(19, 'India Property     Cuponation     shadicom      follow us:  epaper      india     world     ci', '<p><img src="http://www.hindustantimes.com//images/2015/2/56c464f0-12a9-48da-9ed1-f0b9cac02ac3wallpaper1.jpg" alt="img" width="219" height="124" /></p>\r\n<p>&nbsp;</p>\r\n<p>Various rebel groups in the region have been seeking self-rule or sovereignty, asserting their homelands were historically, culturally and ethnically a part of India. This began with the Naga National Council revolting against the Indian union in 1947.</p>\r\n<p>Subsequent popular movements often echoed the underground ideology. Slogans such as ''Indians go back'' crept into the anti-foreigners Assam agitation from 1979-85 while a drive against non-tribals in Meghalaya was powered</p>\r\n<p>"The BJP''s vision document for the Delhi assembly elections is not surprising. It has reflected a historical truth - that Assam was never a part of India. We consider Indians as foreigners, and by regarding people from the northeast as immigrants, BJP has revealed Indians consider us foreigners too. This justifies our stand," Paresh Barua, chief of the United Liberation Front of Assam (Independence), told media houses from an undisclosed location.</p>\r\n<p>The National Socialist Council of Nagaland (Isak-Muivah), on ceasefire mode since July 1997, did not react. But officials involved in the peace process said the BJP gaffe has somewhat legitimised the outfit''s demand for creation of Greater Nagaland encompassing all Naga-inhabited areas of the northeast and Myanmar.</p>', 'publish', 'notification', 'uploads/22pdf.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
`sno` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`sno`, `name`) VALUES
(1, 'Adult, Continuing Education & Extension'),
(2, 'African Studies'),
(3, 'Anaesthesiology & Critical Care'),
(4, 'Anatomy'),
(5, 'Anthropology'),
(6, 'Applied Sciences & Humanities'),
(7, 'Arabic'),
(8, 'Ayurvedic Medicine'),
(9, 'Bio-Physics'),
(10, 'Biochemistry'),
(11, 'Botany'),
(12, 'Buddhist Studies'),
(13, 'Business Economics'),
(14, 'Business Management & Industrial Administration'),
(15, 'Chemistry'),
(16, 'Civil Engineering'),
(17, 'Commerce'),
(18, 'Community Medicine'),
(19, 'Computer Engineering'),
(20, 'Computer Science'),
(21, 'Dental Sciences '),
(22, 'Dermatology & Venereology'),
(23, 'Distance & Continuing Education'),
(24, 'East Asian Studies'),
(25, 'Economics'),
(26, 'Electrical Engineering'),
(27, 'Electronics & Communication Engineering'),
(28, 'Electronics'),
(29, 'English'),
(30, 'Environmental Studies'),
(31, 'Financial Studies'),
(32, 'Fine Arts'),
(33, 'Forensic Medicine'),
(34, 'Genetics'),
(35, 'Geography'),
(36, 'Geology'),
(37, 'Germanic & Romance Studies'),
(38, 'Hindi'),
(39, 'History'),
(40, 'Home Science'),
(41, 'Homoeopathic Medicine'),
(42, 'Instrumentation & Control Engineering'),
(43, 'Law'),
(44, 'Library & Information Science'),
(45, 'Linguistics'),
(46, 'Mathematics'),
(47, 'Mechanical Engineering'),
(48, 'Medical Bio-Chemistry'),
(49, 'Medical Microbiology'),
(50, 'Medicine'),
(51, 'Microbiology'),
(52, 'Modern Indian Languages and Literary Studies'),
(53, 'Music'),
(54, 'Nursing'),
(55, 'Obstetrics & Gyanaecology'),
(56, 'Operational Research'),
(57, 'Opthalmology'),
(58, 'Orthopaedics'),
(59, 'Otolaryngology'),
(60, 'Paediatrics'),
(61, 'Persian'),
(62, 'Pharmacology'),
(63, 'Pharmacy'),
(64, 'Philosophy'),
(65, 'Physical Education & Sports Sciences'),
(66, 'Physics'),
(67, 'Physiology'),
(68, 'Plant Molecular Biology & Biotechnology'),
(69, 'Political Science'),
(70, 'Production & Industrial Engineering'),
(71, 'Psychiatry'),
(72, 'Psychology'),
(73, 'Pulmonary Medicine'),
(74, 'Punjabi'),
(75, 'Radio Therapy'),
(76, 'Radiology, Radio-diagnosis & Radiation Medicine'),
(77, 'Sanskrit'),
(78, 'Slavonic & Finno-Ugrian Studies'),
(79, 'Social Work'),
(80, 'Sociology'),
(81, 'Statistics'),
(82, 'Surgery'),
(83, 'Tuberculosis & Respiratory Disease'),
(84, 'Unani Medicine'),
(85, 'Urdu'),
(86, 'Zoology'),
(87, 'INSTITUTE OF INFORMATICS AND COMMUNICATION'),
(89, 'Cluster Innovation Centre'),
(90, 'Dr. B.R. Ambedkar Centre for Biomedical Research'),
(91, 'Education'),
(92, 'Pathology'),
(93, 'Delhi School of Economics'),
(94, 'School of Environmental Studies'),
(95, 'Management Studies'),
(96, 'Nuclear Science & Technology'),
(97, 'Chemical Synthesis and Process Technologies'),
(98, 'Nanoscience & Nanotechnology');

-- --------------------------------------------------------

--
-- Table structure for table `dept_details`
--

CREATE TABLE IF NOT EXISTS `dept_details` (
`id` int(11) NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `dep_name` varchar(100) DEFAULT NULL,
  `dep_email` varchar(80) DEFAULT NULL,
  `dep_phone` varchar(20) DEFAULT NULL,
  `dep_ext` varchar(20) DEFAULT NULL,
  `dep_fax` varchar(30) DEFAULT NULL,
  `dep_hod` varchar(50) DEFAULT NULL,
  `profile` text,
  `dep_address_line1` varchar(255) DEFAULT NULL,
  `dep_city` varchar(50) DEFAULT NULL,
  `dep_pin` varchar(10) DEFAULT NULL,
  `dep_state` varchar(25) DEFAULT NULL,
  `dep_year` varchar(10) DEFAULT NULL,
  `dep_hod_photo` varchar(20) DEFAULT NULL,
  `dep_logo` varchar(20) DEFAULT NULL,
  `dep_website` varchar(50) DEFAULT NULL,
  `dep_bulletin` varchar(20) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept_details`
--

INSERT INTO `dept_details` (`id`, `dept_id`, `dep_name`, `dep_email`, `dep_phone`, `dep_ext`, `dep_fax`, `dep_hod`, `profile`, `dep_address_line1`, `dep_city`, `dep_pin`, `dep_state`, `dep_year`, `dep_hod_photo`, `dep_logo`, `dep_website`, `dep_bulletin`, `ip`, `timestamp`) VALUES
(7, 10, 'INSTITUTE OF INFORMATICS AND COMMUNICATION', '199118dia@gmail.com', '', '', '', 'Dr. M.K. Das', '', '', '', '', '', '1997', 'uploads/hod10.jpg', 'uploads/logo10.jpeg', '', '', '10.107.106.122', '2015-01-23 09:03:17'),
(8, 9, 'Electronics', 'nitish.kumar@iic.ac.in', '', '', '', 'A.K.', '', '', '', '', '', '', 'uploads/hod9.jpg', 'uploads/logo9.jpg', '', '', '10.107.107.121', '2015-01-21 10:28:46'),
(9, 11, 'Botany', 'ankurgarg36@gmail.com', '12345678955555', '24424564', '54654654', 'Test', '<p><strong>??????? ?????? ??? 38, ???? ??? ?? 17, ???? ??? ???? 5 ???? ?? ????????? ?? ???? ?? ??? ?????, ??? ?? ??? ?????? ?? ???? ????? ?? ???????? ???? 2 ?? ?? ???? ?? ?? ???? ??? ???? ?? ????? ?? ???? ???? ?????? ???? ????? ??? ??????? ???? ????? ??? ????? ?? ??????? ?????? ???? ?????? ?????? ??????? ???????? ???, ?? ??? ?? ?? ?? ??? ????? ???? ??? ??? ?? ?? 38 ???? ??? ??? ?? ?? ??? ???? <br /><br /> ???? ?????? ?????????? ?? ?????? ??? ????? ??? ???? ??? ?????? ??????? ?? ???? ?? ?? ???? 7 ????? ??? ?????? ?? ??? ????????? ??, ???? ?????? ?? ???? ???? ?? ??????? ?? ?????, ''?? ????? ???? ??? ??? ????-???? ??????? ??? ?? ?? ?? ?? ?? ??? ??? ?? ?????? ?? ?? ???? ????? ??, ?? ??? ?????? ?? ?? ?? ?????????? ???? ???? ???'' ???????? ??? ?? ??????? ?????? ??????? ?? ????? ??? ????? ?? ??? ??? ?? ????????? ?? ????? ????? ???? ????? ??? ???? ???? ???????? ??? ????????? ??? ?? ?? ???, ?????? ?????? ?? ???-???? ?????????? ???? ??? ??? ???? ?????, ?????? ????? ?? ????? ?????? ????? ?? ???? ?? ???? ??????? ??? ????? ????&nbsp;</strong></p>', 'Delhi', 'Delhi', '', 'Delhi', '1978', '', '', '', '', '10.107.15.21', '2015-01-21 05:54:42'),
(14, 12, 'Adult, Continuing Education & Extension', 'mac@mailcatch.com', '111', '1111', '1111', 'aaa', '<p>wqwqwqwqwqw</p>\r\n<p>sdsdsd</p>\r\n<p>dsdsdsdsd</p>', '1111', '1111', '111111', '2212121', '1970', 'uploads/hod12.jpg', 'uploads/logo12.png', 'zzzxxzz', 'uploads/bull12.pdf', '10.107.107.121', '2015-01-21 10:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `expenditure_tbl`
--

CREATE TABLE IF NOT EXISTS `expenditure_tbl` (
`id` int(11) NOT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `finance_year` varchar(10) DEFAULT NULL,
  `bh_name` varchar(20) DEFAULT NULL,
  `bill_amount` varchar(20) DEFAULT NULL,
  `bill_date` varchar(15) DEFAULT NULL,
  `bill_no` varchar(50) DEFAULT NULL,
  `bill_diary_no` varchar(50) DEFAULT NULL,
  `payment_info` varchar(100) DEFAULT NULL,
  `desc` text,
  `outstnd_adv` varchar(15) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `remark` text,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `source_ip` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `advance_status` varchar(10) NOT NULL,
  `drawn_on` varchar(12) NOT NULL,
  `settled_on` varchar(12) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenditure_tbl`
--

INSERT INTO `expenditure_tbl` (`id`, `dep_id`, `finance_year`, `bh_name`, `bill_amount`, `bill_date`, `bill_no`, `bill_diary_no`, `payment_info`, `desc`, `outstnd_adv`, `status`, `remark`, `timestamp`, `source_ip`, `user_id`, `advance_status`, `drawn_on`, `settled_on`) VALUES
(98, 10, '2014-15', 'Stationary', '222', NULL, NULL, NULL, 'sutta', 'heheheheheh', 'Advance', '0', 'maje mar ja ', '2015-01-29 07:36:31', '10.107.107.121', 1, '1', '29-01-2015', '29-01-15'),
(99, 10, '2014-15', 'Office-Expense', '145', '27-01-2015', '121', 'qw/45', NULL, 'Books', 'Expenditure', '0', NULL, '2015-01-29 08:39:14', '127.0.0.1', 10, '1', '', ''),
(100, 10, '2014-15', 'Miscellaneous', '88', '28-01-2015', '56', 'df/98', NULL, 'drinks', 'Expenditure', '3', 'sai se check kar', '2015-01-29 08:51:44', '10.107.107.121', 1, '1', '', ''),
(101, 10, '2014-15', 'Stationary', '150', '30-01-2015', '45454', '676/jh', NULL, 'Pens and Note Books', 'Expenditure', '1', 'approved on date   ... ok', '2015-01-29 08:40:15', '10.107.107.121', 1, '1', '', ''),
(102, 10, '2014-15', 'Office-Expense', '100', NULL, NULL, NULL, 'new mobile', '', 'Advance', '0', NULL, '2015-01-29 08:52:41', '127.0.0.1', 10, '0', '29-01-2015', ''),
(103, 10, '2014-15', 'Miscellaneous', '500', NULL, NULL, NULL, 'new bag', 'from amazon', 'Advance', '1', 'check no bla bla ....', '2015-01-29 08:56:25', '10.107.107.121', 1, '1', '29-01-2015', '29-01-15'),
(104, 11, '2014-15', 'Office-Expense', '1133', '02-02-2015', '424', '423432', NULL, 'DescriptionDescription', 'Expenditure', '0', NULL, '2015-02-02 11:10:37', '10.107.107.121', 11, '1', '', ''),
(105, 11, '2014-15', 'Miscellaneous', '4444', '05-03-2015', '33', '323123', NULL, 'DescriptionDesc', 'Expenditure', '0', NULL, '2015-02-02 11:10:37', '10.107.107.121', 11, '1', '', ''),
(106, 11, '2014-15', 'Stationary', '7777', '15-04-2015', 'ffds', 'fdds', NULL, 'DescriptionDesc', 'Expenditure', '0', NULL, '2015-02-02 11:10:37', '10.107.107.121', 11, '1', '', ''),
(107, 11, '2014-15', 'Office-Expense', '222', '15-10-2015', 'awd', 'adasd', NULL, '3213', 'Expenditure', '0', NULL, '2015-02-02 11:11:41', '10.107.107.121', 11, '1', '', ''),
(108, 11, '2014-15', 'Miscellaneous', '3322', '17-09-2015', 'das', 'dads', NULL, 'dsd', 'Expenditure', '0', NULL, '2015-02-02 11:11:41', '10.107.107.121', 11, '1', '', ''),
(109, 11, '2014-15', 'Office-Expense', '12213', NULL, NULL, NULL, 'dadas', 'dsadsa', 'Advance', '0', NULL, '2015-02-02 11:12:25', '10.107.107.121', 11, '0', '02-02-2015', ''),
(110, 11, '2014-15', 'man power', '2112', NULL, NULL, NULL, 'dasdsa', 'dsadsa', 'Advance', '0', NULL, '2015-02-02 11:12:25', '10.107.107.121', 11, '0', '02-02-2015', ''),
(111, 11, '2014-15', 'Office-Expense', '4222', NULL, NULL, NULL, 'wewq', 'eqwewq', 'Advance', '0', NULL, '2015-02-02 11:12:58', '10.107.107.121', 11, '0', '02-02-2015', ''),
(112, 11, '2014-15', 'Miscellaneous', '4442', NULL, NULL, NULL, 'dsadas', 'sadas', 'Advance', '0', NULL, '2015-02-02 11:12:58', '10.107.107.121', 11, '0', '02-02-2015', ''),
(113, 9, '2014-15', 'Stationary', '1000', '02-02-2015', 'sad', 'sadsad', NULL, 'dasdsa', 'Expenditure', '1', 'Admin Remark', '2015-02-02 13:00:34', '10.107.107.121', 1, '1', '', ''),
(114, 9, '2014-15', 'man power', '1000', '02-02-2015', '12', '64', 'checked ', 'Description updated', 'Expenditure', '1', 'check the values', '2015-02-02 13:28:30', '10.107.107.121', 1, '1', '', ''),
(115, 9, '2014-15', 'Miscellaneous', '1001', '06-02-2015', '442', '444', '', 'Description', 'Expenditure', '1', 'not accepted', '2015-02-02 13:35:09', '10.107.107.121', 1, '1', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `financial_year_tbl`
--

CREATE TABLE IF NOT EXISTS `financial_year_tbl` (
`id` int(11) NOT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `total_fund` varchar(50) DEFAULT NULL,
  `desc` text,
  `user_id` int(11) DEFAULT NULL,
  `dep_hod` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `source_ip` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `financial_year_tbl`
--

INSERT INTO `financial_year_tbl` (`id`, `dep_id`, `year`, `total_fund`, `desc`, `user_id`, `dep_hod`, `timestamp`, `source_ip`) VALUES
(22, 10, '2014-15', '12000', '', 1, 'Dr. M.K. Das', '2015-01-22 10:34:11', '127.0.0.1'),
(23, 9, '2014-15', '450000', '', 1, 'A.K.', '2015-01-22 12:33:35', '127.0.0.1'),
(24, 11, '2014-15', '1100000', 'DescriptionDescriptionDescription', 1, 'Test', '2015-02-02 11:00:12', '10.107.107.121');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
`id` int(11) NOT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `finance_year` varchar(10) DEFAULT NULL,
  `bh_name` varchar(20) DEFAULT NULL,
  `bill_amount` varchar(20) DEFAULT NULL,
  `bill_date` varchar(15) DEFAULT NULL,
  `bill_no` varchar(50) DEFAULT NULL,
  `bill_diary_no` varchar(50) DEFAULT NULL,
  `payment_info` varchar(100) DEFAULT NULL,
  `desc` text,
  `outstnd_adv` varchar(15) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `remark` text,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `source_ip` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `dep_id`, `finance_year`, `bh_name`, `bill_amount`, `bill_date`, `bill_no`, `bill_diary_no`, `payment_info`, `desc`, `outstnd_adv`, `status`, `remark`, `timestamp`, `source_ip`, `user_id`) VALUES
(79, 10, '2014-15', 'Office-Expense', '120', '', '452', '', '', '', 'advance', '0', NULL, '2015-01-20 07:31:23', '127.0.0.1', 10),
(80, 9, '2014-15', 'Stationary', '12222', 'Jan 20, 2015', '1331', '3213232', 'rwrew', 'rerwwe', 'expenditure', '0', NULL, '2015-01-20 07:31:50', '10.107.107.121', 9),
(81, 10, '2014-15', 'Miscellaneous', '500', 'Jul 15, 2009', '12lk', '856965', 'Test', 'Test', 'expenditure', '0', NULL, '2015-01-20 07:32:10', '127.0.0.1', 10),
(82, 10, '2014-15', 'Office-Expense', '400', '', '', '', 'Test', 'Testvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv', 'expenditure', '0', NULL, '2015-01-20 07:33:00', '127.0.0.1', 10),
(83, 9, '2014-15', 'Miscellaneous', '77777', 'Jan 21, 2015', '2213', '21321', 'hfhgh', 'hfghfjjhjjsssss', 'advance', '0', NULL, '2015-01-20 07:33:12', '10.107.107.121', 9),
(84, 10, '2014-15', 'Stationary', '800', 'Jul 15, 2009', '45454545', '54545454', 'TestTestTest', 'TestTestTestTestTestTest', 'expenditure', '0', NULL, '2015-01-20 07:33:46', '127.0.0.1', 10),
(85, 10, '2014-15', 'Office-Expense', '250', '', '', '', 'TestTestTestTest', 'TestTestTest', 'advance', '0', NULL, '2015-01-20 07:34:29', '127.0.0.1', 10),
(86, 9, '2014-15', 'Stationary', '44444', 'Jan 22, 2015', 'hfgd4535', 'fghfg45456', 'gdf', 'dfgdf', 'expenditure', '0', NULL, '2015-01-20 07:35:05', '10.107.107.121', 9),
(87, 10, '2014-15', 'Miscellaneous', '600', '', '455', '4545', 'qwertyqwertyqwerty', 'qwertyqwertyqwertyqwertyqwertyqwerty', 'expenditure', '0', NULL, '2015-01-20 07:35:55', '127.0.0.1', 10),
(88, 10, '2014-15', 'Stationary', '1515', '', '', '', '', '', 'advance', '0', NULL, '2015-01-20 07:36:30', '127.0.0.1', 10),
(89, 9, '2014-15', 'Office-Expense', '44545', 'Jan 23, 2015', 'gdgfdg4345', 'fdg35435', 'fggg44', 'ffgfggd4435', 'advance', '0', NULL, '2015-01-20 07:36:32', '10.107.107.121', 9),
(90, 10, '2014-15', 'Office-Expense', '120', '', '452', '', '', '', 'advance', '2', '', '2015-01-20 07:38:42', '127.0.0.1', 1),
(91, 9, '2014-15', 'Stationary', '12222', 'Jan 20, 2015', '1331', '3213232', 'rwrew', 'rerwwe', 'expenditure', '3', 'TESTING TESTING TESTING', '2015-01-20 07:39:36', '127.0.0.1', 1),
(92, 9, '2014-15', 'Miscellaneous', '77777', 'Jan 21, 2015', '2213', '21321', 'hfhgh', 'hfghfjjhjjsssss', 'advance', '1', '', '2015-01-20 07:42:05', '127.0.0.1', 1),
(93, 10, '2014-15', 'Miscellaneous', '500', 'Jul 15, 2009', '12lk', '856965', 'Test', 'Test', 'expenditure', '1', '', '2015-01-20 07:42:53', '127.0.0.1', 1),
(94, 9, '2014-15', 'Stationary', '44444', 'Jan 22, 2015', 'hfgd4535', 'fghfg45456', 'gdf', 'dfgdf', 'expenditure', '1', '', '2015-01-20 07:43:38', '127.0.0.1', 1),
(95, 9, '2014-15', 'Miscellaneous', '77777', 'Jan 21, 2015', '2213', '21321', 'hfhgh', 'hfghfjjhjjsssss', 'advance', '0', '', '2015-01-20 07:45:14', '127.0.0.1', 1),
(96, 9, '2014-15', 'Office-Expense', '44545', 'Jan 23, 2015', 'gdgfdg4345', 'fdg35435', 'fggg44', 'ffgfggd4435', 'advance', '1', '', '2015-01-20 07:48:11', '127.0.0.1', 1),
(97, 9, '2014-15', 'Office-Expense', '44545', 'Jan 23, 2015', 'gdgfdg4345', 'fdg35435', 'fggg44', 'ffgfggd4435', 'expenditure', '0', '', '2015-01-20 07:52:16', '10.107.107.121', 9),
(98, 10, '2014-15', 'Office-Expense', '400', '', '', '', 'Test', 'Testvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv', 'expenditure', '1', '', '2015-01-20 08:00:10', '10.107.107.121', 1),
(99, 11, '2014-15', 'Miscellaneous', '1000', 'Jul 7, 2009', '452', '54545454', 'This is the first expenditure', 'test', 'advance', '0', NULL, '2015-01-21 06:10:16', '127.0.0.1', 11),
(100, 11, '2014-15', 'Miscellaneous', '1000', 'Jul 7, 2009', '452', '54545454', 'This is the first expenditure', 'test', 'expenditure', '0', NULL, '2015-01-21 06:34:43', '127.0.0.1', 11),
(101, 11, '2014-15', 'Miscellaneous', '1000', 'Jul 7, 2009', '452', '54545454', 'This is the first expenditure', 'test', 'expenditure', '3', 'returned', '2015-01-21 06:37:11', '10.107.107.121', 1),
(102, 11, '2014-15', 'Miscellaneous', '2000', 'Jul 7, 2009', '452', '54545454', 'This is the first expenditure', 'test', 'expenditure', '0', 'returned', '2015-01-21 06:42:02', '127.0.0.1', 11),
(103, 11, '2014-15', 'Miscellaneous', '2000', 'Jul 7, 2009', '452', '54545454', 'This is the first expenditure', 'test', 'expenditure', '1', 'returned', '2015-01-21 06:42:41', '10.107.107.121', 1),
(104, 11, '2014-15', 'man power', '24500', 'Jan 21, 2015', '452', '54545454', 'Test', 'test', 'expenditure', '0', NULL, '2015-01-21 06:58:31', '127.0.0.1', 11),
(105, 9, '2014-15', 'Office-Expense', '2000', 'Jan 22, 2015', '1111', '232332', 'RemarksRemarksRemarks', 'RemarksRemarksRemarksRemarks', 'Expenditure', '0', NULL, '2015-01-22 05:25:39', '10.107.107.121', 9),
(106, 9, '2014-15', 'Office-Expense', '2000', 'Jan 22, 2015', '1111', '232332', 'RemarksRemarksRemarks', 'RemarksRemarksRemarksRemarks', 'Expenditure', '0', NULL, '2015-01-22 05:39:56', '10.107.107.121', 9),
(107, 9, '2014-15', 'Office-Expense', '2000', 'Jan 22, 2015', '1111', '232332', 'Remarks Remarks Remarks', 'Remarks Remarks Remarks Remarks', 'Expenditure', '0', NULL, '2015-01-22 05:54:19', '127.0.0.1', 9),
(108, 9, '2014-15', 'Office-Expense', '2000', 'Jan 22, 2015', '1111', '232332', 'Remarks Remarks Remarks', 'Remarks Remarks Remarks Remarks', 'Expenditure', '0', '', '2015-01-22 06:02:51', '10.107.107.121', 1),
(109, 9, '2014-15', 'Miscellaneous', '1000', NULL, NULL, NULL, 'Remarks Remarks ', 'Description Description Description', NULL, '0', NULL, '2015-01-22 06:13:00', '10.107.107.121', 9),
(110, 9, '2014-15', 'Miscellaneous', '10000', NULL, NULL, NULL, 'Remarks Remarks', 'Remarks Remarks', 'Advance', '0', NULL, '2015-01-22 06:16:41', '10.107.107.121', 9),
(111, 9, '2014-15', 'Office-Expense', '3300', NULL, NULL, NULL, 'Remarks', 'Remarks Remarks', 'Advance', '0', NULL, '2015-01-22 06:54:08', '10.107.107.121', 9),
(112, 9, '2014-15', 'Office-Expense', '3300', 'Jan 22, 2015', '123123', '3213', 'Remarks', 'Remarks Remarks', 'Advance', '0', NULL, '2015-01-22 07:03:12', '10.107.107.121', 9),
(113, 9, '2014-15', 'Office-Expense', '3300', 'Jan 22, 2015', '123123', '3213', 'Remarks', 'Remarks Remarks', 'Advance', '0', NULL, '2015-01-22 07:32:56', '10.107.107.121', 9),
(114, 9, '2014-15', 'Office-Expense', '3300', 'Jan 22, 2015', '123123', '3213', 'Remarks', 'Remarks Remarks', 'Advance', '0', NULL, '2015-01-22 07:40:17', '10.107.107.121', 9),
(115, 9, '2014-15', 'Office-Expense', '150', NULL, NULL, NULL, 'Remarks', 'RemarksRemarks', 'Advance', '0', NULL, '2015-01-22 07:43:50', '10.107.107.121', 9),
(116, 10, '2014-15', 'Miscellaneous', '100', 'Jan 12, 2015', '', '', '', '', 'Expenditure', '0', NULL, '2015-01-22 10:58:51', '127.0.0.1', 10),
(117, 10, '2014-15', 'man power', '444', NULL, NULL, NULL, 'fdgfg gffg gfg', 'hhf fbhfhbv cfggf cgfgd', 'Advance', '0', NULL, '2015-01-22 11:03:41', '127.0.0.1', 10),
(118, 10, '2014-15', 'Miscellaneous', '455', NULL, NULL, NULL, 'something', 'jdfnjnfvdon', 'Advance', '0', NULL, '2015-01-22 11:04:46', '127.0.0.1', 10),
(119, 10, '2014-15', 'Miscellaneous', '300', 'Jan 13, 2015', '22', '11', 'qwqeew', 'ererwq 4 gf gf gf', 'Expenditure', '0', NULL, '2015-01-22 11:05:28', '127.0.0.1', 10),
(120, 10, '2014-15', 'Miscellaneous', '100', 'Jan 12, 2015', '', '', '', '', 'Expenditure', '1', '', '2015-01-22 11:06:21', '10.107.107.121', 1),
(121, 10, '2014-15', 'Miscellaneous', '100', 'Jan 12, 2015', '', '', '', '', 'Expenditure', '1', '', '2015-01-22 11:08:03', '10.107.107.121', 1),
(122, 10, '2014-15', 'Miscellaneous', '300', 'Jan 13, 2015', '22', '11', 'qwqeew', 'ererwq 4 gf gf gf', 'Expenditure', '2', 'reject ', '2015-01-22 11:08:43', '10.107.107.121', 1),
(123, 10, '2014-15', 'Miscellaneous', '300', 'Jan 13, 2015', '22', '11', 'qwqeew', 'ererwq 4 gf gf gf', 'Expenditure', '3', 'reject ', '2015-01-22 11:09:54', '10.107.107.121', 1),
(124, 10, '2014-15', 'man power', '444', '', '', '', 'fdgfg gffg gfg', 'hhf fbhfhbv cfggf cgfgd', 'Advance', '0', NULL, '2015-01-22 11:24:56', '127.0.0.1', 10),
(125, 10, '2014-15', 'man power', '444', '', '11', '22', 'fdgfg gffg gfg', 'hhf fbhfhbv cfggf cgfgd', 'Advance', '0', NULL, '2015-01-22 11:26:45', '127.0.0.1', 10),
(126, 10, '2014-15', 'man power', '444', '', '11', '22', 'fdgfg gffg gfg', 'hhf fbhfhbv cfggf cgfgd', 'Advance', '1', '', '2015-01-22 11:28:05', '10.107.107.121', 1),
(127, 10, '2014-15', 'Office-Expense', '200', NULL, NULL, NULL, 'test', 'test', 'Advance', '0', NULL, '2015-01-23 05:29:49', '127.0.0.1', 10),
(128, 10, '2014-15', 'Office-Expense', '200', NULL, NULL, NULL, 'test', 'test', 'Advance', '1', 'remark admin ', '2015-01-23 05:33:32', '127.0.0.1', 1),
(129, 10, '2014-15', 'Office-Expense', '200', 'Jan 23, 2015', '1232', 'aawww111221', 'test', 'test', 'Advance', '0', 'remark admin ', '2015-01-23 07:21:22', '127.0.0.1', 10),
(130, 10, '2014-15', 'Office-Expense', '200', 'Jan 23, 2015', '1232', 'aawww111221', 'test', 'test', 'Advance', '1', 'remark admin ', '2015-01-23 07:28:48', '127.0.0.1', 1),
(131, 10, '2014-15', 'Stationary', '1000', NULL, NULL, NULL, 'test', 'test', 'Advance', '0', NULL, '2015-01-23 08:14:51', '127.0.0.1', 10),
(132, 10, '2014-15', 'Stationary', '1000', NULL, NULL, NULL, 'test', 'test', 'Advance', '1', 'check no.', '2015-01-23 08:15:54', '127.0.0.1', 1),
(133, 10, '2014-15', 'Stationary', '1000', 'Jul 1, 2009', 'vccvcvc', 'zzzz', 'test', 'test', 'Advance', '0', 'check no.', '2015-01-23 08:16:57', '127.0.0.1', 10),
(134, 10, '2014-15', 'Stationary', '1000', 'Jul 1, 2009', 'vccvcvc', 'zzzz', 'test', 'test', 'Advance', '0', 'check no.', '2015-01-23 08:31:45', '127.0.0.1', 1),
(135, 10, '2014-15', 'Stationary', '1000', 'Jul 1, 2009', 'vccvcvc', 'zzzz', 'test', 'test', 'Advance', '1', 'check no.', '2015-01-23 08:35:55', '127.0.0.1', 1),
(136, 10, '2014-15', 'Stationary', '1000', 'Jul 1, 2009', 'vccvcvc', 'zzzz', 'test', 'test', 'Advance', '0', 'check no.', '2015-01-23 08:39:40', '127.0.0.1', 10),
(137, 10, '2014-15', 'Stationary', '1000', 'Jul 1, 2009', 'vccvcvc', 'zzzz', 'test', 'test', 'Advance', '1', 'check no.', '2015-01-23 08:42:25', '127.0.0.1', 1),
(138, 10, '2014-15', 'Office-Expense', '200', 'Jan 23, 2015', '1232', 'aawww111221', 'test', 'test', 'Advance', '0', 'remark admin ', '2015-01-23 08:44:06', '127.0.0.1', 10),
(139, 10, '2014-15', 'Office-Expense', '200', 'Jan 23, 2015', '1232', 'aawww111221', 'test', 'test', 'Advance', '1', 'remark admin ', '2015-01-23 08:44:36', '127.0.0.1', 1),
(140, 10, '2014-15', 'Miscellaneous', '455', 'Jan 23, 2015', '122', '21212', 'something', 'jdfnjnfvdon', 'Advance', '0', NULL, '2015-01-23 08:46:24', '127.0.0.1', 10),
(141, 10, '2014-15', 'Miscellaneous', '455', 'Jan 23, 2015', '122', '21212', 'something', 'jdfnjnfvdon', 'Advance', '0', NULL, '2015-01-23 08:47:18', '127.0.0.1', 10),
(142, 10, '2014-15', 'Miscellaneous', '455', 'Jan 23, 2015', '122', '21212', 'something', 'jdfnjnfvdon', 'Advance', '1', '', '2015-01-23 08:52:06', '127.0.0.1', 1),
(143, 10, '2014-15', 'Office-Expense', '300', NULL, NULL, NULL, 'advance for something', 'advance for something', 'Advance', '0', NULL, '2015-01-23 09:41:39', '127.0.0.1', 10),
(144, 10, '2014-15', 'Office-Expense', '300', NULL, NULL, NULL, 'advance for something', 'advance for something', 'Advance', '1', '', '2015-01-23 09:43:36', '127.0.0.1', 1),
(145, 10, '2014-15', 'Office-Expense', '300', NULL, NULL, NULL, 'advance for something', 'advance for something', 'Advance', '0', '', '2015-01-23 12:38:26', '127.0.0.1', 10),
(146, 10, '2014-15', 'Office-Expense', '300', NULL, NULL, NULL, 'advance for something', 'advance for something', 'Advance', '0', '', '2015-01-23 12:38:47', '127.0.0.1', 10),
(147, 10, '2014-15', 'Office-Expense', '300', NULL, NULL, NULL, 'advance for something', 'advance for something', 'Advance', '0', '', '2015-01-23 12:41:37', '127.0.0.1', 10),
(148, 10, '2014-15', 'Office-Expense', '300', NULL, NULL, NULL, 'advance for something', 'advance for something', 'Advance', '0', '', '2015-01-23 12:42:11', '127.0.0.1', 10),
(149, 10, '2014-15', 'Office-Expense', '300', NULL, NULL, NULL, 'advance for something', 'advance for something', 'Advance', '0', '', '2015-01-23 12:58:24', '10.107.107.121', 10),
(150, 10, '2014-15', 'Office-Expense', '300', NULL, NULL, NULL, 'advance for something', 'advance for something', 'Advance', '0', '', '2015-01-24 03:58:48', '127.0.0.1', 10),
(151, 10, '2014-15', 'Office-Expense', '300', NULL, NULL, NULL, 'advance for something', 'advance for something', 'Advance', '0', '', '2015-01-24 04:14:25', '127.0.0.1', 10),
(152, 10, '2014-15', 'Office-Expense', '300', NULL, NULL, NULL, 'advance for something', 'advance for something', 'Advance', '0', '', '2015-01-24 05:01:48', '127.0.0.1', 10),
(153, 10, '2014-15', 'Office-Expense', '300', NULL, NULL, NULL, 'advance for something', 'advance for something', 'Advance', '0', '', '2015-01-24 05:44:26', '127.0.0.1', 10),
(154, 10, '2014-15', 'Office-Expense', '300', NULL, NULL, NULL, 'advance for something', 'advance for something', 'Advance', '0', '', '2015-01-24 06:50:49', '127.0.0.1', 10),
(155, 10, '2014-15', 'Stationary', '451', NULL, NULL, NULL, 'qwerty', 'asdfg', 'Advance', '0', NULL, '2015-01-24 09:54:09', '127.0.0.1', 10),
(156, 10, '2014-15', 'Stationary', '451', NULL, NULL, NULL, 'qwerty', 'asdfg', 'Advance', '1', '', '2015-01-24 09:54:45', '127.0.0.1', 1),
(157, 10, '2014-15', 'Office-Expense', '100', NULL, NULL, NULL, '99', '99', 'Expenditure', '0', NULL, '2015-01-24 12:15:53', '127.0.0.1', 10),
(158, 10, '2014-15', 'Miscellaneous', '66', NULL, NULL, NULL, '66', '66', 'Expenditure', '0', NULL, '2015-01-24 12:19:05', '127.0.0.1', 10),
(159, 10, '2014-15', 'Office-Expense', '11', NULL, NULL, NULL, '44', '4', 'Expenditure', '0', NULL, '2015-01-24 12:20:52', '127.0.0.1', 10),
(160, 10, '2014-15', 'Miscellaneous', '55', NULL, NULL, NULL, '55', 'rr', 'Expenditure', '0', NULL, '2015-01-24 12:33:38', '127.0.0.1', 10),
(161, 10, '2014-15', 'man power', '1000', NULL, NULL, NULL, 'salary', 'salary', 'Expenditure', '0', NULL, '2015-01-24 12:35:35', '127.0.0.1', 10),
(162, 10, '2014-15', 'Miscellaneous', '100', NULL, NULL, NULL, 'eef', 'fesdf', 'Advance', '0', NULL, '2015-01-24 12:52:25', '127.0.0.1', 10),
(163, 10, '2014-15', 'Miscellaneous', '100', NULL, NULL, NULL, 'eef', 'fesdf', 'Advance', '1', '', '2015-01-24 12:52:49', '127.0.0.1', 1),
(164, 9, '2014-15', 'Office-Expense', '19000', NULL, NULL, NULL, 'Remarks', 'xyz', 'Advance', '0', NULL, '2015-01-27 04:59:06', '10.107.107.121', 9),
(165, 9, '2014-15', 'Office-Expense', '19000', NULL, NULL, NULL, 'Remarks', 'xyz', 'Advance', '1', 'check no:123', '2015-01-27 05:00:09', '10.107.107.121', 1),
(166, 9, '2014-15', 'Office-Expense', '12000', NULL, NULL, NULL, '212', 'Description Description', 'Expenditure', '0', NULL, '2015-01-27 05:12:05', '10.107.107.121', 9),
(167, 9, '2014-15', 'Office-Expense', '12000', NULL, NULL, NULL, '212', 'Description Description', 'Expenditure', '2', 'dasadsa', '2015-01-27 05:13:08', '10.107.107.121', 1),
(168, 9, '2014-15', 'Office-Expense', '19000', NULL, NULL, NULL, 'Remarks', 'xyz', 'Advance', '1', 'check no:123', '2015-01-27 05:19:53', '10.107.107.121', 1),
(169, 10, '2014-15', 'Office-Expense', '1221', '1', '1', '1', NULL, '1', 'Expenditure', '0', NULL, '2015-01-27 06:46:43', '10.107.107.121', 10),
(170, 10, '2014-15', 'Office-Expense', '1111', '1', '1', '1', NULL, '1111', 'Expenditure', '0', NULL, '2015-01-27 06:50:08', '10.107.107.121', 10),
(171, 10, '2014-15', 'Office-Expense', '111', '11', '11', '11', NULL, '111', 'Expenditure', '0', NULL, '2015-01-27 06:51:28', '10.107.107.121', 10),
(172, 10, '2014-15', 'Office-Expense', '111', '11', '11', '11', NULL, '111', 'Expenditure', '0', NULL, '2015-01-27 06:52:05', '10.107.107.121', 10),
(173, 10, '2014-15', 'Office-Expense', '111', '11', '11', '11', NULL, '111', 'Expenditure', '0', NULL, '2015-01-27 06:54:03', '10.107.107.121', 10),
(174, 10, '2014-15', 'Office-Expense', '111', '11', '11', '11', NULL, '111', 'Expenditure', '0', NULL, '2015-01-27 06:54:38', '10.107.107.121', 10),
(175, 10, '2014-15', 'Office-Expense', '111', '11', '11', '11', NULL, '111', 'Expenditure', '0', NULL, '2015-01-27 06:55:13', '10.107.107.121', 10),
(176, 10, '2014-15', 'Office-Expense', '111', '11', '11', '11', NULL, '111', 'Expenditure', '0', NULL, '2015-01-27 06:55:43', '10.107.107.121', 10),
(177, 10, '2014-15', 'Office-Expense', '111', '11', '11', '11', NULL, '111', 'Expenditure', '0', NULL, '2015-01-27 06:56:25', '10.107.107.121', 10),
(178, 10, '2014-15', 'Office-Expense', '111', '11', '11', '11', NULL, '111', 'Expenditure', '0', NULL, '2015-01-27 06:56:54', '10.107.107.121', 10),
(179, 10, '2014-15', 'Office-Expense', '111', '11', '11', '11', NULL, '111', 'Expenditure', '0', NULL, '2015-01-27 06:57:38', '10.107.107.121', 10),
(180, 10, '2014-15', 'Office-Expense', '111', '11', '11', '11', NULL, '111', 'Expenditure', '0', NULL, '2015-01-27 06:58:21', '10.107.107.121', 10),
(181, 10, '2014-15', 'Miscellaneous', '21', '21', '11', '21', NULL, '21', 'Expenditure', '0', NULL, '2015-01-27 06:58:21', '10.107.107.121', 10),
(182, 10, '2014-15', 'Office-Expense', '111', '11', '11', '11', NULL, '111', 'Expenditure', '0', NULL, '2015-01-27 06:59:04', '10.107.107.121', 10),
(183, 10, '2014-15', 'Stationary', '777', '34', '53346', '664', NULL, '77', 'Expenditure', '0', NULL, '2015-01-27 07:00:58', '10.107.107.121', 10),
(184, 10, '2014-15', 'Miscellaneous', '33', '33', '33', '33', NULL, '33', 'Expenditure', '0', NULL, '2015-01-27 07:02:09', '127.0.0.1', 10),
(185, 10, '2014-15', 'Office-Expense', '66', '66', '66', '66', NULL, '66', 'Expenditure', '0', NULL, '2015-01-27 07:02:47', '127.0.0.1', 10),
(186, 10, '2014-15', 'man power', '77', '77', '77', '77', NULL, '77', 'Expenditure', '0', NULL, '2015-01-27 07:02:47', '127.0.0.1', 10),
(187, 10, '2014-15', 'Office-Expense', '66', '66', '66', '66', NULL, '66', 'Expenditure', '0', NULL, '2015-01-27 07:03:46', '127.0.0.1', 10),
(188, 10, '2014-15', 'man power', '77', '77', '77', '77', NULL, '77', 'Expenditure', '0', NULL, '2015-01-27 07:03:46', '127.0.0.1', 10),
(189, 10, '2014-15', 'Stationary', '56', '56', '56', '56', NULL, '56', 'Expenditure', '0', NULL, '2015-01-27 07:05:44', '127.0.0.1', 10),
(190, 10, '2014-15', 'man power', '78', '78', '78', '78', NULL, '78', 'Expenditure', '0', NULL, '2015-01-27 07:05:44', '127.0.0.1', 10),
(191, 10, '2014-15', 'Office-Expense', '5', '5959', '5959', '5959', NULL, '59595', 'Expenditure', '0', NULL, '2015-01-27 07:47:37', '127.0.0.1', 10),
(192, 10, '2014-15', 'man power', '3', '2323', '232323', '23232', NULL, '323232', 'Expenditure', '0', NULL, '2015-01-27 07:47:37', '127.0.0.1', 10),
(193, 10, '2014-15', 'man power', '3', '2323', '232323', '23232', '', '323232', 'Expenditure', '0', NULL, '2015-01-27 07:48:27', '127.0.0.1', 10),
(194, 10, '2014-15', 'man power', '1000', NULL, NULL, NULL, 'salary', 'salary', 'Expenditure', '0', NULL, '2015-01-27 08:29:25', '127.0.0.1', 10),
(195, 10, '2014-15', 'man power', '77', '77', '77', '77', '', '77', 'Expenditure', '0', NULL, '2015-01-27 12:02:06', '127.0.0.1', 10),
(196, 10, '2014-15', 'Stationary', '77', NULL, NULL, NULL, 'advance for sandwitch', 'KFC KFC', 'Advance', '0', NULL, '2015-01-29 07:09:57', '10.107.107.121', 10),
(197, 10, '2014-15', 'Stationary', '77', NULL, NULL, NULL, 'advance for sandwitch', 'KFC KFC', 'Advance', '0', NULL, '2015-01-29 07:14:07', '10.107.107.121', 10),
(198, 10, '2014-15', 'Stationary', '77', NULL, NULL, NULL, 'advance for sandwitch', 'KFC KFC', 'Advance', '0', NULL, '2015-01-29 07:16:04', '10.107.107.121', 10),
(199, 10, '2014-15', 'Stationary', '77', NULL, NULL, NULL, 'advance for sandwitch', 'KFC KFC', 'Advance', '0', NULL, '2015-01-29 07:16:27', '10.107.107.121', 10),
(200, 10, '2014-15', 'Stationary', '77', NULL, NULL, NULL, 'advance for sandwitch', 'KFC KFC', 'Advance', '0', NULL, '2015-01-29 07:16:46', '10.107.107.121', 10),
(201, 10, '2014-15', 'Stationary', '77', NULL, NULL, NULL, 'advance for sandwitch', 'KFC KFC', 'Advance', '0', NULL, '2015-01-29 07:17:13', '10.107.107.121', 10),
(202, 10, '2014-15', 'Miscellaneous', '10', NULL, NULL, NULL, 'try', 'bhdb dfnjndfjs njnjn jnjn', 'Advance', '0', NULL, '2015-01-29 07:17:38', '127.0.0.1', 10),
(203, 10, '2014-15', 'Office-Expense', '45', NULL, NULL, NULL, 'trying', 'fdfds fddf', 'Advance', '0', NULL, '2015-01-29 07:17:38', '127.0.0.1', 10),
(204, 10, '2014-15', 'Miscellaneous', '10', NULL, NULL, NULL, 'try', 'bhdb dfnjndfjs njnjn jnjn', 'Advance', '0', NULL, '2015-01-29 07:19:26', '127.0.0.1', 10),
(205, 10, '2014-15', 'Office-Expense', '45', NULL, NULL, NULL, 'trying', 'fdfds fddf', 'Advance', '0', NULL, '2015-01-29 07:19:26', '127.0.0.1', 10),
(206, 10, '2014-15', 'Miscellaneous', '10', NULL, NULL, NULL, 'try', 'bhdb dfnjndfjs njnjn jnjn', 'Advance', '0', NULL, '2015-01-29 07:19:53', '127.0.0.1', 10),
(207, 10, '2014-15', 'Office-Expense', '45', NULL, NULL, NULL, 'trying', 'fdfds fddf', 'Advance', '0', NULL, '2015-01-29 07:19:53', '127.0.0.1', 10),
(208, 10, '2014-15', 'Miscellaneous', '10', NULL, NULL, NULL, 'try', 'bhdb dfnjndfjs njnjn jnjn', 'Advance', '0', NULL, '2015-01-29 07:20:17', '127.0.0.1', 10),
(209, 10, '2014-15', 'Office-Expense', '45', NULL, NULL, NULL, 'trying', 'fdfds fddf', 'Advance', '0', NULL, '2015-01-29 07:20:17', '127.0.0.1', 10),
(210, 10, '2014-15', 'Miscellaneous', '66', NULL, NULL, NULL, 'gghhg', 'fhgf', 'Advance', '0', NULL, '2015-01-29 07:20:58', '127.0.0.1', 10),
(211, 10, '2014-15', 'Stationary', '34', NULL, NULL, NULL, 'rtrre', 'trregfdg', 'Advance', '0', NULL, '2015-01-29 07:20:58', '127.0.0.1', 10),
(212, 10, '2014-15', 'Stationary', '77', NULL, NULL, NULL, 'advance for sandwitch', 'KFC KFC', 'Advance', '0', NULL, '2015-01-29 07:21:16', '10.107.107.121', 10),
(213, 10, '2014-15', 'Office-Expense', '677', NULL, NULL, NULL, 'party', 'NightOut', 'Advance', '0', NULL, '2015-01-29 07:27:12', '10.107.107.121', 10),
(214, 10, '2014-15', 'Stationary', '222', NULL, NULL, NULL, 'sutta', 'heheheheheh', 'Advance', '0', NULL, '2015-01-29 07:27:12', '10.107.107.121', 10),
(215, 10, '2014-15', 'Stationary', '222', NULL, NULL, NULL, 'sutta', 'heheheheheh', 'Advance', '1', 'maje mar ja ', '2015-01-29 07:29:22', '10.107.107.121', 1),
(216, 10, '2014-15', 'Office-Expense', '145', '27-01-2015', '121', 'qw/45', NULL, 'Books', 'Expenditure', '0', NULL, '2015-01-29 08:39:14', '127.0.0.1', 10),
(217, 10, '2014-15', 'Miscellaneous', '88', '28-01-2015', '56', 'df/98', NULL, 'drinks', 'Expenditure', '0', NULL, '2015-01-29 08:39:14', '127.0.0.1', 10),
(218, 10, '2014-15', 'Stationary', '150', '30-01-2015', '45454', '676/jh', NULL, 'Pens and Note Books', 'Expenditure', '0', NULL, '2015-01-29 08:39:15', '127.0.0.1', 10),
(219, 10, '2014-15', 'Stationary', '150', '30-01-2015', '45454', '676/jh', NULL, 'Pens and Note Books', 'Expenditure', '1', 'approved on date   ... ok', '2015-01-29 08:40:15', '10.107.107.121', 1),
(220, 10, '2014-15', 'Miscellaneous', '88', '28-01-2015', '56', 'df/98', NULL, 'drinks', 'Expenditure', '2', '', '2015-01-29 08:40:44', '10.107.107.121', 1),
(221, 10, '2014-15', 'Miscellaneous', '88', '28-01-2015', '56', 'df/98', NULL, 'drinks', 'Expenditure', '3', 'sai se check kar', '2015-01-29 08:51:44', '10.107.107.121', 1),
(222, 10, '2014-15', 'Office-Expense', '100', NULL, NULL, NULL, 'new mobile', '', 'Advance', '0', NULL, '2015-01-29 08:52:41', '127.0.0.1', 10),
(223, 10, '2014-15', 'Miscellaneous', '500', NULL, NULL, NULL, 'new bag', 'from amazon', 'Advance', '0', NULL, '2015-01-29 08:53:21', '127.0.0.1', 10),
(224, 10, '2014-15', 'Miscellaneous', '500', NULL, NULL, NULL, 'new bag', 'from amazon', 'Advance', '1', 'check no bla bla ....', '2015-01-29 08:54:22', '10.107.107.121', 1),
(225, 10, '2014-15', 'Miscellaneous', '500', NULL, NULL, NULL, 'new bag', 'from amazon', 'Advance', '1', 'check no bla bla ....', '2015-01-29 08:56:25', '10.107.107.121', 1),
(226, 11, '2014-15', 'Office-Expense', '1133', '02-02-2015', '424', '423432', NULL, 'DescriptionDescription', 'Expenditure', '0', NULL, '2015-02-02 11:10:37', '10.107.107.121', 11),
(227, 11, '2014-15', 'Miscellaneous', '4444', '05-03-2015', '33', '323123', NULL, 'DescriptionDesc', 'Expenditure', '0', NULL, '2015-02-02 11:10:37', '10.107.107.121', 11),
(228, 11, '2014-15', 'Stationary', '7777', '15-04-2015', 'ffds', 'fdds', NULL, 'DescriptionDesc', 'Expenditure', '0', NULL, '2015-02-02 11:10:37', '10.107.107.121', 11),
(229, 11, '2014-15', 'Office-Expense', '222', '15-10-2015', 'awd', 'adasd', NULL, '3213', 'Expenditure', '0', NULL, '2015-02-02 11:11:41', '10.107.107.121', 11),
(230, 11, '2014-15', 'Miscellaneous', '3322', '17-09-2015', 'das', 'dads', NULL, 'dsd', 'Expenditure', '0', NULL, '2015-02-02 11:11:41', '10.107.107.121', 11),
(231, 11, '2014-15', 'Office-Expense', '12213', NULL, NULL, NULL, 'dadas', 'dsadsa', 'Advance', '0', NULL, '2015-02-02 11:12:25', '10.107.107.121', 11),
(232, 11, '2014-15', 'man power', '2112', NULL, NULL, NULL, 'dasdsa', 'dsadsa', 'Advance', '0', NULL, '2015-02-02 11:12:25', '10.107.107.121', 11),
(233, 11, '2014-15', 'Office-Expense', '4222', NULL, NULL, NULL, 'wewq', 'eqwewq', 'Advance', '0', NULL, '2015-02-02 11:12:58', '10.107.107.121', 11),
(234, 11, '2014-15', 'Miscellaneous', '4442', NULL, NULL, NULL, 'dsadas', 'sadas', 'Advance', '0', NULL, '2015-02-02 11:12:58', '10.107.107.121', 11),
(235, 9, '2014-15', 'Office-Expense', '12000', '', '', '', '212', 'Description Description', 'Expenditure', '0', 'dasadsa', '2015-02-02 12:51:27', '10.107.107.121', 9),
(236, 9, '2014-15', 'Office-Expense', '12000', '', '', '', '212', 'Description Description', 'Expenditure', '1', 'dasadsa', '2015-02-02 12:52:02', '10.107.107.121', 1),
(237, 9, '2014-15', 'Stationary', '1000', '02-02-2015', 'sad', 'sadsad', NULL, 'dasdsa', 'Expenditure', '0', NULL, '2015-02-02 13:00:06', '10.107.107.121', 9),
(238, 9, '2014-15', 'Stationary', '1000', '02-02-2015', 'sad', 'sadsad', NULL, 'dasdsa', 'Expenditure', '1', 'Admin Remark', '2015-02-02 13:00:34', '10.107.107.121', 1),
(239, 9, '2014-15', 'man power', '1000', '02-02-2015', '12', '64', NULL, 'Description', 'Expenditure', '0', NULL, '2015-02-02 13:23:51', '10.107.107.121', 9),
(240, 9, '2014-15', 'man power', '1000', '02-02-2015', '12', '64', NULL, 'Description', 'Expenditure', '2', 'check the values', '2015-02-02 13:24:55', '10.107.107.121', 1),
(241, 9, '2014-15', 'man power', '1000', '02-02-2015', '12', '64', 'checked ', 'Description updated', 'Expenditure', '0', 'check the values', '2015-02-02 13:27:56', '10.107.107.121', 9),
(242, 9, '2014-15', 'man power', '1000', '02-02-2015', '12', '64', 'checked ', 'Description updated', 'Expenditure', '1', 'check the values', '2015-02-02 13:28:30', '10.107.107.121', 1),
(243, 9, '2014-15', 'Miscellaneous', '1001', '17-05-1900', '442', '444', NULL, 'Description', 'Expenditure', '0', NULL, '2015-02-02 13:32:23', '10.107.107.121', 9),
(244, 9, '2014-15', 'Miscellaneous', '1001', '17-05-1900', '442', '444', NULL, 'Description', 'Expenditure', '3', 'not accepted', '2015-02-02 13:33:03', '10.107.107.121', 1),
(245, 9, '2014-15', 'Miscellaneous', '1001', '06-02-2015', '442', '444', '', 'Description', 'Expenditure', '0', 'not accepted', '2015-02-02 13:34:38', '10.107.107.121', 9),
(246, 9, '2014-15', 'Miscellaneous', '1001', '06-02-2015', '442', '444', '', 'Description', 'Expenditure', '1', 'not accepted', '2015-02-02 13:35:09', '10.107.107.121', 1);

-- --------------------------------------------------------

--
-- Table structure for table `maillog`
--

CREATE TABLE IF NOT EXISTS `maillog` (
`id` bigint(20) NOT NULL,
  `to` varchar(100) NOT NULL,
  `sub` varchar(100) NOT NULL,
  `msg` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maillog`
--

INSERT INTO `maillog` (`id`, `to`, `sub`, `msg`, `timestamp`) VALUES
(1, '199118dia@gmail.com', 'expenditure status of entry -38', 'id=38, dep_id=10, year=2014-15, bh_name=Office-Expense, bill_no=452, bill_date=, bill_diary_no=, status=2, remark=', '2015-01-20 07:38:42'),
(2, 'nitish.kumar@iic.ac.in', 'expenditure status of entry -39', 'id=39, dep_id=9, year=2014-15, bh_name=Stationary, bill_no=1331, bill_date=Jan 20, 2015, bill_diary_no=3213232, status=3, remark=TESTING TESTING TESTING', '2015-01-20 07:39:36'),
(3, 'nitish.kumar@iic.ac.in', 'expenditure status of entry -42', 'id=42, dep_id=9, year=2014-15, bh_name=Miscellaneous, bill_no=2213, bill_date=Jan 21, 2015, bill_diary_no=21321, status=1, remark=', '2015-01-20 07:42:05'),
(4, '199118dia@gmail.com', 'expenditure status of entry -40', 'id=40, dep_id=10, year=2014-15, bh_name=Miscellaneous, bill_no=12lk, bill_date=Jul 15, 2009, bill_diary_no=856965, status=1, remark=', '2015-01-20 07:42:53'),
(5, 'nitish.kumar@iic.ac.in', 'expenditure status of entry -45', 'id=45, dep_id=9, year=2014-15, bh_name=Stationary, bill_no=hfgd4535, bill_date=Jan 22, 2015, bill_diary_no=fghfg45456, status=1, remark=', '2015-01-20 07:43:38'),
(6, 'nitish.kumar@iic.ac.in', 'expenditure status of entry -42', 'id=42, dep_id=9, year=2014-15, bh_name=Miscellaneous, bill_no=2213, bill_date=Jan 21, 2015, bill_diary_no=21321, status=0, remark=', '2015-01-20 07:45:14'),
(7, 'nitish.kumar@iic.ac.in', 'expenditure status of entry -48', 'id=48, dep_id=9, year=2014-15, bh_name=Office-Expense, bill_no=gdgfdg4345, bill_date=Jan 23, 2015, bill_diary_no=fdg35435, status=1, remark=', '2015-01-20 07:48:11'),
(8, '199118dia@gmail.com', 'expenditure status of entry -41', 'id=41, dep_id=10, year=2014-15, bh_name=Office-Expense, bill_no=, bill_date=, bill_diary_no=, status=1, remark=', '2015-01-20 08:00:10'),
(9, 'ankurgarg36@gmail.com', 'expenditure status of entry -49', 'id=49, dep_id=11, year=2014-15, bh_name=Miscellaneous, bill_no=452, bill_date=Jul 7, 2009, bill_diary_no=54545454, status=3, remark=returned', '2015-01-21 06:37:11'),
(10, 'ankurgarg36@gmail.com', 'expenditure status of entry -49', 'id=49, dep_id=11, year=2014-15, bh_name=Miscellaneous, bill_no=452, bill_date=Jul 7, 2009, bill_diary_no=54545454, status=1, remark=returned', '2015-01-21 06:42:41'),
(11, 'nitish.kumar@iic.ac.in', 'expenditure status of entry -51', 'id=51, dep_id=9, year=2014-15, bh_name=Office-Expense, bill_no=1111, bill_date=Jan 22, 2015, bill_diary_no=232332, status=0, remark=', '2015-01-22 06:02:51'),
(12, '199118dia@gmail.com', 'expenditure status of entry -56', 'id=56, dep_id=10, year=2014-15, bh_name=Miscellaneous, bill_no=, bill_date=Jan 12, 2015, bill_diary_no=, status=1, remark=', '2015-01-22 11:06:21'),
(13, '199118dia@gmail.com', 'expenditure status of entry -56', 'id=56, dep_id=10, year=2014-15, bh_name=Miscellaneous, bill_no=, bill_date=Jan 12, 2015, bill_diary_no=, status=1, remark=', '2015-01-22 11:08:03'),
(14, '199118dia@gmail.com', 'expenditure status of entry -59', 'id=59, dep_id=10, year=2014-15, bh_name=Miscellaneous, bill_no=22, bill_date=Jan 13, 2015, bill_diary_no=11, status=2, remark=reject ', '2015-01-22 11:08:42'),
(15, '199118dia@gmail.com', 'expenditure status of entry -59', 'id=59, dep_id=10, year=2014-15, bh_name=Miscellaneous, bill_no=22, bill_date=Jan 13, 2015, bill_diary_no=11, status=3, remark=reject ', '2015-01-22 11:09:54'),
(16, '199118dia@gmail.com', 'expenditure status of entry -57', 'id=57, dep_id=10, year=2014-15, bh_name=man power, bill_no=11, bill_date=, bill_diary_no=22, status=1, remark=', '2015-01-22 11:28:04'),
(17, '199118dia@gmail.com', 'expenditure status of entry -60', 'id=60, dep_id=10, year=2014-15, bh_name=Office-Expense, bill_no=, bill_date=, bill_diary_no=, status=1, remark=remark admin ', '2015-01-23 05:33:32'),
(18, '199118dia@gmail.com', 'expenditure status of entry -60', 'id=60, dep_id=10, year=2014-15, bh_name=Office-Expense, bill_no=1232, bill_date=Jan 23, 2015, bill_diary_no=aawww111221, status=1, remark=remark admin ', '2015-01-23 07:28:48'),
(19, '199118dia@gmail.com', 'expenditure status of entry -61', 'id=61, dep_id=10, year=2014-15, bh_name=Stationary, bill_no=, bill_date=, bill_diary_no=, status=1, remark=check no.', '2015-01-23 08:15:54'),
(20, '199118dia@gmail.com', 'expenditure status of entry -61', 'id=61, dep_id=10, year=2014-15, bh_name=Stationary, bill_no=vccvcvc, bill_date=Jul 1, 2009, bill_diary_no=zzzz, status=0, remark=check no.', '2015-01-23 08:31:45'),
(21, '199118dia@gmail.com', 'expenditure status of entry -61', 'id=61, dep_id=10, year=2014-15, bh_name=Stationary, bill_no=vccvcvc, bill_date=Jul 1, 2009, bill_diary_no=zzzz, status=1, remark=check no.', '2015-01-23 08:35:55'),
(22, '199118dia@gmail.com', 'expenditure status of entry -61', 'id=61, dep_id=10, year=2014-15, bh_name=Stationary, bill_no=vccvcvc, bill_date=Jul 1, 2009, bill_diary_no=zzzz, status=1, remark=check no.', '2015-01-23 08:42:25'),
(23, '199118dia@gmail.com', 'expenditure status of entry -60', 'id=60, dep_id=10, year=2014-15, bh_name=Office-Expense, bill_no=1232, bill_date=Jan 23, 2015, bill_diary_no=aawww111221, status=1, remark=remark admin ', '2015-01-23 08:44:36'),
(24, '199118dia@gmail.com', 'expenditure status of entry -58', 'id=58, dep_id=10, year=2014-15, bh_name=Miscellaneous, bill_no=122, bill_date=Jan 23, 2015, bill_diary_no=21212, status=1, remark=', '2015-01-23 08:52:06'),
(25, '199118dia@gmail.com', 'expenditure status of entry -62', 'id=62, dep_id=10, year=2014-15, bh_name=Office-Expense, bill_no=, bill_date=, bill_diary_no=, status=1, remark=', '2015-01-23 09:43:36'),
(26, '199118dia@gmail.com', 'expenditure status of entry -63', 'id=63, dep_id=10, year=2014-15, bh_name=Stationary, bill_no=, bill_date=, bill_diary_no=, status=1, remark=', '2015-01-24 09:54:45'),
(27, '199118dia@gmail.com', 'expenditure status of entry -69', 'id=69, dep_id=10, year=2014-15, bh_name=Miscellaneous, bill_no=, bill_date=, bill_diary_no=, status=1, remark=', '2015-01-24 12:52:49'),
(28, 'nitish.kumar@iic.ac.in', 'expenditure status of entry -70', 'id=70, dep_id=9, year=2014-15, bh_name=Office-Expense, bill_no=, bill_date=, bill_diary_no=, status=1, remark=check no:123', '2015-01-27 05:00:09'),
(29, 'nitish.kumar@iic.ac.in', 'expenditure status of entry -71', 'id=71, dep_id=9, year=2014-15, bh_name=Office-Expense, bill_no=, bill_date=, bill_diary_no=, status=2, remark=dasadsa', '2015-01-27 05:13:08'),
(30, 'nitish.kumar@iic.ac.in', 'expenditure status of entry -70', 'id=70, dep_id=9, year=2014-15, bh_name=Office-Expense, bill_no=, bill_date=, bill_diary_no=, status=1, remark=check no:123', '2015-01-27 05:19:53'),
(31, '199118dia@gmail.com', 'expenditure status of entry -98', 'id=98, dep_id=10, year=2014-15, bh_name=Stationary, bill_no=, bill_date=, bill_diary_no=, status=1, remark=maje mar ja ', '2015-01-29 07:29:22'),
(32, '199118dia@gmail.com', 'expenditure status of entry -101', 'id=101, dep_id=10, year=2014-15, bh_name=Stationary, bill_no=45454, bill_date=30-01-2015, bill_diary_no=676/jh, status=1, remark=approved on date   ... ok', '2015-01-29 08:40:14'),
(33, '199118dia@gmail.com', 'expenditure status of entry -100', 'id=100, dep_id=10, year=2014-15, bh_name=Miscellaneous, bill_no=56, bill_date=28-01-2015, bill_diary_no=df/98, status=2, remark=', '2015-01-29 08:40:44'),
(34, '199118dia@gmail.com', 'expenditure status of entry -100', 'id=100, dep_id=10, year=2014-15, bh_name=Miscellaneous, bill_no=56, bill_date=28-01-2015, bill_diary_no=df/98, status=3, remark=sai se check kar', '2015-01-29 08:51:44'),
(35, '199118dia@gmail.com', 'expenditure status of entry -103', 'id=103, dep_id=10, year=2014-15, bh_name=Miscellaneous, bill_no=, bill_date=, bill_diary_no=, status=1, remark=check no bla bla ....', '2015-01-29 08:54:22'),
(36, '199118dia@gmail.com', 'expenditure status of entry -103', 'id=103, dep_id=10, year=2014-15, bh_name=Miscellaneous, bill_no=, bill_date=, bill_diary_no=, status=1, remark=check no bla bla ....', '2015-01-29 08:56:25'),
(37, 'nitish.kumar@iic.ac.in', 'expenditure status of entry -71', 'id=71, dep_id=9, year=2014-15, bh_name=Office-Expense, bill_no=, bill_date=, bill_diary_no=, status=1, remark=dasadsa', '2015-02-02 12:52:02'),
(38, 'nitish.kumar@iic.ac.in', 'expenditure status of entry -113', 'id=113, dep_id=9, year=2014-15, bh_name=Stationary, bill_no=sad, bill_date=02-02-2015, bill_diary_no=sadsad, status=1, remark=Admin Remark', '2015-02-02 13:00:34'),
(39, 'nitish.kumar@iic.ac.in', 'expenditure status of entry -114', 'id=114, dep_id=9, year=2014-15, bh_name=man power, bill_no=12, bill_date=02-02-2015, bill_diary_no=64, status=2, remark=check the values', '2015-02-02 13:24:55'),
(40, 'nitish.kumar@iic.ac.in', 'expenditure status of entry -114', 'id=114, dep_id=9, year=2014-15, bh_name=man power, bill_no=12, bill_date=02-02-2015, bill_diary_no=64, status=1, remark=check the values', '2015-02-02 13:28:30'),
(41, 'nitish.kumar@iic.ac.in', 'expenditure status of entry -115', 'id=115, dep_id=9, year=2014-15, bh_name=Miscellaneous, bill_no=442, bill_date=17-05-1900, bill_diary_no=444, status=3, remark=not accepted', '2015-02-02 13:33:03'),
(42, 'nitish.kumar@iic.ac.in', 'expenditure status of entry -115', 'id=115, dep_id=9, year=2014-15, bh_name=Miscellaneous, bill_no=442, bill_date=06-02-2015, bill_diary_no=444, status=1, remark=not accepted', '2015-02-02 13:35:09');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1419933161),
('m140524_153638_init_user', 1419933169),
('m140524_153642_init_user_auth', 1419933170);

-- --------------------------------------------------------

--
-- Table structure for table `ocr_entry`
--

CREATE TABLE IF NOT EXISTS `ocr_entry` (
`id` int(11) NOT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `finance_year` varchar(10) DEFAULT NULL,
  `opening_ammount` varchar(15) DEFAULT NULL,
  `total_expend` varchar(15) DEFAULT NULL,
  `avail_bal` varchar(15) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `source_ip` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ocr_entry`
--

INSERT INTO `ocr_entry` (`id`, `dep_id`, `finance_year`, `opening_ammount`, `total_expend`, `avail_bal`, `timestamp`, `source_ip`, `user_id`) VALUES
(23, 10, '2014-15', '11700', '2849', '8851', '2015-01-29 08:56:25', '127.0.0.1', 1),
(24, 9, '2014-15', '438000', '34001', '403999', '2015-02-02 13:35:09', '127.0.0.1', 1),
(25, 11, '2014-15', '1078000', NULL, '1078000', '2015-02-02 11:02:02', '10.107.107.121', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `create_time`, `update_time`, `full_name`) VALUES
(1, 1, '2014-12-30 04:22:49', NULL, 'the one'),
(9, 9, '2015-01-20 01:01:49', NULL, ''),
(10, 10, '2015-01-20 01:03:37', NULL, ''),
(11, 11, '2015-01-21 00:14:59', NULL, ''),
(12, 12, '2015-01-21 02:04:34', NULL, 'Adult, Continuing Education & Extension');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `can_admin` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `create_time`, `update_time`, `can_admin`) VALUES
(1, 'Admin', '2014-12-30 04:22:49', NULL, 1),
(2, 'User', '2014-12-30 04:22:49', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_time` timestamp NULL DEFAULT NULL,
  `create_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `ban_time` timestamp NULL DEFAULT NULL,
  `ban_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `role_id`, `status`, `email`, `new_email`, `username`, `password`, `auth_key`, `api_key`, `login_ip`, `login_time`, `create_ip`, `create_time`, `update_time`, `ban_time`, `ban_reason`) VALUES
(1, 1, 1, 'neo@neo.com', NULL, 'admin', '$2y$13$fjsKykpzzggSb8S9..I5k.RKy2pHWCWTutcuaPS0.ts3U/UKxM7m2', 'c5y6swSAHunTp8peKLJgm1E2byxpQY7E', 'ckwYSu_KeBHII2KNwqLiHLKfyXo9ttTX', '10.107.107.121', '2015-02-05 07:35:55', NULL, '2014-12-30 04:22:49', '2015-01-08 01:48:30', NULL, NULL),
(9, 2, 1, 'nitish.kumar@iic.ac.in', NULL, 'nitish', '$2y$13$8NHxsneDdhZWTsfCIsjqi.1bNlW8myLOW50p2y/.yWld7jRai61wy', NULL, NULL, '10.107.107.121', '2015-02-05 03:42:00', NULL, '2015-01-20 01:01:49', NULL, NULL, NULL),
(10, 2, 1, '199118dia@gmail.com', NULL, 'divya', '$2y$13$wsUVlsBrHxcHZsOJtapX7uwvcqGAQyVndB3P09RF7V4v7GKl.7Sja', NULL, NULL, '10.107.107.122', '2015-02-02 22:38:27', NULL, '2015-01-20 01:03:37', NULL, NULL, NULL),
(11, 2, 1, 'ankurgarg36@gmail.com', NULL, 'ankur', '$2y$13$wpUofOT88xLZ.9McdoZZiOagja06XThnXOwluzBRzABIxRaRyG7Z2', NULL, NULL, '10.107.106.122', '2015-02-02 06:23:57', NULL, '2015-01-21 00:14:59', NULL, NULL, NULL),
(12, 2, 1, 'mac@mailcatch.com', NULL, 'mac', '$2y$13$UxHjzXueV3nu1JmQ.K3K8eff0h0pOWpwc0J.pKbRAytPW3IyseptG', NULL, NULL, '10.107.107.121', '2015-01-21 02:20:55', NULL, '2015-01-21 02:04:34', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_auth`
--

CREATE TABLE IF NOT EXISTS `user_auth` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_attributes` text COLLATE utf8_unicode_ci NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_key`
--

CREATE TABLE IF NOT EXISTS `user_key` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `consume_time` timestamp NULL DEFAULT NULL,
  `expire_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `years_tbl`
--

CREATE TABLE IF NOT EXISTS `years_tbl` (
`id` int(11) NOT NULL,
  `year` varchar(8) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `years_tbl`
--

INSERT INTO `years_tbl` (`id`, `year`) VALUES
(1, '2010-11'),
(2, '2011-12'),
(3, '2012-13'),
(4, '2013-14'),
(5, '2014-15'),
(6, '2015-16'),
(7, '2016-17'),
(8, '2017-18'),
(9, '2018-19'),
(10, '2019-20'),
(11, '2020-21'),
(12, '2021-22'),
(13, '2022-23'),
(14, '2023-24'),
(15, '2024-25'),
(16, '2025-26'),
(17, '2026-27'),
(18, '2027-28'),
(19, '2028-29'),
(20, '2029-30'),
(21, '2030-31'),
(22, '2031-32'),
(23, '2032-33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advance`
--
ALTER TABLE `advance`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advance_settle`
--
ALTER TABLE `advance_settle`
 ADD PRIMARY KEY (`id`), ADD KEY `ocr_no` (`ocr_no`);

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
 ADD PRIMARY KEY (`id`), ADD KEY `dep_id` (`dep_id`);

--
-- Indexes for table `budget_heads`
--
ALTER TABLE `budget_heads`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budget_head_status`
--
ALTER TABLE `budget_head_status`
 ADD PRIMARY KEY (`id`), ADD KEY `dep_id` (`dep_id`);

--
-- Indexes for table `budget_transfer`
--
ALTER TABLE `budget_transfer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
 ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `dept_details`
--
ALTER TABLE `dept_details`
 ADD PRIMARY KEY (`id`), ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `expenditure_tbl`
--
ALTER TABLE `expenditure_tbl`
 ADD PRIMARY KEY (`id`), ADD KEY `dep_id` (`dep_id`);

--
-- Indexes for table `financial_year_tbl`
--
ALTER TABLE `financial_year_tbl`
 ADD PRIMARY KEY (`id`), ADD KEY `financial_year_tbl_ibfk_1` (`dep_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maillog`
--
ALTER TABLE `maillog`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
 ADD PRIMARY KEY (`version`);

--
-- Indexes for table `ocr_entry`
--
ALTER TABLE `ocr_entry`
 ADD PRIMARY KEY (`id`), ADD KEY `dep_id` (`dep_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
 ADD PRIMARY KEY (`id`), ADD KEY `profile_user_id` (`user_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_email` (`email`), ADD UNIQUE KEY `user_username` (`username`), ADD KEY `user_role_id` (`role_id`);

--
-- Indexes for table `user_auth`
--
ALTER TABLE `user_auth`
 ADD PRIMARY KEY (`id`), ADD KEY `user_auth_provider_id` (`provider_id`), ADD KEY `user_auth_user_id` (`user_id`);

--
-- Indexes for table `user_key`
--
ALTER TABLE `user_key`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `user_key_key` (`key`), ADD KEY `user_key_user_id` (`user_id`);

--
-- Indexes for table `years_tbl`
--
ALTER TABLE `years_tbl`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advance`
--
ALTER TABLE `advance`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `advance_settle`
--
ALTER TABLE `advance_settle`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=271;
--
-- AUTO_INCREMENT for table `budget_heads`
--
ALTER TABLE `budget_heads`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `budget_head_status`
--
ALTER TABLE `budget_head_status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `budget_transfer`
--
ALTER TABLE `budget_transfer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `dept_details`
--
ALTER TABLE `dept_details`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `expenditure_tbl`
--
ALTER TABLE `expenditure_tbl`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `financial_year_tbl`
--
ALTER TABLE `financial_year_tbl`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `maillog`
--
ALTER TABLE `maillog`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `ocr_entry`
--
ALTER TABLE `ocr_entry`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user_auth`
--
ALTER TABLE `user_auth`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_key`
--
ALTER TABLE `user_key`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `years_tbl`
--
ALTER TABLE `years_tbl`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `advance_settle`
--
ALTER TABLE `advance_settle`
ADD CONSTRAINT `advance_settle_ibfk_1` FOREIGN KEY (`ocr_no`) REFERENCES `expenditure_tbl` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `budget`
--
ALTER TABLE `budget`
ADD CONSTRAINT `budget_ibfk_1` FOREIGN KEY (`dep_id`) REFERENCES `dept_details` (`dept_id`) ON UPDATE CASCADE;

--
-- Constraints for table `budget_head_status`
--
ALTER TABLE `budget_head_status`
ADD CONSTRAINT `budget_head_status_ibfk_1` FOREIGN KEY (`dep_id`) REFERENCES `dept_details` (`dept_id`) ON UPDATE CASCADE;

--
-- Constraints for table `dept_details`
--
ALTER TABLE `dept_details`
ADD CONSTRAINT `dept_details_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `expenditure_tbl`
--
ALTER TABLE `expenditure_tbl`
ADD CONSTRAINT `expenditure_tbl_ibfk_1` FOREIGN KEY (`dep_id`) REFERENCES `dept_details` (`dept_id`) ON UPDATE CASCADE;

--
-- Constraints for table `financial_year_tbl`
--
ALTER TABLE `financial_year_tbl`
ADD CONSTRAINT `financial_year_tbl_ibfk_1` FOREIGN KEY (`dep_id`) REFERENCES `dept_details` (`dept_id`) ON UPDATE CASCADE;

--
-- Constraints for table `ocr_entry`
--
ALTER TABLE `ocr_entry`
ADD CONSTRAINT `ocr_entry_ibfk_1` FOREIGN KEY (`dep_id`) REFERENCES `dept_details` (`dept_id`) ON UPDATE CASCADE;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
ADD CONSTRAINT `profile_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
ADD CONSTRAINT `user_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Constraints for table `user_auth`
--
ALTER TABLE `user_auth`
ADD CONSTRAINT `user_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user_key`
--
ALTER TABLE `user_key`
ADD CONSTRAINT `user_key_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
