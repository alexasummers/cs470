DROP TABLE IF EXISTS Medicine;

CREATE TABLE IF NOT EXISTS Medicine( 
 drugID int(5) NOT NULL AUTO_INCREMENT,
 Name varchar(100) NOT NULL,
 Interactions varchar(100) NOT NULL,
 PRIMARY KEY(drugID)) ENGINE=INNODB;

INSERT INTO Medicine (Name, Interactions) VALUES 
('Lisinopril','Entresto'),
('Atorvastatin','Cyclosporine'),
('Levothyroxine','Metoprolol'),
('Metformin Hydrochloride','Acetazolamide'), 
('Amlodipine','Clarithromycin'), 
('Metoprolol','Ibuprofen'),
('Omeprazole','Rifampin'),
('Simvastatin','Warfarin'),
('Losartan Potassium','Rifampin'),
('Albuterol','NONE'),
('Gabapentin','Losartan'),
('Hydrochlorothiazide','Metoprolol'),
('Acetaminophen','Carbamazepine'),
('Sertraline Hydrochloride','Naproxen'),
('Fluticasone','Ritonavir'),
('Montelukast','Acetaminophen'),
('Furosemide','Amisulpride'),
('Amoxicillin','Demeclocycline'),
('Pantoprazole Sodium','Afatinib'),
('Escitalopram Oxalate','Warfarin'),
('Alprazolam','Carbamazepine'),
('Prednisone','Ciprofloxacin'),
('Bupropion','Eiglustat'),
('Bupropion','Cyclosporine'),
('Acetaminophen','Aspirin'),
('Citalopram','Clopidogrel'),
('Dextroamphetamine','Haloperidol'),
('Ibuprofen','Naproxen'),
('Carvedilol','Fingolimod'),
('Trazodone','Isocarboxazid'),
('Fluoxetine', 'Tryptophan'),
('Tramadol', 'Isocarboxazid'),
('Insulin', 'Lisinopril'),
('Clonazepam', 'Chlorpromazine'),
('Tamsulosin', 'Butabarbital'),
('Atenolol', 'Isocarboxazid'),
('Potassium', 'Captopril'),
('Meloxicam', 'Lisinopril'),
('Rosuvastatin', 'Atazanavir'),
('Clopidogrel ', 'Atorvastatin');

SELECT *
FROM Medicine;
