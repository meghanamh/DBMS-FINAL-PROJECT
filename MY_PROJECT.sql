drop database caR_vehicle_insurance;

Create database caR_vehicle_insurance;

USE caR_vehicle_insurance;
# customer

SET SQL_SAFE_UPDATES = 0;

#TABLE 1
CREATE TABLE T10_CUSTOMER
(
T10_1_Cust_Id VARCHAR(20) NOT NULL ,
T10_1_Cust_FName VARCHAR(10) NOT NULL ,
T10_1_Cust_LName VARCHAR(10) NOT NULL ,
T10_1_Cust_DOB DATE NOT NULL ,
T10_1_Cust_Gender VARCHAR(20) NOT NULL ,
T10_1_Cust_Address VARCHAR(20) NOT NULL ,
T10_1_Cust_MOB_Number VARCHAR(20) NOT NULL ,
T10_1_Cust_Email VARCHAR(20) NULL ,
T10_1_Cust_Passport_Number VARCHAR(20) NULL ,
T10_1_Cust_Marital_Status VARCHAR(20) NULL ,
T10_1_Cust_PPS_Number VARCHAR(20) NULL ,
CONSTRAINT XPKCUSTOMER_1 PRIMARY KEY (T10_1_Cust_Id)
);
CREATE UNIQUE INDEX XPKCUSTOMER_1 ON T10_CUSTOMER
(T10_1_Cust_Id ASC);


INSERT INTO T10_CUSTOMER(T10_1_Cust_Id,T10_1_Cust_FName,T10_1_Cust_LName,T10_1_Cust_DOB,T10_1_Cust_Gender,T10_1_Cust_Address,T10_1_Cust_MOB_Number,T10_1_Cust_Email,T10_1_Cust_Passport_Number,T10_1_Cust_Marital_Status,T10_1_Cust_PPS_Number)
	VALUES(100,'Srinivas','Gupta','1975-06-18','Male','2-2-1501/12/A/1',9123456780,'ABC@gmail.com',103425678,'Married',31234567);
    INSERT INTO T10_CUSTOMER VALUES(101,'Rehman','Khan','1987-04-21','Male','2-2-1771/24/B/2',9234567801,'DEF@gmail.com',104256783,'Unmarried',NULL);
	INSERT INTO T10_CUSTOMER VALUES(102,'Keerthi','Sharma','1992-09-02','Female','2-2-1421/14/C/3',9345678012,'GHI@gmail.com',102567834,'Unmarried',45678126);
    INSERT INTO T10_CUSTOMER VALUES(103,'Suresh','Rao','1971-02-12','Male','2-2-1422/16/D/4',9456780123,'JKL@gmail.com',105678342,'Married',NULL);
    INSERT INTO T10_CUSTOMER VALUES(104,'Sherya','Aggarwal','1982-05-15','Female','2-2-6512/15/E/5',9567801234,'MNO@gmail.com',106783425,'Married',12542675);
    INSERT INTO T10_CUSTOMER VALUES(105,'Shreinik','Reddy','1995-10-19','Male','2-2-3124/32/F/6',9678012345,'PQR@gmail.com',107834256,'Unmarried',98643124);
    INSERT INTO T10_CUSTOMER VALUES(106,'Reema','Sanon','1988-11-29','Female','2-2-5178/65/G/7',9780123456,'STU@gmail.com',108342567,'Married',NULL);
    INSERT INTO T10_CUSTOMER VALUES(107,'Madhu','Priya','1990-09-07','Female','2-2-1195/22/H/8',9801234567,'VWX@gmail.com',103425678,'Unmarried',67543987);
    INSERT INTO T10_CUSTOMER VALUES(108,'Parinika','Sen','1997-10-28','Female','2-2-1234/31/I/9',9012345678,'YZA@gmail.com',102945742,'Unmarried',59671243);
    INSERT INTO T10_CUSTOMER VALUES(109,'Sharath','Kumar','1985-07-20','Male','2-2-7654/33/J/1',9124356780,'LPM@gmail.com',109457422,'Married',39761200);
    INSERT INTO T10_CUSTOMER VALUES(1010,'Pritham','thiru','1970-08-24','Male','2-2-8712/44/K/2',9435678012,'APJ@gmail.com',104574229,'Married',NULL);
    INSERT INTO T10_CUSTOMER VALUES(1020,'Prashanthi','Chopra','1986-09-09','Female','2-2-5412/63/L/3',9567801243,NULL,NULL,'Unmarried',69123654);
    INSERT INTO T10_CUSTOMER  VALUES(1030,'Nikitha','Shetty','1998-12-03','Female','2-2-1198/45/M/4',9848566644,'CMR@gmail/com',103675427,'Unmarried',84319674);
    INSERT INTO T10_CUSTOMER VALUES(1044,'Henry','David','1962-11-23','Male','2-2-5881/89/N/5',9848032198,'RAM@gmail.com',NULL,'Married',NULL);
    INSERT INTO T10_CUSTOMER VALUES(1058,'Ginny','Weasly','1993-05-25','Female','2-2-9971/86/O/6',9666123122,NULL,NULL,NULL,84196745);
    

#TABLE 2

CREATE TABLE T10_APPLICATION
(
T10_2_Application_Id VARCHAR(20) NOT NULL ,
T10_2_Vehicle_Id VARCHAR(20) NOT NULL ,
T10_2_Application_Status VARCHAR(20) NOT NULL ,
T10_2_Coverage VARCHAR(50) NOT NULL ,
T10_1_Cust_Id VARCHAR(20) NOT NULL ,
CONSTRAINT XPKAPPLICATION_2 PRIMARY KEY (T10_2_Application_Id,T10_1_Cust_Id),
CONSTRAINT R_93 FOREIGN KEY (T10_1_Cust_Id) REFERENCES T10_CUSTOMER
(T10_1_Cust_Id) on delete restrict
);
CREATE UNIQUE INDEX XPKAPPLICATION_2 ON T10_APPLICATION
(T10_2_Application_Id ASC,T10_1_Cust_Id ASC);

INSERT INTO T10_APPLICATION(T10_2_Application_Id,T10_2_Vehicle_Id,T10_2_Application_Status,T10_2_Coverage,T10_1_Cust_Id)
	VALUES(1000,100021,'Approved',25000,109);#
INSERT INTO T10_APPLICATION VALUES(1001,100032,'Approved',20000,105);#
INSERT INTO T10_APPLICATION VALUES(1002,100043,'Unapproved',30000,101);#
INSERT INTO T10_APPLICATION VALUES(1003,100054,'Approved',50000,103);#
INSERT INTO T10_APPLICATION VALUES(1004,100065,'Unapproved',28000,100);#
INSERT INTO T10_APPLICATION VALUES(1005,100076,'Unapproved',100000,106);#
INSERT INTO T10_APPLICATION VALUES(1006,100087,'Approved',60000,102);#
INSERT INTO T10_APPLICATION VALUES(1007,100098,'Unapproved',54000,107);#
INSERT INTO T10_APPLICATION VALUES(1008,100109,'Approved',50000,104);#
INSERT INTO T10_APPLICATION VALUES(1010,100120,'Unpproved',80000,108);#
INSERT INTO T10_APPLICATION VALUES(1011,100120,'Unapproved',25000,108);#
INSERT INTO T10_APPLICATION VALUES(1021,100120,'Unapproved',100000,108);#
INSERT INTO T10_APPLICATION VALUES(1032,100120,'Approved',75000,1020);#
INSERT INTO T10_APPLICATION VALUES(1045,100120,'Approved',90000,1030);#
INSERT INTO T10_APPLICATION VALUES(1055,100120,'Unapproved',200000,1044);#
    
#TABLE 3


CREATE TABLE T10_QUOTE
(
T10_3_Quote_Id VARCHAR(20) NOT NULL,
T10_3_Issue_Date DATE NOT NULL,
T10_3_Valid_From_Date DATE NOT NULL,
T10_3_Valid_Till_Date DATE NOT NULL,
T10_3_Description VARCHAR(100) NULL,
T10_3_Product_Id VARCHAR(20) NOT NULL,
T10_3_Coverage_Level VARCHAR(20) NOT NULL,
T10_2_Application_Id VARCHAR(20) NOT NULL,
T10_1_Cust_Id VARCHAR(20) NOT NULL,
CONSTRAINT XPKQU0TE_3 PRIMARY KEY
(T10_3_Quote_Id,T10_2_Application_Id,T10_1_Cust_Id),
CONSTRAINT R_94 FOREIGN KEY (T10_2_Application_Id, T10_1_Cust_Id) REFERENCES
T10_APPLICATION (T10_2_Application_Id, T10_1_Cust_Id)
);

CREATE UNIQUE INDEX XPKQU0TE_3 ON T10_QUOTE
(T10_3_Quote_Id ASC,T10_2_Application_Id ASC,T10_1_Cust_Id ASC);

INSERT INTO T10_QUOTE(T10_3_Quote_Id,T10_3_Issue_Date,T10_3_Valid_From_Date,T10_3_Valid_Till_Date,T10_3_Description,T10_3_Product_Id,T10_3_Coverage_Level,T10_2_Application_Id,T10_1_Cust_Id)
		VALUES(1083549000,'2016-05-09','2015-07-12','2016-09-17','Ford Fiesta Classic 1.6 Duratec LXI','10445XA','Basic',1021,108);
