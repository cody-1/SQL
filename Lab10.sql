set serveroutput on;
--1:
insert
into invoice_copy (invoice_id, vendor_id, invoice_number, invoice_date, invoice_total,payment_total,
credit_total, terms_id, invoice_due_date,payment_date)
values
    (115, 32,'AX-014-027','01-MAY-18',434.58,0,0,2,'31-MAY-18',null);
    
insert
into invoice_copy (invoice_id, vendor_id, invoice_number, invoice_date, invoice_total,payment_total,
credit_total, terms_id, invoice_due_date,payment_date)
values
    (116,32,'AX-014-031','01-MAY-18',555.58,0,0,1,'31-MAY-18',null);


--2:
select *
from invoice_copy
where invoice_id = 115 or invoice_id = 116;


--3:
update vendor_copy
set default_account_number = 403
where default_account_number = 400;

--4:
select *
from vendor_copy
where default_account_number = 403;

--5:
update invoice_copy
set terms_id = 3
where terms_id = 2;

--6:
select *
from invoice_copy
where terms_id = 3;

--7:
delete 
from invoice_copy
where invoice_id = 112 or invoice_id = 114;

--8:
select *
from invoice_copy
where invoice_id between 100 and 115;