select fname, lname
from employee
where salary > all(select salary
                   from employee 
                   where dno = 5);
                   
select ssn
from employee
where salary >(select min(salary) from employee);

select ssn 
from employee
where salary >= all(select salary from employee);

select mgr_ssn
from department, project
where dnumber = dnum and pname = 'Newbenefits';

select mgr_ssn, fname, lname
from department, project, employee
where dnumber = dnum and pname = 'Newbenefits' and mgr_ssn = ssn;



select ssn
from employee
minus
select super_ssn
from employee;

select ssn
from employee
where ssn not in(select super_ssn from employee);

select fname, lname
from employee
where ssn not in (select mgr_ssn from department);

select fname, lname
from employee
minus
select fname, lname
from employee, department
where ssn=mgr_ssn;

select sum(salary), max(salary), min(salary), avg(salary)
from employee
where dno in(select dnumber from department where dname = 'Research');

select sum(salary), max(salary), min(salary), avg(salary)
from employee, department
where dname = 'Research' and dno = dnumber;

select dno, count(dno)
from employee
group by dno
having count(dno) > 3;

