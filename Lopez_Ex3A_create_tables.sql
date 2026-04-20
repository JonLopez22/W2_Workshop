CREATE DATABASE IF NOT EXISTS lana_dog_walking;
use lana_dog_walking;

CREATE TABLE Clients (
    ClientID    INT           NOT NULL,         -- PRIMARY KEY
    FirstName   VARCHAR(50)   NOT NULL,
    LastName    VARCHAR(50)   NOT NULL,
    PhoneNumber VARCHAR(15)   NOT NULL,
    CONSTRAINT PK_Clients PRIMARY KEY (ClientID)
);

CREATE TABLE Dogs (
    ClientID        INT           NOT NULL,   -- PRIMARY KEY (and FK → Clients)
    DogID           INT           NOT NULL,   -- FOREIGN KEY reference identifier
    Breed           VARCHAR(50)   NOT NULL,
    Age             INT           NULL,
    DateOfBirth     DATE          NULL,
    Size            ENUM('S','M','L','XL')  NOT NULL,
    Temperament     VARCHAR(50)   NULL,
    SpayedNeutered  ENUM('Yes','No') NOT NULL,

    CONSTRAINT PK_Dogs PRIMARY KEY (ClientID),
    CONSTRAINT FK_Dogs_Clients
        FOREIGN KEY (ClientID)
        REFERENCES Clients(ClientID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE Employees (
    EmployeeID      VARCHAR(10)   NOT NULL,   -- PRIMARY KEY (e.g. u-2322)
    AssignedWalker  ENUM('Yes','No') NOT NULL,
    DogID           INT           NOT NULL,   -- FOREIGN KEY → Dogs(DogID)
    Breed           VARCHAR(50)   NOT NULL,

    CONSTRAINT PK_Employees PRIMARY KEY (EmployeeID),
    CONSTRAINT FK_Employees_Dogs
        FOREIGN KEY (DogID)
        REFERENCES Dogs(DogID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

CREATE TABLE Payments (
    ClientID      INT           NOT NULL,   
    FirstName     VARCHAR(50)   NOT NULL,   
    LastName      VARCHAR(50)   NOT NULL,   
    PhoneNumber   VARCHAR(15)   NOT NULL,   
    DogID         INT           NOT NULL,   
    PaymentMethod ENUM('Cash','Debit','Credit','Check','Venmo','Zelle','Other') NOT NULL,

    CONSTRAINT PK_Payments PRIMARY KEY (ClientID),
    CONSTRAINT FK_Payments_Clients
        FOREIGN KEY (ClientID)
        REFERENCES Clients(ClientID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT FK_Payments_DogID
        FOREIGN KEY (DogID)
        REFERENCES Dogs(DogID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

INSERT INTO Clients (ClientID, FirstName, LastName, PhoneNumber) VALUES
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

INSERT INTO Dogs (ClientID, DogID, Breed, Age, DateOfBirth, Size, Temperament, SpayedNeutered) VALUES
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

INSERT INTO Employees (EmployeeID, AssignedWalker, DogID, Breed) VALUES
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

INSERT INTO Payments (ClientID, FirstName, LastName, PhoneNumber, DogID, PaymentMethod) VALUES
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