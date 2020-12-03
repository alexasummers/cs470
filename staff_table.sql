
-- DROP TABLE IF EXISTS Staff;

-- CREATE TABLE `Staff` (
--   `Staff_ID` int(4) NOT NULL,
--   `LastName` varchar(20) NOT NULL,
--   `FirstName` varchar(20) NOT NULL,
--   `Department_ID` int(4) NOT NULL,
--   `Credentials` varchar(10) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Staff`
--

INSERT INTO `Staff` (`Staff_ID`, `LastName`, `FirstName`, `Department_ID`, `Credentials`) VALUES
-- (1111, 'Jones', 'Susan', 1001, 'PhD'),
-- (2222, 'Smith', 'Thomas', 1002, 'MD'),
-- (3333, 'Wells', 'Mindy', 1003, 'DO'),
-- (4444, 'Wilson', 'George', 1004, 'APRN'),
-- (5555, 'Bartlett', 'Diane', 1005, 'RN'),
-- (6666, 'Brown', 'John', 010002, 'MD'),
-- (7777, 'Garcia', 'Robert', 010003, 'MD'),
-- (8888, 'Anderson', 'Mary', 010004, 'DO'),
-- (9999, 'Taylor', 'Patricia', 010006, 'PA'),
-- (1112, 'Moore', 'Jennifer', 010007, 'RN'),
-- (2223, 'Clark', 'William', 010008, 'APRN'),
-- (3334, 'White', 'David', 010009, 'PhD'),
-- (4445, 'Perez', 'Sarah', 010010, 'DO'),
-- (5556, 'Lewis', 'Ronald', 010012, 'RN'),
-- (6667, 'Young', 'Carol', 010013, 'RN'),
-- (7778, 'King', 'Melissa', 010014, 'DO'),
-- (8889, 'Hill', 'Amy', 010016, 'PA'),
-- (1121, 'Green', 'Stephanie', 010018, 'MD'),
-- (2232, 'Adams', 'Laura', 010020, 'APRN'),
-- (3343, 'Baker', 'Ryan', 010021, 'PA'),
-- (4454, 'Campbell', 'Jonathan', 010022, 'DO'),
-- (5565, 'Davidson', 'James', 010023, 'RN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Staff`
--
ALTER TABLE `Staff`
  ADD PRIMARY KEY (`Staff_ID`);

UPDATE staff
SET Department_ID = "10005"
WHERE Department_ID = "010005";

UPDATE staff
SET Department_ID = "10011"
WHERE Department_ID = "010011";

UPDATE staff
SET Department_ID = "10015"
WHERE Department_ID = "010015";

UPDATE staff
SET Department_ID = "10017"
WHERE Department_ID = "010017";

UPDATE staff
SET Department_ID = "10005"
WHERE Department_ID = "1005";

ALTER TABLE staff
ADD FOREIGN KEY (Department_ID) REFERENCES department(departmentID);


ALTER TABLE staff ADD COLUMN 
loginID int FIRST;

ALTER TABLE staff
ADD FOREIGN KEY (loginID) REFERENCES login(loginID);

UPDATE staff
SET loginID = "2"
WHERE Credentials = "PhD" "MD" "DO";

UPDATE staff
SET loginID = "2"
WHERE Credentials = "MD";

UPDATE staff
SET loginID = "2"
WHERE Credentials = "DO";

UPDATE staff
SET loginID = "3"
WHERE Credentials = "RN";

UPDATE staff
SET loginID = "4"
WHERE Credentials = "APRN";

UPDATE staff
SET loginID = "7"
WHERE Credentials = "PA";

SELECT *
FROM staff;

SELECT *
FROM department
