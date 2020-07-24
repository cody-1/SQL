--1:
CREATE TABLE
CNOTT2.EMPLOYEES
AS
SELECT * FROM EX.EMPLOYEES;
CREATE TABLE
CNOTT2.DEPARTMENTS
AS
SELECT * FROM EX.DEPARTMENTS;
SELECT *
FROM CNOTT2.DEPARTMENTS,(SELECT * FROM CNOTT2.EMPLOYEES);

--2:
CREATE TABLE
CNOTT2.LOCATIONS ( LOCATION_ID NUMBER, STREET_ADDRESS VARCHAR2(100), CITY VARCHAR2(100), STATE VARCHAR2(100), ZIPCODE VARCHAR2(100), CONSTRAINT LOCATIONS_PK PRIMARY KEY (LOCATION_ID));
SELECT * FROM CNOTT2.LOCATIONS;

--3:
ALTER TABLE CNOTT2.DEPARTMENTS
ADD LOCATION_ID NUMBER;
SELECT *
FROM CNOTT2.DEPARTMENTS;

--4:
INSERT INTO DEPARTMENTS
(DEPARTMENT_NUMBER, DEPARTMENT_NAME)
VALUES (6, 'IT');
SELECT *
FROM CNOTT2.DEPARTMENTS;

--5:
UPDATE EMPLOYEES
SET FIRST_NAME = 'CODY', LAST_NAME = 'NOTT', DEPARTMENT_NUMBER = 6
WHERE EMPLOYEE_ID = 6;
SELECT * FROM CNOTT2.EMPLOYEES;

--6:
SELECT *
FROM CNOTT2.EMPLOYEES
WHERE EMPLOYEE_ID = 6;

--7:
DELETE FROM EMPLOYEES
WHERE EMPLOYEE_ID = 8;
SELECT * FROM CNOTT2.EMPLOYEES;
--8:
COMMIT;