
--01
select *
from Student;

--02
select *
from Module;

select Mname, NoOfCredits
from Module;

--03
select *
from Student
where Sname like 'A%';

--04
select*
from Student
Where dob < '1996-01-01';

--05
SELECT Sname
from Student
Where Address like '%Colombo%';

--06
select *
from Student
where Sname like 'K%' and CID = 'DS';

--07
select *
from Student
where CID = 'DS' or CID = 'IT'
order by Sname desc;






