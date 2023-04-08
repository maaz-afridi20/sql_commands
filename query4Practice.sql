SELECT * FROM vaccine

#will sect all the data where the id of the vaccine and the type are same.
SELECT * FROM vaccine, TYPE WHERE vaccine.id  = type.id

#this will select all the data from the vaccine table and the type table in which te 
#typeid of vaccine is same to the id of the type.
SELECT vaccine.*, type.id FROM vaccine, TYPE WHERE vaccine.typeid = type.id

SELECT vaccine.*, type.id FROM vaccine, TYPE WHERE vaccine.typeid = type.id

#here we can also rename the columns name as like we
#give the name v to the vaccine and t to the type.
#it will work just like above.
SELECT v.*, t.id FROM vaccine v, TYPE t WHERE v.typeid = t.id

#this will show vaccine id center id name life from vaccine and the type table
# where the vaccine id and the type id are same.
SELECT v.id, centerid, NAME, life FROM vaccine v, TYPE t WHERE v.typeid = t.id

#this will change name of vaccine id to vaccinationCode
#and
# the center id to center
#and will show that result in which the type id of the vaccine and the type are same.
SELECT v.id AS vaccinationCode, centerid center, NAME, life FROM vaccine v, TYPE t WHERE v.typeid = t.id



#fisrt of all this will select vaccine id as 'vaccintationCode' then it will select mfgdate of vaccine
#then it will add the life and the mfgdate of the vaccine through adddate funcion and will put 
#that value in expiry date column and then it will select formula,nodose,dosevolume from type table
#and in last will show all the required results in which the vaccine id and the type id are same.

SELECT v.id `vaccination code`, v.mfgdate, ADDDATE(mfgdate, life) expiryDate, t.formula, t.nodose, t.dosevolume
FROM vaccine v, TYPE t
WHERE v.typeid = t.id


#gruping through join query.
SELECT * FROM vaccine v
INNER JOIN `type` t ON v.typeid = t.id



