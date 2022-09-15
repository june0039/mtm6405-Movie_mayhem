-- Adminer 4.7.2 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP DATABASE IF EXISTS `movie_mayhem`;
CREATE DATABASE `movie_mayhem` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `movie_mayhem`;

DROP TABLE IF EXISTS `genres`;
CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_title` varchar(30) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `genres` (`genre_id`, `genre_title`) VALUES
(1,	'Fantasy'),
(2,	'Sci-Fi'),
(3,	'Action'),
(4,	'Comedy'),
(5,	'Drama'),
(6,	'Horror'),
(7,	'Romance'),
(8,	'Family');

DROP TABLE IF EXISTS `movies`;
CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_title` varchar(100) NOT NULL,
  `director` varchar(50) NOT NULL,
  `year` year(4) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

INSERT INTO `movies` (`movie_id`, `movie_title`, `director`, `year`, `genre_id`) VALUES
(1,	'Labyrinth',	'Jim Henson',	'1986',	1),
(2,	'Highlander',	'Russell Mulcahy',	'1986',	1),
(3,	'Alien',	'Ridley Scott',	'1979',	2),
(4,	'Conan the Barbarian',	'John Milius',	'1982',	1),
(5,	'The Hobbit: An Unexpected Journey',	'Peter Jackson',	'2012',	1),
(6,	'The Dark Crystal',	'Jim Henson',	'1982',	1),
(7,	'Star Wars: A New Hope',	'George Lucas',	'1977',	2),
(8,	'Harry Potter and the Order of the Phoenix',	'David Yates',	'2007',	1),
(9,	'Fantastic Beasts and Where to Find Them ',	'David Yates',	'2016',	1),
(10,	'Excalibur',	'John Boorman',	'1981',	1),
(11,	'Time Bandits',	'Terry Gilliam',	'1981',	1),
(12,	'Pan\'s Labyrinth',	'Guillermo Del Toro',	'2006',	1),
(13,	'Blade Runner',	'Ridley Scott',	'1982',	2),
(14,	'Interstellar',	'Christopher Nolan',	'2014',	2),
(15,	'A.I. Artificial Intelligence',	'Steven Spielberg',	'2001',	2),
(16,	'The Matrix',	'The Wachowskis',	'1999',	2),
(17,	'Gattaca',	'Andrew Niccol',	'1997',	2),
(18,	'Avatar',	'James Cameron',	'2009',	2),
(19,	'Moon',	'Duncan Jones',	'2009',	2),
(20,	'Galaxy Quest',	'Dean Parisot',	'1999',	2),
(21,	'The Fifth Element',	'Luc Besson',	'1997',	2),
(22,	'Inception',	'Christopher Nolan',	'2010',	2),
(23,	'District 9',	'Neill Blokamp',	'2009',	2),
(24,	'Her',	'Spike Jonez',	'2013',	2),
(25,	'Pulp Fiction',	'Quentin Tarantino',	'1994',	5),
(26,	'Reservoir Dogs',	'Quentin Tarantino',	'1992',	5),
(27,	'Transcendence',	'George Lucas',	'2014',	2),
(28,	'Contact',	'Steven Speilberg',	'1997',	2);

-- 2019-07-24 15:30:29
