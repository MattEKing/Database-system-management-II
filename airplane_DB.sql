CREATE DATABASE `airplanes`;
use airplanes;

CREATE TABLE `aircraft` (
	`callsign` varchar(7) NOT NULL PRIMARY KEY,
    `make` varchar(30) NOT NULL,
    `model` varchar(15) NOT NULL,
    `capacity` integer NOT NULL, 
    `engine_type` varchar(10) NOT NULL,
    `engine_#` integer default 1,
    `range` int NOT NULL,
	`manufacture_location` varchar(80) NOT NULL,
    `manufacture_date` date NOT NULL)
    ;

insert into `aircraft` values
	('C-JFS', 'Bombardier', 'Dash-8', 37, 'turbo', 2, 2000, 'Montreal', '1992-03-15')
    ;

CREATE TABLE `oprator` (
	`name` varchar(80) NOT NULL PRIMARY KEY,
	`head-office` varchar(255) NOT NULL,
    `date_of_incorporation` date NOT NULL)
    ;

insert into `oprator` values
	('Pal Airlines', "st.John's", '1974-01-01')
    ;

CREATE TABLE `pilot` (
	`licence_#` int NOT NULL PRIMARY KEY,
    `fname` varchar(80) NOT NULL,
    `lname` varchar(80) NOT NULL,
    `dob` date NOT NULL,
    `rank` varchar(80) NOT NULL)
    ;
   
insert into `pilot` values
	( 1, 'Homer', 'Simpson', '1000-01-01', 'pilot')
    ;

CREATE TABLE `flights` (
	`flight_#` varchar(10) NOT NULL PRIMARY KEY,
    `origin` varchar(255) NOT NULL,
    `destination` varchar(255) NOT NULL,
    `etd` datetime NOT NULL,
    `eta` datetime NOT NULL,
    `stops` varchar(255) NOT NULL)
    ;
    
insert into `flights` values
	('PAL123', "YYT", "YYZ", '2024-01-18 06:30:00', '2024-01-19 18:30:00', 2)
    ;
    