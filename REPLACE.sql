CREATE DATABASE school;

USE school ;

CREATE TABLE student(
 id INT PRIMARY KEY ,
 name_ VARCHAR(255),
 ADDRESS VARCHAR(255),
 CLASS INT 
 
);

INSERT INTO student VALUES('4','WFGV','RFGV','9');

-- 1--
REPLACE INTO STUDENT (ID,ADDRESS) VALUES (4,'KHAKHRALA') ;

-- 2 --
REPLACE INTO STUDENT SET ID = 3 , NAME_ = 'CHAMAN' ;

REPLACE INTO STUDENT SET ID = 7 , NAME_ = 'MAGAN' , CLASS = 12 ;

SELECT * FROM student ;