SELECT * FROM mysql.user
SELECT CURRENT_USER()
GRANT CREATE ON  'maaz'@'localhost'
SHOW GRANTS FOR 'maaz'@'localhost'

GRANT SELECT ON namee.* TO 'maaz'@'localhost'

GRANT DROP ON price.* TO 'maaz'@'localhost'

REVOKE SELECT ON namee.* FROM 'maaz'@'localhost'

SHOW GRANTS FOR 'maaz'@'localhost'


#creating Roles....


CREATE ROLE role1,role2,role3
GRANT role1 TO 'maaz'@'localhost'
#this line will give grant (role1) to the 'maaz'@'localhost'
