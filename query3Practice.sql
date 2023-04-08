SELECT * FROM SUBJECT

SELECT * FROM TYPE

#where statements

SELECT * FROM center WHERE id=6
SELECT * FROM center WHERE address = 'kohat'

# like statement
SELECT * FROM center WHERE address LIKE '%kohat%'
SELECT * FROM SUBJECT WHERE NAME LIKE '%muhammad%'

SELECT * FROM SUBJECT WHERE NAME LIKE 'm_hamm_d%'
SELECT * FROM center WHERE address LIKE '%kohat%' AND contact LIKE '0311%'

SELECT * FROM center WHERE address LIKE '%kohat%' AND inchargeName LIKE '%salman%'

SELECT * FROM vaccine WHERE centerId=6

#aggrigate functions.

SELECT COUNT(id) FROM TYPE
SELECT COUNT(NAME) FROM TYPE

SELECT MAX(nodose) FROM TYPE
SELECT MAX(quantity) FROM TYPE
SELECT MIN(quantity) FROM TYPE

SELECT AVG(quantity) FROM TYPE
SELECT MIN(life) FROM TYPE
SELECT MAX(life) FROM TYPE

#grouping...

SELECT * FROM vaccine
SELECT COUNT(id) FROM vaccine

SELECT typeid, COUNT(id) FROM vaccine GROUP BY typeid


SELECT typeid, COUNT(id) FROM vaccine GROUP BY typeid

SELECT centerid, COUNT(id) FROM center GROUP BY id

SELECT centerid, typeid, COUNT(id) FROM vaccine GROUP BY centerid, typeid


#order by queries.
SELECT * FROM vaccine ORDER BY centerid DESC, typeid DESC
# query 50 will order the center id in desvending order and after we have given that
#we also want to have typeid desc so after this it will also give us the typeid in descending order.
