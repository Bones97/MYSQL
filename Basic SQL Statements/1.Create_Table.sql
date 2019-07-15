CREATE DATABASE Person;

CREATE TABLE persons(
    id int(11) AUTO_INCREMENT,
    first_name VARCHAR(45)NOT NULL,
    last_name VARCHAR(45)NOT NULL,
    gender ENUM('M', 'F')NOT NULL,
    age INT(2) NOT NULL,
    address VARCHAR(45)NOT NULL,
    PRIMARY KEY(id)
);