INSERT INTO T10_QUOTE VALUES(104964000,'2018-08-22','2016-11-03','2018-11-25','The Tesla Roadster battery electric vehicle ','10652QP','Mandatory',1007,107);
INSERT INTO T10_QUOTE VALUES(1062841000,'2013-09-14','2012-11-03','2014-05-11','Maruti Suzuki Swift ','10936AB','Optional',1010,108);
INSERT INTO T10_QUOTE VALUES(1022886000,'2016-02-28','2015-12-04','2017-01-31','Hyundi Creta SUV','10265WD','Mandatory',1004,100);
INSERT INTO T10_QUOTE VALUES(1075268000,'2011-08-17','2010-02-02','2012-12-12','Tata Tiago','10761GJ','Optional' ,1000,109);
INSERT INTO T10_QUOTE VALUES(1061245000,'2019-11-17','2017-12-28','2020-05-03','Maruti Wagon R','10412VI','Basic',1001,105);
INSERT INTO T10_QUOTE VALUES(1081252000,'2013-08-30','2012-08-02','2014-03-19','The Tesla Roadster is a battery electric vehicle ','10780YC','Basic',1045,1030);
INSERT INTO T10_QUOTE VALUES(1038511000,'2008-11-10','2007-06-30','2009-10-21','Renault KWID','10417DQ','Optional',1032,1020);
INSERT INTO T10_QUOTE VALUES(1094268000,'2014-09-24','2013-07-14','2015-08-16','Tata Nexon','10534FS','Basic',1002,101);
INSERT INTO T10_QUOTE VALUES(1055117000,'2016-08-14','2015-04-13','2017-12-06','Ford Fiesta Classic 1.6 Duratec LXI','10487SP','Mandatory',1011,108);
INSERT INTO T10_QUOTE VALUES(1086136000,'2009-06-15','2007-02-06','2010-07-10','Kia Seltos','10657UR','Basic',1003,103);
INSERT INTO T10_QUOTE VALUES(1026553000,'2011-10-09','2010-11-11','2013-09-14','Renault KWID','10111WW','Basic',1005,106);
INSERT INTO T10_QUOTE VALUES(1032144000,'2017-01-26','2015-05-07','2018-02-11','Mahindra Scorpio','10430UT','Optional',1055,1044);
INSERT INTO T10_QUOTE VALUES(1099500000,'2018-09-10','2016-06-26','2019-07-15','Ford Fiesta Classic 1.6 Duratec LXI','10321FR','Mandatory',1006,102);
INSERT INTO T10_QUOTE VALUES(1032166000,'2012-10-10','2010-10-31','2013-11-11','Renault KWID','10333CM','Optional',1008,104);


#TABLE 4

drop table T10_INSURANCE_POLICY;

CREATE TABLE T10_INSURANCE_POLICY
(
T10_4_Agreement_id VARCHAR(20) NOT NULL ,
T10_4_Department_Name VARCHAR(25) NULL ,
T10_4_Policy_Number VARCHAR(20) NULL ,
T10_4_Start_Date DATE NULL ,
T10_4_Expiry_Date DATE NULL ,
T10_4_Term_Condition_Description VARCHAR(200) NULL ,
T10_2_Application_Id VARCHAR(20) NOT NULL ,
T10_1_Cust_Id VARCHAR(20) NOT NULL ,
CONSTRAINT XPKINSURANCE_POLICY_4 PRIMARY KEY
(T10_4_Agreement_id,T10_2_Application_Id,T10_1_Cust_Id),
CONSTRAINT R_95 FOREIGN KEY (T10_2_Application_Id, T10_1_Cust_Id) REFERENCES
T10_APPLICATION (T10_2_Application_Id,T10_1_Cust_Id)
);
CREATE UNIQUE INDEX XPKINSURANCE_POLICY_4 ON T10_INSURANCE_POLICY
(T10_4_Agreement_id ASC,T10_2_Application_Id ASC,T10_1_Cust_Id ASC);

INSERT INTO T10_INSURANCE_POLICY(T10_4_Agreement_id,T10_4_Department_Name,T10_4_Policy_Number,T10_4_Start_Date,T10_4_Expiry_Date,T10_4_Term_Condition_Description,T10_2_Application_Id,T10_1_Cust_Id)
	VALUES(109753423,'Health Insurance',10245765,NULL,'2018-05-12','loss of or damage to your vehicle caused by accident also for the legal liability for the damage you may cause to a third party property ',1055,1044);
INSERT INTO T10_INSURANCE_POLICY VALUES(107534239,'Claims Processing',10457652,'2014-10-26','2020-08-16','loss of or damage to your vehicle caused by accident,theft,fire,explosion,self-ignition,riots,strikes or acts of terrorism,natural calamities',1000,109);
INSERT INTO T10_INSURANCE_POLICY VALUES(103554126,NULL,10576524,'2016-09-30',NULL,NULL,1007,107);
INSERT INTO T10_INSURANCE_POLICY VALUES(106541283,'Risk Management',10865305,'2013-11-20','2023-06-10','loss of or damage to your vehicle caused by theft',1032,1020);
INSERT INTO T10_INSURANCE_POLICY VALUES(108713324,'Policyholder Service',10653058,'2015-02-27','2024-03-17','Liability Coverage',1010,108);
INSERT INTO T10_INSURANCE_POLICY VALUES(107133248,NULL,10530586,'2017-06-11','2025-07-07',NULL,1021,108);
INSERT INTO T10_INSURANCE_POLICY VALUES(101442598,'Payments and Commissions',10416976,NULL,'2021-12-26','loss of or damage to your vehicle caused by natural calamities',1003,103);
INSERT INTO T10_INSURANCE_POLICY VALUES(105925682,'Health insurance',NULL,'2011-10-12','2022-12-05','loss of or damage to your vehicle caused by accident,theft,fire,explosion,self-ignition,riots,strikes or acts of terrorism,natural calamities',1004,100);
INSERT INTO T10_INSURANCE_POLICY VALUES(109256825,'Reinsurance',10170875,'2019-07-03','2027-11-18','loss of or damage to your vehicle caused by theft',1045,1030);
INSERT INTO T10_INSURANCE_POLICY VALUES(102568368,'Agent Revenue Producction',10361984,'2012-03-20','2022-10-05',NULL,1005,106);
INSERT INTO T10_INSURANCE_POLICY VALUES(105233604,'Investments',NULL,NULL,'2021-12-26','Liability Coverage',1011,108);
INSERT INTO T10_INSURANCE_POLICY VALUES(109563127,NULL,10472985,'2011-07-22','2021-02-23','loss of or damage to your vehicle caused by theft',1006,102);
INSERT INTO T10_INSURANCE_POLICY VALUES(101454711,'Property and Casualty',NULL,'2018-08-14','2026-09-19','loss of or damage to your vehicle caused by natural calamities',1008,104);
INSERT INTO T10_INSURANCE_POLICY VALUES(102344569,'Risk Managements',10998877,'2020-03-05',NULL,NULL,1001,105);
INSERT INTO T10_INSURANCE_POLICY VALUES(101124245,NULL,10287645,'2015-10-10','2024-11-14','loss of or damage to your vehicle caused by accident,theft,fire,explosion,self-ignition,riots,strikes or acts of terrorism,natural calamities',1002,101);


# TABLE 5

drop table T10_PREMIUM_PAYMENT;

CREATE TABLE T10_PREMIUM_PAYMENT
(
T10_5_Premium_Payment_Id VARCHAR(20) NOT NULL ,
T10_4_Policy_Number VARCHAR(20) NOT NULL ,
T10_5_Premium_Payment_Amount INTEGER NOT NULL ,
T10_5_Premium_Payment_Schedule DATE NOT NULL ,
T10_5_Receipt_Id VARCHAR(20) NOT NULL ,
T10_1_Cust_Id VARCHAR(20) NOT NULL,
CONSTRAINT XPKPREMIUM_PAYMENT_5 PRIMARY KEY
(T10_5_Premium_Payment_Id,T10_1_Cust_Id),
CONSTRAINT R_85 FOREIGN KEY (T10_1_Cust_Id) REFERENCES T10_CUSTOMER(T10_1_Cust_Id)
);

CREATE UNIQUE INDEX XPKPREMIUM_PAYMENT_5 ON
T10_PREMIUM_PAYMENT
(T10_5_Premium_Payment_Id ASC,T10_1_Cust_Id ASC);

INSERT INTO T10_PREMIUM_PAYMENT(T10_5_Premium_Payment_Id,T10_4_Policy_Number,T10_5_Premium_Payment_Amount,T10_5_Premium_Payment_Schedule,T10_5_Receipt_Id,T10_1_Cust_Id)
	VALUES(100000,10245765,0,'2018-04-11','1045ABC',109);
