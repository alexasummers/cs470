SELECT ClientID, Last_Name, First_Name, Name, drugID
FROM Patient
LEFT JOIN (SELECT ClientID, drugID, Name
from Client
JOIN medicine
on [Client].DrugID = drug.ID)
on ClientID = ClientID;