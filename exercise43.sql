--1
/*SELECT
    sum(cost),
    avg(cost),
    min(cost),
    max(cost)
FROM product;
*/

--2
/*SELECT
    count(*),
    count(discount),
    count(DISTINCT discount),
    sum(discount),
    avg(discount),
    min(discount),
    max(discount)
FROM product;
*/

--3
/*SELECT
    discount,
    count(discount),
    sum(discount),
    avg(discount),
    min(discount),
    max(discount)
FROM product
GROUP BY discount
ORDER BY discount;
*/

--4
/*SELECT
    discount,
    count(discount),
    sum(discount),
    avg(discount),
    min(discount),
    max(discount)
FROM product
GROUP BY discount
HAVING NOT (count(discount) < 5)
ORDER BY discount;
*/

--5
/*SELECT
    discount,
    count(discount),
    sum(discount),
    avg(discount),
    min(discount),
    max(discount)
FROM product
WHERE cost >= 15000
GROUP BY discount
ORDER BY discount;
*/

--6
/*SELECT
    emp_id,
    avg(total)
FROM packedsales
GROUP BY emp_id
ORDER BY emp_id;
*/

--7
/*SELECT
    psales_date,
    sum(total)
FROM packedsales
GROUP BY psales_date
ORDER BY sum(total) DESC LIMIT 5;
*/

--8
/*SELECT 
    DISTINCT emp_id 
FROM packedsales 
ORDER BY emp_id;
*/
--DISTINCT ON ÇÃèÍçá
/*SELECT
    DISTINCT ON (emp_id) emp_id
FROM packedsales
ORDER BY emp_id;
*/


--äpìcê_Ç∆ÇÃïúèK

--1
--SELECT * FROM employee ORDER BY birthday DESC;

--2
--SELECT * FROM product WHERE cost BETWEEN '10000' AND '19999' AND discount IS NULL;

--3
/*SELECT * FROM packedsales WHERE cust_address LIKE '%ç`ãÊ%';
SELECT * FROM customer WHERE cust_id = 3;
*/