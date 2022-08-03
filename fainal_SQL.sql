set line 500;
set pagesize 1000;
DROP TABLE Hotel CASCADE CONSTRAINT;
CREATE TABLE Hotel (
   hotelID       VARCHAR2 (5), 
   lacation      VARCHAR2(200),
   name          VARCHAR2(40),
   phoneNo       NUMBER(10)  UNIQUE,
   numberOfRooms NUMBER(3),
   CONSTRAINT    hotelID_Htl       PRIMARY KEY(hotelID)
);
INSERT INTO Hotel VALUES('ht01','Riyadh','RiyBranch', 0114441111, 50);
INSERT INTO Hotel VALUES('ht02','Dammam','DamBranch', 0134431111, 30);
INSERT INTO Hotel VALUES('ht03','Jeddah','JedBranch', 0124421111, 40);

DROP TABLE Customer CASCADE CONSTRAINT;
CREATE TABLE Customer (
   customerID    NUMBER (5), 
   Age           NUMBER(2),
   gender        VARCHAR2(10),
   phoneNo       NUMBER(12)         UNIQUE NOT NULL,
   email         VARCHAR2(20)       UNIQUE NOT NULL,
   password      VARCHAR2(10)       NOT NULL,
   country       VARCHAR2(20),
   city          VARCHAR2(20),
   postcode      NUMBER(5),
   Fname         VARCHAR2(40),
   Lname         VARCHAR2(40),
CONSTRAINT    customerID_Cstmr   PRIMARY KEY(customerID)
);
INSERT INTO Customer VALUES (00001, 20, 'female', 966556778901,  'roro@gmail.com',   'f6tgjklop8', 'Saudi Arabia', 'Riyadh', 00011, 'Raghad',   'Altoum');
INSERT INTO Customer VALUES (00002, 46, 'female', 966556780454,  'rahaf@gmail.com',  'ghm7inbb9y', 'Saudi Arabia', 'Riyadh', 00022, 'Rahaf',    'Alobied');
INSERT INTO Customer VALUES (00003, 35, 'male',   966506678964,  'salim@gmail.com',  'gftyui8bnj', 'Saudi Arabia', 'Dammam', 00033, 'Mohammed', 'Alfahad');
INSERT INTO Customer VALUES (00004, 28, 'male',   966553435677,  'faris@gmail.com',  'gfhbv6eaqx', 'Saudi Arabia', 'Abha',   00044, 'Faris',    'Alshahrani');
INSERT INTO Customer VALUES (00005, 43, 'male',   0112354687,    'george@gmail.com', 'lokmjhuinj', 'America',      'Texas',  00055, 'George',   'Smith');
INSERT INTO Customer VALUES (00006, 25, 'female', 966507933088,  'mona@gmail.com',   'ygtff56cfv', 'Saudi Arabia', 'Jeddah', 00066, 'Mona',     'Alfreh');
INSERT INTO Customer VALUES (00007, 19, 'male',   966556563480,  'benddd@gmail.com', 'swedrf5cxv', 'Saudi Arabia', 'Jeddah', 00077, 'Bander',   'Almohry');
INSERT INTO Customer VALUES (00008, 22, 'female', 966553564224,  'maha@gmail.com',   'xzswplmk90', 'Saudi Arabia', 'Qassim', 00088,  'Maha',    'Alhegasy');
INSERT INTO Customer VALUES (00009, 51, 'female', 966552265656,  'kolpo@gmail.com',  'vfghyuiok7', 'Saudi Arabia', 'Riyadh', 00099, 'Sahar',    'Alqahtani');
INSERT INTO Customer VALUES (00010, 32, 'female', 966553546765,  'rjknb@gmail.com',  'vbnm4dsx0o', 'Saudi Arabia', 'Qassim', 00111, 'Sara',     'Alshamary');
INSERT INTO Customer VALUES (00011, 44, 'male',   966554657898,  'spkbch@gmail.com', 'mnbhjki8mn', 'Saudi Arabia', 'Dammam', 00222, 'Nour',     'Alsalman');
INSERT INTO Customer VALUES (00012, 31, 'male',   966553565189,  'fbnm@gmail.com',   'xsw34rfcde', 'Saudi Arabia', 'Abha',   00333, 'Saleh',    'Aleid');
INSERT INTO Customer VALUES (00013, 20, 'female', 966506788984,  'rolopk@gmail.com', 'xdfvesw34h', 'Saudi Arabia', 'Riyadh', 00444, 'Nada',     'Alhusain');
INSERT INTO Customer VALUES (00014, 30, 'female', 966554678907,  'rasdf@gmail.com',  'mkjoifde7b', 'Saudi Arabia', 'Abha',   00555, 'Noura',    'Alqahtani');
INSERT INTO Customer VALUES (00015, 39, 'female', 0112335678,    'xcvbn@gmail.com',  'edxswiokmh', 'America',      'Nework', 00666, 'Mailey',   'Calbino');
   
