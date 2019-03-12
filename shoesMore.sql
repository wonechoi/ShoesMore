DROP DATABASE IF EXISTS SHOESMORE;
CREATE DATABASE SHOESMORE;

USE SHOESMORE;

DELETE FROM SHOES WHERE ITEMID BETWEEN 1 AND 10;

DROP TABLE IF EXISTS CSR;
DROP TABLE IF EXISTS SHOESIZE;
DROP TABLE IF EXISTS ORDERS;
DROP TABLE IF EXISTS CUSTOMERS;
DROP TABLE IF EXISTS SHOES;

DROP TABLE IF EXISTS CUSTOMERS;
CREATE TABLE CUSTOMERS (
	CUSTOMERID INT NOT NULL AUTO_INCREMENT,
    USERID VARCHAR(15) NOT NULL,
    PASSWORD VARCHAR(15) NOT NULL,
    FIRSTNAME VARCHAR(15) NOT NULL,
    LASTNAME VARCHAR(15) NOT NULL,
    ADDRESS VARCHAR(50) NOT NULL,
    CITY VARCHAR(20) NOT NULL,
    POSTALCODE VARCHAR(6) NOT NULL,
    PRIMARY KEY (CUSTOMERID)
);

DROP TABLE IF EXISTS CSR;
CREATE TABLE CSR (
	CSRID INT NOT NULL AUTO_INCREMENT,
    USERID VARCHAR(15) NOT NULL,
    PASSWORD VARCHAR(15) NOT NULL,
    FIRSTNAME VARCHAR(15) NOT NULL,
    LASTNAME VARCHAR(15) NOT NULL,
    PRIMARY KEY (CSRID)
);

INSERT INTO CSR VALUES (1, "choihyew", "qwer", "admin", "choi");

DROP TABLE IF EXISTS SHOES;
CREATE TABLE SHOES (
	ITEMID INT NOT NULL AUTO_INCREMENT,
    ITEMNAME VARCHAR(15) NOT NULL,
    ITEMPICADDRESS VARCHAR(300) NOT NULL,
    CATEGORY VARCHAR(15) NOT NULL,
    PRICE DECIMAL(7,2) NOT NULL,
    PRIMARY KEY (ITEMID)
);

INSERT INTO SHOES 
VALUES (1, "WHITE A1", "https://images.unsplash.com/photo-1512374382149-233c42b6a83b?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=d34d6f838187851833f639868ec9e18c&auto=format&fit=crop&w=500&q=60", "MEN", 43.1),
(2, "WHITE B1", "https://images.unsplash.com/photo-1506027687661-dd42ec99175d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=2a4834b870d3041bdfdc797ff5d5ced2&auto=format&fit=crop&w=500&q=60", "MEN", 57.7),
(3, "REDBLACK", "https://images.unsplash.com/photo-1519810409043-b6d44921bfa2?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3454f82d8c4d85523ea8e208b299462c&auto=format&fit=crop&w=500&q=60", "MEN", 88.64),
(4, "PUREBLACK", "https://images.unsplash.com/photo-1491553895911-0055eca6402d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4505ad993e9162d9ccf05d2670a26916&auto=format&fit=crop&w=500&q=60", "MEN", 135.12),
(5, "WHITEBLACK", "https://images.unsplash.com/photo-1516478177764-9fe5bd7e9717?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=44a4655bf63581325150f6da62a09e13&auto=format&fit=crop&w=500&q=60", "MEN", 77.82),
(6, "FASHION BOOTS", "https://images.unsplash.com/photo-1520809382381-d95e6364bbdb?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ebc8e860998e63191205755303299309&auto=format&fit=crop&w=500&q=60", "MEN", 177.24);

DROP TABLE IF EXISTS SHOESIZE;
CREATE TABLE SHOESIZE (
	ITEMID INT NOT NULL AUTO_INCREMENT,
    SHOESIZE INT NOT NULL,
    PRIMARY KEY (ITEMID, SHOESIZE),
    FOREIGN KEY (ITEMID) REFERENCES SHOES(ITEMID)
);

INSERT INTO SHOESIZE 
VALUES (1, 6), (1, 7), (1, 8), (1, 10), (2, 6), (2, 8), (3, 5), (3, 6), (3, 7), (3, 8), (3, 9), (4, 10), (4, 11), (5, 10), (6, 7), (6, 8), (6, 9);

