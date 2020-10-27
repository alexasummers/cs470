-- Table structure for table `Staff`
--

CREATE TABLE `Staff` (
  `Staff_ID` int(4) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `Department_ID` int(4) NOT NULL,
  `Credentials` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Staff`
--

INSERT INTO `Staff` (`Staff_ID`, `LastName`, `FirstName`, `Department_ID`, `Credentials`) VALUES
(1111, 'Jones', 'Susan', 1001, 'PhD'),
(2222, 'Smith', 'Thomas', 1002, 'MD'),
(3333, 'Wells', 'Mindy', 1003, 'DO'),
(4444, 'Wilson', 'George', 1004, 'APRN'),
(5555, 'Bartlett', 'Diane', 1005, 'RN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Staff`
--
ALTER TABLE `Staff`
  ADD PRIMARY KEY (`Staff_ID`);