DROP TABLE Employee CASCADE CONSTRAINT;
CREATE TABLE Employee (
   employeeID   NUMBER (5), 
   role         VARCHAR2(20),
   Fname        VARCHAR2(40),
   Lname        VARCHAR2(40),
   salary       NUMBER(5),
   phoneNo      NUMBER(12)         UNIQUE NOT NULL,
   Age          NUMBER(2),
   email        VARCHAR2(30)       UNIQUE NOT NULL,
   password     VARCHAR2(30)       NOT NULL,  
   hotelID      VARCHAR2 (5), 
   CONSTRAINT   employeeID_Emp     PRIMARY KEY(employeeID),
   CONSTRAINT   hotelID_Emp        FOREIGN KEY (hotelID) REFERENCES Hotel(hotelID)
);
INSERT INTO Employee VALUES(11001,'staff',  'Ahmad',    'Ali',      6000,'966554009852','25','ahmad@hotmail.com',     'uslwfpua88', 'ht01');
INSERT INTO Employee VALUES(11002,'manager','Noura',    'Saad',     7000,'966551134266','30','NouraS@hotmail.com',    'iyvqxzrq43', 'ht02');
INSERT INTO Employee VALUES(11003,'manager','Mohammed', 'Faisal',   7500,'966505897987','33','Mohammed@hotmail.com',  'aufvxyuy57', 'ht01');
INSERT INTO Employee VALUES(11004,'staff',  'Sara',     'Ahmad',    6500,'966555519808','24','Sara@hotmail.com',      'juhktin877', 'ht02');
INSERT INTO Employee VALUES(11005,'staff',  'Abdullah', 'Mohammed', 6000,'966533889769','26','Abdullah@hotmail.com',  'qwerty8976', 'ht03');
INSERT INTO Employee VALUES(11006,'manager','Abdulaziz','Abdullah', 7000,'966533880000','31','aziz@hotmail.com',      'mwehdjw976', 'ht03');
INSERT INTO Employee VALUES(11007,'staff',  'Ibrahim',  'Mohammed', 5500,'966553880009','27','Ibrahim@hotmail.com',   'jwerhgk98',  'ht03');
INSERT INTO Employee VALUES(11008,'staff',  'Arwa',     'Ibrahim',  6500,'966530009769','28','Arwa@hotmail.com',      'hwretfhjn6', 'ht02');
INSERT INTO Employee VALUES(11009,'staff',  'shadah',   'Mohammed', 5000,'966533882009','24','shadah@hotmail.com',    'rwexcvv676', 'ht03');
INSERT INTO Employee VALUES(11010,'staff',  'saud',     'abdulaziz',5000,'966534888000','26','saud@hotmail.com',      'mnjrty8840', 'ht03');
INSERT INTO Employee VALUES(11011,'staff',  'Reem',     'Saud',     6000,'966533883976','23','Reem@hotmail.com',      'mnjkljw976', 'ht02');
INSERT INTO Employee VALUES(11012,'staff',  'Lama',     'Nasser',   6000,'966553881243','25','Lama@hotmail.com',      'jweeuik98',  'ht01');
INSERT INTO Employee VALUES(11013,'staff',  'Ghadah',   'Saad',     6000,'966530787669','29','Ghadah@hotmail.com',    'hwretmkju6', 'ht01');
INSERT INTO Employee VALUES(11014,'staff',  'Afnan',    'Mohammed', 5500,'966533484809','24','Afnan@hotmail.com',     'rwexnhj876', 'ht03');
INSERT INTO Employee VALUES(11015,'staff',  'Nouf',     'Ahmad',    5500,'966549498000','25','Nouf@hotmail.com',      'mnjrty8mjk', 'ht01');

