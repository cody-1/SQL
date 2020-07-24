set serveroutput on;
--1:
DECLARE 
NUM NUMBER;
BEGIN
NUM := 10;
DBMS_OUTPUT.PUT_LINE('The value of num is: ' || NUM);
END;
/

--2:
 SELECT COUNT(STUDENT_ID)
 FROM STUDENT.STUDENT;

--3:
DECLARE 
    V_SALARY STUDENT.EMPLOYEE.SALARY%TYPE;
    V_TITLE STUDENT.EMPLOYEE.TITLE%TYPE;
BEGIN
    SELECT EMPLOYEE.SALARY, EMPLOYEE.TITLE INTO V_SALARY, V_TITLE
    FROM STUDENT.EMPLOYEE
    WHERE NAME = 'Stella';
    DBMS_OUTPUT.PUT_LINE('TITLE: ' || V_TITLE || ' SALARY: ' || V_SALARY);
END; 
/

--4:
declare
    v_highest ap.invoices.invoice_total%type;
    v_lowest ap.invoices.invoice_total%type;
begin
    select min(invoices.invoice_total), max(invoices.invoice_total) into v_highest, v_lowest
    from ap.invoices;
end;
/

--5:
set serveroutput on;
declare 
    v_latest ap.invoices.invoice_due_date%type;
begin
select max(invoice_due_date) into v_latest
from ap.invoices;
if v_latest < '19-JUL-08' then
    dbms_output.put_line('overdue');
else
    dbms_output.put_line('ok');
end if;
end;
/

--6:
set serveroutput on;
declare
    v_state om.customers.customer_state%type;
begin
    select customer_state into v_state
    from om.customers
    where customer_id = 15;
    
    case v_state 
        when 'WI' then
            dbms_output.put_line('Cold Winters');
        when 'CA' then
            dbms_output.put_line('Moderate Winters');
        else
            dbms_output.put_line('No information on type of winters');
    end case;
end;
/

--7:
set serveroutput on;
declare
    i number(1) := 3;
    j number(1) :=1;
begin
    <<outer_loop>>
    for k in 1 .. 3 loop
        dbms_output.put_line('k is: ' || k);
    end loop outer_loop;
    <<outerin_loop>>
    while j <= 3 loop
        dbms_output.put_line('j is: ' || j);
        j := j +1;
    end loop outerin_loop;
    <<inner_loop>>
    loop 
        dbms_output.put_line('i is: ' || i);
        i := i-1;
        if i = 0 then
            exit;
        end if;
    end loop inner_loop;
    
    
end;
/

--8:
declare
    v_name varchar(2);
begin
    select name into v_name
    from student.employee
    where name = 'Sally';
exception
    when no_data_found then
        dbms_output.put_line('No such employee found');
end;
/
    
