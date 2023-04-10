CREATE DATABASE Hotel_Management;
USE Hotel_Management;

-- DROP DATABASE hotel_management; 

CREATE TABLE Hotel(
	Hotel_No VARCHAR(4) PRIMARY KEY,
    Name VARCHAR(255), 
    City VARCHAR(255)
    );
      
      
CREATE TABLE Room(
	Room_No INT PRIMARY KEY,
    Hotel_No VARCHAR(4),
    Type VARCHAR(1),
    Price FLOAT,
	FOREIGN KEY(Hotel_No) REFERENCES Hotel(Hotel_No)
     );
     

CREATE TABLE Guest(
	Guest_No VARCHAR(4) PRIMARY KEY,
    Name VARCHAR(255),
    City VARCHAR(255)
    );

CREATE TABLE Booking(
	Hotel_No VARCHAR(4) PRIMARY KEY,
    Guest_No VARCHAR(4),
    Date_From VARCHAR(20),
    Date_To VARCHAR(20),
    Room_No INT,
    FOREIGN KEY(Guest_No) REFERENCES Guest(Guest_No)
    );
    

INSERT INTO Hotel(Hotel_No, Name, City)
VALUES ('H111', 'Empire Hotel', 'New York'),
	   ('H235', 'Park Place', 'New York'),
       ('H432', 'Brownstone Hotel', 'Toronto'),
       ('H498', 'James Plaza', 'Toronto'),
       ('H193', 'Devon Hotel', 'Boston'),
       ('H437', 'Clairmont Hotel', 'Boston');

INSERT INTO Room(Room_No, Hotel_No, Type, Price)
VALUES (313, 'H111', 'S', 145.0),
	   (412, 'H111', 'N', 145.0),
       (1267, 'H235', 'N', 175.0),
       (1289, 'H235', 'N', 195.0),
       (876, 'H432', 'S', 124.0),
       (898, 'H432', 'S', 124.0),
       (345, 'H498', 'N', 160.0),
       (467, 'H498', 'N', 180.0),
       (1001, 'H193', 'S', 150.0),
       (1201, 'H193', 'N', 175.0),
       (257, 'H437', 'N', 140.0),
       (223, 'H437', 'N', 155.0);

INSERT INTO Booking(Hotel_No, Guest_No, Date_From, Date_To, Room_No)
VALUES  ('H111', 'G256', '10-AUG-99', '15-AUG-99', 412),
		('H111', 'G367', '18-AUG-99', '21-AUG-99', 412),
        ('H235', 'G879', '05-SEP-99', '12-SEP-99', 1267),
        ('H498', 'G230', '15-SEP-99', '18-SEP-99', 467),
        ('H498', 'G256', '30-NOV-99', '02-DEC-99', 345),
        ('H498', 'G467', '03-NOV-99', '05-NOV-99', 345),
        ('H193', 'G190', '15-NOV-99', '19-NOV-99', 1001),
        ('H193', 'G367', '12-SEP-99', '14-SEP-99', 1001),
        ('H193', 'G367', '01-OCT-99', '06-OCT-99', 1201),
        ('H437', 'G190', '04-OCT-99', '06-OCT-99', 223),
        ('H437', 'G879', '14-SEP-99', '17-SEP-99', 223);

INSERT INTO Guest(Guest_No, Name, City)
VALUES  ('G256', 'Adam Wayne', 'Pittsburgh'),
		('G367', 'Tara Cummings', 'Baltimore'),
        ('G879', 'Vanessa Parry', 'Pittsburgh'),
        ('G230', 'Tom Hancock', 'Philadelphia'),
        ('G467', 'Robert Swift', 'Atlanta'),
        ('G190', 'Edward Cane', 'Baltimore');






