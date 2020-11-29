select Staff_ID, LastName, FirstName, ClientID, Last_Name, First_Name
from client
inner join patientinformation
	on [client].ClientID = patient_InformationID
inner join staff
	on [client].StaffID = [staff].StaffID
order by LastName;