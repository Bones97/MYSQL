SELECT 
e.employeeNumber AS ID,
CONCAT_WS(' ', e.firstName, e.lastName)'Employee',
IF(COUNT(c.customerNumber)>=6,
    e.salary*0.3,
IF(COUNT(c.customerNumber)>0,
    e.salary*0.1,
    e.salary=0
    )
) AS 'Bonus'
FROM `employees` AS e
LEFT JOIN `customers` AS c
ON e.employeeNumber = c.salesRepEmployeeNumber
WHERE jobTitle = "Sales Rep"
GROUP BY e.employeeNumber
ORDER BY `Bonus` DESC;