INSERT INTO T10_PREMIUM_PAYMENT VALUES(100111,10457652,0,'2017-07-15','1085DEF',100);
INSERT INTO T10_PREMIUM_PAYMENT VALUES(100222,1057652,0,'2013-03-23','1092GHI',103);
INSERT INTO T10_PREMIUM_PAYMENT VALUES(100333,10865305,700000,'2016-07-15','1025JKL',101);
INSERT INTO T10_PREMIUM_PAYMENT VALUES(100444,10653058,900000,'2012-02-22','1053MNO',106);
INSERT INTO T10_PREMIUM_PAYMENT VALUES(100555,10530586,0,'2011-10-05','1099PQR',108);
INSERT INTO T10_PREMIUM_PAYMENT VALUES(100666,10416976,600000,'2019-06-14','1085STU',107);
INSERT INTO T10_PREMIUM_PAYMENT VALUES(100777,10170875,0,'2020-12-30','1051VWX',105);
INSERT INTO T10_PREMIUM_PAYMENT VALUES(100888,10361984,600000,'2017-07-15','1085YZA',1020);
INSERT INTO T10_PREMIUM_PAYMENT VALUES(100999,10472985,0,'2007-11-29','1011RPM',104);
INSERT INTO T10_PREMIUM_PAYMENT VALUES(100123,10573699,600000,'2017-07-15','1085APJ',1010);
INSERT INTO T10_PREMIUM_PAYMENT VALUES(100456,'PN',0,'2019-06-02','1018QYB',1044);
INSERT INTO T10_PREMIUM_PAYMENT VALUES(100664,'PN',2300000,'2014-06-16','1059GTM',1058);
INSERT INTO T10_PREMIUM_PAYMENT VALUES(100890,'PN',0,'2017-07-15','1081HGJ',1030);
INSERT INTO T10_PREMIUM_PAYMENT VALUES(100719,'PN',800000,'2019-09-27','1069ADE',102);


SELECT * FROM T10_PREMIUM_PAYMENT;

# TABLE 6

drop table T10_VEHICLE  ;

CREATE TABLE T10_VEHICLE  
( 
T10_6_Vehicle_Id VARCHAR(20) NOT NULL ,  
T10_6_Policy_Id VARCHAR(20) NULL , 
T10_6_Dependent_NOK_Id VARCHAR(20) NULL ,  
T10_6_Vehicle_Registration_Number VARCHAR(20) NOT NULL ,  
T10_6_Vehicle_Value INTEGER NULL , 
T10_6_Vehicle_Type VARCHAR(20) NOT NULL ,  
T10_6_Vehicle_Size INTEGER NULL ,  
T10_6_Vehicle_Number_Of_Seat INTEGER NULL ,  
T10_6_Vehicle_Manufacturer VARCHAR(20) NULL ,  
T10_6_Vehicle_Engine_Number INTEGER NULL ,  
T10_6_Vehicle_Chasis_Number INTEGER NULL ,  
T10_6_Vehicle_Number VARCHAR(20) NULL ,  
T10_6_Vehicle_Model_Number VARCHAR(20) NULL ,  
T10_6_Cust_Id VARCHAR(20) NOT NULL , 
CONSTRAINT XPKVEHICLE_6 PRIMARY KEY (T10_6_Vehicle_Id,T10_6_Cust_Id),  
CONSTRAINT R_92 FOREIGN KEY (T10_6_Cust_Id) REFERENCES T10_CUSTOMER (T10_1_Cust_Id) ON DELETE RESTRICT
); 

CREATE UNIQUE INDEX XPKVEHICLE_6 ON T10_VEHICLE (T10_6_Vehicle_Id ASC,T10_6_Cust_Id ASC); 

#inserting values in vehicle

INSERT INTO T10_VEHICLE (T10_6_Vehicle_Id, T10_6_Policy_Id, T10_6_Dependent_NOK_Id, T10_6_Vehicle_Registration_Number, 
T10_6_Vehicle_Value, T10_6_Vehicle_Type, T10_6_Vehicle_Size, T10_6_Vehicle_Number_Of_Seat, T10_6_Vehicle_Manufacturer, T10_6_Vehicle_Engine_Number, 
T10_6_Vehicle_Chasis_Number, T10_6_Vehicle_Number, T10_6_Vehicle_Model_Number, T10_6_Cust_Id)
Values(1000, 10611,10000034,'KA-25 HA 1985',1074773,'Sports Car',10002,2,'Toyota',1098, 10928,1,'10HG290TUNIMI8001',101);



INSERT INTO T10_VEHICLE (T10_6_Vehicle_Id, T10_6_Policy_Id, T10_6_Dependent_NOK_Id, T10_6_Vehicle_Registration_Number, 
T10_6_Vehicle_Value, T10_6_Vehicle_Type, T10_6_Vehicle_Size, T10_6_Vehicle_Number_Of_Seat, T10_6_Vehicle_Manufacturer, T10_6_Vehicle_Engine_Number, 
T10_6_Vehicle_Chasis_Number, T10_6_Vehicle_Number, T10_6_Vehicle_Model_Number, T10_6_Cust_Id)
Values(1001, 106341,10000234,'TA-44 AR 9871',127489,'COUPE',10004,4,'Ford',1022, 10234,1,'10AY120RUEIWI2222',1058),
(1002, 105478,10009324,'hp-65 GT 6542',1074780,'PICKUP TRUCK',10789,4,'Tesla',1076, 10789,3,'10RT678NAISHA1024',104),
(1003, 100239,10007001,'AP-28 TE 4562',107373,'HATCHBACK',10908,5,'Suzuki',1039, 37263,2,'10IJ395HAMET78997',105),
(1004, 107291,10003562,'MA-17 NA 7118',1073733,'SEDAN',10671,5,'Tesla',1023, 32378,3,'10UH39IRVOP7783',101),
(1005, 102863,10273892,'TN-19 CH 2810',1027189,'COUPE',10267,5,'Suzuki',1099, 10618,2,'10WO45ITATM4173',107),
(1006, 107291,10273892,'UP-118 LK 1999',1037251,'Sports Car',10382,2,'Tesla',1026, 10237,3,'10GW45JTATU4173',108),
(1007, 101353,10736240,'UK-27 LA 6252',10364932,'STATION WAGON',10284,5,'Ford',1052, 10236,1,'10TW26DNEKO4726',109),
(1008, 103981,10329847,'KA-27 HA 5643',10239873,'PICKUP',10372,5,'Toyota',1010, 10151,2,'10PW27EHSYW3729',102),
(1009, 103414,10630634,'TE-09 HY 3622',10376434,'HATCHBACK',10362,7,'Renault',1028, 10317,3,'10TW26DREKR4726',103),
(10010, 103531,10623492,'MA-78 MU 1633',1032242122,'CONVERTIBLE',10362,7,'BMW',1042, 10410,1,'10YW28DYEYW4186',1010),
(10011, 105435,10364373,'PJ-20 LU 1414',1073412305,'PICKUP',10834,5,'HONDA',1073, 10382,2,'10RW52CEARS3641',1020),
(10012, 103633,10832321,'OR-26 BH 2712',107634374,'SPORTS CAR',10610,5,'NISSAN',1032, 10723,1,'10HD36JDTDJ8342',1010),
(10013, 1748465,10894723,'TN-12 TH 4429',104338202,'SEDAN',10630,8,'HONDA',1074, 10932,3,'10TW92JHFGD6634',1044),
(10014, 1095075,10236443,'MA-19 TH 2712',103330323,'HATCHBACK',10630,4,'COUPE',1026, 10613,2,'10RW23SGRAP8431',107);

DELETE FROM T10_CUSTOMER
WHERE (T10_1_Cust_Id = 101 AND T10_1_Cust_Id <> 0);

DELETE FROM T10_CUSTOMER
WHERE (T10_1_Cust_Id = 106 AND T10_1_Cust_Id <> 0);


drop table T10_CLAIM ;

# TABLE 7
CREATE TABLE T10_CLAIM 
( 
T10_7_Claim_Id VARCHAR(20) NOT NULL , 
T10_4_Agreement_Id VARCHAR(20) NOT NULL , 
T10_7_Claim_Amount INTEGER NOT NULL , 
T10_14_Incident_Id VARCHAR(20) NOT NULL , 
T10_7_Damage_Type VARCHAR(20) NOT NULL ,
T10_7_Date_Of_Claim DATE NOT NULL ,
T10_7_Claim_Status CHAR(20) NOT NULL ,
T10_1_Cust_Id VARCHAR(20) NOT NULL ,
CONSTRAINT XPKCLAIM_7 PRIMARY KEY (T10_7_Claim_Id,T10_1_Cust_Id),
CONSTRAINT R_88 FOREIGN KEY (T10_1_Cust_Id) REFERENCES T10_CUSTOMER
(T10_1_Cust_Id)
);
CREATE UNIQUE INDEX XPKCLAIM_7 ON T10_CLAIM
(T10_7_Claim_Id ASC,T10_1_Cust_Id ASC);

INSERT INTO T10_CLAIM( T10_7_Claim_Id, T10_4_Agreement_Id, T10_7_Claim_Amount, T10_14_Incident_Id, T10_7_Damage_type, T10_7_Date_Of_Claim, T10_7_Claim_status, T10_1_Cust_Id)
VALUES('10211',101124245,2000,'101','BUMPER CRASH','2018-11-04','HAlf done',101);
INSERT INTO T10_CLAIM VALUES('10200',101454711,4000,'102','headlight','2018-06-30','Initial',102);
INSERT INTO T10_CLAIM VALUES('10300',105233604,5000,'103','Breakfail','2018-09-17','HAlf done',108);
INSERT INTO T10_CLAIM VALUES('10244',109256825,10000,'104','airbag Refill','2018-10-11','Ready',103);
INSERT INTO T10_CLAIM VALUES('10233',101442598,15000,'105','BumperCrash','2018-12-13','Half done',104);
INSERT INTO T10_CLAIM VALUES('10255',108713324,4000,'106','CAR CRASH','2019-3-15','Pending',105);
INSERT INTO T10_CLAIM VALUES('10266',103554126,10000,'107','AirBag','2019-5-21','Initial',101);
INSERT INTO T10_CLAIM VALUES('10311',109753423,2000,'108','BatteryChange','2019-7-25','Ready',102);
INSERT INTO T10_CLAIM VALUES('10244',102344569,25000,'109','AIR BAG REFILL','2020-07-3','Pending',109);
INSERT INTO T10_CLAIM VALUES('10277',109563127,15000,'110','BumperCrash','2019-12-9','HalfDone',1010);
INSERT INTO T10_CLAIM VALUES('10288',102568368,10000,'111','AirBagRefill','2020-2-7','Final',1058);
INSERT INTO T10_CLAIM VALUES('10299',105925682,2000,'112','OVERALL','2019-5-21','Pending',1020);
INSERT INTO T10_CLAIM VALUES('10322',107133248,5000,'113','CAR CRASH','2018-11-27','Pending',100);
INSERT INTO T10_CLAIM VALUES('10344',106541283,25000,'114','CarCrash','2020-08-14','Initial',1044);
INSERT INTO T10_CLAIM VALUES('10355',107534239,4000,'115','HeadLight','2020-10-24','Ready',106);


