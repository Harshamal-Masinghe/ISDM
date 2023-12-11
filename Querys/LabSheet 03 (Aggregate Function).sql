
select * from Student
select * from Course
select * from Module
select * from Offers

--a
select count(SID)
from Student

select count(*)
from Student

--b
select count(*)
from Course

--c
select count(*) as 'Number of courses'
from Course

--d
select count(*)
from Module
where NoOfCredits = '3'

--e
select sum(C_fee) as 'total course fee'
from Course

--f
select max(C_fee) as 'highest course fee'
from Course

--g
select min(C_fee) as 'lowest course fee'
from Course

--h
select avg(C_fee) as ' Avarage course fee'
from Course