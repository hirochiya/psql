--�f�[�^�̍X�V(UPDATE)

--���1(p.115)
--SELECT sal AS �ύX�O, sal * 1.2 AS �ύX�� FROM employee;
/*UPDATE employee 
    SET sal = sal * 1.2;
*/
--SELECT * FROM employee;

--���2(p.116)
--SELECT sal AS �ύX�O, sal - 1000 AS �ύX�� FROM employee;
/*UPDATE employee
    SET sal = sal -1000
    WHERE sal >= 5000;
*/
--SELECT * FROM employee ORDER BY emp_id;

--���3(p.117)
/*SELECT dept_id, sal 
FROM employee
WHERE dept_id = 40;
*/
/*UPDATE employee 
    SET sal = (SELECT avg(sal) FROM employee)
    WHERE dept_id = 40;
*/
/*SELECT dept_id, sal
FROM employee
WHERE dept_id = 40;
*/