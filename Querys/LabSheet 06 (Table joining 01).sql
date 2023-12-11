
select * from Student
select * from Course
select * from Offers
select * from Module

--Exercise
--a
select s.SID, s.Sname , c.Cname
from Student s, Course c
where s.CID = c.CID

--b
select * from Offers
select * from Module

select o.CID, m.Mname
from Offers o, Module m
where o.Mcode = m.Mcode

--c
select * from Course
select * from Offers
select * from Module

select c.Cname, m.Mname
from Course c, Module m, Offers o
where c.CID = o.CID and o.Mcode = m.Mcode

--d
select * from Student
select * from Course

select s.CID, s.Sname
from Student s, Course c
where s.CID = c.CID and c.C_fee > 100000

--e
select * from Module
select * from Offers
select * from Course

select m.Mname
from Module m, Offers o, Course c
where m.Mcode = o.Mcode and c.CID = o.CID and o.Accadamic_year = 'y1'
and c.Cname = 'Infromaton Technology'