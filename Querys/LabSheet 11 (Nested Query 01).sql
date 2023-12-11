select * from Student
select * from Course
select * from Module
select * from Offers

--sub 
select CID
from Student
where Sname = 'sampath'

--main
select Sname
from Student
where CID = 'CSNE'

--final answer
select Sname
from Student
where CID = (	select CID
				from Student
				where Sname = 'sampath')


--1. What are the Module names of the modules, 
--Where number of credits same as 
--module code ‘IE3051’?


select NoOfCredits
from Module
where Mcode = 'IE3051'

select Mname
from Module
where NoOfCredits = (select NoOfCredits
from Module
where Mcode = 'IE3051')

--2. What is the name of the course --with the highest registration fee?select * from Student
select * from Course
select * from Module
select * from Offersselect Cname
from Course
where C_fee = (
	select max(C_fee)
	from Course
	)

--3. What are the other modules which have lesser number 
--credits than the ‘Fundamental of Data Mining’ module?


select * from Module

select NoOfCredits
from Module
where Mname = 'Fundamentals of Data Mining'

select Mname
from Module
where NoOfCredits < (
			select NoOfCredits
			from Module
			where Mname = 'Fundamentals of Data Mining'
			)


--4. What is the name of the course which has a --higher number of credits?
select * from Course
select * from Module
select * from Offersselect c.Cnamefrom Module m, Course c, Offers owhere o.CID=c.CID and o.Mcode=m.Mcode and m.NoOfCredits = (	select max(NoOfCredits)	from Module 	)
--5. What are the courses 
--which offer modules for year 4 students, greater than 
--the Software Engineering course?
select * from Course
select * from Module
select * from Offers

-- SE credit ganata vadiya credit hamben 
--4th year lage course monada


select C.Cname
from Course C, Module M, Offers O
WHERE O.CID = C.CID AND O.Mcode = M.Mcode 
AND O.Accadamic_year = 'Y4'
GROUP BY C.Cname
HAVING SUM(M.NoOfCredits) > (
	select SUM(M.NoOfCredits)
	from Course C, Module M, Offers O
	WHERE O.CID = C.CID AND O.Mcode = M.Mcode 
	AND O.Accadamic_year = 'Y4' AND C.Cname = 'Software Engineering'
	)
