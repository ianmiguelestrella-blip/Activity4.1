CREATE DATABASE veterinary;

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);
CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);
CREATE TABLE doctors (
    doctorid INT PRIMARY KEY,
    firstname VARCHAR(150),
    lastname VARCHAR(150),
    specialization VARCHAR(100),
    contactnumber VARCHAR(20),
    email VARCHAR(100)
);
CREATE TABLE invoices (
    invoiceid INT PRIMARY KEY,
    appointid INT,
    amount DECIMAL(10,2),
    issuedate DATE,
    FOREIGN KEY (appointid) REFERENCES appointments(appointid)
);
CREATE TABLE medicalrecords (
    recordid INT PRIMARY KEY,
    animalid INT,
    doctorid INT,
    diagnosis VARCHAR(250),
    treatment TEXT,
    recorddate DATE,
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);
INSERT INTO owners (ownerid, ofirstname, olastname, address, phone, email) VALUES
(1, 'Juan', 'Dela Cruz', '123 Narra St, Lipa City', '09171234567', 'juan.dc@example.com'),
(2, 'Ben', 'Reyes', '456 Manga Ave, Batangas City', '09181234567', 'ben.reyes@example.com'),
(3, 'Carlos', 'Ramiro', '789 Monimento Rd, Tanauan', '09191234567', 'carlos.ramiro@example.com'),
(4, 'Shai', 'Lopez', '321 Putol St, Lipa City', '09201234567', 'shai.lopez@example.com'),
(5, 'Ron', 'Garcia', '654 Malaya Ave, Batangas City', '09211234567', 'ron.garcia@example.com'),
(6, 'Mae', 'Torres', '987 Malvar St, Tanauan', '09221234567', 'mae.torres@example.com'),
(7, 'Miguel', 'Ramos', '159 Mabini St, Lipa City', '09231234567', 'miguel.ramos@example.com'),
(8, 'Sofia', 'Fernandez', '753 Rizal Ave, Batangas City', '09241234567', 'sofia.fernandez@example.com'),
(9, 'Diego', 'Martinez', '852 Bonifacio Rd, Tanauan', '09251234567', 'diego.martinez@example.com'),
(10, 'Conan', 'Gomez', '951 Katipunan St, Lipa City', '09261234567', 'conan.gomez@example.com');
INSERT INTO animals (animalid, name, species, breed, dateofbirth, gender, color, ownerid) VALUES
(1, 'Taeri', 'Dog', 'Golden Retriever', '2018-05-12', 'Female', 'Yellow', 1),
(2, 'Browny', 'Dog', 'Chow chow', '2019-03-08', 'Male', 'Brown', 2),
(3, 'Mow', 'Dog', 'Beagle', '2020-07-22', 'Male', 'White', 3),
(4, 'Kitty', 'Cat', 'Persian', '2017-11-30', 'Female', 'White', 4),
(5, 'Leo', 'Dog', 'German Shepherd', '2016-09-15', 'Male', 'Black', 5),
(6, 'Carrot', 'Rabbit', 'Netherland Dwarf', '2021-01-10', 'Male', 'Gray', 6),
(7, 'Mawi', 'Dog', 'Poodle', '2018-04-05', 'Female', 'Cream', 7),
(8, 'Yanah', 'Cat', 'Persian', '2019-06-18', 'Male', 'Brown', 8),
(9, 'Coco', 'Bird', 'Cockatiel', '2020-02-25', 'Female', 'Yellow and Gray',9),
(10, 'Buddy', 'Dog', 'Golden Retriever', '2015-12-01', 'Male', 'Golden', 10);
INSERT INTO appointments (appointid, animalid, appointdate, reason) VALUES
(1, 1, '2025-01-10', 'Annual check-up'),
(2, 2, '2025-01-12', 'Vaccination'),
(3, 3, '2025-01-15', 'allergy treatment'),
(4, 4, '2025-01-18', 'Influenza'),
(5, 5, '2025-01-20', 'Cough'),
(6, 6, '2025-01-22', 'Fever'),
(7, 7, '2025-01-25', 'Follow-up visit'),
(8, 8, '2025-01-28', 'Eye check-up'),
(9, 9, '2025-01-30', 'Medical'),
(10, 10, '2025-02-02', 'X-ray');
