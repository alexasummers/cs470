
SELECT ClientID, drugID, Name
from Client
JOIN medicine
on [Client].DrugID = drug.ID
as TEMP;
SELECT ClientID, Last_Name, First_Name, Name, drugID
FROM Patientinformation
LEFT JOIN TEMP
on ClientID = ClientID;
