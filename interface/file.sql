-- The Sql creation of the database
-- Create Room table
CREATE TABLE Room (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(50)
);
-- Create Doctor table
CREATE TABLE if not EXISTS Doctor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    birth_date DATE,
    ph_number VARCHAR(15),
    specialization VARCHAR(255),
    rank VARCHAR(50)
);
-- Create Patient table
CREATE TABLE Patient (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    birth_date DATE,
    ph_number VARCHAR(15),
    number_of_days INT,
    room_id INT,
    FOREIGN KEY (room_id) REFERENCES Room(id)
);

-- Create Nurse table
CREATE TABLE Nurse (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    birth_date DATE,
    ph_number VARCHAR(15)
);

-- Create Ward_Boy table
CREATE TABLE Ward_Boy (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    birth_date DATE,
    ph_number VARCHAR(15)
);

-- Create Disease table
CREATE TABLE Disease (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT
);

-- Create Treat table
CREATE TABLE Treat (
    treatment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    disease_id INT,
    start_date DATE,
    end_date DATE,
    description TEXT,
    FOREIGN KEY (patient_id) REFERENCES Patient(id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(id),
    FOREIGN KEY (disease_id) REFERENCES Disease(id)
);

-- Create Care table
CREATE TABLE Care (
    ward_boy_id INT,
    patient_id INT,
    FOREIGN KEY (ward_boy_id) REFERENCES Ward_Boy(id),
    FOREIGN KEY (patient_id) REFERENCES Patient(id)
);

-- Create Nursing table
CREATE TABLE Nursing (
    nurse_id INT,
    patient_id INT,
    FOREIGN KEY (nurse_id) REFERENCES Nurse(id),
    FOREIGN KEY (patient_id) REFERENCES Patient(id)
);

-- Create Bill table
CREATE TABLE Bill (
    id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patient(id)
);
insert into room values (1, "theatre");

insert into patient (name,address,birth_date,ph_number,number_of_days,room_id) values ("naser", "naser's hosue", '2003-7-4', "01095007307", 1, 1);
insert into patient (name,address,birth_date,ph_number,number_of_days,room_id) values ("naser", "naser's hosue", '2003-7-4', "01095007307", 1, 1);
insert into patient (name,address,birth_date,ph_number,number_of_days,room_id) values ("naser", "naser's hosue", '2003-7-4', "01095007307", 1, 1);
insert into patient (name,address,birth_date,ph_number,number_of_days,room_id) values ("naser", "naser's hosue", '2003-7-4', "01095007307", 1, 1);
insert into patient (name,address,birth_date,ph_number,number_of_days,room_id) values ("naser", "naser's hosue", '2003-7-4', "01095007307", 1, 1);
insert into patient (name,address,birth_date,ph_number,number_of_days,room_id) values ("naser", "naser's hosue", '2003-7-4', "01095007307", 1, 1);
insert into patient (name,address,birth_date,ph_number,number_of_days,room_id) values ("naser", "naser's hosue", '2003-7-4', "01095007307", 1, 1);
insert into patient (name,address,birth_date,ph_number,number_of_days,room_id) values ("naser", "naser's hosue", '2003-7-4', "01095007307", 1, 1);
insert into patient (name,address,birth_date,ph_number,number_of_days,room_id) values ("naser", "naser's hosue", '2003-7-4', "01095007307", 1, 1);
insert into patient (name,address,birth_date,ph_number,number_of_days,room_id) values ("naser", "naser's hosue", '2003-7-4', "01095007307", 1, 1);

(name,address,birth_date,ph_number,number_of_days,room_id)

insert into doctor (name,address,birth_date,ph_number,specialization,rank) values ("naser", "naser's hosue", '2003-7-4', "01095007307", "senior", "1st grade");
insert into doctor (name,address,birth_date,ph_number,specialization,rank) values ("naser", "naser's hosue", '2003-7-4', "01095007307", "senior", "1st grade");
insert into doctor (name,address,birth_date,ph_number,specialization,rank) values ("naser", "naser's hosue", '2003-7-4', "01095007307", "senior", "1st grade");
insert into doctor (name,address,birth_date,ph_number,specialization,rank) values ("naser", "naser's hosue", '2003-7-4', "01095007307", "senior", "1st grade");
insert into doctor (name,address,birth_date,ph_number,specialization,rank) values ("naser", "naser's hosue", '2003-7-4', "01095007307", "senior", "1st grade");
insert into doctor (name,address,birth_date,ph_number,specialization,rank) values ("naser", "naser's hosue", '2003-7-4', "01095007307", "senior", "1st grade");
insert into doctor (name,address,birth_date,ph_number,specialization,rank) values ("naser", "naser's hosue", '2003-7-4', "01095007307", "senior", "1st grade");
insert into doctor (name,address,birth_date,ph_number,specialization,rank) values ("naser", "naser's hosue", '2003-7-4', "01095007307", "senior", "1st grade");
insert into doctor (name,address,birth_date,ph_number,specialization,rank) values ("naser", "naser's hosue", '2003-7-4', "01095007307", "senior", "1st grade");
insert into doctor (name,address,birth_date,ph_number,specialization,rank) values ("naser", "naser's hosue", '2003-7-4', "01095007307", "senior", "1st grade");

insert into disease (name,description) values ("malaria", "it is an immunity disease");
insert into disease (name,description) values ("malaria", "it is an immunity disease");
insert into disease (name,description) values ("malaria", "it is an immunity disease");
insert into disease (name,description) values ("malaria", "it is an immunity disease");
insert into disease (name,description) values ("malaria", "it is an immunity disease");
insert into disease (name,description) values ("malaria", "it is an immunity disease");
insert into disease (name,description) values ("malaria", "it is an immunity disease");
insert into disease (name,description) values ("malaria", "it is an immunity disease");
insert into disease (name,description) values ("malaria", "it is an immunity disease");
insert into disease (name,description) values ("malaria", "it is an immunity disease");
insert into disease (name,description) values ("malaria", "it is an immunity disease");

insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (101, 1, 1, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (102, 1, 2, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (103, 1, 3, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (104, 1, 4, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (105, 1, 5, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (106, 1, 6, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (107, 1, 7, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (108, 1, 8, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (109, 1, 9, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (111, 1, 1, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (101, 2, 1, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (102, 2, 2, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (103, 2, 3, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (104, 2, 4, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (105, 2, 5, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (106, 2, 6, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (107, 2, 7, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (108, 2, 8, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (109, 2, 9, '2022-7-4', '2023-8-4', "the patient is looking good");
insert into treat (patient_id,doctor_id,disease_id,start_date,end_date,description) values (111, 2, 1, '2022-7-4', '2023-8-4', "the patient is looking good");

101
102
103
104
105
106
107
108
109
111










SELECT doctor.name AS doctor_name, patient.*
FROM doctor
JOIN treat ON doctor.id = treat.doctor_id
JOIN patient ON treat.patient_id = patient.id;

-- Insert data into the Disease table
INSERT INTO Disease (name, description) VALUES 
('Flu', 'Common viral infection that can be mild or severe'),
('Hypertension', 'High blood pressure that can lead to serious health problems'),
('Diabetes', 'Chronic condition affecting how your body metabolizes sugar'),
('Pneumonia', 'Infection that inflames air sacs in one or both lungs'),
('Arthritis', 'Inflammation of one or more joints causing pain and stiffness');

-- Insert data into the Treat table
INSERT INTO Treat (patient_id, doctor_id, disease_id, start_date, end_date, description) VALUES 
(1, 1, 1, '2024-04-01', '2024-04-10', 'Administering antiviral medication and rest'),
(2, 2, 2, '2024-04-05', '2024-04-15', 'Prescribing medication to lower blood pressure and lifestyle changes'),
(3, 3, 3, '2024-04-10', '2024-04-20', 'Insulin therapy and dietary modifications'),
(4, 4, 4, '2024-04-15', '2024-04-25', 'Antibiotics and oxygen therapy'),
(5, 5, 5, '2024-04-20', '2024-04-30', 'Pain relief medication and physical therapy');

SELECT Doctor.name AS doctor_name, Patient.*
FROM Doctor
JOIN Treat ON Doctor.id = Treat.doctor_id
JOIN Patient ON Treat.patient_id = Patient.id;
-- Insert data into the Disease table
INSERT INTO Disease (name, description) VALUES 
('Flu', 'Common viral infection that can be mild or severe'),
('Hypertension', 'High blood pressure that can lead to serious health problems'),
('Diabetes', 'Chronic condition affecting how your body metabolizes sugar'),
('Pneumonia', 'Infection that inflames air sacs in one or both lungs'),
('Arthritis', 'Inflammation of one or more joints causing pain and stiffness');
-- Insert data into the Treat table
INSERT INTO Treat (patient_id, doctor_id, disease_id, start_date, end_date, description) VALUES 
(1, 1, 1, '2024-04-01', '2024-04-10', 'Administering antiviral medication and rest'),
(2, 2, 2, '2024-04-05', '2024-04-15', 'Prescribing medication to lower blood pressure and lifestyle changes'),
(3, 3, 3, '2024-04-10', '2024-04-20', 'Insulin therapy and dietary modifications'),
(4, 4, 4, '2024-04-15', '2024-04-25', 'Antibiotics and oxygen therapy'),
(5, 5, 5, '2024-04-20', '2024-04-30', 'Pain relief medication and physical therapy');

-- Insert data into the Doctor table
INSERT INTO Doctor (name, address, birth_date, ph_number, specialization, rank) VALUES 
('Dr. Smith', '123 Main Street', '1980-01-15', '123-456-7890', 'Cardiology', 'Senior Consultant'),
('Dr. Johnson', '456 Elm Street', '1975-05-20', '987-654-3210', 'Orthopedics', 'Associate Professor'),
('Dr. Williams', '789 Oak Street', '1985-08-10', '111-222-3333', 'Pediatrics', 'Assistant Professor'),
('Dr. Brown', '567 Pine Street', '1990-03-25', '444-555-6666', 'Neurology', 'Consultant'),
('Dr. Miller', '890 Maple Street', '1982-11-30', '777-888-9999', 'Oncology', 'Senior Resident');

-- Insert data into the Patient table
INSERT INTO Patient (name, address, birth_date, ph_number, number_of_days, room_id) VALUES 
('John Doe', '123 Oak Street', '1990-05-15', '111-222-3333', 5, 1),
('Jane Smith', '456 Maple Street', '1985-09-20', '444-555-6666', 7, 2),
('Mike Johnson', '789 Elm Street', '1988-02-10', '777-888-9999', 3, 3),
('Emily Brown', '567 Pine Street', '1992-07-25', '123-456-7890', 4, 1),
('Alex Miller', '890 Cedar Street', '1983-11-30', '987-654-3210', 6, 2);

-- Insert data into Room table
INSERT INTO Room (type) VALUES ('General Ward'), ('ICU'), ('Emergency Room'), ('Operating Theatre');

-- Insert data into Disease table
INSERT INTO Disease (name, description) VALUES 
('Influenza', 'Viral infection causing fever, cough, sore throat, and muscle aches.'),
('Diabetes', 'Chronic condition affecting insulin production or utilization, leading to high blood sugar levels.'),
('Hypertension', 'High blood pressure condition that can lead to heart disease, stroke, and other complications.');

-- Insert data into Doctor table
INSERT INTO Doctor (name, address, birth_date, ph_number, specialization, rank) VALUES 
('Dr. Smith', '123 Elm Street', '1975-03-12', '555-1234', 'Cardiology', 'Senior Consultant'),
('Dr. Johnson', '456 Oak Avenue', '1980-06-25', '555-5678', 'Pediatrics', 'Consultant'),
('Dr. Williams', '789 Maple Drive', '1978-11-08', '555-9012', 'Orthopedics', 'Senior Consultant');

-- Insert data into Nurse table
INSERT INTO Nurse (name, address, birth_date, ph_number) VALUES 
('Nurse Emily', '567 Pine Street', '1990-08-15', '555-1111'),
('Nurse Mike', '890 Cedar Lane', '1987-05-20', '555-2222'),
('Nurse Sarah', '345 Birch Road', '1995-02-10', '555-3333');

-- Insert data into Ward_Boy table
INSERT INTO Ward_Boy (name, address, birth_date, ph_number) VALUES 
('Ward Boy Alex', '678 Spruce Court', '1992-04-30', '555-4444'),
('Ward Boy Jessica', '901 Elm Avenue', '1993-09-05', '555-5555');

-- Insert data into Patient table
INSERT INTO Patient (name, address, birth_date, ph_number, number_of_days, room_id) VALUES 
('John Doe', '123 Oak Street', '1990-05-15', '555-6666', 5, 1),
('Jane Smith', '456 Maple Street', '1985-09-20', '555-7777', 7, 2),
('Mike Johnson', '789 Elm Street', '1988-02-10', '555-8888', 3, 3),
('Emily Brown', '567 Pine Street', '1992-07-25', '555-9999', 4, 1),
('Alex Miller', '890 Cedar Street', '1983-11-30', '555-0000', 6, 2);

-- Insert data into Treat table
INSERT INTO Treat (patient_id, doctor_id, disease_id, start_date, end_date, description) VALUES 
(1, 1, 1, '2024-05-01', '2024-05-06', 'Prescribed antiviral medication.'),
(2, 2, 2, '2024-05-02', '2024-05-09', 'Insulin therapy and dietary counseling.'),
(3, 3, 3, '2024-05-03', '2024-05-06', 'Blood pressure monitoring and medication.'),
(4, 1, 1, '2024-05-04', '2024-05-08', 'Rest and hydration.'),
(5, 2, 2, '2024-05-05', '2024-05-11', 'Medication and glucose monitoring.');

-- Insert data into Care table
INSERT INTO Care (ward_boy_id, patient_id) VALUES 
(1, 1),
(2, 2),
(1, 3),
(2, 4),
(1, 5);

-- Insert data into Nursing table
INSERT INTO Nursing (nurse_id, patient_id) VALUES 
(1, 1),
(2, 2),
(1, 3),
(2, 4),
(1, 5);

-- Insert data into Bill table
INSERT INTO Bill (patient_id, date) VALUES 
(1, '2024-05-06'),
(2, '2024-05-09'),
(3, '2024-05-07'),
(4, '2024-05-08'),
(5, '2024-05-11');