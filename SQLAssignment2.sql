select essn, count(*)
from works_on
group by essn;

select essn, avg(hours),count(*)
from works_on
group by essn
having count(*) > 1;

select count(distinct essn)
from dependent;

select fname, lname
from employee, works_on
where ssn = essn and pno = 20;


select dnumber, dlocation
from dept_locations
where dnumber in(select dnumber
from dept_locations 
group by dnumber
having count(dlocation) > 1);



