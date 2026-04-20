INSERT INTO Dog_Identification (Dog_ID, Dog_Name, DateOfBirth) VALUES
(101, 'Emily', '2007-03-02'),
(102, 'Max', '2015-06-14'),
(103, 'Bella', '2018-09-21'),
(104, 'Charlie', '2012-11-05'),
(105, 'Lucy', '2017-01-30'),
(106, 'Rocky', '2019-07-18'),
(107, 'Daisy', '2014-04-09'),
(108, 'Milo', '2020-12-25'),
(109, 'Lola', '2016-08-11'),
(110, 'Buddy', '2013-02-27');

SELECT * FROM dog_identification;

INSERT INTO Dog_Breed (Dog_ID, Breed, IsMixed) VALUES
(101, 'Golden Retriever', 0),
(102, 'Labrador', 0),
(103, 'Poodle', 0),
(104, 'German Shepherd', 0),
(105, 'Bulldog', 0),
(106, 'Beagle', 0),
(107, 'Husky Mix', 1),
(108, 'Terrier Mix', 1),
(109, 'Boxer', 0),
(110, 'Shepherd Mix', 1);

SELECT * FROM DOG_BREED;

INSERT INTO Size_Color (Dog_ID, Size, Color) VALUES
(101, 'Large', 'Golden Brown'),
(102, 'Medium', 'Black'),
(103, 'Small', 'White'),
(104, 'Large', 'Brown'),
(105, 'Medium', 'Gray'),
(106, 'Small', 'Golden'),
(107, 'Large', 'Black White'),
(108, 'Medium', 'Tan'),
(109, 'Small', 'Cream'),
(110, 'Large', 'Dark Brown');

SELECT * FROM size_color