USE lana_dog_walking;
CREATE TABLE Clients (
    `ClientID`     INT          NOT NULL,
    `First Name`   VARCHAR(50)  NOT NULL,
    `Last Name`    VARCHAR(50)  NOT NULL,
    `Phone Number` VARCHAR(15)  NOT NULL,
    PRIMARY KEY (`ClientID`)
);

CREATE TABLE Dogs (
    `ClientID`        INT          NOT NULL,
    `DogID`           INT          NOT NULL,
    `Breed`           VARCHAR(50)  NOT NULL,
    `Age`             INT          NOT NULL,
    `DateOfBirth`     DATE         NOT NULL,
    `Size`            VARCHAR(5)   NOT NULL,
    `Temperament`     VARCHAR(20)  NOT NULL,
    `Spayed/Neutered` VARCHAR(3)   NOT NULL,
    PRIMARY KEY (`DogID`),
    FOREIGN KEY (`ClientID`) REFERENCES Clients(`ClientID`)
);

CREATE TABLE Employees (
    `EmployeeID`       VARCHAR(10)  NOT NULL,
    `Assigned Walker`  VARCHAR(3)   NOT NULL,
    `DogID`            INT          NOT NULL,
    `Breed`            VARCHAR(50)  NOT NULL,
    PRIMARY KEY (`EmployeeID`),
    FOREIGN KEY (`DogID`) REFERENCES Dogs(`DogID`)
);

CREATE TABLE Payments (
    `ClientID`     INT          NOT NULL,
    `First Name`   VARCHAR(50)  NOT NULL,
    `Last Name`    VARCHAR(50)  NOT NULL,
    `Phone Number` VARCHAR(15)  NOT NULL,
    `DogID`        INT          NOT NULL,
    `Payment`      VARCHAR(10)  NOT NULL,
    PRIMARY KEY (`ClientID`),
    FOREIGN KEY (`ClientID`)  REFERENCES Clients(`ClientID`),
    FOREIGN KEY (`DogID`)     REFERENCES Dogs(`DogID`)
);

INSERT INTO Clients (`ClientID`, `First Name`, `Last Name`, `Phone Number`) VALUES
(1,  'Dave',     'Lopez',     '917-222-2322'),
(2,  'Ana',      'Ramirez',   '347-857-9900'),
(3,  'Amanda',   'Valdez',    '718-222-2356'),
(4,  'Rodrigo',  'Gomez',     '929-288-2929'),
(5,  'Adam',     'White',     '917-232-8992'),
(6,  'Jonathan', 'Lopez',     '347-336-3234'),
(7,  'Demy',     'Melgar',    '718-245-2727'),
(8,  'Yanuris',  'Campusano', '718-125-8234'),
(9,  'Kasaiah',  'Antonio',   '809-222-9034'),
(10, 'Natalia',  'Marquez',   '718-656-9797');

INSERT INTO Dogs (`ClientID`, `DogID`, `Breed`, `Age`, `DateOfBirth`, `Size`, `Temperament`, `Spayed/Neutered`) VALUES
(1,  1,  'Poodle',             1, '2025-03-18', 'M',  'Shy',     'Yes'),
(2,  2,  'Husky',              3, '2023-01-12', 'L',  'Trained', 'No'),
(3,  3,  'Pitbull',            2, '2024-02-04', 'L',  'Trained', 'Yes'),
(4,  4,  'Rottweiler',         2, '2024-12-11', 'L',  'Shy',     'No'),
(5,  5,  'German Sheppard',    1, '2025-04-02', 'L',  'Trained', 'No'),
(6,  6,  'Bulldog',            4, '2022-11-10', 'M',  'Bold',    'Yes'),
(7,  7,  'Golden Retriever',   3, '2023-06-20', 'L',  'Bold',    'Yes'),
(8,  8,  'Labrador Retriever', 2, '2024-09-15', 'L',  'Trained', 'No'),
(9,  9,  'Pug',                2, '2024-08-19', 'S',  'Shy',     'Yes'),
(10, 10, 'Great Dane',         5, '2021-04-16', 'XL', 'Trained', 'Yes');

INSERT INTO Employees (`EmployeeID`, `Assigned Walker`, `DogID`, `Breed`) VALUES
('u-2322', 'Yes', 1,  'Poodle'),
('u-9900', 'Yes', 2,  'Husky'),
('u-2356', 'No',  3,  'Pitbull'),
('u-2929', 'Yes', 4,  'Rottweiler'),
('u-8992', 'No',  5,  'German Sheppard'),
('u-3234', 'Yes', 6,  'Bulldog'),
('u-2727', 'No',  7,  'Golden Retriever'),
('u-8234', 'Yes', 8,  'Labrador Retriever'),
('u-9034', 'Yes', 9,  'Pug'),
('u-9797', 'Yes', 10, 'Great Dane');

