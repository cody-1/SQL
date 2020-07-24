--1:
SELECT COST
FROM STUDENT.COURSE
WHERE COST IN (SELECT MIN(COST) FROM SUTDENT.COURSE);

--2:
SELECT distinct cost
FROM student.course
WHERE cost BETWEEN (select min(cost+1) from student.course) AND (select max(cost-11) from student.course);

--3:
select cost
from student.course
where cost > (select avg(cost) from student.course);

--4:
select min(enroll_date)as "Earliest Enrollment Date" from student.enrollment;

--5:
select min(enroll_date)+30 as "Earliest Enroll Date plus 30" from student.enrollment;

--6:
select distinct ap.vendors.vendor_name, invoice_number, invoice_total
from ap.invoices, ap.vendors
where  ap.invoices.invoice_total < (select max(invoice_total) from ap.invoices, ap.vendors where ap.vendors.vendor_id = 123)
order by lower(ap.vendors.vendor_name);

--7:
select distinct ap.vendors.vendor_id, vendor_name, vendor_state
from ap.vendors, ap.invoices
where ap.vendors.vendor_id not in (select vendor_id from ap.invoices)
order by ap.vendors.vendor_id;

--8:
undefine lastname;
undefine firstname;
select last_name, first_name
from student.student
where last_name like '&&lastname%' and first_name like '&&firstname%';

select last_name, first_name
from student.student
where last_name like 'M%';

--9:
select cost 
from student.course
where cost > (select min(cost) from student.course);

--10:
select distinct i.vendor_id, invoice_number, invoice_total
from ap.invoices i, ap.vendors v
where i.invoice_total > (select avg(invoice_total) from ap.invoices where vendor_id = i.vendor_id)
order by vendor_id;

--11:
select ap.invoices.vendor_id, ap.vendors.vendor_name, ap.invoices.invoice_id
from ap.invoices
inner join ap.vendors
on ap.invoices.vendor_id = ap.vendors.vendor_id;

--12:
select v.vendor_name, count(i.invoice_id)
from ap.invoices i, ap.vendors v
where i.vendor_id = v.vendor_id
group by v.vendor_name
order by lower(v.vendor_name);

--13:
select vendor_contact_last_name, vendor_contact_first_name, vendor_state
from ap.vendors
where length(vendor_contact_last_name) > length(vendor_contact_first_name) and vendor_state = 'CA' or vendor_state = 'NJ'
order by vendor_contact_last_name;

--14:
select vendor_id, vendor_name
from ap.vendors
where instr(vendor_name,'''') > 0
order by vendor_name;

--15:
select vendor_name
from ap.vendors
where vendor_name = regexp_substr(vendor_name,'\S*');