# TABLE 8

drop table T10_CLAIM_SETTLEMENT; 

CREATE TABLE T10_CLAIM_SETTLEMENT
(
T10_8_Claim_Settlement_Id VARCHAR(20) NOT NULL ,
T10_6_Vehicle_Id VARCHAR(20) NOT NULL ,
T10_8_Date_Settled DATE NOT NULL ,
T10_8_Amount_Paid INTEGER NOT NULL ,
T10_8_Coverage_Id VARCHAR(20) NOT NULL ,
T10_7_Claim_Id VARCHAR(20) NOT NULL ,
T10_1_Cust_Id VARCHAR(20) NOT NULL ,
CONSTRAINT XPKCLAIM_SETTLEMENT_8 PRIMARY KEY
(T10_8_Claim_Settlement_Id,T10_7_Claim_Id,T10_1_Cust_Id),
CONSTRAINT R_90 FOREIGN KEY (T10_7_Claim_Id, T10_1_Cust_Id) REFERENCES T10_CLAIM
(T10_7_Claim_Id, T10_1_Cust_Id)
);
CREATE UNIQUE INDEX XPKCLAIM_SETTLEMENT_8 ON
T10_CLAIM_SETTLEMENT
(T10_8_Claim_Settlement_Id ASC,T10_7_Claim_Id ASC,T10_1_Cust_Id ASC);

INSERT INTO T10_CLAIM_SETTLEMENT(T10_8_Claim_Settlement_Id,T10_6_Vehicle_Id,T10_8_Date_Settled,T10_8_Amount_Paid,T10_8_Coverage_Id,T10_7_Claim_Id,T10_1_Cust_Id)
VALUES(10111,10014,'2018-01-01',2000,'10_111',10355,106);
INSERT INTO T10_CLAIM_SETTLEMENT VALUES(10222,10012,'2018-01-04',5000,'10_112',10200,102);
INSERT INTO T10_CLAIM_SETTLEMENT VALUES(10333,1002,'2018-01-02',10000,'10_113',10300,108);
INSERT INTO T10_CLAIM_SETTLEMENT VALUES(10444,1003,'2018-02-07',15000,'10_114',10211,101);
INSERT INTO T10_CLAIM_SETTLEMENT VALUES(10555,10011,'2018-07-08',25000,'10_111',10255,105);
INSERT INTO T10_CLAIM_SETTLEMENT VALUES(10666,1004,'2019-05-10',2000,'10_116',10233,104);
INSERT INTO T10_CLAIM_SETTLEMENT VALUES(10777,1006,'2019-06-12',5000,'10_117',10266,101);
INSERT INTO T10_CLAIM_SETTLEMENT VALUES(10511,1007,'2019-08-14',15000,'10_114',10311,102);
INSERT INTO T10_CLAIM_SETTLEMENT VALUES(10500,10010,'2019-09-16',20000,'10_119',10244,109);
INSERT INTO T10_CLAIM_SETTLEMENT VALUES(10888,10013,'2019-11-18',10000,'10_117',10288,1058);
INSERT INTO T10_CLAIM_SETTLEMENT VALUES(10999,10012,'2019-12-20',25000,'10_121',10299,1020);
INSERT INTO T10_CLAIM_SETTLEMENT VALUES(10533,1005,'2019-12-22',15000,'10_119',10344,1044);
INSERT INTO T10_CLAIM_SETTLEMENT VALUES(10544,10010,'2020-1-24',20000,'10_113',10277,1010);
INSERT INTO T10_CLAIM_SETTLEMENT VALUES(10566,1003,'2020-5-26',10000,'10_122',10322,100);
INSERT INTO T10_CLAIM_SETTLEMENT VALUES(10577,1002,'2020-7-28',5000,'10_123',10244,103);


# TABLE 9

drop table T10_MEMBERSHIP;

CREATE TABLE T10_MEMBERSHIP
(
T10_9_Membership_Id VARCHAR(20) NOT NULL ,
T10_9_Membership_Type CHAR(15) NOT NULL ,
T10_9_Organisation_Contact VARCHAR(20) NULL ,
T10_1_Cust_Id VARCHAR(20) NOT NULL ,
CONSTRAINT XPKMEMBERSHIP_12 PRIMARY KEY
(T10_9_Membership_Id,T10_1_Cust_Id),
CONSTRAINT R_91 FOREIGN KEY (T10_1_Cust_Id) REFERENCES T10_CUSTOMER
(T10_1_Cust_Id)
);

CREATE UNIQUE INDEX XPKMEMBERSHIP_12 ON T10_MEMBERSHIP
(T10_9_Membership_Id ASC,T10_1_Cust_Id ASC);
 
 INSERT INTO T10_MEMBERSHIP(T10_9_Membership_Id,T10_9_Membership_Type,T10_9_Organisation_Contact,T10_1_Cust_Id)
 VALUES('10XY111','1013XYZ100000',9876324502,101);
 INSERT INTO T10_MEMBERSHIP VALUES('10AB112','1014GHT200000',9763284052,1058);
 INSERT INTO T10_MEMBERSHIP VALUES('10CD113','1015ABC300000',9324502876,100);
 INSERT INTO T10_MEMBERSHIP VALUES('10EF114','1016DFG400000',9452230678,109);
 INSERT INTO T10_MEMBERSHIP VALUES('10GH115','1017XNU500000',NULL,105);
 INSERT INTO T10_MEMBERSHIP VALUES('10IJ116','1018ZRW600000',8763254206,1044);
 INSERT INTO T10_MEMBERSHIP VALUES('10KL117','1019YUI700000',8646667789,108);
 INSERT INTO T10_MEMBERSHIP VALUES('10MN118','1020BHI800000',8877806902,108);
 INSERT INTO T10_MEMBERSHIP VALUES('10OP119','1021KIO900000',NULL,107);
 INSERT INTO T10_MEMBERSHIP VALUES('1QR120','1022VRW111000',8666777032,1010);
 INSERT INTO T10_MEMBERSHIP VALUES('10ST121','1023UYP222000',898486878,1020);
 INSERT INTO T10_MEMBERSHIP VALUES('10UV122','1024VHI333000',NULL,1058);
 INSERT INTO T10_MEMBERSHIP VALUES('10WX123','1025JUY444000',5456347001,103);
 INSERT INTO T10_MEMBERSHIP VALUES('10YZ124','1026POY555000',NULL,107);
 INSERT INTO T10_MEMBERSHIP VALUES('10AP125','1027HDS666000',9282529225,102);


# TABLE 10
CREATE TABLE T10_INSURANCE_COMPANY
(
T10_10_Company_Name VARCHAR(50) NOT NULL ,
T10_10_Company_Address VARCHAR(150) NULL ,
T10_10_Company_Contact_Number VARCHAR(50) NULL ,
T10_10_Company_Fax VARCHAR(50) NULL ,
T10_10_Company_Email VARCHAR(50) NULL ,
T10_10_Company_Website VARCHAR(50) NULL ,
T10_10_Company_Location VARCHAR(20) NULL ,
T10_10_Company_Department_Name VARCHAR(20) NULL ,
T10_10_Company_Office_Name VARCHAR(50) NULL ,
CONSTRAINT XPKINSURANCE_COMPANY_15 PRIMARY KEY
(T10_10_Company_Name)
);
CREATE UNIQUE INDEX XPKINSURANCE_COMPANY_15 ON
T10_INSURANCE_COMPANY
(T10_10_Company_Name ASC);


