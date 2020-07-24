SET serveroutput ON;
CREATE TABLE EMPLOYEE_COPY AS SELECT * FROM STUDENT.EMPLOYEE;


CREATE OR REPLACE TRIGGER Lab15Trigger1 
    AFTER DELETE ON EMPLOYEE_COPY
DECLARE 
    v_id number:=4;
    v_name varchar2(10):=user;
    v_salary number:=1000000;
    v_title varchar2(10):='BOSS';
BEGIN
    INSERT INTO employee_copy
    (employee_id,name,salary,title)
    VALUES
    (v_id,
    v_name,
    v_salary,
    v_title);
END;
/
DELETE
FROM EMPLOYEE_COPY
WHERE EMPLOYEE_ID = 4;

drop table employee_copy purge;