INSERT INTO SHOESIZE 
VALUES (7, 4), (7, 5), (7, 6), (8, 4), (8, 6), (8, 7), (8, 9), (9, 5), (9, 6), (9, 7), (9, 8), (10, 7), (10, 8), (11, 4), (11, 6), (11, 7), (12, 6), (13, 4), (13, 5),
(13, 6), (14, 6), (14, 7), (14, 8), (14, 10), (15, 2), (15, 3), (15, 4), (15, 6), (16, 2), (16, 3), (17, 3), (17, 4), (17, 5), (17, 6), (17, 7),
(18, 1), (18, 2), (19, 3), (19, 4), (19, 5), (19, 6);


DROP TABLE IF EXISTS ORDERS;
CREATE TABLE ORDERS (
	ORDERID INT NOT NULL AUTO_INCREMENT,
    ORDERDATE VARCHAR(8) NOT NULL,
    CUSTOMERID INT NOT NULL,
    ITEMID INT NOT NULL,
    PRICE DECIMAL(7,2) NOT NULL,
    SHOESIZE INT NOT NULL,
    STATUS VARCHAR(15) NOT NULL,
    PRIMARY KEY (ORDERID),
    FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMERS(CUSTOMERID),
    FOREIGN KEY (ITEMID) REFERENCES SHOES(ITEMID)
);

SELECT * FROM SHOES WHERE CATEGORY = 'MEN';
INSERT INTO SHOES 
VALUES (7, "Pumps P1", "https://images.unsplash.com/photo-1515347619252-60a4bf4fff4f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ca4cb0b77a2788bbb2c5218b50744bd&auto=format&fit=crop&w=500&q=60", "WOMEN", 37.1),
(8, "Pumps P2", "https://images.unsplash.com/photo-1519226719127-9e805abb99b1?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=5f8129bf82a5ca8ab109a3a5b890ea44&auto=format&fit=crop&w=500&q=60", "WOMEN", 42.7),
(9, "Sandal S1", "https://images.unsplash.com/photo-1519225145634-74cad8193788?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=aab00e4b0a91e9ca3c7e54cc6b4c52a8&auto=format&fit=crop&w=500&q=60", "WOMEN", 55.64),
(10, "Boots B1", "https://images.unsplash.com/photo-1494955464529-790512c65305?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=2a58b00dc3c3889ce91b3345c19169ea&auto=format&fit=crop&w=500&q=60", "WOMEN", 100.12),
(11, "NewBalance", "https://images.unsplash.com/photo-1465453869711-7e174808ace9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=2a5305dd65f0b096390acc108db1e3bd&auto=format&fit=crop&w=500&q=60", "WOMEN", 56.82),
(12, "Boots Heel BH1", "https://images.unsplash.com/photo-1469564104555-19d9cf02b407?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b77afd5a44fcff6199b04e2ffb897095&auto=format&fit=crop&w=500&q=60", "WOMEN", 123.24),
(13, "Sandal S2", "https://images.unsplash.com/photo-1515651673377-6abc94e6e889?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=0a391dcea4705800fc3656ebad1c6afd&auto=format&fit=crop&w=500&q=60", "WOMEN", 77.82),
(14, "Boots Heel BH2", "https://images.unsplash.com/photo-1515651611506-82441fd1cf0e?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6af834effa33455d7290f8ac2c99f60b&auto=format&fit=crop&w=500&q=60", "WOMEN", 172.77);
INSERT INTO SHOES 
VALUES (15, "RAIN BOOTS R1", "https://images.unsplash.com/photo-1477511350923-3986459bdee1?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=756a6e1e27f6838d4490614da5af4ad9&auto=format&fit=crop&w=500&q=60", "Kids", 60.1),
(16, "BLUEBOAT B1", "https://images.unsplash.com/photo-1470116892389-0de5d9770b2c?ixlib=rb-0.3.5&s=79ad7469e08f9916eb81fbb5fa192b09&auto=format&fit=crop&w=500&q=60", "Kids", 22.9),
(17, "RAIN BOOTS R2", "https://images.unsplash.com/photo-1495939380840-b7c4d12347c1?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=75ccc525ff482bb144941bf2bb663bd3&auto=format&fit=crop&w=500&q=60", "Kids", 58.64),
(18, "NEW BIRTH", "https://images.unsplash.com/photo-1517236703105-9ec38fec32a3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ca87367a1e6f4a82b1d959a5823c87d6&auto=format&fit=crop&w=500&q=60", "Kids", 33.66),
(19, "CANVAS C1", "https://images.unsplash.com/photo-1438962136829-452260720431?ixlib=rb-0.3.5&s=c5781bbcedd03a78346a42780a35ecb2&auto=format&fit=crop&w=500&q=60", "Kids", 31.03);

