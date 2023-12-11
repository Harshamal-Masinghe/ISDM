select * 
from Student
order by CID

select CID,count(SID) as 'Number of student'
from Student
group by CID

--Exercise
--a
select * from Course
select * from Module
select * from Offers 
select * from Student

select CID , count(Mcode) as 'Numbers of courses'
from Offers
group by CID


--b
select CID , count(SID) as 'Numbers of students'
from Student
group by CID


--c
select * from Offers order by Accadamic_year , Semester

select  CID, Accadamic_year, count (Mcode) as 'Number of Modules offered by each course'
from Offers
group by CID, Accadamic_year


--d
select * from Offers order by Semester

select CID, count(Mcode) as 'Number of Modules'
from Offers
where Semester = 2
group by CID
order by CID