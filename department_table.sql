CREATE TABLE department (
    departmentID INT(5) NOT NULL,
    Name VARCHAR(255) NOT NULL,
    PRIMARY KEY (departmentID)
)ENGINE=INNODB;

INSERT INTO department (Name, departmentID)
VALUES ('A&E',010001),
('Admissions',010002),
('Anesthetics',010003),
('Burns',010004),
('Cardiology',010005),
('CCU',010006),
('ICU',010007),
('Diagnostic Imaging',010008),
('Discharge Lounge',010009),
('Gastroenterology',010010),
('General Surgery',010011),
('Gynecology',010012),
('Mammography',010013),
('Maternity',010014),
('Neonatal',010015),
('Nephrology',010016),
('Neurology',010017),
('Oncology',010018),
('Ophthalmology',010019),
('Orthopedics',010020),
('Otolaryngology',010021),
('Pharmacy',010022),
('Urology',010023);

SELECT *
FROM department