INSERT INTO T10_INSURANCE_COMPANY(T10_10_Company_Name, T10_10_Company_Address, T10_10_Company_Contact_Number, T10_10_Company_Fax, T10_10_Company_Email, T10_10_Company_Website, T10_10_Company_Location, T10_10_Company_Department_Name, T10_10_Company_Office_Name)
VALUES ('HDFC Ergo General Insurance Company Limited', '1st Floor, HDFC House, 165-166 Backbay Reclamation, H. T. Parekh Marg, Churchgate, Mumbai – 400 020', '22 6234 6234', '67153601', 'care@hdfcergo.com', 'www.hdfcergo.com', 'Mumbai', 'Car Insurance', 'HDFC Ergo');
INSERT INTO T10_INSURANCE_COMPANY VALUES('TATA AIG General Insurance Company Limited', ' Peninsula Business Park, Tower A, 15th Floor, G.K.Marg, Lower Parel, Mumbai - 400 013, Maharashtra, India', '1800 266 7780', '022 66938170', 'customersupport@tataaig.com', 'www.tataaig.com', 'Mumbai', 'Car insurance', 'TATA AIG Insurance Company');
INSERT INTO T10_INSURANCE_COMPANY VALUES('ICICI Lombard General Insurance Company Limited', 'ICICI Lombard House 414, P.Balu Marg, Off Veer Sawarkar Marg, near Siddhivinayak Temple, Prabhadevi Mumbai-400025', '1800 2666', '022 61961323', 'customersupport@icicilombard.com', 'www.icicilombard.com', 'Mumbai', 'Car insurance', 'ICICI Lombard Insurance Company');
INSERT INTO T10_INSURANCE_COMPANY VALUES('Royal Sundaram General Insurance Company Limited', 'Royal Sundaram General Insurance Co. Limited No.21 , Patullos Road ,Chennai - 600 002', '1860 425 0000', '91-44-7113 7114', 'customer.services@royalsundaram.in', 'www.royalsundaram.in', 'Chennai', 'Car insurance', 'Royal Sundaram Insurance Company');
INSERT INTO T10_INSURANCE_COMPANY VALUES('Bharti AXA General Insurance Company Limited', '5th floor, Leo Complex, 45/1, Residency Rd 1st Cross, Shanthala Nagar, Ashok Nagar, Bengaluru, Karnataka 560025', '1800-103-2292', '85058 83311', 'customer.service@bhartiaxa.com', 'www.bharti-axagi.co.in', 'Bangalore', 'Car insurance', 'Bharti AXA Insurance Company');
INSERT INTO T10_INSURANCE_COMPANY VALUES('Reliance General Insurance Company Limited', '2nd & 3rd Floor, Winway Building, 11/12, Block No-4, Old No-67, South Tukoganj, Indore, Madhya Pradesh, India - 452001​', '22 48903009​', '7400422200​', 'rgicl.services@relianceada.com', 'www.reliancegeneral.co.in', 'Indore', 'Car insurance', 'Reliance Insurance Company');
INSERT INTO T10_INSURANCE_COMPANY VALUES('IFFCO Tokio General Insurance Company Limited', 'IFFCO Tower, Plot No. 3, Sector 29, Gurgaon - 122001, Haryana, India.', '1800-103-5499', '0124-428 5499', 'websupport@iffcotokio.co.in', 'www.iffcotokio.co.in', 'Gurgaon', 'Car insurance', 'IFFCO Tokio Insurance Company');
INSERT INTO T10_INSURANCE_COMPANY VALUES('Bajaj Allianz General Insurance Company Limited', 'Bajaj Allianz House, Airport Road, Yerawada, Pune-411006', '1800-209-5858', '020-30512246', 'bagichelp@bajajallianz.co.in', 'www.bajajallianz.com', 'Pune', 'Car insurance', 'Bajaj Allianz Insurance Company');
INSERT INTO T10_INSURANCE_COMPANY VALUES('The New India Assurance Company Limited', 'New India Assurance Building, 87, M G Road, Fort, Mumbai', '1800-209-1415', '1800-209-1415', 'tech support', 'www.newindia.co.in', 'Mumbai', 'Car insurance', 'The New India Assurance Company');
INSERT INTO T10_INSURANCE_COMPANY VALUES('United India Insurance Company Limited', 'United India Insurance Co. Ltd. 24, Whites Road, Chennai - 600014', '044-28575200', '1800 425 333 33', 'online.policy@uiic.co.in', 'uiic.co.in', 'Chennai', 'Car insurance', 'United India Insurance Company');
INSERT INTO T10_INSURANCE_COMPANY VALUES('Liberty General Insurance Ltd', 'no 21/15 The Landmark 4th Floor, Mahatma Gandhi Rd, near trinity Metro Station, Bengaluru, Karnataka 560001', '1800-266-5844', '022 6700 1606', 'care@libertyinsurance.in', 'www.libertyinsurance.in', 'Bangalore', 'Car insurance', 'Liberty General Insurance');
INSERT INTO T10_INSURANCE_COMPANY VALUES('National Insurance Co. Ltd', '16, 2nd Floor, Kumrakrupa Road, Shivananda Circle ,560001, Karnataka', '2521548', '2521167', '603900@nic.co.in', 'nationalinsurance.nic.co.in', 'Bangalore', 'Car insurance', 'National Insurance Co.');
INSERT INTO T10_INSURANCE_COMPANY VALUES('Kotak Mahindra General Insurance Co. Ltd', '43, S End Rd, Tata Silk Farm, Jayanagar, Bengaluru, Karnataka 560004', ' 1800 266 4545', ' 1800 266 4545', 'care@kotak.com', 'www.kotakgeneralinsurance.com', 'Mumbai', 'Car insurance', 'Kotak Mahindra General Insurance Co.');
INSERT INTO T10_INSURANCE_COMPANY VALUES('Future Generali India Insurance Co. Ltd', 'Future Generali India Insurance Co Ltd., Unit 801 and 802, 8th floor, Tower C, Embassy 247 Park, L.B.S. Marg, Vikhroli (W), Mumbai - 400 083.', '1800 220 233', '022-41514555', 'fgcare@futuregenerali.in', 'general.futuregenerali.in', 'Mumbai', 'Car insurance', 'Future Generali India Insurance Co.');
INSERT INTO T10_INSURANCE_COMPANY VALUES('Cholamandalam MS General Insurance Co. Ltd', '2nd Floor, "Dare House", No.2, NSC Bose Road, Chennai - 600001, India', '1800-208-5544', '1800-208-5544', 'care@chalo.com', 'www.cholainsurance.com', 'Chennai', 'Car insurance', 'Cholamandalam MS Insurance Co.');
# TABLE 13

CREATE TABLE T10_DEPARTMENT
(
T10_13_Department_Name VARCHAR(25)  ,
T10_13_Department_ID CHAR(25) NOT NULL ,
T10_13_Department_Staff CHAR(25) NULL ,
T10_13_Department_Offices CHAR(25) NULL ,
T10_10_Company_Name VARCHAR(50) ,
CONSTRAINT XPKDEPARTMENT PRIMARY KEY
(T10_13_Department_Name,T10_13_Department_ID,T10_10_Company_Name),
CONSTRAINT R_56 FOREIGN KEY (T10_10_Company_Name)
REFERENCES T10_INSURANCE_COMPANY (T10_10_Company_Name)
);

CREATE UNIQUE INDEX XPKDEPARTMENT ON T10_DEPARTMENT
(T10_13_Department_Name ASC,T10_13_Department_ID ASC,T10_10_Company_Name ASC);

INSERT INTO T10_DEPARTMENT (T10_13_Department_Name, T10_13_Department_ID, T10_13_Department_Staff, T10_13_Department_Offices, T10_10_Company_Name)
VALUES('Health Insurance',1039,'Sanket Hutagi','Administration Office','HDFC Ergo General Insurance Company Limited'),
('Claims Processing',1040,'Shreemati Pol','H R MANAGEMENT','HDFC Ergo General Insurance Company Limited'),
('Risk Management',1056,'Arnav Singh','Administration Office','ICICI Lombard General Insurance Company Limited'),
('Claims Processing',1040,'Sanika Hutagi','Accounting and Finance','The New India Assurance Company Limited'),
('Policyholder Services',1088,'Shashank HUtagi','Production','Bharti AXA General Insurance Company Limited'),
('Health Insurance',1039,'Shantanu Maheshwari','Accounting and Financ','The New India Assurance Company Limited'),
('Payments & Commissions',1028,'Yash Snehi','Research and Development ','Cholamandalam MS General Insurance Co. Ltd'),
('Investments',1099,'Sapna Sharma','H R MANAGEMENT','Bharti AXA General Insurance Company Limited'),
('Agent Revenue Production',1076,'Taruni Singh','Marketing','Bajaj Allianz General Insurance Company Limited'),
('Payments & Commissions',1028,'Shiksha Senha','Production','IFFCO Tokio General Insurance Company Limited'),
('Reinsurance',1015,'Payal Jaiswal','H R Manangement','Cholamandalam MS General Insurance Co. Ltd'),
('Policyholder Services',1088,'khyati Magu','Research and Development','Kotak Mahindra General Insurance Co. Ltd'),
('Investments',1099,'Palak shrivastav','Marketing','Royal Sundaram General Insurance Company Limited'),
('Property & Casualty',1078,'Pallavi Bhat','Accounting and Finance','United India Insurance Company Limited'),
('Reinsurance',1015,'Anuradha Tasgaokar','Administration Office','United India Insurance Company Limited');

# TABLE 11
CREATE TABLE T10_VEHICLE_SERVICE
(
T10_11_Department_Name VARCHAR(25) NOT NULL ,
T10_11_Vehicle_Service_Company_Name VARCHAR(30) NOT NULL ,
T10_11_Vehicle_Service_Address VARCHAR(50) NULL ,
T10_11_Vehicle_Service_Contact VARCHAR(20) NULL ,
T10_11_Vehicle_Service_Incharge VARCHAR(30) NULL ,
T10_11_Vehicle_Service_Type VARCHAR(20) NULL ,
T10_11_Department_Id CHAR(25) NOT NULL ,
T10_10_Company_Name VARCHAR(50) NOT NULL ,
CONSTRAINT XPKVEHICLE_SERVICE PRIMARY KEY
(T10_11_Vehicle_Service_Company_Name,T10_11_Department_Name),
CONSTRAINT R_50 FOREIGN KEY (T10_11_Department_Name, T10_11_Department_Id,
T10_10_Company_Name) REFERENCES T10_DEPARTMENT (T10_13_Department_Name,
T10_13_Department_ID, T10_10_Company_Name)
);

