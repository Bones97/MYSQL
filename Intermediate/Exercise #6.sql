SELECT 
e.employeeNumber AS ID,
CONCAT_WS(' ', e.firstName, e.lastName)'Employee',
(CASE
    WHEN COUNT(c.customerNumber)>=6 THEN e.salary*0.3
    WHEN COUNT(c.customerNumber)>0 THEN e.salary*0.1
    ELSE e.salary = 0
END
)  AS 'Bonus'
FROM `employees` AS e
LEFT JOIN `customers` AS c
ON e.employeeNumber = c.salesRepEmployeeNumber
WHERE jobTitle = "Sales Rep"
GROUP BY e.employeeNumber
ORDER BY `Bonus` DESC;