INSERT INTO Payments (`ClientID`, `First Name`, `Last Name`, `Phone Number`, `DogID`, `Payment`) VALUES
(1,  'Dave',     'Lopez',     '917-222-2322', 1,  'Debit'),
(2,  'Ana',      'Ramirez',   '347-857-9900', 2,  'Debit'),
(3,  'Amanda',   'Valdez',    '718-222-2356', 3,  'Debit'),
(4,  'Rodrigo',  'Gomez',     '929-288-2929', 4,  'Debit'),
(5,  'Adam',     'White',     '917-232-8992', 5,  'Cash'),
(6,  'Jonathan', 'Lopez',     '347-336-3234', 6,  'Cash'),
(7,  'Demy',     'Melgar',    '718-245-2727', 7,  'Credit'),
(8,  'Yanuris',  'Campusano', '718-125-8234', 8,  'Credit'),
(9,  'Kasaiah',  'Antonio',   '809-222-9034', 9,  'Debit'),
(10, 'Natalia',  'Marquez',   '718-656-9797', 10, 'Debit');

INSERT INTO Clients (`ClientID`, `First Name`, `Last Name`, `Phone Number`) VALUES
(11, 'Carlos',   'Rivera',    '646-311-4421'),
(12, 'Sofia',    'Torres',    '718-903-5512'),
(13, 'Marcus',   'Johnson',   '917-445-6603'),
(14, 'Priya',    'Patel',     '929-567-7714'),
(15, 'Elena',    'Morales',   '347-689-8825'),
(16, 'James',    'Carter',    '646-701-9936'),
(17, 'Mei',      'Chen',      '718-813-1047'),
(18, 'Andre',    'Williams',  '917-925-2158'),
(19, 'Fatima',   'Hassan',    '929-037-3269'),
(20, 'Lucas',    'Bennett',   '347-149-4370');

INSERT INTO Dogs (`ClientID`, `DogID`, `Breed`, `Age`, `DateOfBirth`, `Size`, `Temperament`, `Spayed/Neutered`) VALUES
(11, 11, 'Chihuahua',          3, '2023-03-05', 'S',  'Bold',    'Yes'),
(12, 12, 'Beagle',             2, '2024-07-22', 'M',  'Trained', 'Yes'),
(13, 13, 'Doberman',           4, '2022-05-14', 'L',  'Bold',    'No'),
(14, 14, 'Shih Tzu',           1, '2025-01-30', 'S',  'Shy',     'Yes'),
(15, 15, 'Border Collie',      3, '2023-09-08', 'M',  'Trained', 'No'),
(16, 16, 'Dachshund',          5, '2021-11-27', 'S',  'Shy',     'Yes'),
(17, 17, 'Australian Shepherd',2, '2024-04-11', 'L',  'Trained', 'Yes'),
(18, 18, 'Boxer',              6, '2020-08-03', 'L',  'Bold',    'No'),
(19, 19, 'Maltese',            1, '2025-02-17', 'S',  'Shy',     'Yes'),
(20, 20, 'Saint Bernard',      4, '2022-10-09', 'XL', 'Trained', 'No');

INSERT INTO Employees (`EmployeeID`, `Assigned Walker`, `DogID`, `Breed`) VALUES
('u-4421', 'Yes', 11, 'Chihuahua'),
('u-5512', 'Yes', 12, 'Beagle'),
('u-6603', 'No',  13, 'Doberman'),
('u-7714', 'Yes', 14, 'Shih Tzu'),
('u-8825', 'Yes', 15, 'Border Collie'),
('u-9936', 'No',  16, 'Dachshund'),
('u-1047', 'Yes', 17, 'Australian Shepherd'),
('u-2158', 'No',  18, 'Boxer'),
('u-3269', 'Yes', 19, 'Maltese'),
('u-4370', 'Yes', 20, 'Saint Bernard');

INSERT INTO Payments (`ClientID`, `First Name`, `Last Name`, `Phone Number`, `DogID`, `Payment`) VALUES
(11, 'Carlos',  'Rivera',   '646-311-4421', 11, 'Credit'),
(12, 'Sofia',   'Torres',   '718-903-5512', 12, 'Debit'),
(13, 'Marcus',  'Johnson',  '917-445-6603', 13, 'Cash'),
(14, 'Priya',   'Patel',    '929-567-7714', 14, 'Credit'),
(15, 'Elena',   'Morales',  '347-689-8825', 15, 'Debit'),
(16, 'James',   'Carter',   '646-701-9936', 16, 'Cash'),
(17, 'Mei',     'Chen',     '718-813-1047', 17, 'Credit'),
(18, 'Andre',   'Williams', '917-925-2158', 18, 'Debit'),
(19, 'Fatima',  'Hassan',   '929-037-3269', 19, 'Cash'),
(20, 'Lucas',   'Bennett',  '347-149-4370', 20, 'Credit');