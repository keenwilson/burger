/*
This file is intended to help developers get their SQL Databases setup correctly.
It is important since other developers will be unlikely to have the same database or tables setup already.
*/

/* Create and use the burgers_db */
DROP DATABASE IF EXISTS `burgers_db`;
CREATE DATABASE `burgers_db`;
USE `uouq73csqt6jfchq`;

/* Create a table for all your burgers */
CREATE TABLE `burgers` 
(
    `id` Int( 11 ) AUTO_INCREMENT NOT NULL,
    `burger_name` VARCHAR( 255 ) NOT NULL,
    `devoured` BOOLEAN DEFAULT false,
    createdAt TIMESTAMP NOT NULL,
    /* Set ID as primary key */
	PRIMARY KEY ( `id` )
);
