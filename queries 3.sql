SELECT * FROM center
SELECT * FROM `subject`
SELECT * FROM TYPE
SELECT * FROM vaccine

SELECT * FROM center WHERE id=6

SELECT * FROM center WHERE address='kohat'

SELECT * FROM center WHERE address LIKE '%kohat%'

SELECT * FROM SUBJECT WHERE NAME LIKE '%M_hamm_d%'

SELECT * FROM center WHERE address LIKE '%kohat%' AND contact LIKE '0345%'
SELECT * FROM center WHERE address LIKE '%kohat%' AND inchargename LIKE '%salman%'

SELECT * FROM vaccine WHERE centerid=2

# Aggregate functions
SELECT COUNT(Id) FROM vaccine

SELECT COUNT(Id) FROM TYPE

SELECT MAX(life) FROM TYPE
SELECT MIN(life) FROM TYPE
SELECT AVG(life) FROM TYPE

#grouping
SELECT * FROM vaccine

SELECT COUNT(id) FROM vaccine

SELECT typeid,COUNT(id) FROM vaccine GROUP BY TypeId
SELECT centerid, COUNT(id) FROM vaccine GROUP BY centerid

SELECT centerid, typeid, COUNT(id) FROM vaccine GROUP BY centerid, typeid

# Order by
SELECT * FROM vaccine ORDER BY centerid DESC, typeid

