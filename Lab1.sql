/*--1: 
No the Select statement cannot alter data in a table. You would have to use ALTER or UPDATE to do so. 
However SELECT can return data in certain format, and make its’ own tables.
*/

--2:
DESCRIBE student.employee;

--3:
SELECT *
FROM student.employee;

--4:
SELECT LAST_NAME, FIRST_NAME
FROM STUDENT.student
WHERE ROWNUM <=20;

--5:
SELECT LAST_NAME AS LN, FIRST_NAME AS FN
FROM STUDENT.student
WHERE ROWNUM <=20;

--6:
SELECT DISTINCT ZIP
FROM STUDENT.ZIPCODE
WHERE ROWNUM <=20;

--7:
SELECT LAST_NAME, LOWER(LAST_NAME) AS "no capitalization"
FROM STUDENT.student
WHERE ROWNUM <= 20;

--8:
SELECT DESCRIPTION, SUBSTR(DESCRIPTION,1,3) AS "First Three"
FROM STUDENT.course;

--9:
SELECT DESCRIPTION, SUBSTR(DESCRIPTION,-3) AS "Last Three"
FROM STUDENT.course;

--10:
SELECT EMPLOYER
FROM STUDENT.student
WHERE ROWNUM <= 20
ORDER BY EMPLOYER;

--11:
SELECT DESCRIPTION, COURSE_NO
FROM STUDENT.course;

--12:
SELECT DESCRIPTION, COURSE_NO AS "COURSE #"
FROM STUDENT.course;

--13:
SELECT DISTINCT PREREQUISITE
FROM STUDENT.COURSE;

/*--14:
The dual table is a dummy table. Meaning it doesn’t hold any valuable information. 
It’s used for selecting data when you don’t need data from the database. 
This is mostly done when you need data for functions, or calculations.*/

--15:
SELECT *
FROM DUAL;

--16:
SELECT 2+4
FROM DUAL;

--17:
SELECT 5*3 AS "5 times 3", 5-3 AS "5 minus 3", 5/3 AS "5 divided by 3"
FROM DUAL;

--18:
SELECT 5/3 AS "Not Rounded", ROUND(5/3,2) AS "Rounded"
FROM DUAL;

--19:
SELECT SYSDATE
FROM DUAL;

--20:
SELECT SYSDATE-1
FROM DUAL;