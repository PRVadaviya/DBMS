create database fac ;

use fac ;

create table worker(
						WORK_ID varchar(200) NOT NULL PRIMARY KEY , 
                        _NAME varchar(200) NOT NULL ,
                        SALARY int  ,
                        JOIN_DATE DATE ,
                        EXPERIANCE int 
                        );

INSERT INTO worker (WORK_ID , _NAME , SALARY , JOIN_DATE , EXPERIANCE) VALUES
				   ('W02' ,' GAGAN' , 50000 , '2020-09-26', 14) ,
                    ('W03' ,' CHAGAN' , 40000 , '2022-02-5', 6) ,
                     ('W04' ,' JETHALAL' , 56000 , '2020-01-26', 20) ,
                      ('W05' ,' DAYA' , 78000 , '2021-12-12', 9) ,
                       ('W06' ,' BHIDE' , 100000 , '2021-04-23', 14) ,
                        ('W07' ,' MATHAVI' , 55000 , '2022-10-8', 8) ;

-- WHERE --
SELECT * FROM worker WHERE EXPERIANCE > 10 ;

-- BETWEEN--
SELECT * FROM worker WHERE EXPERIANCE BETWEEN 10 AND 25 ;

-- IN --
SELECT * FROM worker WHERE WORK_ID IN ('W04','W05','W07') ;

-- NOT IN --
SELECT * FROM worker WHERE WORK_ID NOT IN ('W02','W04','W05');

-- WILDCARD --
SELECT * FROM worker WHERE _NAME LIKE '%T%' ;

-- ORDER BY -- 
SELECT * FROM WORKER order by EXPERIANCE desc ;

