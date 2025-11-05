--Creating New Databases _I personall preferred  to Name "MedicalDB"
create  database MedicalDB ;

--- 1-patient table
create table Patients(
PatientID int, 
DOB date, 
LastName varchar(100), 
FirstName varchar(100), 
sex varchar(10));

---Check if it is created
select * from Patients;

---2-Doctors Table
create table Doctors(
DoctorID int, 
FirstName varchar(100), 
LastName varchar(100), 
Specialty varchar(35));

---Check if it is created
select * from Doctors;

---3-Facility Table
create Table Facilities(
FacilityID int, 
Name varchar(100));
---Check if it is created
select * from Facilities;

---4-Encounters table
create table Encounters(
EncounterID int, 
Date date, 
FacilityID int, 
PatientID int, 
VisitType varchar(20), 
DoctorID int);
---Check if it is created
select * from Encounters ;

--5-Blood Pressure Table
create table BloodPressure(
BPID int, 
EncounterID int, 
BP varchar(200));
---Check if it is created
select * from Bloodpressure ;

--6-Medication Table
create table Medications(
MedicationID int, 
PatientID int, 
MedName varchar(100), 
UpdateDate date,
BPMed  Char(1));
---Check if it is created
select * from Medications ;

--7-Diagnoses Table
create table Diagnoses(
DiagnosisID int, 
PatientID int, 
ICDCode varchar(100), 
Description Varchar(100),
LogDate date);
---Check if it is created
select * from Diagnoses;

---8---craete VisitCost
create table VisitCost(
VisitChargeID int, 
VisitType varchar(20),
Charge money)
/*Yeah, you have created
Seven Tables Under MedicalDB 
Database*/
-- Enforce Primary Key
ALTER TABLE Doctors  with nocheck
ADD CONSTRAINT PK_Doctors_DoctorID PRIMARY KEY (DoctorID);

-- Enforce Foreign Key
ALTER TABLE ChildTableName
ADD CONSTRAINT FK_ChildTable_ParentTable FOREIGN KEY (ChildColumnName)
REFERENCES ParentTableName (ParentColumnName);

