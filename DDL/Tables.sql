CREATE TABLE `staff` (
  `loginID` int DEFAULT NULL,
  `Staff_ID` int NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `Department_ID` int NOT NULL,
  `Credentials` varchar(10) NOT NULL,
  PRIMARY KEY (`Staff_ID`),
  KEY `loginID` (`loginID`),
  KEY `Department_ID` (`Department_ID`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`loginID`) REFERENCES `login` (`loginID`),
  CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`Department_ID`) REFERENCES `department` (`departmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `patientinformation` (
  `Last_Name` varchar(255) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `HouseNum` int NOT NULL,
  `Street` varchar(255) NOT NULL,
  `Apartment` int NOT NULL,
  `Zip` int NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `ICE_Fname` varchar(255) NOT NULL,
  `ICE_Lname` varchar(255) NOT NULL,
  `ICE_relation` varchar(255) NOT NULL,
  `ICE_number` varchar(255) NOT NULL,
  `client_InformationID` int DEFAULT NULL,
  KEY `patient_InformationID` (`client_InformationID`),
  KEY `Zip` (`Zip`),
  CONSTRAINT `patientinformation_ibfk_1` FOREIGN KEY (`client_InformationID`) REFERENCES `client` (`ClientID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `patientinformation_ibfk_2` FOREIGN KEY (`Zip`) REFERENCES `citystatezip` (`Zip`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `medicinestaffjunction` (
  `DrugID` int NOT NULL,
  `Staff_ID` int NOT NULL,
  PRIMARY KEY (`DrugID`,`Staff_ID`),
  KEY `staff2_fk` (`Staff_ID`),
  CONSTRAINT `drug2_fk` FOREIGN KEY (`DrugID`) REFERENCES `medicine` (`drugID`) ON DELETE RESTRICT,
  CONSTRAINT `staff2_fk` FOREIGN KEY (`Staff_ID`) REFERENCES `staff` (`Staff_ID`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `login` (
  `loginID` int NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`loginID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `medicine` (
  `drugID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `Interactions` varchar(100) NOT NULL,
  PRIMARY KEY (`drugID`)
) ENGINE=InnoDB AUTO_INCREMENT=2345346 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `department` (
  `departmentID` int NOT NULL,
  `Name` varchar(255) NOT NULL,
  PRIMARY KEY (`departmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `clientstaffjunction` (
  `ClientID` int NOT NULL,
  `StaffID` int NOT NULL,
  PRIMARY KEY (`ClientID`,`StaffID`),
  KEY `staff_fk` (`StaffID`),
  CONSTRAINT `client_fk` FOREIGN KEY (`ClientID`) REFERENCES `client` (`ClientID`) ON DELETE RESTRICT,
  CONSTRAINT `staff_fk` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`Staff_ID`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `clientdrugjunction` (
  `ClientID` int NOT NULL,
  `DrugID` int NOT NULL,
  PRIMARY KEY (`ClientID`,`DrugID`),
  KEY `drug_fk` (`DrugID`),
  CONSTRAINT `client2_fk` FOREIGN KEY (`ClientID`) REFERENCES `client` (`ClientID`) ON DELETE RESTRICT,
  CONSTRAINT `drug_fk` FOREIGN KEY (`DrugID`) REFERENCES `medicine` (`drugID`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `client` (
  `ClientID` int NOT NULL AUTO_INCREMENT,
  `StaffID` int NOT NULL,
  `DrugID` int DEFAULT NULL,
  `Length_of_stay` int NOT NULL,
  `Vitals` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ClientID`),
  UNIQUE KEY `ClientID` (`ClientID`),
  KEY `DrugID` (`DrugID`),
  CONSTRAINT `client_ibfk_1` FOREIGN KEY (`DrugID`) REFERENCES `medicine` (`drugID`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `citystatezip` (
  `Zip` int NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` varchar(30) NOT NULL,
  PRIMARY KEY (`Zip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
