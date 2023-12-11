SELECT * FROM Offers;
SELECT * FROM Student;
SELECT * FROM Course;
SELECT * FROM Module;

SELECT CID, COUNT(Mcode) AS 'Number of modules'
FROM Offers
WHERE Semester = 2
group by CID
having count(Mcode) > 2

--Exercise
--a
SELECT * FROM Student order by CID

select CID, count(SID) as 'Number of students'
from Student
group by CID
having count(SID) < 10

--b
SELECT * FROM Offers

select CID, count(Mcode) as 'Number of modules'
from Offers
group by CID
having count(Mcode) > 3
order by count(Mcode)

--c
SELECT * FROM Offers

select CID, Accadamic_year, count(Mcode) as 'Number of modules'
from Offers
group by CID, Accadamic_year
having count(Mcode) < 10

--d
SELECT * FROM Offers

select CID, count(Mcode) as 'Number of modules in accadamic year 3'
from Offers
where Accadamic_year = 'y3'
group by CID
having count(Mcode) > 2