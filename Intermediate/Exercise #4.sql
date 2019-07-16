SELECT 
employeeNumber AS "Emp #", 
CONCAT(firstName, ' ', lastName) AS 'Emp Name', 
COUNT(c.customerNumber) AS "Customer Count"
FROM `employees` AS e
LEFT JOIN `customers` AS c
ON e.employeeNumber = c.salesRepEmployeeNumber
WHERE jobTitle = "Sales Rep"
GROUP BY e.employeeNumber
ORDER BY `Customer Count` DESC