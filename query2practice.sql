#update queries.
#this will update things

UPDATE vaccine SET mfgDate = '2018-01-01' WHERE id = 3

#errorr.. foreign value.. error...
UPDATE vaccine SET centerId=3 WHERE id BETWEEN 50 AND 70

UPDATE vaccine SET centerid = 5 WHERE id = 1

#will update the id of the center where name is 'obaid'
UPDATE center SET id=6 WHERE NAME='kohat' AND InchargeName='obaid'

#will delete the 233 id from the vaccine table.
DELETE FROM vaccine WHERE id = 233

UPDATE vaccine SET mfgdate='2000-06-06', deldate='2001-06-06' WHERE id = 200




