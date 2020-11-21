CREATE VIEW Administration AS
SELECT *
FROM PatientInformation;

CREATE VIEW Doctor AS
SELECT *
FROM PatientInformation,patientdrugjunction,client;

CREATE VIEW Nurse AS
SELECT PatientInformation.Last_name,PatientInformation.First_name,Client.ClientID,Client.DrugID,Client.Length_of_stay,Client.Vitals
FROM PatientInformation
INNER JOIN Client ON PatientInformation.patient_InformationID=Client.ClientID;
