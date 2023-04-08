#Q1
SELECT type.name FROM TYPE
#Q2
SELECT t.name, t.nodose, t.quantity, t.life FROM TYPE t
#Q3
SELECT AVG(life) FROM TYPE
#Q4
SELECT MIN(life) FROM TYPE
#Q5
SELECT MAX(life) FROM TYPE
#Q6
SELECT v.mfgdate, ADDDATE(mfgdate, life) Expires, t.name
FROM vaccine v, TYPE t
#Q7
SELECT COUNT(NAME) FROM center
#Q8
SELECT COUNT(NAME) FROM `type`
#Q9
SELECT COUNT(id) FROM vaccine
#Q11
SELECT id, typeid FROM vaccine GROUP BY typeid
#Q12
#select avg(life) from type t
#select * from type where life=(SELECT AVG(life) FROM TYPE )

#Q13
SELECT COUNT(id) FROM SUBJECT
#Q14
SELECT COUNT(NAME) FROM SUBJECT WHERE address LIKE '%kohat%'
#Q15
SELECT COUNT(id) FROM SUBJECT WHERE cnic LIKE '%14301'
#Q16
SELECT COUNT(id) FROM SUBJECT WHERE contact LIKE '%__3_%'
#Q17
SELECT subject.name FROM SUBJECT WHERE contact = ''
#Q18
SELECT s.name FROM SUBJECT s  WHERE vaccinationStatus = 'not vaccinated'
#Q19
SELECT s.name FROM SUBJECT s WHERE DoseNo = 1
#Q20
SELECT COUNT(id) FROM SUBJECT WHERE DoseNo = 2
#Q21
SELECT s.name FROM SUBJECT s WHERE doseType = 1

#select v.typeid, s.dosetype from vaccine v, subject s
#where v.typeid = s.dosetype

SELECT COUNT(id), centerid FROM vaccine 
WHERE centerid = 6


SELECT COUNT(id), id FROM vaccine WHERE centerId IS NULL GROUP BY typeid



SELECT COUNT(typeid), typeid FROM vaccine WHERE centerid IS NULL GROUP BY typeid



SELECT COUNT(id) FROM subject_vaccination WHERE vaccineid = 1

SELECT COUNT(id) FROM vaccine WHERE centerid = 6









