select fname, lname
from employee
where super_ssn = 888665555;

select fname, lname, pname
from employee, project, department, works_on
where ssn = mgr_ssn and mgr_ssn = essn and pno = pnumber;

select fname, lname
from employee, department, dept_locations
where ssn = mgr_ssn and department.dnumber = dept_locations.dnumber and dlocation = 'Houston';

select mgr_ssn
from department
where mgr_ssn not in(select essn from dependent);

select fname, lname
from employee, department
where mgr_ssn = ssn and mgr_ssn in (select super_ssn from employee group by super_ssn
having count(*) = (select max(count(*)) from employee group by super_ssn));

select M.fname, M.lname, S.fname, S.lname
from employee M, employee S, department
where mgr_ssn = M.ssn and S.ssn = M.super_ssn;
