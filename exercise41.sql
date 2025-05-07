--実習
--1
--SELECT * FROM product;
--2
--SELECT prod_name, cost, discount FROM product;
--3
--SELECT prod_name, cost, discount, cost * discount AS 割引価格 FROM product;
--4
--SELECT prod_name, cost, discount, cost * COALESCE(discount,1)  AS 割引価格 FROM product;
--5
--SELECT prod_name, cost, discount, to_char((cost * COALESCE (discount, 1)),'9G999G999D99')  AS 割引価格 FROM product;
--6
--SELECT prod_name, cost, discount, to_char((cost * COALESCE (discount, 1)),'9G999G999D99')  AS 割引価格 FROM product ORDER BY 4 DESC;
--SELECT prod_name, cost, discount, to_char((cost * COALESCE (discount, 1)),'9G999G999D99')  AS 割引価格 FROM product ORDER BY 割引価格 DESC;
--7
SELECT 
    prod_name,
    cost,
    discount,
    to_char((cost * COALESCE (discount, 1)),'9G999G999')  AS 割引価格
FROM product ORDER BY 割引価格 DESC LIMIT 3;