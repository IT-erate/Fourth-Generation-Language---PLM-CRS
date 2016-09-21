<br />
<b>Notice</b>:  Undefined index:  CompressOnFly in <b>D:\apachefriends\xampp\phpmyadmin\export.php</b> on line <b>156</b><br />
# phpMyAdmin SQL Dump
# version 2.5.7-pl1
# http://www.phpmyadmin.net
#
# Host: localhost
# Generation Time: Sep 21, 2016 at 04:16 PM
# Server version: 4.0.20
# PHP Version: 4.3.7
# 
# Database : `plm-crs`
# 

# --------------------------------------------------------

#
# Table structure for table `acadstatus_tbl`
#

CREATE TABLE `acadstatus_tbl` (
  `student_id` int(9) NOT NULL default '0',
  `subject_code` varchar(20) NOT NULL default '',
  `academic_status` varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `acadstatus_tbl`
#

INSERT INTO `acadstatus_tbl` VALUES (201420341, 'ESC 122', '');
INSERT INTO `acadstatus_tbl` VALUES (201610159, 'FIL 102', '');
INSERT INTO `acadstatus_tbl` VALUES (201520904, 'ENG 102', '');
INSERT INTO `acadstatus_tbl` VALUES (201311111, 'CSC 123', '');

# --------------------------------------------------------

#
# Table structure for table `cogaudit_tbl`
#

CREATE TABLE `cogaudit_tbl` (
  `student_id` int(9) NOT NULL default '0',
  `faculty_id` int(10) NOT NULL default '0',
  `old_grade` float(3,2) NOT NULL default '0.00',
  `new_grade` float(3,2) NOT NULL default '0.00',
  `section_id` int(5) NOT NULL default '0',
  `date_change` varchar(50) NOT NULL default '',
  `aysemester` varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `cogaudit_tbl`
#


# --------------------------------------------------------

#
# Table structure for table `college_tbl`
#

CREATE TABLE `college_tbl` (
  `college_id` int(2) NOT NULL default '0',
  `college_code` varchar(10) NOT NULL default '',
  `college_name` varchar(50) NOT NULL default '',
  `faculty_id` int(10) NOT NULL default '0'
) TYPE=MyISAM;

#
# Dumping data for table `college_tbl`
#

INSERT INTO `college_tbl` VALUES (1, 'CET', 'College of Engineering and Technology', 11111);
INSERT INTO `college_tbl` VALUES (2, 'CBM', 'College of Business and Management', 22222);
INSERT INTO `college_tbl` VALUES (3, 'CHD', 'College of Human Development', 33333);

# --------------------------------------------------------

#
# Table structure for table `department_tbl`
#

CREATE TABLE `department_tbl` (
  `department_id` int(50) NOT NULL default '0',
  `department_code` varchar(10) NOT NULL default '',
  `department_name` varchar(50) NOT NULL default '',
  `college_id` int(2) NOT NULL default '0',
  `faculty_id` int(10) NOT NULL default '0'
) TYPE=MyISAM;

#
# Dumping data for table `department_tbl`
#

INSERT INTO `department_tbl` VALUES (1, 'CSD', 'Computer Science Department', 1, 11111);
INSERT INTO `department_tbl` VALUES (2, 'FD', 'Finance Department', 2, 22222);
INSERT INTO `department_tbl` VALUES (3, 'PD', 'Psychology Department', 3, 33333);

# --------------------------------------------------------

#
# Table structure for table `departmentfaculty_tbl`
#

CREATE TABLE `departmentfaculty_tbl` (
  `id` int(5) NOT NULL default '0',
  `faculty_id` int(10) NOT NULL default '0',
  `department_id` int(50) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;

#
# Dumping data for table `departmentfaculty_tbl`
#

INSERT INTO `departmentfaculty_tbl` VALUES (10001, 11111, 1);
INSERT INTO `departmentfaculty_tbl` VALUES (20002, 22222, 2);
INSERT INTO `departmentfaculty_tbl` VALUES (30003, 33333, 3);

# --------------------------------------------------------

#
# Table structure for table `facultychairdean`
#

CREATE TABLE `facultychairdean` (
  `faculty_id` int(10) NOT NULL default '0',
  `last_name` varchar(25) NOT NULL default '',
  `first_name` varchar(25) NOT NULL default '',
  `middle_name` varchar(25) NOT NULL default '',
  `college_id` int(2) NOT NULL default '0',
  `address` varchar(50) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `contact_no` varchar(13) NOT NULL default '0',
  PRIMARY KEY  (`faculty_id`)
) TYPE=MyISAM;

#
# Dumping data for table `facultychairdean`
#

INSERT INTO `facultychairdean` VALUES (11111, 'Marcelo', 'Erwin', 'Alcasid', 1, '123 Balikbayan St. Tondo, Manila', 'erwinmarcelo@plm.edu.ph', '+639569874512');
INSERT INTO `facultychairdean` VALUES (22222, 'Tomagos', 'Orange', 'Bales', 2, '321 Nobody St. Malate, Manila', 'orangetomagos@plm.edu.ph', '+639154785631');
INSERT INTO `facultychairdean` VALUES (33333, 'Diansuy', 'Aileen', 'Regala', 3, '456 789 Dimagiba St. Quezon City', 'aileendiansuy@plm.edu.ph', '+639741258916');

# --------------------------------------------------------

#
# Table structure for table `facultyclass_tbl`
#

CREATE TABLE `facultyclass_tbl` (
  `faculty_id` int(10) NOT NULL default '0',
  `section_id` int(5) NOT NULL default '0',
  `aysemester` varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `facultyclass_tbl`
#

INSERT INTO `facultyclass_tbl` VALUES (11111, 111, '1st Semester S.Y. 2014-2015');
INSERT INTO `facultyclass_tbl` VALUES (22222, 222, '2nd Semester S.Y. 2015-2016');
INSERT INTO `facultyclass_tbl` VALUES (33333, 333, '1st Semester S.Y. 2014-2015');

# --------------------------------------------------------

#
# Table structure for table `facultydept_tbl`
#

CREATE TABLE `facultydept_tbl` (
  `department_id` int(50) NOT NULL default '0',
  `faculty_id` int(10) NOT NULL default '0'
) TYPE=MyISAM;

#
# Dumping data for table `facultydept_tbl`
#

INSERT INTO `facultydept_tbl` VALUES (1, 11111);
INSERT INTO `facultydept_tbl` VALUES (2, 22222);
INSERT INTO `facultydept_tbl` VALUES (3, 33333);

# --------------------------------------------------------

#
# Table structure for table `grades_tbl`
#

CREATE TABLE `grades_tbl` (
  `section_id` int(5) NOT NULL default '0',
  `student_id` int(9) NOT NULL default '0',
  `aysemester` varchar(50) NOT NULL default '',
  `grade` float(3,2) NOT NULL default '0.00',
  `remarks` varchar(6) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `grades_tbl`
#

INSERT INTO `grades_tbl` VALUES (111, 201420341, '1st Semester S.Y. 2014-2015', '3.00', 'PASSED');
INSERT INTO `grades_tbl` VALUES (222, 201610159, '2nd Semester S.Y. 2015-2016', '5.00', 'FAILED');
INSERT INTO `grades_tbl` VALUES (333, 201311111, '1st Semester S.Y. 2014-2015', '1.25', 'PASSED');
INSERT INTO `grades_tbl` VALUES (221, 201520904, '2nd Semester S.Y. 2015-2016', '2.25', 'PASSED');

# --------------------------------------------------------

#
# Table structure for table `program_tbl`
#

CREATE TABLE `program_tbl` (
  `program_id` int(5) NOT NULL default '0',
  `program_code` varchar(20) NOT NULL default '',
  `program_name` varchar(100) NOT NULL default '',
  `college_id` int(2) NOT NULL default '0',
  PRIMARY KEY  (`program_id`)
) TYPE=MyISAM;

#
# Dumping data for table `program_tbl`
#

INSERT INTO `program_tbl` VALUES (1111, 'BSCS-CS', 'Bachelor of Science in Computer Studies Major in Computer Science', 1);
INSERT INTO `program_tbl` VALUES (2222, 'FM', 'Finance and Management', 2);
INSERT INTO `program_tbl` VALUES (3333, 'BS-PSYCH', 'Bachelor of Science Major in Psychology', 3);

# --------------------------------------------------------

#
# Table structure for table `schostatus_tbl`
#

CREATE TABLE `schostatus_tbl` (
  `student_id` int(9) NOT NULL default '0',
  `subject_code` varchar(20) NOT NULL default '',
  `scho_status` varchar(50) NOT NULL default '',
  `location` varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `schostatus_tbl`
#

INSERT INTO `schostatus_tbl` VALUES (201420341, 'ESC 122', '', 'Manila');
INSERT INTO `schostatus_tbl` VALUES (201610159, 'FIL 102', '', 'Manila');
INSERT INTO `schostatus_tbl` VALUES (201520904, 'ENG 102', '', 'Manila');
INSERT INTO `schostatus_tbl` VALUES (201311111, 'CSC 123', '', 'Non-Manila');

# --------------------------------------------------------

#
# Table structure for table `schostatusinfo_tbl`
#

CREATE TABLE `schostatusinfo_tbl` (
  `scho_status_var` int(1) NOT NULL default '0',
  `scho_status` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`scho_status_var`)
) TYPE=MyISAM;

#
# Dumping data for table `schostatusinfo_tbl`
#

INSERT INTO `schostatusinfo_tbl` VALUES (1, 'Non-Paying');
INSERT INTO `schostatusinfo_tbl` VALUES (2, 'Non-Paying Partial');
INSERT INTO `schostatusinfo_tbl` VALUES (3, 'Paying');

# --------------------------------------------------------

#
# Table structure for table `section_tbl`
#

CREATE TABLE `section_tbl` (
  `section_id` int(5) NOT NULL default '0',
  `subject_id` int(5) NOT NULL default '0',
  `schedule` varchar(50) NOT NULL default '',
  `aysemester` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`section_id`)
) TYPE=MyISAM;

#
# Dumping data for table `section_tbl`
#

INSERT INTO `section_tbl` VALUES (111, 101, 'S 1:00PM - 6:00PM', '1st Semester S.Y. 2014-2015');
INSERT INTO `section_tbl` VALUES (222, 201, 'TF 1:30PM - 4:30PM', '2nd Semester S.Y. 2015-2016');
INSERT INTO `section_tbl` VALUES (333, 301, 'MTH 6:00PM - 9:00PM', '1st Semester S.Y. 2014-2015');
INSERT INTO `section_tbl` VALUES (221, 102, 'W 4:00PM-6:00PM', '1st Semester S.Y. 2014-2015');

# --------------------------------------------------------

#
# Table structure for table `student_contact`
#

CREATE TABLE `student_contact` (
  `student_id` int(9) NOT NULL default '0',
  `contact_no` varchar(13) NOT NULL default '0'
) TYPE=MyISAM;

#
# Dumping data for table `student_contact`
#

INSERT INTO `student_contact` VALUES (201420341, '+639395257311');
INSERT INTO `student_contact` VALUES (201610159, '+639874563214');
INSERT INTO `student_contact` VALUES (201311111, '+639147483647');
INSERT INTO `student_contact` VALUES (201520904, '+639661236584');

# --------------------------------------------------------

#
# Table structure for table `student_email`
#

CREATE TABLE `student_email` (
  `student_id` int(9) NOT NULL default '0',
  `email` varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `student_email`
#

INSERT INTO `student_email` VALUES (201420341, 'rdmenpin2014@plm.edu.ph');
INSERT INTO `student_email` VALUES (201610159, 'ejcalanza2016@plm.edu.ph');
INSERT INTO `student_email` VALUES (201520904, 'rrav2015@plm.edu.ph');
INSERT INTO `student_email` VALUES (201311111, 'ajosantiago2013@plm.edu.ph');

# --------------------------------------------------------

#
# Table structure for table `student_loc`
#

CREATE TABLE `student_loc` (
  `student_id` int(9) NOT NULL default '0',
  `address` varchar(50) NOT NULL default '',
  `location` varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `student_loc`
#

INSERT INTO `student_loc` VALUES (201420341, '1359 Tondo, Manila', 'Manila');
INSERT INTO `student_loc` VALUES (201610159, '123 Concha Tondo, Manila', 'Manila');
INSERT INTO `student_loc` VALUES (201520904, '1357 Coral Tondo, Manila', 'Manila');
INSERT INTO `student_loc` VALUES (201311111, '555 Quezon City', 'Non-Manila');

# --------------------------------------------------------

#
# Table structure for table `student_name`
#

CREATE TABLE `student_name` (
  `student_id` int(9) NOT NULL default '0',
  `last_name` varchar(25) NOT NULL default '',
  `first_name` varchar(25) NOT NULL default '',
  `middle_name` varchar(25) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `student_name`
#

INSERT INTO `student_name` VALUES (201420341, 'Menpin', 'Renzo', 'Duenas');
INSERT INTO `student_name` VALUES (201610159, 'Calanza', 'Emil John', 'Azi');
INSERT INTO `student_name` VALUES (201520904, 'Velasco', 'Rob Russell', 'Alvarado');
INSERT INTO `student_name` VALUES (201311111, 'Santiago', 'Aerron James', 'Oso');

# --------------------------------------------------------

#
# Table structure for table `student_tbl`
#

CREATE TABLE `student_tbl` (
  `student_id` int(9) NOT NULL default '0',
  `program_id` int(50) NOT NULL default '0',
  `college_id` int(2) NOT NULL default '0',
  `department_id` int(50) NOT NULL default '0',
  `year_level` varchar(10) NOT NULL default '',
  `student_type` varchar(50) NOT NULL default '',
  `gender` varchar(6) NOT NULL default '',
  PRIMARY KEY  (`student_id`)
) TYPE=MyISAM;

#
# Dumping data for table `student_tbl`
#

INSERT INTO `student_tbl` VALUES (201311111, 3333, 3, 3, '4th', '', 'Male');
INSERT INTO `student_tbl` VALUES (201420341, 1111, 1, 1, '3rd', '', 'Male');
INSERT INTO `student_tbl` VALUES (201520904, 2222, 2, 2, '2nd', '', 'Male');
INSERT INTO `student_tbl` VALUES (201610159, 2222, 2, 2, '1st', '', 'Male');

# --------------------------------------------------------

#
# Table structure for table `studenttype_tbl`
#

CREATE TABLE `studenttype_tbl` (
  `student_id` int(9) NOT NULL default '0',
  `subject_code` varchar(20) NOT NULL default '',
  `student_type` varchar(50) NOT NULL default ''
) TYPE=MyISAM;

#
# Dumping data for table `studenttype_tbl`
#

INSERT INTO `studenttype_tbl` VALUES (201420341, 'ESC 122', '');
INSERT INTO `studenttype_tbl` VALUES (201610159, 'FIL 102', '');
INSERT INTO `studenttype_tbl` VALUES (201520904, 'ENG 102', '');
INSERT INTO `studenttype_tbl` VALUES (201311111, 'CSC 123', '');

# --------------------------------------------------------

#
# Table structure for table `studenttypeinfo_tbl`
#

CREATE TABLE `studenttypeinfo_tbl` (
  `student_type_var` int(1) NOT NULL default '0',
  `student_type` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`student_type_var`)
) TYPE=MyISAM;

#
# Dumping data for table `studenttypeinfo_tbl`
#

INSERT INTO `studenttypeinfo_tbl` VALUES (1, 'Regular');
INSERT INTO `studenttypeinfo_tbl` VALUES (2, 'Irregular');

# --------------------------------------------------------

#
# Table structure for table `subject_tbl`
#

CREATE TABLE `subject_tbl` (
  `subject_id` int(5) NOT NULL default '0',
  `subject_code` varchar(20) NOT NULL default '',
  `subject_title` varchar(50) NOT NULL default '',
  `units` float(3,2) NOT NULL default '0.00',
  PRIMARY KEY  (`subject_id`)
) TYPE=MyISAM;

#
# Dumping data for table `subject_tbl`
#

INSERT INTO `subject_tbl` VALUES (101, 'ESC 122', 'ADVANCED ALGEBRA', '2.00');
INSERT INTO `subject_tbl` VALUES (201, 'FIL 102', 'PANANALIKSIK', '3.00');
INSERT INTO `subject_tbl` VALUES (301, 'ENG 102', 'RHETORIC', '5.00');
INSERT INTO `subject_tbl` VALUES (102, 'CSC 123', 'ETHICS', '3.00');

# --------------------------------------------------------

#
# Table structure for table `user_tbl`
#

CREATE TABLE `user_tbl` (
  `id_number` int(10) NOT NULL default '0',
  `passcode` varchar(50) NOT NULL default '',
  `userlevel` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`id_number`)
) TYPE=MyISAM;

#
# Dumping data for table `user_tbl`
#

INSERT INTO `user_tbl` VALUES (1010, 'password', 'Student');
INSERT INTO `user_tbl` VALUES (10101, 'password', 'Faculty');
INSERT INTO `user_tbl` VALUES (20202, 'password', 'Chairperson');
INSERT INTO `user_tbl` VALUES (30303, 'password', 'Dean');
INSERT INTO `user_tbl` VALUES (40404, 'password', 'VPAA');
INSERT INTO `user_tbl` VALUES (50505, 'password', 'Admin');

# --------------------------------------------------------

#
# Table structure for table `userlevel_tbl`
#

CREATE TABLE `userlevel_tbl` (
  `userlevel` varchar(20) NOT NULL default '',
  `userlevel_num` int(5) NOT NULL default '0'
) TYPE=MyISAM;

#
# Dumping data for table `userlevel_tbl`
#

INSERT INTO `userlevel_tbl` VALUES ('Student', 1);
INSERT INTO `userlevel_tbl` VALUES ('Faculty', 2);
INSERT INTO `userlevel_tbl` VALUES ('Chairperson', 3);
INSERT INTO `userlevel_tbl` VALUES ('Dean', 4);
INSERT INTO `userlevel_tbl` VALUES ('VPAA', 5);
INSERT INTO `userlevel_tbl` VALUES ('Admin', 6);

# --------------------------------------------------------

#
# Table structure for table `vpaaadmin_tbl`
#

CREATE TABLE `vpaaadmin_tbl` (
  `id_number` int(10) NOT NULL default '0',
  `last_name` varchar(25) NOT NULL default '',
  `first_name` varchar(25) NOT NULL default '',
  `middle_name` varchar(25) NOT NULL default '',
  `address` varchar(50) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `contact_no` varchar(13) NOT NULL default '0',
  PRIMARY KEY  (`id_number`)
) TYPE=MyISAM;

#
# Dumping data for table `vpaaadmin_tbl`
#

INSERT INTO `vpaaadmin_tbl` VALUES (40404, 'Dela Cruz', 'Juan', 'Noy', '1332 Kalsada Manila', 'vpaadelacruz@plm.edu.ph', '+639147483647');
INSERT INTO `vpaaadmin_tbl` VALUES (50505, 'Garcia', 'Eddie', 'Man', '213 Probinsya', 'garcia@plm.edu.ph', '+639147483543');
