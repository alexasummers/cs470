select s.LastName, s.FirstName, s.Staff_ID, p.Last_Name, p.First_Name, c.ClientID 
from client c
join patientinformation p 
on c.ClientID = p.patient_InformationID 
join staff s 
on c.StaffID = s.Staff_ID 
order by s.LastName;
