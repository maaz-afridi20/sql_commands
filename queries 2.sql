UPDATE vaccine SET MfgDate='2021-06-01', deldate='2021-06-10' WHERE typeid=1


UPDATE vaccine SET centerid=3 WHERE id BETWEEN 151 AND 170


UPDATE vaccine SET centerid=5 WHERE typeid=2

DELETE FROM vaccine WHERE id=230

DELETE FROM center WHERE id=3

UPDATE center SET id=6 WHERE NAME='kohat' AND InchargeName='obaid'