create database Project ;

use Project ;

CREATE TABLE login (
    login_id VARCHAR(255) PRIMARY KEY,
    username VARCHAR(255),
    password VARCHAR(255)
);

CREATE TABLE employee (
    EMPLOYEE_ID NUMERIC(10) PRIMARY KEY,
    PARKING_ID NUMERIC(10),
    F_NAME VARCHAR(255) NOT NULL,
    L_NAME VARCHAR(255) NOT NULL,
    GENDER CHAR(1),
    SALARY NUMERIC(10, 2),
    FOREIGN KEY (PARKING_ID) REFERENCES PARKING(PARKING_ID) 
);

CREATE TABLE PARKING (
    PARKING_ID NUMERIC(10) PRIMARY KEY,
    ANNUAL_INCOME NUMERIC(10, 2),
    P_ADDRESS VARCHAR(255),
    CUR_BALANCE NUMERIC(10 , 2)
);

CREATE TABLE PARKING_BLOCK (
    SLOT_ID NUMERIC PRIMARY KEY,
    PARKING_ID NUMERIC (10),
    SLOT_STATUS VARCHAR(50),
    CAPACITY NUMERIC (10),
    FOREIGN KEY (PARKING_ID) REFERENCES PARKING(PARKING_ID)
);


CREATE TABLE PAYMENT (
    CUSTOMER_ID NUMERIC (10),
    PAY_METHOD VARCHAR(50),
    PAY_DATE DATE NOT NULL ,
    PAY_AMOUNT NUMERIC(10, 2),
    PAY_ID NUMERIC (10) PRIMARY KEY
);


CREATE TABLE CUSTOMER (
    CUSTOMER_ID NUMERIC (10) PRIMARY KEY,
    SLOT_ID NUMERIC (10),
    F_NAME VARCHAR(255),
    L_NAME VARCHAR(255),
    PHONE_NO NUMERIC (10) NOT NULL,
    GENDER CHAR(1),
    AGE NUMERIC (10),
    CITY VARCHAR(255) NOT NULL ,
    STATE VARCHAR(255) NOT NULL ,
    POSTAL_CODE VARCHAR(20),
    FOREIGN KEY (SLOT_ID) REFERENCES PARKING_BLOCK(SLOT_ID)
);

CREATE TABLE BOOKING (
    CUSTOMER_ID NUMERIC(10),
    SLOT_ID NUMERIC(10),
    DATE1 DATE,
    CHECK_IN_TIME TIME,
    CHECK_OUT_TIME TIME,
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID),
    FOREIGN KEY (SLOT_ID) REFERENCES PARKING_BLOCK(SLOT_ID)
);

CREATE TABLE VEHICLE (
    CUSTOMER_ID NUMERIC(10),
    V_NUM VARCHAR(20) PRIMARY KEY,
    V_NAME VARCHAR(255),
    COLOR VARCHAR(50),
    MODEL_YEAR NUMERIC(10),
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID)
);

CREATE TABLE TWO_WHEELER (
    T_ID NUMERIC(10) PRIMARY KEY,
    AVERAGE NUMERIC(10 , 2),
    V_NUM VARCHAR(20),
    FOREIGN KEY (V_NUM) REFERENCES VEHICLE(V_NUM)
);

CREATE TABLE FOUR_WHEELER (
    F_ID NUMERIC(10) PRIMARY KEY,
    V_NUM VARCHAR(20),
    FUEL_TYPE VARCHAR(50),
    NO_OF_DOORS NUMERIC(4),
    FOREIGN KEY (V_NUM) REFERENCES VEHICLE(V_NUM)
);

INSERT INTO LOGIN (LOGIN_ID, USERNAME, PASSWORD)
VALUES
('L1', 'user1', 'pass1'),
('L2', 'user2', 'pass2'),
('L3', 'user3', 'pass3'),
('L4', 'user4', 'pass4'),
('L5', 'user5', 'pass5'),
('L6', 'user6', 'pass6'),
('L7', 'user7', 'pass7'),
('L8', 'user8', 'pass8'),
('L9', 'user9', 'pass9') ;

