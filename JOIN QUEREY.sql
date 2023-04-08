SELECT * FROM store
INNER JOIN product ON store.category = product.category
# this will show the result of all the things that are in common in the 
# both the tables


SELECT * FROM product
LEFT OUTER JOIN store ON store.price = product.price

#so this will fetch data from the left table and that data
#that are common in both... and not from the right table.


SELECT * FROM product
RIGHT OUTER JOIN store ON store.category = product.category
ORDER BY store.category #will listed alphabatically.
#this will take the whole product table and 
#only that things that in the store table and then it show.. that in one table.


SELECT * FROM store
LEFT OUTER JOIN product ON store.category = product.category
UNION
SELECT * FROM product
RIGHT OUTER JOIN store ON product.category = store.category

# above is the full outer join. it does not have direct method to do it... 
#so we create the left and right outer join and combine them by (UNION)