DROP TABLE Reservation CASCADE CONSTRAINT;
CREATE TABLE Reservation (
   bookingID     NUMBER(5),
   checkInDate   DATE,
   checkOutDate  DATE,
   noOfOccupance NUMBER(3),
   customerID    NUMBER,
   CONSTRAINT    bookingID_Res      PRIMARY KEY(bookingID),
   CONSTRAINT    customerID_Res     FOREIGN KEY (customerID) REFERENCES Customer(customerID)
);
INSERT INTO Reservation VALUES(10000, '22 nov 2020', '25 nov 2020', 3, 00001);
INSERT INTO Reservation VALUES(11000, '22 nov 2020', '24 nov 2020', 2, 00002);
INSERT INTO Reservation VALUES(11100, '24 nov 2020', '27 nov 2020', 4, 00003);
INSERT INTO Reservation VALUES(11110, '26 nov 2020', '29 nov 2020', 5, 00004);
INSERT INTO Reservation VALUES(11111, '01 dec 2020', '04 dec 2020', 3, 00005);
INSERT INTO Reservation VALUES(20000, '10 dec 2020', '15 dec 2020', 2, 00006);
INSERT INTO Reservation VALUES(22000, '10 dec 2020', '20 dec 2020', 8, 00007);
INSERT INTO Reservation VALUES(22200, '15 dec 2020', '17 dec 2020', 5, 00008);
INSERT INTO Reservation VALUES(22220, '20 dec 2020', '25 dec 2020', 6, 00009);
INSERT INTO Reservation VALUES(22222, '22 dec 2020', '25 dec 2020', 7, 00010);
INSERT INTO Reservation VALUES(30000, '24 dec 2020', '26 dec 2020', 8, 00011);
INSERT INTO Reservation VALUES(33000, '25 dec 2020', '26 dec 2020', 4, 00012);
INSERT INTO Reservation VALUES(33300, '10 jan 2021', '14 jan 2021', 3, 00013);
INSERT INTO Reservation VALUES(33330, '17 jan 2021', '29 jan 2021', 2, 00014);
INSERT INTO Reservation VALUES(33333, '11 jan 2021', '17 jan 2021', 1, 00015);

DROP TABLE Room CASCADE CONSTRAINT;
CREATE TABLE Room (
   roomNo        NUMBER(3),
   bookingID     NUMBER(5),
   hotelID       VARCHAR2 (5),     
   customerID    NUMBER,        
   roomType      VARCHAR2(8),   --possible values: standard, triple, suite
   roomPrice     NUMBER(4), 
   occupancy     NUMBER(2),
   status        VARCHAR2(9),  --possible values: available, occupied
   CONSTRAINT    PK_Room            PRIMARY KEY(roomNo,hotelID),
   CONSTRAINT    customerID_Room    FOREIGN KEY (customerID) REFERENCES Customer(customerID),
   CONSTRAINT    bookingID_Room     FOREIGN KEY (bookingID)  REFERENCES Reservation(bookingID),
   CONSTRAINT    hotelID_Room       FOREIGN KEY (hotelID)    REFERENCES Hotel(hotelID)
);
--INSERT room FOR hotel 1
INSERT INTO Room VALUES (101, 33330, 'ht01', 00014, 'standard', 450,  2, 'occupied');
INSERT INTO Room VALUES (102, 10000, 'ht01', 00001, 'triple',   700,  3, 'occupied');
INSERT INTO Room VALUES (103, 11110, 'ht01', 00004, 'suite',    1100, 5, 'occupied');
INSERT INTO Room VALUES (104, NULL,  'ht01', NULL,  'standard', 450,  2, 'available');
INSERT INTO Room VALUES (105, 33300, 'ht01', 00013, 'triple',   700,  3, 'occupied');
INSERT INTO Room VALUES (106, 22000, 'ht01', 00007, 'suite',    1100, 5, 'occupied');
INSERT INTO Room VALUES (107, NULL,  'ht01', NULL,  'standard', 450,  2, 'available');
INSERT INTO Room VALUES (108, NULL,  'ht01', NULL,  'triple',   700,  3, 'available');
INSERT INTO Room VALUES (109, 22000, 'ht01', 00007, 'suite',    1100, 5, 'occupied');
INSERT INTO Room VALUES (110, NULL,  'ht01', NULL,  'standard', 450,  2, 'available');
--INSERT room  FOR hotel 2
INSERT INTO Room VALUES (201, 11000, 'ht02', 00002, 'standard', 450,  2, 'occupied');
INSERT INTO Room VALUES (202, 11111, 'ht02', 00005, 'triple',   700,  3, 'occupied');
INSERT INTO Room VALUES (203, 22200, 'ht02', 00008, 'suite',    1100, 5, 'occupied');
INSERT INTO Room VALUES (204, NULL,  'ht02', NULL,  'standard', 450,  2, 'available');
INSERT INTO Room VALUES (205, 22220, 'ht02', 00009, 'triple',   700,  3, 'occupied');
INSERT INTO Room VALUES (206, 33000, 'ht02', 00012, 'suite',    1100, 5, 'occupied');
INSERT INTO Room VALUES (207, NULL,  'ht02', NULL,  'standard', 450,  2, 'available');
INSERT INTO Room VALUES (208, 22220, 'ht02', 00009, 'triple',   700,  3, 'occupied');
INSERT INTO Room VALUES (209, NULL,  'ht02', NULL,  'suite',    1100, 5, 'available');
INSERT INTO Room VALUES (210, 33333, 'ht02', 00015, 'standard', 450,  2, 'occupied');
--INSERT room FOR hotel 3
INSERT INTO Room VALUES (301, 20000, 'ht03', 00006, 'standard', 450,  2, 'occupied');
INSERT INTO Room VALUES (302, NULL,  'ht03', NULL,  'triple',   700,  3, 'available');
INSERT INTO Room VALUES (303, 11100, 'ht03', 00003, 'suite',    1100, 5, 'occupied');
INSERT INTO Room VALUES (304, NULL,  'ht03', NULL,  'standard', 450,  2, 'available');
INSERT INTO Room VALUES (305, NULL,  'ht03', NULL,  'triple',   700,  3, 'available');
INSERT INTO Room VALUES (306, 22222, 'ht03', 00010, 'suite',    1100, 5, 'occupied');
INSERT INTO Room VALUES (307, 22222, 'ht03', 00010, 'standard', 450,  2, 'occupied');
INSERT INTO Room VALUES (308, 30000, 'ht03', 00011, 'triple',   700,  3, 'occupied');
INSERT INTO Room VALUES (309, 30000, 'ht03', 00011, 'suite',    1100, 5, 'occupied');
INSERT INTO Room VALUES (310, NULL,  'ht03', NULL,  'standard', 450,  2, 'available');