INSERT INTO employee (employee_id, parking_id, f_name, l_name, gender, salary)
VALUES
    (1, 101, 'John', 'Doe', 'M', 50000),
    (2, 102, 'Jane', 'Smith', 'F', 60000),
    (3, 101, 'Michael', 'Johnson', 'M', 55000),
    (4, 103, 'smit' , 'patel' , 'M' , 15000  ),
    (5, 102, 'jimesh' , 'shah' , 'M' , 56000  ),
    (6, 104, 'shivani' , 'mehta' , 'F' , 10000  ),
    (7, 101, 'Michael', 'Johnson', 'M', 59000),
    (8, 104, 'shivani' , 'mehta' , 'F' , 10000  ),
    (9, 105, 'tirth' , 'doe' , 'M' , 89000  ),
    (10, 102, 'Jenish', 'Smith', 'M', 48000),
    (11, 103, 'travis' , 'head' , 'M' , 63000  );
    
    
INSERT INTO parking (PARKING_ID, ANNUAL_INCOME,P_ADDRESS , CUR_BALANCE)
VALUES
   (101, 50000,'' , 10000),
	(102, 60000, '', 15000),
   (103, 800000,'' , 30000),
    (104, 80000,'' , 30000),
    (105, 90000,'' , 40000);
    
    
INSERT INTO PAYMENT (CUSTOMER_ID, PAY_METHOD,PAY_DATE , PAY_AMOUNT , PAY_ID)
VALUES
	   (1001 , 'cash'  , '2008-09-11'    , '1000' , 111 ),
          (1002 , 'online', '2020-12-09' , '1500' , 112 ),
		(1003 , 'cash' ,  '2022-04-02'   , '3000' , 113),
          (1004 , 'NEFT' ,  '2021-11-09' , '1500' , 114 ),
          (1005 , 'online', '2008-01-19' , '6000' , 115),
          (1006 , 'NEFT' ,  '2009-03-09' , '3500' , 116 ),
          (1007 , 'online' ,'2001-09-12' , '2500' , 117),
          (1008 , 'NEFT' ,  '2012-10-25' , '6300' , 118 ),
          (1009 , 'NEFT' ,  '2019-11-29' , '2750' , 119);
    
    
INSERT INTO parking_block (SLOT_ID, PARKING_ID, SLOT_STATUS, CAPACITY)
VALUES
    (1, 101, 'Occupied', 50),
    (2, 101, 'Available', 150),
    (3, 102, 'Available', 200),
    (4, 102, 'Occupied', 80),
    (5, 103, 'Available', 40),
    (6, 104, 'Occupied', 60),
    (7, 105, 'Occupied', 100);
    
    
INSERT INTO customer (CUSTOMER_ID, SLOT_ID, F_NAME, L_NAME, PHONE_NO, GENDER, AGE, CITY, STATE, POSTAL_CODE)
VALUES
    (1001 , 1 , 'John'  , 'Doe'     , '1234567890' , 'M' , 30 , 'SURAT'    , 'GUJRAT'     , '10001'),
    (1002 , 2 , 'Jane'  , 'Smith'   , '0987654321' , 'F' , 25 , 'RAJKOT'   , 'GUJRAT'     , '90001'),
    (1003 , 3 , 'shlok' , 'tagadiya', '5551234567' , 'M' , 40 , 'MORBI'    , 'GUJRAT'     , '60601'),
    (1004 , 4 , 'krunal', 'Dudhatra', '1112223333' , 'F' , 35 , 'JAIPUR'   , 'RAJASTHAN'  , '77001'),
    (1005 , 5 , 'David' , 'Wilson'  , '9998887777' , 'M' , 45 , 'SURAT'    , 'GUJRAT'     , '10001'),
    (1006 , 6 , 'Sarah' , 'Taylor'  , '3334445555' , 'F' , 28 , 'PUNE'     , 'MAHARASHTRA', '19101'),
    (1007 , 7 , 'jay'   , 'borda'   , '6667778888' , 'M' , 32 , 'AHMEDABAD', 'GUJRAT'     , '78201'),
    (1008 , 1 , 'gazal' , 'gajera'  , '2223334444' , 'F' , 50 , 'SURAT'    , 'GUJRAT'     , '10001'),
    (1009 , 2 , 'dax'   , 'adroja'  , '7778889999' , 'M' , 38 , 'RAJKOT'   , 'GUJRAT'     , '90001');
      
   
