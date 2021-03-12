-- exo 1
CREATE TABLE language
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    languages VARCHAR(30) NOT NULL
)

[ENGINE = INNODB];

-- exo 2
CREATE TABLE tools
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    tool VARCHAR(30) NOT NULL
)

-- exo 3
CREATE TABLE frameworks
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
)

-- exo 4
CREATE TABLE libraries
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    library VARCHAR(30) NOT NULL
)

-- exo 5
CREATE TABLE ide
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ideName VARCHAR(30) NOT NULL
)

-- exo 6
CREATE TABLE IF NOT EXISTS frameworks
(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL
)

-- exo 7
DROP TABLE IF NOT EXISTS tools

-- exo 8
DROP TABLE libraries

-- exo 9
DROP TABLE ide

-- TP 
CREATE DATABASE codex;
 use codex
 CREATE TABLE clients (id INT PRIMARY KEY AUTO_INCREMENT, lastname VARCHAR(30), firstname VARCHAR(30), birthDay DATE, adress VARCHAR(30), firstPhoneNumber INT, secondPhoneNumber INT, mail VARCHAR(30))
 -> ;