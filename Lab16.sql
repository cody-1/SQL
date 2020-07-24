--1:
SET SERVEROUTPUT ON;
CREATE OR REPLACE FUNCTION get_balance_due(invoice_id NUMBER)
RETURN NUMBER
IS balance_due NUMBER :=0;
BEGIN
    SELECT INVOICE_TOTAL - PAYMENT_TOTAL - CREDIT_TOTAL
    INTO balance_due
    FROM AP.INVOICES
    WHERE INVOICE_ID=get_balance_due.invoice_id;
    RETURN balance_due;
    
END;
/

--2:
DECLARE
    balance number;
BEGIN
    balance := get_balance_due(3);
    dbms_output.put_line('Balanace Due: ' || balance);
END;
/
--3:
CREATE OR REPLACE PROCEDURE update_employee(employee_id number, salary number)
AS
BEGIN
    IF update_employee.salary < 0 THEN
        RAISE_APPLICATION_ERROR(-20010, 'Salary parameter cannot be negative');
    ELSE
        UPDATE employee_copy
            SET salary = update_employee.salary
            WHERE employee_id = update_employee.employee_id;
    END IF;
END;
/
--4:
EXECUTE update_employee(1, -10000);
EXECUTE update_employee(1, 10000);

select * from employee_copy;