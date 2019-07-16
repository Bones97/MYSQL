SELECT lastName, firstName 
FROM `employees` AS e
INNER JOIN 	`offices` AS o
ON e.officeCode = o.officeCode
WHERE o.country = "Japan" OR o.country = "UK";