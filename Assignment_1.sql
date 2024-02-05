/* Question 1. 1st normal form */

CREATE DATABASE `collage`;
use `collage`;

Create Table `course_offering`(
	`course_name` varchar(60) NOT NULL,
    `course_number` varchar(6) NOT NULL,
    `course_desciption` varchar(255) NOT NULL,
    `course_program` varchar(2) NOT NULL,
    `collage_name` varchar(3) NOT NULL default 'CNA',
    `collage_campus` varchar(3) NOT NULL default 'PPD',
    `course_capacity` int NOT NULL,
    `collage_address` varchar(60) NOT NULL default "1 Prince Philip, St.John's",
    `semester` varchar(10) NOT NULL,
    `weekly_time` varchar(60) NOT NULL,
    `weekly_Location` varchar(4) NOT NULL,
    `instructor_name` varchar(40) NOT NULL,
    `instructor_dept` varchar(20) NOT NULL,
    `instructor_email` varchar(30) NOT NULL,
    `instructor_office` varchar(10) NOT NULL,
    `course_enrollment` int NOT NULL,
    `course_wait-list` int NOT NULL
    );
    
Insert into `course_offering` values 
	('Database II', 'CP1555', 'course working with database.', 'SD', default, default, 25, default, 'Winter', 'Mon, 8:30, 2hrs', 'K205', 'Paul Drover', 'IT/BUS', 'pauld@cna.ca', 'K212d', 22, 0),
    ('Database II', 'CP1555', 'course working with database.', 'SD', default, default, 25, default, 'Winter', 'Tue, 8:30, 2hrs', 'K205', 'Paul Drover', 'IT/BUS', 'pauld@cna.ca', 'K212d', 22, 0),
    ('Database II', 'CP1555', 'course working with database.', 'SD', default, default, 25, default, 'Winter', 'Wed, 8:30, 2hrs', 'K205', 'Paul Drover', 'IT/BUS', 'pauld@cna.ca', 'K212d', 22, 0)
    ;
    
/* Quesion 2. */

