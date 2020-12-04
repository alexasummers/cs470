select zip,count(patient_informationID) 
from patientinformation
group by Zip;
