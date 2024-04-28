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