CREATE UNIQUE INDEX XPKVEHICLE_SERVICE ON T10_VEHICLE_SERVICE
(T10_11_Vehicle_Service_Company_Name ASC,T10_11_Department_Name ASC);

INSERT INTO T10_VEHICLE_SERVICE (T10_11_Department_Name, T10_11_Vehicle_Service_Company_Name, T10_11_Vehicle_Service_Address, T10_11_Vehicle_Service_Contact,
T10_11_Vehicle_Service_Incharge, T10_11_Vehicle_Service_Type, T10_11_Department_Id, T10_10_Company_Name)
VALUES('Health Insurance','Automate India','Pune Maharashtra', 8364637382,'Sanjay Dutt','Interim Car Service',1039,'HDFC Ergo General Insurance Company Limited'),
('Claims Processing','Automate India','Pune Maharashtra',8364637382,'Kabir Mehra','FULL CAR SERVICE',1040,'HDFC Ergo General Insurance Company Limited'),
('Risk Management','Star Auto Industries','Mumbai Maharashtra',9354343637,'Mihika Bhalla','MAJOR CAR SERVICE',1056,'ICICI Lombard General Insurance Company Limited'),
('Claims Processing','Auto Technical','Ahemedabad Gujarat',8453657132,'Aishwarya Nandihalli','FULL CAR SERVICE',1040,'The New India Assurance Company Limited'),
('Policyholder Services','Star Auto Industries','Mumbai Maharashtra',9354343637,'Dhruv Rathi','Interim Car Service',1088,'Bharti AXA General Insurance Company Limited'),
('Health Insurance','Aryaa Motors','Dharwad KArnataka',9463542674,'Alia Saxena','FULL CAR SERVICE',1039,'The New India Assurance Company Limited'),
('Payments & Commissions','Advaith Hyundi','Mysore Karnataka',8374654647,'Monika Gandhi','MAJOR CAR SERVICE',1028,'Cholamandalam MS General Insurance Co. Ltd'),
('Investments','Pitstop Car Repair','Banglore karnataka',7335454646,'Shubhashree Pol','Interim Car Service',1099,'Bharti AXA General Insurance Company Limited'),
('Agent Revenue Production','Auto Technical','Ahemedabad Gujarat',9870931537,'Rohini Gajakosh','FULL CAR SERVICE',1076,'Bajaj Allianz General Insurance Company Limited'),
('Payments & Commissions','camry Motors','Mysore Karnataka',8374654647,'Sahitya Trivedi','MAJOR CAR SERVICE',1028,'IFFCO Tokio General Insurance Company Limited'),
('Reinsurance','Car Choice','Ernakulam Kerala',9865336898,'Sohani dwivedi','Interim Car Service',1015,'Cholamandalam MS General Insurance Co. Ltd'),
('Policyholder Services','camry Motors','Kochi Kerala',9700041746,'Sweety khurana','MAJOR CAR SERVICE',1088,'Kotak Mahindra General Insurance Co. Ltd'),
('Investments','Car Choice','Ernakulam Kerala',9865336898,'Shruti Totla','FULL CAR SERVICE',1099,'Royal Sundaram General Insurance Company Limited'),
('Property & Casualty','rycabz Service','Lucknow Uttarpradesh',84646562374,'pandit chaurasiya','Interim Car Service',1078,'United India Insurance Company Limited'),
('Reinsurance','rycabz Service','Lucknow Uttarpradesh',84646562374,'Manisha Sharma','MAJOR CAR SERVICE',1015,'United India Insurance Company Limited');


# TABLE 12

drop table T10_NOK;

CREATE TABLE T10_NOK
(
T10_12_Nok_Id VARCHAR(20) NOT NULL ,
T10_12_Nok_Name VARCHAR(20) NULL ,
T10_12_Nok_Address VARCHAR(20) NULL ,
T10_12_Nok_Phone_Number INTEGER NULL ,
T10_12_Nok_Gender CHAR(2) NULL ,
T10_12_Nok_Marital_Status CHAR(10) NULL ,
T10_4_Agreement_id VARCHAR(20) NOT NULL ,
T10_2_Application_Id VARCHAR(20) NOT NULL ,
T10_1_Cust_Id VARCHAR(20) NOT NULL ,
CONSTRAINT XPKNOK_14 PRIMARY KEY
(T10_12_Nok_Id,T10_4_Agreement_id,T10_2_Application_Id,T10_1_Cust_Id),
CONSTRAINT R_99 FOREIGN KEY (T10_4_Agreement_id, T10_2_Application_Id, T10_1_Cust_Id)
REFERENCES T10_INSURANCE_POLICY (T10_4_Agreement_id, T10_2_Application_Id, T10_1_Cust_Id)
);

drop table T10_NOK;

CREATE UNIQUE INDEX XPKNOK_14 ON T10_NOK
(T10_12_Nok_Id ASC,T10_4_Agreement_id ASC,T10_2_Application_Id ASC, T10_1_Cust_Id ASC);

INSERT INTO T10_NOK (T10_12_Nok_Id, T10_12_Nok_Name, T10_12_Nok_Address, T10_12_Nok_Phone_Number, T10_12_Nok_Gender, 
T10_12_Nok_Marital_Status, T10_4_Agreement_id, T10_2_Application_Id, T10_1_Cust_Id )
VALUES('10_Q1','MANIK MALHOTRA','RAJANAGAR HUBLI',834528924,'MA','UNMARRIED',109753423,1055,1044),
('10_Q1','AHANA BEDI','LUDHIANA PUNJAB',745233894,'FE','MARRIED',107534239,1000,109),
('10_F3','POORVIKA PADIKAL','TRIVENDRAM KERALA',745239604,'FE','MARRIED',103554126,1007,107),
('10_G4','MANISHA JOTWANI','FARIDABAD HARYANA',975831235,'FE','UNMARRIED',106541283,1032,1020),
('10_R11','AGASTYA PANDYA','INDIRA NAGAR DELHI',974130797,'MA','UNMARRIED',108713324,1010,108),
('10_Y4','KHUSHI GUPTA','LUCKNOW UP',966343215,'FE','MARRIED',107133248,1021,108),
('10_I77','ARNAV SINGH','DELHI HARYANA',829699871,'MA','MARRIED',101442598,1003,103),
('10_V5','JOE TRIBIANI','HUNGUND GADAG',945526454,'MA','UNMARRIED',105925682,1004,100),
('10_A34','HA BAEK','HYDERABAD TELANGANA',945926454,'MA','UNMARRIED',109256825,1045,1030),
('10_D75','NANDINI MURTHI','MANGLORE KARNATAKA',854669251,'FE','MARRIED',102568368,1005,106),
('10_U59','BINOD KHAKRE','GANDHINAGAR GUJRAT',735735234,'MA','MARRIED',105233604,1011,108),
('10_Y112','AKHANDANAND TRIPATI','MIRZAPAR UP',942346582,'MA','MARRIED',109563127,1006,102),
('10_T1120','GAJGAMINI','TUTUKUDI ',845566721,'FE','UNMARRIED',101454711,1008,104),
('10_Z19','GANESH GAITHONDE','MUMBAI MAHARASHTRA',936469345,'MA','UNMARRIED',102344569,1001,105),
('10_J99','TANUJA SHRIVASTAV','CHANDIGARH',935612267,'FE','UNMARRIED',101124245,1002,101);

drop table T10_INCIDENT;

# TABLE  14
CREATE TABLE T10_INCIDENT
(
T10_14_Incident_Id VARCHAR(20) NOT NULL ,
T10_14_Incident_Type VARCHAR(30) NULL ,
T10_14_Incident_Date DATE NOT NULL ,
T10_14_Description VARCHAR(100) NULL ,
CONSTRAINT XPKINCIDENT_17 PRIMARY KEY (T10_14_Incident_Id)
);
CREATE UNIQUE INDEX XPKINCIDENT_17 ON T10_INCIDENT
(T10_14_Incident_Id ASC);

INSERT INTO T10_INCIDENT(T10_14_Incident_Id, T10_14_Incident_Type, T10_14_Incident_Date, T10_14_Description)
VALUES(1018, 'Accident', '2018-11-03', 'Car hit a tree');
INSERT INTO T10_INCIDENT VALUES(1029, 'Fire', '2018-06-21', 'Fire caused by petrol leak');
INSERT INTO T10_INCIDENT VALUES(1030, 'Accident', '2019-08-27', 'Car collision');
INSERT INTO T10_INCIDENT VALUES(1041, 'Theft', '2017-05-11', 'Stolen in a parking lot');
INSERT INTO T10_INCIDENT VALUES(1052, 'Theft', '2019-02-28', 'Stolen in a shopping mall');
INSERT INTO T10_INCIDENT VALUES(1067, 'Fire', '2018-03-01', 'Set fire during a communal riot');
INSERT INTO T10_INCIDENT VALUES(1074, 'Theft', '2017-08-09', 'Stolen near house');
INSERT INTO T10_INCIDENT VALUES(1089, 'Accident', '2018-01-22', 'Brake failure');
INSERT INTO T10_INCIDENT VALUES(1098, 'Accident', '2020-06-30', 'Speeding vehicle hits');
INSERT INTO T10_INCIDENT VALUES(1008, 'Fire', '2017-09-29', 'Fire caused by petrol leak');
INSERT INTO T10_INCIDENT VALUES(1017, 'Theft', '2017-04-20', 'Stolen in a parking lot');
INSERT INTO T10_INCIDENT VALUES(1015, 'Fire', '2019-05-19', 'Fire caused by cylinder explosion');
INSERT INTO T10_INCIDENT VALUES(1013, 'Fire', '2018-11-23', 'Fire caused by petrol leak');
INSERT INTO T10_INCIDENT VALUES(1024, 'Accident', '2018-12-01', 'Car hit a tree');
INSERT INTO T10_INCIDENT VALUES(1055, 'Theft', '2020-03-14', 'Stolen from garage');


