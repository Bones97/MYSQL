SELECT CONCAT(o.city, ' office') AS "NAME", CONCAT_WS(', ', o.addressLine1, o.addressLine2, o.state, o.country, o.postalCode) AS "Address" 
FROM `offices` AS o
UNION
SELECT CONCAT_WS('', c.customerName) AS "NAME", CONCAT_WS(', ', c.addressLine1, c.addressLine2, c.state, c.country, c.postalCode) AS "Address"
FROM `customers` AS c