DROP TABLE Bill CASCADE CONSTRAINT;
CREATE TABLE Bill (
   invoiceNo     NUMBER (8),
   roomCharge    NUMBER(10), 
   roomService   NUMBER(10), 
   numberOfDays  NUMBER(3),
   paymentDate   DATE, 
   paymentMethod VARCHAR2(15), --Visa,Master card, Mada, Apple Pay
   customerID    NUMBER(5), 
   bookingID     NUMBER(5), 
   CONSTRAINT    invoiceNo_Bill     PRIMARY KEY (invoiceNo),
   CONSTRAINT    customerID_Bill    FOREIGN KEY (customerID) REFERENCES Customer(customerID),
   CONSTRAINT    bookingID_Bill     FOREIGN KEY (bookingID) REFERENCES Reservation(bookingID)
);
INSERT INTO Bill VALUES(10000001, 4000,450,  3,  '10 nov 2020', 'Mada',       00001,10000);
INSERT INTO Bill VALUES(10000002, 2500,250,  2,  '20 oct 2020', 'MasterCard', 00002,11000);
INSERT INTO Bill VALUES(10000003, 3000,250,  3,  '25 oct 2020', 'ApplePay',   00003,11100);
INSERT INTO Bill VALUES(10000004, 3000,500,  3,  '17 nov 2020', 'Mada',       00004,11110);
INSERT INTO Bill VALUES(10000005, 3500,1000, 3,  '29 nov 2020', 'ApplePay',   00005,11111);
INSERT INTO Bill VALUES(10000006, 6000,750,  5,  '03 dec 2020', 'Visa',       00006,20000);
INSERT INTO Bill VALUES(10000007, 1075,1050, 9,  '25 nov 2020', 'Mada',       00007,22000);
INSERT INTO Bill VALUES(10000008, 2500,1000, 2,  '15 dec 2020', 'MasterCard', 00008,22200);
INSERT INTO Bill VALUES(10000009, 5500,500,  5,  '01 dec 2020', 'Visa',       00009,22220);
INSERT INTO Bill VALUES(10000010, 3000,500,  3,  '20 dec 2020', 'ApplePay',   00010,22222);
INSERT INTO Bill VALUES(10000011, 1500,150,  2,  '07 dec 2020', 'MasterCard', 00011,30000);
INSERT INTO Bill VALUES(10000012, 7506,150,  1,  '12 dec 2020', 'Mada',       00012,33000);
INSERT INTO Bill VALUES(10000013, 5000,500,  4,  '01 jan 2021', 'Visa',       00013,33300);
INSERT INTO Bill VALUES(10000014, 1450,2500, 12, '16 jan 2021', 'MasterCard', 00014,33330);
INSERT INTO Bill VALUES(10000015, 8500,1500, 6,  '05 jan 2021', 'ApplePay',   00015,33333);