drop table T10_INCIDENT_REPORT;

CREATE TABLE T10_INCIDENT_REPORT
(
	T10_17_Incident_Report_Id VARCHAR(20) NOT NULL ,
    T10_14_Incident_Type VARCHAR(50) NULL ,
    T10_17_Incident_Inspector VARCHAR(20) NULL ,
    T10_17_Incident_Cost INTEGER NULL ,
    T10_17_Incident_Report_Description VARCHAR(100) NULL ,
    T10_14_Incident_Id VARCHAR(20) NOT NULL ,
T10_1_Cust_Id VARCHAR(20) NOT NULL , 
CONSTRAINT XPKINCIDENT_REPORT_18 PRIMARY KEY (T10_17_Incident_Report_Id,T10_14_Incident_Id,T10_1_Cust_Id),
CONSTRAINT R_83 FOREIGN KEY (T10_14_Incident_Id) REFERENCES T10_INCIDENT 
(T10_14_Incident_Id) ,
CONSTRAINT R_86 FOREIGN KEY (T10_1_Cust_Id) REFERENCES T10_CUSTOMER 
(T10_1_Cust_Id) 


); 
CREATE UNIQUE INDEX XPKINCIDENT_REPORT_18 ON T10_INCIDENT_REPORT 
(T10_17_Incident_Report_Id ASC,T10_1_Cust_Id);

INSERT INTO T10_INCIDENT_REPORT (T10_17_Incident_Report_Id,T10_14_Incident_Type,T10_17_Incident_Inspector,T10_17_Incident_Cost,T10_17_Incident_Report_Description,T10_14_Incident_Id,T10_1_Cust_Id )
	VALUES('10305','Mechanical problem','Tarun',11000,'Due to some mechanical breakdown vechile is not working',1017,101);
    INSERT INTO T10_INCIDENT_REPORT  VALUES('10271','Natural disaster',' Ram',1000000,'due to natural calamity vechile has been damaged',1029,1010);
    INSERT INTO T10_INCIDENT_REPORT  VALUES('10419','Accident','Varun',10000,'due to mechanical defects vechile has stoped in the middle of the road',1098,103);
    INSERT INTO T10_INCIDENT_REPORT  VALUES('10600','Nucleur explosion','Nandu',170000,'due to nuclear explosion vechile has been damaged',1089,1058);
    INSERT INTO T10_INCIDENT_REPORT  VALUES('10305','Theft','Nayak',21000,'Stolen in a parking lot',1024,107);
    INSERT INTO T10_INCIDENT_REPORT  VALUES('10302','Theft','Raju',400000,'some one stole the vehicle',1089,105);
    INSERT INTO T10_INCIDENT_REPORT  VALUES('10318','Weather problem','kamesh',150000,'due to heavy winds windshield was broken ',1052,1044);
    INSERT INTO T10_INCIDENT_REPORT  VALUES('10310','Accident','Aditya',89000,'Car collision',1013,1044);
    INSERT INTO T10_INCIDENT_REPORT  VALUES('10306','explosion','Khan',80000,'due to some cylinder explosion vechile was severly damaged ',1074,1030);
    INSERT INTO T10_INCIDENT_REPORT  VALUES('10320','Accident','Varun',55000,'engine was damaged because of accident',1013,1044);
    INSERT INTO T10_INCIDENT_REPORT  VALUES('10311','natural disaster','Ram',2500000,'due to natural calamity vechile has been damaged',1055,109);
    INSERT INTO T10_INCIDENT_REPORT  VALUES('10303','Collision','shahid',18000,'due to collision car front part hasbeen damaged',1074,1030);
    INSERT INTO T10_INCIDENT_REPORT  VALUES('10313','Floods','Rama',1500000,'due to floods in hyderabad  vechile engine  hasbeen damaged',1024,107);
    INSERT INTO T10_INCIDENT_REPORT  VALUES('10318','Weather problem','Venky',150000,'due to heavy winds windshield was broken ',1041,100);
    INSERT INTO T10_INCIDENT_REPORT  VALUES('10600','explosion','Nandu',170000,'due to nuclear explosion vechile has been damaged',1098,1020);

drop table T10_PRODUCT;

# TABLE 15
CREATE TABLE T10_PRODUCT
( 
T10_15_Product_Price INTEGER NULL ,
T10_15_Product_Type CHAR(100) NULL ,
T10_15_Product_Number VARCHAR(50) NOT NULL , 
T10_10_Company_Name VARCHAR(50) NOT NULL , 
CONSTRAINT XPKPRODUCT_20 PRIMARY KEY
(T10_15_Product_Number,T10_10_Company_Name),
CONSTRAINT R_107 FOREIGN KEY (T10_10_Company_Name) REFERENCES
T10_INSURANCE_COMPANY (T10_10_Company_Name)
);
CREATE UNIQUE INDEX XPKPRODUCT_20 ON T10_PRODUCT
(T10_15_Product_Number ASC,T10_10_Company_Name ASC);



INSERT INTO T10_PRODUCT(T10_15_Product_Price, T10_15_Product_Type, T10_15_Product_Number,T10_10_Company_Name)
VALUES (10000, 'Single year comprehensive car insurance' , '1012' ,'HDFC Ergo General Insurance Company Limited');
INSERT INTO T10_PRODUCT VALUES (15000, 'Auto Secure – Private Car Policy', '1011','HDFC Ergo General Insurance Company Limited');
INSERT INTO T10_PRODUCT VALUES (12000, NULL, '106','ICICI Lombard General Insurance Company Limited');
INSERT INTO T10_PRODUCT VALUES (12000, 'Car Shield', '104','Royal Sundaram General Insurance Company Limited');
INSERT INTO T10_PRODUCT VALUES (10000, 'Third party liability only policy', '1015','Bharti AXA General Insurance Company Limited');
INSERT INTO T10_PRODUCT VALUES (NULL, 'Car Own Damage (OD only) policy', '10','Reliance General Insurance Company Limited');
INSERT INTO T10_PRODUCT VALUES (17000, 'Car insurance', '1031','IFFCO Tokio General Insurance Company Limited');
INSERT INTO T10_PRODUCT VALUES (30000, NULL, '1013','HDFC Ergo General Insurance Company Limited');
INSERT INTO T10_PRODUCT VALUES (21000, 'Auto Secure – Private Car Policy', '1011','The New India Assurance Company Limited');
INSERT INTO T10_PRODUCT VALUES (28000, 'Motor package policy',' 1011','United India Insurance Company Limited');
INSERT INTO T10_PRODUCT VALUES (12000, 'Car insurance', '1023','Liberty General Insurance Ltd');
INSERT INTO T10_PRODUCT VALUES (19000, 'Single year comprehensive car insurance', '1012','National Insurance Co. Ltd');
INSERT INTO T10_PRODUCT VALUES (NULL, NULL, '1041','Kotak Mahindra General Insurance Co. Ltd');
INSERT INTO T10_PRODUCT VALUES (30000, 'Car Own Damage (OD only) policy', '1015','Future Generali India Insurance Co. Ltd');
INSERT INTO T10_PRODUCT VALUES (14000, 'Car Shield', '101','United India Insurance Company Limited');


# TABLE 16
CREATE TABLE T10_COVERAGE
(
T10_8_Coverage_Id VARCHAR(20) NOT NULL , 
T10_16_Coverage_Amount INTEGER NOT NULL , 
T10_16_Coverage_Type CHAR(50) NOT NULL , 
T10_3_Coverage_Level CHAR(50) NOT NULL , 
T10_16_Product_Id VARCHAR(20) NOT NULL , 
T10_16_Coverage_Description VARCHAR(200) NULL , 
T10_16_Covearge_Terms VARCHAR(500) NULL , 
T10_10_Company_Name VARCHAR(50) NOT NULL ,
CONSTRAINT XPKCOVERAGE_19 PRIMARY KEY 
(T10_8_Coverage_Id,T10_10_Company_Name),
CONSTRAINT R_102 FOREIGN KEY (T10_10_Company_Name) REFERENCES
T10_INSURANCE_COMPANY (T10_10_Company_Name)
);
CREATE UNIQUE INDEX XPKCOVERAGE_19 ON T10_COVERAGE
(T10_8_Coverage_Id ASC,T10_10_Company_Name ASC);

