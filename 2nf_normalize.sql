
/* qureys below will shift this DB from first normal form
   to second normal form by making it into to different
   tables in the DB. */

CREATE DATABASE `bookstore2nf`;

use `bookstore2nf`;

CREATE TABLE `authors` (
	`author-name` varchar(255) NOT NULL PRIMARY KEY,
    `author-birthdate` date NOT NULL,
    `author-location` varchar(255) NOT NULL
);
    
CREATE TABLE `book` (
  `title` varchar(255) NOT NULL,
  `isbn` varchar(15) NOT NULL,
  `publisher-name` varchar(45) NOT NULL,
  `publisher-location` varchar(255) NOT NULL,
  `publisher-url` varchar(80) DEFAULT NULL,
  `publication-date` date NOT NULL,
  `author-name` varchar(255) NOT NULL,
  `pages` int DEFAULT NULL,
  `url` varchar(80) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `format` varchar(45) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `edition` varchar(45) DEFAULT NULL
);

insert into authors values
("Judy Jones", "1984-03-23", "Georgetown, Jamacia"),
("Jennifer Johnson", "1980-11-02", "Georgetown, Jamacia"),
("Fred Fergason", "1992-05-05", "Ferneaux, France"),
("Phil Phonetic", "1996-02-15", "Ferneaux, France")
;

insert into book values 
("Random Title", "34-76897210-3", "ABC Publishing", "Albany New York", "www.abcpub.org", "2020-04-13", "Judy Jones", 258, "www.randomness.bk", "non-fiction", "Hardcover", 55.79, "3rd"),
("Random Title", "34-76897210-3", "ABC Publishing", "Albany New York", "www.abcpub.org", "2020-04-13", "Jennifer Johnson", 258, "www.randomness.bk", "non-fiction", "Hardcover", 55.79, "3rd"),
("Random Title", "34-76897210-2", "ABC Publishing", "Albany New York", "www.abcpub.org", "2020-04-13", "Judy Jones", 258, "www.randomness.bk", "non-fiction", "Softcover", 35.79, "3rd"),
("Random Title", "34-76897210-2", "ABC Publishing", "Albany New York", "www.abcpub.org", "2020-04-13", "Jennifer Johnson", 258, "www.randomness.bk", "non-fiction", "Softcover", 35.79, "3rd"),
("Random Title", "34-76897210-1", "ABC Publishing", "Albany New York", "www.abcpub.org", "2020-04-13", "Judy Jones", 258, "www.randomness.bk", "non-fiction", "Electronic", 15.79, "3rd"),
("Random Title", "34-76897210-1", "ABC Publishing", "Albany New York", "www.abcpub.org", "2020-04-13", "Jennifer Johnson", 258, "www.randomness.bk", "non-fiction", "Electronic", 15.79, "3rd"),
("Finest Words", "34-65738583-3", "XYZ Publishing", "Chicago, Illanois", "www.xyzpub.org", "2021-07-22", "Fred Fergason", 567, "www.greatwords.bk", "fiction", "Hardcover", 75.79, "1st"),
("Finest Words", "34-65738583-3", "XYZ Publishing", "Chicago, Illanois", "www.xyzpub.org", "2021-07-22", "Phil Phonetic", 567, "www.greatwords.bk", "fiction", "Hardcover", 75.79, "1st"),
("Finest Words", "34-65738583-2", "XYZ Publishing", "Chicago, Illanois", "www.xyzpub.org", "2021-07-22", "Fred Fergason", 567, "www.greatwords.bk", "fiction", "Softcover", 55.79, "1st"),
("Finest Words", "34-65738583-2", "XYZ Publishing", "Chicago, Illanois", "www.xyzpub.org", "2021-07-22", "Phil Phonetic", 567, "www.greatwords.bk", "fiction", "Softcover", 55.79, "1st"),
("Finest Words", "34-65738583-1", "XYZ Publishing", "Chicago, Illanois", "www.xyzpub.org", "2021-07-22", "Fred Fergason", 567, "www.greatwords.bk", "fiction", "Electronic", 35.79, "1st"),
("Finest Words", "34-65738583-1", "XYZ Publishing", "Chicago, Illanois", "www.xyzpub.org", "2021-07-22", "Phil Phonetic", 567, "www.greatwords.bk", "fiction", "Electronic", 35.79, "1st"),
("The Final Argument", "34-56456456-1", "Questionable Publishing", "Albequerque, New Mexico", "www.qpub.org", "2011-08-02", "Judy Jones", 12, "www.finalarg.bk", "thriller", "Softcover", 65.79, "11th")
;
SELECT * FROM book;