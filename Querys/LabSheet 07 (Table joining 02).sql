select * from Student
select * from Course
select * from Offers
select * from Module

--a
select c.CID, count(*) as 'Numbers of student'
from Student s, Course c
where s.CID = c.CID
group by c.CID

--b
select c.Cname, count(s.CID) as 'Numbers of student'
from Student s, Course c
where s.CID = c.CID
group by s.CID, c.Cname

--c
select c.Cname, count(o.Mcode)as 'Numbers of modules'
from Course c, Offers o
where c.CID = o.CID and o.Accadamic_year = 'y1'
group by c.Cname
having count(o.Mcode) > 2

--d
select c.Cname, o.Accadamic_year, count(o.Mcode)as 'Numbers of modules'
from Course c, Offers o
where c.CID = o.CID
group by c.Cname, o.Accadamic_year
having count(o.Mcode) > 2
order by count(o.Mcode)