INSERT INTO T10_COVERAGE (T10_8_Coverage_Id, T10_16_Coverage_Amount, T10_16_Coverage_Type, T10_3_Coverage_Level, T10_16_Product_Id, T10_16_Coverage_Description, T10_16_Covearge_Terms, T10_10_Company_Name)
VALUES ('10_119', 874390, 'Collision coverage', 'Basic', 'A', 'If you had subscribed for the ‘collision coverage’ in the insurance plan, the insurance company will bear your car repair expenses after the accident', 'Collision insurance helps pay to repair or replace your vehicle if it is damaged from collision with another vehicle or collision with an object, such as a fence or tree or single-car accident that involves rolling or falling over', 'HDFC Ergo General Insurance Company Limited' );
INSERT INTO T10_COVERAGE VALUES('10_123', 170000, 'Collision coverage', 'Basic', 'B', 'If you had subscribed for the ‘collision coverage’ in the insurance plan, the insurance company will bear your car repair expenses after the accident', 'Collision insurance helps pay to repair or replace your vehicle if it is damaged from collision with another vehicle or collision with an object, such as a fence or tree or single-car accident that involves rolling or falling over', 'TATA AIG General Insurance Company Limited');
INSERT INTO T10_COVERAGE VALUES('10_111', 790000, 'Liability Coverage', 'Mandatory', 'D', 'When you are involved in the accident and when it is concluded that that accident took place before of your fault/negligence, the liability coverage will come to your rescue', 'Bodily injury liability may help pay for costs related to another persons injuries if you cause an accident and property damage liability may help pay for damage you cause to another persons property while driving', 'Royal Sundaram General Insurance Company Limited');
INSERT INTO T10_COVERAGE VALUES('10_114', 11000, 'Personal Injury Coverage', 'Mandatory or optional', 'E', 'Personal injury protection, or PIP, is only available in some states. Like medical payments coverage', ' PIP may help pay for your medical expenses after an accident. In addition, PIP may also help cover other expenses incurred because of your injuries — for example, child care expenses or lost income', 'Bharti AXA General Insurance Company Limited');
INSERT INTO T10_COVERAGE VALUES('10_119', 24000, 'Collision coverage', 'Basic', 'C', 'If you had subscribed for the ‘collision coverage’ in the insurance plan, the insurance company will bear your car repair expenses after the accident', 'Collision insurance helps pay to repair or replace your vehicle if it is damaged from collision with another vehicle or collision with an object, such as a fence or tree or single-car accident that involves rolling or falling over', 'ICICI Lombard General Insurance Company Limited');
INSERT INTO T10_COVERAGE VALUES('10_117', 10000, 'COMPREHENSIVE COVERAGE', 'Mandatory', 'F', 'Comprehensive may help cover damage to your car from things like theft, fire, hail or vandalism', 'If your car is damaged by a covered peril, comprehensive coverage may help pay to repair or replace your vehicle', 'Reliance General Insurance Company Limited');
INSERT INTO T10_COVERAGE VALUES('10_112', 437657, 'Liability Coverage', 'Mandatory', 'G', 'When you are involved in the accident and when it is concluded that that accident took place before of your fault/negligence, the liability coverage will come to your rescue', 'Bodily injury liability may help pay for costs related to another persons injuries if you cause an accident and property damage liability may help pay for damage you cause to another persons property while driving', 'IFFCO Tokio General Insurance Company Limited');
INSERT INTO T10_COVERAGE VALUES('10_122', 998753, 'MEDICAL PAYMENTS COVERAGE', 'optional', 'H', 'If you, your passengers or family members who are driving the insured vehicle are injured in an accident, medical payments coverage may help pay for costs associated with the injuries', 'Covered costs may include hospital visits, surgery, X-rays and more', 'Bajaj Allianz General Insurance Company Limited');
INSERT INTO T10_COVERAGE VALUES('10_113', 678539, 'Uninsured Motorist Protection', 'Mandatory', 'I', 'If your vehicle is hit by another vehicle which is not covered by any insurance policy, you will want to bear the repair or replacement of the vehicle from your pocket', 'If you are hit by a driver who does not have insurance, uninsured motorist coverage may help pay for your medical bills or, in some states, repairs to your vehicle. If you are hit by an underinsured driver, that means they have car insurance but their liability limits are not enough to cover your resulting medical bills', 'The New India Assurance Company Limited');
INSERT INTO T10_COVERAGE VALUES('10_117', 778460, 'COMPREHENSIVE COVERAGE', 'Mandatory', 'J', 'Comprehensive may help cover damage to your car from things like theft, fire, hail or vandalism', 'If your car is damaged by a covered peril, comprehensive coverage may help pay to repair or replace your vehicle', 'United India Insurance Company Limited');
INSERT INTO T10_COVERAGE VALUES('10_121', 109777, 'Liability Coverage', 'Mandatory', 'K', 'When you are involved in the accident and when it is concluded that that accident took place before of your fault/negligence, the liability coverage will come to your rescue', 'Bodily injury liability may help pay for costs related to another persons injuries if you cause an accident and property damage liability may help pay for damage you cause to another persons property while driving', 'Liberty General Insurance Ltd');
INSERT INTO T10_COVERAGE VALUES('10_111', 198690, 'Personal Injury Coverage', 'Mandatory or optional', 'L', 'Personal injury protection, or PIP, is only available in some states. Like medical payments coverage', 'PIP may help pay for your medical expenses after an accident. In addition, PIP may also help cover other expenses incurred because of your injuries — for example, child care expenses or lost income', 'National Insurance Co. Ltd');
INSERT INTO T10_COVERAGE VALUES('10_113', 569879, 'MEDICAL PAYMENTS COVERAGE', 'optional', 'M', 'If you, your passengers or family members who are driving the insured vehicle are injured in an accident, medical payments coverage may help pay for costs associated with the injuries', 'Covered costs may include hospital visits, surgery, X-rays and more', 'Kotak Mahindra General Insurance Co. Ltd');
INSERT INTO T10_COVERAGE VALUES('10_114', 15000, 'Uninsured Motorist Protection', 'Mandatory', 'N', 'If your vehicle is hit by another vehicle which is not covered by any insurance policy, you will want to bear the repair or replacement of the vehicle from your pocket', 'If you are hit by a driver who does not have insurance, uninsured motorist coverage may help pay for your medical bills or, in some states, repairs to your vehicle. If you are hit by an underinsured driver, that means they have car insurance but their liability limits are not enough to cover your resulting medical bills', 'Future Generali India Insurance Co. Ltd');
INSERT INTO T10_COVERAGE VALUES('10_116', 16000, 'COMPREHENSIVE COVERAGE', 'Mandatory', 'O', 'Comprehensive may help cover damage to your car from things like theft, fire, hail or vandalism', 'If your car is damaged by a covered peril, comprehensive coverage may help pay to repair or replace your vehicle', 'Cholamandalam MS General Insurance Co. Ltd');

#question 1

SELECT T10_CUSTOMER.*,T10_VEHICLE.*,T10_7_Claim_Status,T10_14_Incident_Type FROM
T10_CUSTOMER ,T10_VEHICLE ,T10_CLAIM,T10_INCIDENT_REPORT WHERE T10_CLAIM.T10_7_Claim_Status='Pending'AND T10_CLAIM.T10_1_Cust_Id=T10_CUSTOMER.T10_1_Cust_Id AND T10_CUSTOMER.T10_1_Cust_Id=T10_VEHICLE.T10_6_Cust_Id AND T10_CUSTOMER.T10_1_Cust_Id = T10_INCIDENT_REPORT.T10_1_Cust_Id;
          
    
#question 2

select T10_CUSTOMER.* from T10_CUSTOMER WHERE T10_1_Cust_Id IN (SELECT T10_1_Cust_Id from T10_PREMIUM_PAYMENT WHERE  T10_PREMIUM_PAYMENT.T10_5_Premium_Payment_Amount > ANY(SELECT SUM(T10_1_Cust_Id) FROM T10_CUSTOMER));
        
#question 3

select *
    from  T10_INSURANCE_COMPANY
    where T10_10_Company_Name in
    (select T10_INSURANCE_COMPANY.T10_10_Company_Name
    from T10_INSURANCE_COMPANY
    group by T10_10_Company_Name
    having count(distinct (T10_10_Company_Address))>1 and T10_10_Company_Name in
    (select T10_DEPARTMENT.T10_10_Company_Name
    from T10_PRODUCT inner join T10_DEPARTMENT
    on T10_DEPARTMENT.T10_10_Company_Name = T10_PRODUCT.T10_10_Company_Name
    group by T10_DEPARTMENT.T10_10_Company_Name
    having count( DISTINCT(T10_15_Product_Number)) > count(distinct (T10_13_Department_Name))));

#question 4       
        

select * from T10_CUSTOMER where T10_1_Cust_Id in (select T10_1_Cust_Id from T10_INCIDENT_REPORT 
where T10_1_Cust_Id in( select T10_6_Cust_Id from T10_VEHICLE where T10_6_Vehicle_Number>1 and T10_6_Cust_Id 
in (select T10_1_Cust_Id FROM T10_PREMIUM_PAYMENT WHERE T10_5_Premium_Payment_Amount = 0 )) and T10_14_Incident_Type='Accident');
        
#question 5

SELECT T10_VEHICLE.*,T10_5_Premium_Payment_Amount FROM T10_VEHICLE,T10_PREMIUM_PAYMENT 
WHERE (T10_5_Premium_Payment_Amount > T10_6_Vehicle_Number AND  T10_PREMIUM_PAYMENT.T10_1_Cust_Id = T10_VEHICLE.T10_6_Cust_Id );

#question 6

select * 
    from T10_CUSTOMER where T10_1_Cust_Id 
    in (select distinct (T10_CLAIM .T10_1_Cust_Id)
	from T10_CLAIM , T10_CLAIM_SETTLEMENT , T10_COVERAGE 
    where T10_CLAIM.T10_7_Claim_Amount > T10_CLAIM_SETTLEMENT.T10_8_Claim_Settlement_Id + T10_CLAIM_SETTLEMENT.T10_6_Vehicle_Id + T10_CLAIM.T10_7_Claim_Id + T10_CLAIM.T10_1_Cust_Id and T10_16_Coverage_Amount > T10_CLAIM.T10_7_Claim_Amount );




