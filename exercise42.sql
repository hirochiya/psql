--1
/*SELECT * FROM product
    WHERE cost > 20000;
    */

--2
/*SELECT cust_id, cust_name FROM customer
    WHERE FAX IS NULL;
*/

--3
/*SELECT sales_no, psales_no, prod_id, price FROM sales
    WHERE psales_no BETWEEN '110' AND '119' 
    ORDER BY price DESC;
*/

--4
/*SELECT prod_id, prod_name, ( cost * discount ) AS Š„ˆø‰¿Ši FROM product
    WHERE prod_id IN ( 102, 104, 106 )
    ORDER BY Š„ˆø‰¿Ši DESC;
*/

--5
/*ELECT cust_id, cust_address, delivery_date FROM packedsales
    WHERE cust_address LIKE '%a’J‹æ%'  AND (delivery_date BETWEEN '1996-01-01' AND '1996-12-31');
*/

--6
/*SELECT cust_id, cust_name, tel FROM customer
    WHERE NOT(tel LIKE '03%' OR tel LIKE '06%');
*/
--ƒhƒ‚ƒ‹ƒKƒ“‚Ì–@‘¥‚ğg‚Á‚½version
--  WHERE NOT tel LIKE '03%' AND NOT tel LIKE '06%';