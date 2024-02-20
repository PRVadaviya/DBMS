create DATABASE key_ ;

use key_ ;

CREATE TABLE KNOWS(
						SALARY INT NOT NULL DEFAULT 1000 
                        

);

create table orderes(
						ORDER_ID VARCHAR(255) primary key ,
                        NAME_ VARCHAR(255) unique ,
                        PRICE_ INT ,
                        -- CONSTRAINT LIMIT_PRICE CHECK (PRICE_ >20 ) --
);

create table DILIVARY (
						DILIVARY_ID VARCHAR(255) primary key ,
                        PRODUCT_NAME VARCHAR(255)  ,
                        PRICE_ INT ,
                        DETAILS varchar(255) ,
                        foreign key (DETAILS) REFERENCES orderes(ORDER_ID) 
);

INSERT INTO orderes values ('O101','ABC',120) ;

INSERT INTO DILIVARY VALUES('D201','RAHUL',320,'O101');

select * FROM DILIVARY ;