--�\�̌����ip.79�j

--���1(p.81)
/*SELECT
    employee.emp_id,
    employee.dept_id,
    employee.emp_name,
    department.dept_name,
    loc
FROM
    employee
JOIN
    department
ON
    employee.dept_id = department.dept_id;
*/

--���2(p.82)
/*SELECT
    department.dept_id,
    department.dept_name,
    employee.emp_id,
    employee.emp_name
FROM 
    department
LEFT JOIN
    employee
ON
    department.mgr_id = employee.emp_id;
*/

--���3(p.83)
/*SELECT
    department.dept_id,
    department.dept_name,
    department.adept_id,
    department2.dept_name
FROM
    department
INNER JOIN
    department department2
ON
    department.adept_id = department2.dept_id;
*/

--�p�c�_�Ƃ̗��K
SELECT
    sales.psales_no,
    sales.sales_no,
    sales.quantity,
    sales.price,
    sales.prod_id,
    product.prod_name
FROM 
    sales
JOIN
    product
ON
    sales.prod_id = product.prod_id
LIMIT 5;   --�����ڈ�

--SELECT * FROM product LIMIT 5;