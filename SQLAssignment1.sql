select pname, plocation 
from project;

select dependent_name,relationship
from dependent
where essn = 123456789;

select lname, bdate
from employee 
where sex = 'M' and dno = 5;

select avg(salary), min(salary)
from employee
where sex = 'F';

select essn, count(*)
from dependent
group by essn;

select fname, lname
from employee
where fname LIKE 'J%';

select essn, count(*)
from works_on
group by essn;








