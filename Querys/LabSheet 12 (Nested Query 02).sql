select * from Student
select * from Course
select * from Module
select * from Offers

--What are the course names 
--that the number of credits 
--less than ISE course modules???

SELECT M.NoOfCredits
FROM Offers O, Module M
WHERE O.Mcode = m.Mcode AND O.CID = 'ISE'

SELECT C.Cname
FROM Offers O, Module M, Course C
WHERE O.Mcode = m.Mcode AND O.CID =C.CID
AND M.NoOfCredits < ALL (
	SELECT M.NoOfCredits
	FROM Offers O, Module M
	WHERE O.Mcode = m.Mcode AND O.CID = 'ISE'
	)


--1. What is the name of the course 
--with the highest registration fee?


SELECT MAX(C_fee)
FROM Course

SELECT Cname
FROM Course
WHERE C_fee  IN (
	SELECT MAX(C_fee)
	FROM Course
	)


--2. What are the names of modules common to both ‘Software Engineering’ and 
--‘Information Technology’?

select * from Course
select * from Module
select * from Offers

SELECT M.Mcode
FROM Module M, Offers O
WHERE O.Mcode = M.Mcode
AND O.CID = 'SE' AND O.CID = 'IT'

SELECT M.Mname
FROM Course C, Module M, Offers O
WHERE O.Mcode = m.Mcode AND O.CID =C.CID
AND C.Cname = 'Software Engineering'
GROUP BY C.Cname,M.Mname
HAVING C.Cname = ALL (
		SELECT M.Mname
		FROM Course C, Module M, Offers O
		WHERE O.Mcode = m.Mcode AND O.CID =C.CID
		AND C.Cname = 'Infromaton Technology'
		)



--3. What are the names of modules offered by ‘Software Engineering’ program but not in
--‘Information Technology’?

SELECT M.Mname
FROM Course C, Module M, Offers O
WHERE O.Mcode = m.Mcode AND O.CID =C.CID
AND C.Cname = 'Software Engineering'
GROUP BY C.Cname,M.Mname
HAVING C.Cname != ALL (
		SELECT M.Mname
		FROM Course C, Module M, Offers O
		WHERE O.Mcode = m.Mcode AND O.CID =C.CID
		AND C.Cname = 'Infromaton Technology'
		)
