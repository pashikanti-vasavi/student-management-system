

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


INSERT INTO tbladmin VALUES
("1","Admin","admin","8979555558","admin@gmail.com","5f4dcc3b5aa765d61d8327deb882cf99","2019-10-11 10:06:52");




CREATE TABLE `tblclass` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(50) DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;


INSERT INTO tblclass VALUES
("1","10","A","2022-01-13 16:12:14"),
("2","10","B","2022-01-13 16:12:35"),
("3","10","C","2022-01-13 16:12:41"),
("4","11","A","2022-01-13 16:12:47"),
("5","11","B","2022-01-13 16:12:52"),
("6","11","C","2022-01-13 16:12:57"),
("7","11","D","2022-01-13 16:13:04"),
("8","12","A","2022-01-13 16:13:10"),
("9","12","C","2022-01-13 16:13:15");




CREATE TABLE `tblnotice` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `NoticeTitle` mediumtext,
  `ClassId` int(10) DEFAULT NULL,
  `NoticeMsg` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;


INSERT INTO tblnotice VALUES
("2","Marks of Unit Test.","3","Meet your class teacher for seeing copies of unit test","2022-01-19 12:05:58"),
("3","Marks of Unit Test.","2","Meet your class teacher for seeing copies of unit test","2022-01-19 12:05:58"),
("4","Test","3","This is for testing.","2022-02-02 23:47:03"),
("5","Test Notice","8","This is for Testing.","2022-02-03 00:33:43");




CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


INSERT INTO tblpage VALUES
("1","aboutus","About Us","<div style=\"text-align: start;\"><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, ????, ??, SimSun, STXihei, ????, serif\"><span style=\"font-size: 26px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></font><br></div>","","",""),
("2","contactus","Contact Us","890,Sector 62, Gyan Sarovar, GAIL Noida(Delhi/NCR)","infodata@gmail.com","7896541236","");




CREATE TABLE `tblpublicnotice` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;


INSERT INTO tblpublicnotice VALUES
("1","School will re-open","Consult your class teacher.","2022-01-20 14:41:57"),
("2","Test Public Notice","This is for Testing\n","2022-02-03 00:34:10");




CREATE TABLE `tblstudent` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `FatherName` mediumtext,
  `MotherName` mediumtext,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `AltenateNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;


INSERT INTO tblstudent VALUES
("1","jghj","jhghjg@gmail.com","4","Male","2022-01-13","ui-99","bbmnb","mnbmb","5465454645","4646546565","J-908, Hariram Nagra New Delhi","kjhkjh","202cb962ac59075b964b07152d234b70","ebcd036a0db50db993ae98ce380f64191642082944.png","2022-01-13 19:39:04"),
("2","Kishore Sharma","kishore@gmail.com","3","Male","2019-01-05","10A12345","Janak Sharma","Indra Devi","7879879879","7987979879","kjhkhjkhdkshfiludzshfiu\nfjedh\nk;jk","kishore2019","202cb962ac59075b964b07152d234b70","5bede9f47102611b4df6241c718af7fc1642314213.jpg","2022-01-16 11:53:33"),
("3","Anshul","anshul@gmali.com","2","Female","1986-01-05","uii-990","Kailesg","jakinnm","4646546546","6546598798","jlkjkljoiujiouoil","anshul1986","202cb962ac59075b964b07152d234b70","4f0691cfe48c8f74fe413c7b92391ff41642605892.jpg","2022-01-19 20:54:52"),
("4","John Doe","john@gmail.com","1","Female","2002-02-10","10806121","Anuj Kumar","Garima Singh","1234698741","1234567890","New Delhi","john12","5f4dcc3b5aa765d61d8327deb882cf99","ebcd036a0db50db993ae98ce380f64191643825985.png","2022-02-02 23:49:45"),
("5","Anuj kumar Singh","akkr@gmail.com","8","Male","2001-05-30","1080623","Bijendra Singh","Kamlesh Devi","1472589630","1236987450","New Delhi","anujk3","5f4dcc3b5aa765d61d8327deb882cf99","2f413c4becfa2db4bc4fc2ccead84f651643828242.png","2022-02-03 00:27:22"),
("6","chiru","chiru1532@gmail.com","3","Male","2021-04-15","123456","asdf","fdasdf","5465465454","4654654","sdasdf","chiru","5f4dcc3b5aa765d61d8327deb882cf99","d8f8dedc0591f3b913dbcdf0fdea26871652712878.jpg","2022-05-16 20:24:38");


