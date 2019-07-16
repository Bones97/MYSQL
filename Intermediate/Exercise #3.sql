SELECT 
CONCAT(firstName, ' ', lastName) AS "Employee Name", 
jobTitle AS "Job Title", 
CONCAT_WS(', ', o.addressLine1, o.addressLine2, o.state, o.country, o.postalCode) AS 'Office Address' 
FROM `employees` AS e
INNER JOIN 	`offices` AS o
ON e.officeCode = o.officeCode;