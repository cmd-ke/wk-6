-- Use salesDatabase
USE salesDB;

--QUESTION ONE
--Select the relevant columns and perform inner join
SELECT emp.firstName , emp.lastName, emp.email, emp.officeCode
from employees as emp
INNER JOIN office as off
  on emp.officeCode = off.officeCode;

--QUESTION TWO 
-- select the relevant columns and perform left join 
select prods.productName, prods.productVendor, prods.productLine
from products as prods
left join productlines as prodsline
on prods.productLine = prodsline.productLine;

-- QUESTION THREE
-- Select the relevant columns perform the right join and order the first 10
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
