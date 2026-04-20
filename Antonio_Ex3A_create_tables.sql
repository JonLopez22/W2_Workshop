DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Dog_Identification (
    Dog_ID INT PRIMARY KEY,
    Dog_Name VARCHAR(20),
    DateOfBirth DATE
);

SELECT * FROM Dog_Identification;

CREATE TABLE Dog_Breed (
    Dog_ID INT,
    Breed VARCHAR(50),
    IsMixed BOOLEAN,
    CONSTRAINT fk_dog_breed_dog
        FOREIGN KEY (Dog_ID)
        REFERENCES Dog_Identification(Dog_ID)
);

SELECT * FROM dog_breed;

CREATE TABLE Size_Color (
    Dog_ID INT,
    Size VARCHAR(10),
    Color VARCHAR(20),
    FOREIGN KEY (Dog_ID)
        REFERENCES Dog_Identification(Dog_ID) );
        
SELECT * FROM size_color