DROP TABLE Request CASCADE CONSTRAINT;
CREATE TABLE Request (
   reqDate     DATE,
   reqTime     VARCHAR2(20),
   customerID  NUMBER(5),
   hotelID     VARCHAR2 (5),
   roomNo      NUMBER(3),
   CONSTRAINT PK_Request PRIMARY KEY(customerID,roomNo),
   CONSTRAINT customerID_Request FOREIGN KEY (customerID) REFERENCES Customer(customerID),
   CONSTRAINT hotelID_roomNo_Request FOREIGN KEY (roomNo,hotelID) REFERENCES Room(roomNo,hotelID)
);
INSERT INTO Request VALUES ('01 nov 2021', '03:30', 00001, 'ht01',101);
INSERT INTO Request VALUES ('01 nov 2021', '01:00', 00002, 'ht01',104);
INSERT INTO Request VALUES ('02 nov 2021', '02:10', 00003, 'ht01',101);
INSERT INTO Request VALUES ('02 nov 2021', '02:00', 00004, 'ht01',103);
INSERT INTO Request VALUES ('03 nov 2021', '04:30', 00005, 'ht02',210);
INSERT INTO Request VALUES ('03 nov 2021', '04:00', 00006, 'ht02',205);
INSERT INTO Request VALUES ('04 nov 2021', '05:00', 00007, 'ht02',206);
INSERT INTO Request VALUES ('04 nov 2021', '08:40', 00008, 'ht03',310);
INSERT INTO Request VALUES ('04 nov 2021', '06:30', 00009, 'ht01',107);
INSERT INTO Request VALUES ('05 nov 2021', '03:30', 00010, 'ht03',308);
INSERT INTO Request VALUES ('06 nov 2021', '03:00', 00011, 'ht01',110);
INSERT INTO Request VALUES ('07 nov 2021', '01:50', 00012, 'ht02',204);
INSERT INTO Request VALUES ('07 nov 2021', '06:40', 00013, 'ht01',109);
INSERT INTO Request VALUES ('08 nov 2021', '06:30', 00014, 'ht01',104);
INSERT INTO Request VALUES ('09 nov 2021', '02:10', 00015, 'ht03',301);

DROP TABLE Reserve CASCADE CONSTRAINT;
CREATE TABLE Reserve (
   bookingID     NUMBER(5),
   roomNo        NUMBER(3),
   hotelID       VARCHAR2 (5),   
   CONSTRAINT    PK_Reserve  PRIMARY KEY(bookingID,roomNo),
   CONSTRAINT    bookingID_Reserve  FOREIGN KEY (bookingID) REFERENCES Reservation(bookingID),
   CONSTRAINT    hotelID_roomNo_Reserve FOREIGN KEY (roomNo,hotelID) REFERENCES Room(roomNo,hotelID)         
);
INSERT INTO Reserve VALUES (10000, 108,'ht01');
INSERT INTO Reserve VALUES (11000, 104,'ht01');
INSERT INTO Reserve VALUES (11100, 101,'ht01');
INSERT INTO Reserve VALUES (11110, 203,'ht02');
INSERT INTO Reserve VALUES (11111, 201,'ht02');
INSERT INTO Reserve VALUES (20000, 305,'ht03');
INSERT INTO Reserve VALUES (22000, 306,'ht03');
INSERT INTO Reserve VALUES (22200, 110,'ht01');
INSERT INTO Reserve VALUES (22220, 107,'ht01');
INSERT INTO Reserve VALUES (22222, 208,'ht02');
INSERT INTO Reserve VALUES (30000, 210,'ht02');
INSERT INTO Reserve VALUES (33000, 104,'ht01');
INSERT INTO Reserve VALUES (33300, 309,'ht03');
INSERT INTO Reserve VALUES (33330, 304,'ht03');
INSERT INTO Reserve VALUES (33333, 301,'ht03');

