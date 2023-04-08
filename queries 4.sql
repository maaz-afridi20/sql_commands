SELECT * FROM vaccine
SELECT * FROM TYPE

SELECT * FROM vaccine, TYPE WHERE vaccine.typeid=type.id
SELECT vaccine.*, type.id FROM vaccine, TYPE WHERE vaccine.typeid=type.id
SELECT v.*, t.id FROM vaccine v, TYPE t WHERE v.typeid=t.id

SELECT v.id, centerid, NAME, life FROM vaccine v, TYPE t WHERE v.typeid=t.id
SELECT v.id AS VaccinationCode, centerid Center, NAME, life FROM vaccine v, TYPE t WHERE v.typeid=t.id

SELECT v.Id `Vaccination Code`, v.MfgDate, ADDDATE(MfgDate, Life) ExpireDate, 
	t.Formula, t.Name, t.NoDose, t.DoseVolume
FROM vaccine v, TYPE t 
WHERE v.typeid=t.id


SELECT * FROM vaccine, center WHERE vaccine.`CenterId`=center.id


SELECT * FROM vaccine v
INNER JOIN `type` t ON v.typeid=t.id

SELECT * FROM vaccine v
INNER JOIN center c ON v.centerid=c.id


SELECT * FROM vaccine v
LEFT OUTER JOIN center c ON v.centerid=c.id


SELECT * FROM vaccine v
RIGHT OUTER JOIN center c ON v.centerid=c.id

#Subquery
SELECT MIN(life) FROM TYPE
SELECT * FROM TYPE WHERE life=(SELECT MIN(life) FROM TYPE)