INSERT INTO vehicle (customer_id, v_num, v_name, color, model_year)
VALUES
    (1001 , 'GJ-05-AB-0123' , 'Toyota Camry'     , 'Blue'  , 2022),
    (1001 , 'GJ-05-DE-1456' , 'Splender'         , 'Red'   , 2020),
    (1002 , 'GJ-03-GH-0789' , 'Ford Fusion'      , 'Black' , 2024),
    (1002 , 'GJ-03-JK-8012' , 'Chevrolet Malibu' , 'Silver', 2017),
    (1003 , 'GJ-36-MN-1345' , 'Nissan Altima'    , 'White' , 2016),
    (1003 , 'GJ-36-PQ-2678' , 'BMW 3 Series'     , 'Gray'  , 2021),
    (1004 , 'RJ-01-ST-7901' , 'shine'            , 'Black' , 2015),
    (1004 , 'RJ-01-VW-9234' , 'Audi A4'          , 'Silver', 2014),
    (1005 , 'GJ-05-YZ-5567' , 'dream yuga'       , 'White' , 2022),
    (1005 , 'GJ-05-BC-0890' , 'Lexus ES'         , 'Blue'  , 2019),
    (1006 , 'MH-01-GH-7123' , 'Figo Ford'        , 'Gray'  , 2019),
    (1007 , 'GJ-01-MK-6456' , 'Nissan Altima'    , 'Red'   , 2016),
    (1008 , 'GJ-05-MK-8012' , 'Yamaha'           , 'Black' , 2020);
   
   
   
   
insert INTO two_wheeler (T_ID , AVERAGE , V_NUM) 
VALUES
		(11 , 65 , 'GJ-05-AB-0123'),
        (12 , 36 , 'GJ-05-MK-8012' ),
         (13 , 54 , 'GJ-05-YZ-5567' ),
         (14 , 72 , 'RJ-01-ST-7901'),
          (15 , 45 , 'GJ-05-YZ-5567' ),
           (16 , 35 , 'RJ-01-ST-7901'),
            (17 , 62 , 'GJ-05-AB-0123'),
			  (18 , 72 , 'GJ-05-MK-8012' );
		
    
INSERT INTO FOUR_WHEELER(F_ID,V_NUM,FUEL_TYPE,NO_OF_DOORS)
VALUES
    (21   , 'GJ-05-AB-0123' , 'CNG'     , 4),
    (22   , 'GJ-05-AB-0123' , 'PETROL'  , 4),
    (23   , 'GJ-03-JK-8012' , 'ELECTRIC', 5),
    (24   , 'GJ-36-MN-1345' , 'CNG'     , 4),
    (25   , 'GJ-36-PQ-2678' , 'CNG'     , 5),
    (26   , 'GJ-05-AB-0123' , 'PETROL'  , 4),
    (27   , 'GJ-05-BC-0890' , 'CNG'     , 6);

    
INSERT INTO booking (CUSTOMER_ID , SLOT_ID , DATE , CHECK_IN_TIME , CHECK_OUT_TIME)
VALUES
    (1001, 1, '2024-02-20', '09:00:00', '17:00:00'),
    (1002, 2, '2024-02-21', '10:00:00', '18:00:00'),
    (1003, 3, '2024-02-22', '11:00:00', '19:00:00'),
    (1004, 4, '2024-02-23', '12:00:00', '20:00:00'),
    (1005, 5, '2024-02-24', '13:00:00', '21:00:00'),
    (1006, 3, '2024-01-28', '18:00:00', '20:00:00'),
    (1007, 4, '2024-01-15', '09:00:00', '12:00:00');
    
    
    select  employee_id , f_name , l_name from employee where f_name like 'j%' ;

select * from parking where p_address is NOT NULL ;

SELECT CUSTOMER_ID , F_NAME , L_NAME , AGE FROM CUSTOMER ORDER BY AGE DESC ;

SELECT * FROM parking WHERE ANNUAL_INCOME BETWEEN 10000 AND 80000 ;

SELECT * FROM PARKING_BLOCK WHERE CAPACITY IN (50,80,100) ;
    
    
    
select * from FOUR_WHEELER ;




