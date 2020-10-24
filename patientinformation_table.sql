DROP TABLE IF EXISTS patientinformation;

CREATE TABLE PatientInformation
(Last_Name varchar (255) NOT NULL,
First_Name varchar (255) NOT NULL,
HouseNum int (5) NOT NULL,
Street varchar (255) NOT NULL,
Apartment int (3),
Zip varchar (255) NOT NULL,
Phone varchar (255) NOT NULL,
ICE_Fname varchar (255) NOT NULL,
ICE_Lname varchar (255) NOT NULL,
ICE_relation varchar (255) NOT NULL,
ICE_number varchar (255) NOT NULL,
patient_InformationID INT unsigned,
FOREIGN KEY (patient_InformationID)
	REFERENCES client(ClientID)
    ON DELETE RESTRICT);


INSERT INTO PatientInformation (Last_Name, First_Name, HouseNum, Street, Apartment, Zip, Phone, ICE_Fname, ICE_Lname, ICE_relation, ICE_number) VALUES
 ("Smith", "Jacob", 2444, "Spruce Road", 0, 12001, "123-123-1234", "John", "Smith", "Father", "122-124-1234"),
 ("Miller", "Ginger", 124, "Spring Lane", 0, 12011, "123-123-1235", "Mary", "Miller", "Mother", "122-124-1239"),
 ("Johnson", "James", 122, "Kings Circle", 0, 42001, "123-123-1134", "Jake", "Johnson", "Brother", "222-123-1111"),
 ("Jones", "April", 789, "Fall Lane", 0, 21001, "183-495-2039", "May", "Jones", "Mother", "931-304-2934"),
 ("Davis", "Cindy", 1231, "Forest Woods", 621, 12002, "123-495-6978", "Martin", "Davis", "Husband", "123-495-5976"),
 ("Williams", "Michael", 2333, "Spruce Road", 0, 12003, "123-444-5067", "Lily", "Williams", "Sister", "069-769-3456"),
 ("Wilson", "Adam", 872, "Happy Drive", 0, 12034, "344-344-5666", "Kennie", "Wilson", "Mother", "034-545-6578"),
 ("Clark", "Matthew", 1556, "Maverick Lane", 0, 11001, "123-123-1238", "John", "Clark", "Father", "122-156-1234"),
 ("Taylor", "Mark", 222, "Martin Luther King Road", 0, 12201, "123-123-1239", "Nicholas", "Taylor", "Father", "122-157-1234"),
 ("Davis", "Nick", 723, "Bellas Road", 0, 12005, "123-123-1240", "Mary", "Davis", "Mother", "122-158-1234"),
 ("Brown", "Monica",334, "Kirkwood Circle", 0, 12001, "123-123-1241", "Kim", "Brown", "Cousin", "122-159-1234"),
 ("Garcia", "Maya", 2234, "Spring Lane", 230, 12003, "123-123-1242", "Juan", "Garcia", "Grandfather", "122-160-1235"),
 ("Smith", "Bob", 622, "Barret Street", 0, 12005, "123-123-1243", "Mason", "Hansen", "Friend", "122-161-1234"),
 ("Clark", "Meredith", 2334, "Junior Avenue", 0, 12005, "123-123-1244", "Daniel", "Clark", "Husband", "122-162-1234"),
 ("Lewis", "Mona", 7899, "Baldwin Drive", 0, 12003, "123-123-1245", "Conner", "Lewis", "Brother", "122-124-1263"),
 ("Robinson", "Masie", 641, "Blue Bright Lane", 0, 42001, "123-123-1246", "Smith", "Robinson", "Father", "164-124-1234"),
 ("Turner", "Sanya", 5324, "Callington Way", 33, 12005, "123-123-1247", "Sonia", "Turner", "Mother", "122-159-0034"),
 ("Cook", "Heather", 3214, "Kavenlaw Street", 0, 21001, "123-123-1248", "Honey", "Cook", "Mother", "122-166-1234"),
 ("Walker", "Mason", 4442, "Pellington Road", 4, 12003, "123-123-1249", "Ginny", "Walker", "Wife", "122-167-1234"),
 ("Young", "Jason", 6281, "Manor Lane", 9, 12002, "123-123-1250", "Paulina", "Sandoval", "Friend", "122-168-1234"),
 ("Scott", "Samantha", 782, "Langview Road", 0, 11001, "123-123-1251", "Jamie", "Scott", "Husband", "122-169-1234"),
 ("Nyugen", "Li", 9229, "Hammington Drive", 0, 12003, "123-123-1252", "Han", "Nyugen", "Husband", "122-170-1234"),
 ("Lopez", "Alexander", 532, "Carmen Road", 0, 12011, "123-123-1252", "Mario", "Lopez", "Father", "172-124-1234"),
 ("Hill", "John", 432, "Rockford Lane", 0, 12001, "123-123-1253", "Judy", "Hill", "Mother", "122-124-7334"),
 ("Green", "Jimmy", 9294, "Longview Drive", 341, 42001, "173-123-1255", "Arnie", "Green", "Friend", "122-174-1234");

SELECT *
FROM patientinformation