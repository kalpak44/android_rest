CREATE DATABASE rest_api;

USE rest_api;


CREATE TABLE IF NOT EXISTS users(
id INT( 11 ) NOT NULL AUTO_INCREMENT ,
unique_id VARCHAR( 23 ) NOT NULL ,
name VARCHAR( 50 ) NOT NULL ,
email VARCHAR( 100 ) NOT NULL ,
encrypted_password VARCHAR( 80 ) NOT NULL ,
salt VARCHAR( 10 ) NOT NULL ,
created_at DATETIME DEFAULT NULL ,
updated_at DATETIME DEFAULT NULL ,
PRIMARY KEY ( id ) ,
UNIQUE KEY unique_id( unique_id ) ,
UNIQUE KEY email( email )
) ENGINE = INNODB