CREATE TABLE HospitalData (
    Patient_ID INT PRIMARY KEY,
    Patient_Name VARCHAR(255),
    Admission_Date DATE,
    Treatment VARCHAR(255)
);

INSERT INTO HospitalData (Patient_ID, Patient_Name, Admission_Date, Treatment)
VALUES
    (1, 'John Doe', '2022-01-01', 'Orthopedic'),
    (2, 'Jane Smith', '2022-01-05', 'Cardiology'),
    (3, 'Alice Johnson', '2022-02-10', 'Neurology'),
    (4, 'Bob Anderson', '2022-02-15', 'Oncology'),
    (5, 'Eva Williams', '2022-03-03', 'Gastroenterology'),
    (6, 'Michael Brown', '2022-04-12', 'Orthopedic'),
    (7, 'Sophia Taylor', '2022-05-20', 'Cardiology'),
    (8, 'William Jones', '2022-06-08', 'Oncology'),
    (9, 'Olivia Davis', '2022-07-15', 'Neurology'),
    (10, 'Liam White', '2022-08-22', 'Gastroenterology');

select * from HospitalData;

# 1 :
select * from HospitalData;

# 2:

select Patient_Name , Treatment from HospitalData 
where Admission_Date > "2022-05-01";

# 3.

select Patient_Name , Admission_Date , Treatment from HospitalData
order by Admission_Date desc;

# 4 . 

select count(*) from HospitalData;

# 5.

select distinct Treatment , count(*)  as no_of_pat
from HospitalData
group by Treatment;

# 6 .

CREATE TABLE Doctors (
    Doctor_ID INT PRIMARY KEY,
    Doctor_Name VARCHAR(255),
    Specialization VARCHAR(255)
);

INSERT INTO Doctors (Doctor_ID, Doctor_Name, Specialization)
VALUES
    (1, 'Dr. Smith', 'Orthopedic'),
    (2, 'Dr. Johnson', 'Cardiology'),
    (3, 'Dr. Brown', 'Neurology'),
    (4, 'Dr. White', 'Oncology'),
    (5, 'Dr. Davis', 'Gastroenterology'),
    (6, 'Dr. Taylor', 'Orthopedic'),
    (7, 'Dr. Jones', 'Cardiology'),
    (8, 'Dr. Anderson', 'Oncology'),
    (9, 'Dr. Williams', 'Neurology'),
    (10, 'Dr. Miller', 'Gastroenterology');

-- Performing an inner join to retrieve data
SELECT
    H.Patient_Name,
    H.Admission_Date,
    H.Treatment,
    D.Doctor_Name
FROM
    HospitalData H
JOIN
    Doctors D ON H.Treatment = D.Specialization;