--------------------------------------------------------------------------------------------------
SET serveroutput ON;

 --TRIGGER (1)
CREATE OR REPLACE TRIGGER CheckAge
 BEFORE INSERT OR UPDATE ON  Customer
FOR EACH ROW 
BEGIN 

     IF:NEW.Age < 18 THEN
     	raise_application_error(-20001, 'Age must be 18 and older'); 
     END IF; 
END;
/
--INSERT NEW customer
INSERT INTO Customer VALUES (00016,18,'male',966554365189,'fo90na@gmail.com','xsw36hucde','Saudi Arabia', 'Abha',   00333,  'Hajar',   'Aleid');
INSERT INTO Customer VALUES (00017,16,'male',966554300189,'heloojo@gmail.com','xspl1hucde','Saudi Arabia','Dammam', 00033 , 'Mohammed','Algahtani');
 
 --TRIGGER (2)
CREATE OR REPLACE TRIGGER salary_changes
 BEFORE INSERT OR UPDATE ON  Employee
FOR EACH ROW 
DECLARE
	sal_diff NUMBER;
	precentage FLOAT(6);
	t FLOAT(6);
BEGIN 
	sal_diff:= :NEW.salary - :OLD.salary;
	precentage:=sal_diff/:OLD.salary ;
	t := precentage*100;
 	dbms_output.put_line('OLD salary:'|| :OLD.salary);   
	dbms_output.put_line('NEW salary:'|| :NEW.salary); 
 	dbms_output.put_line('The amount of the salary increase in percentage is : '||t||' % ');    
END;
/
--INSERT NEW manager in hotel 3
INSERT INTO Employee VALUES(11016,'manager','Sawsan','Saad',7000.00,'966588834266','26','Sawsan990@hotmail.com','iyhtozrq43','ht03');
--UPDATE salary FOR staff ahmad 
UPDATE Employee SET salary=salary+3000 WHERE employeeID=11001;

----------------------------------------------------

--FUNCTIONS (WITH RETURN)

----FUNCTIONS (1)
CREATE OR REPLACE FUNCTION total_Employee 
RETURN number IS 
   total number := 0; 
BEGIN 
   SELECT count(*) into total 
   FROM Employee; 
    
   RETURN total; 
END; 
/ 
DECLARE 
   c number; 
BEGIN 
   c := total_Employee(); 
   dbms_output.put_line('Total Number Of Employee Is: ' || c); --16
END; 
/

----FUNCTIONS (2)
CREATE OR REPLACE FUNCTION occupied_room--19
RETURN number IS 
   unavaRoom number := 0; 
BEGIN 
   SELECT count(bookingID) into unavaRoom
   FROM Room ; 
    
   RETURN unavaRoom; 
END; 
/ 
----FUNCTIONS (3)
CREATE OR REPLACE FUNCTION all_room--30
RETURN number IS 
   numRoom number := 0; 
BEGIN 
   SELECT count(roomNo) into numRoom
   FROM Room ; 
    
   RETURN numRoom; 
END; 
/ 
DECLARE 
   availableRoom number;
   allRooms number;
   occupiedRoom number;
   
BEGIN 
   occupiedRoom:= occupied_room(); 
   allRooms:= all_room();
   availableRoom:=allRooms-occupiedRoom;
   dbms_output.put_line('Total number of rooms in all hotels is: ' ||allRooms);--30
   dbms_output.put_line('occupied room is: '  ||occupiedRoom); --19
   dbms_output.put_line('available room is: ' ||availableRoom);--11
   
END; 
/

--CREATE TABLESPACE
--1

drop tablespace Employee_tablespace including contents and datafiles; 
create tablespace Employee_tablespace datafile 'Employee'  size 250m; 
alter tablespace Employee_tablespace read only; 
--2
drop tablespace Room_tablespace including contents and datafiles; 
create tablespace Room_tablespace datafile 'Room'  size 30m; 
alter tablespace Room_tablespace read only; 


--CREATE USER

Create user Fai identified by ffff;
Grant Connect to Fai ; 
Grant all privileges to Fai ; 
alter user Fai default tablespace Employee_tablespace ;
select username ,default_tablespace from dba_users where username = 'Fai';


--CREATE INDEX
DROP    INDEX  Customer_index ;
CREATE  INDEX  Customer_index  ON  Customer(upper (city));




