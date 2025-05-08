--列関数/グループ

--例題1(p.67)
/*SELECT
    count(*) AS 行数,  --行数カウント
    sum(sal) AS 合計,  --給与の合計（）の中は引数
    avg(sal) AS 平均,  --給与の平均
    min(sal) AS 最小値,--給料の最低値
    max(sal) AS 最高値 --給料の最高値
FROM employee;
*/

--例題2(P.67)
/*SELECT
    count(*) AS 行数,  --行数カウント
    sum(sal) AS 合計,  --給与の合計（）の中は引数
    avg(sal) AS 平均,  --給与の平均
    min(sal) AS 最小値,--給料の最低値
    max(sal) AS 最高値 --給料の最高値
FROM employee
WHERE dept_id = 30;
*/

--例題3(p.67)
/*SELECT
    count(*) - count(comm)
FROM employee
*/
--別バージョン
/*SELECT count(*) FROM employee
    WHERE comm IS NULL;
*/

--例題4(p.68)
--SELECT count(DISTINCT dept_id) FROM employee;

--グループ

--例題1(p.71)
/*SELECT
    dept_id,
    count(*) AS 行数,  --行数カウント
    sum(sal) AS 合計,  --給与の合計（）の中は引数
    avg(sal) AS 平均,  --給与の平均
    min(sal) AS 最小値,--給料の最低値
    max(sal) AS 最高値 --給料の最高値
FROM employee
GROUP BY dept_id
ORDER BY avg(sal) DESC;
*/

--例題2(p.71)
/*SELECT
     gender,
     count(*)
  FROM employee
  GROUP BY gender
  ORDER BY gender;
*/

--例題3(p.72)
/*SELECT 
    dept_id,
    gender,
    count(*),
    avg(sal)
FROM employee
GROUP BY dept_id, gender
ORDER BY dept_id, gender;
*/

--例題4(p.72)
/*SELECT 
    gender,
    dept_id,
    count(*),
    avg(sal)
FROM employee
GROUP BY dept_id, gender
ORDER BY gender, dept_id;
*/

--例題5(p.73)
/*SELECT
    dept_id,
    sum(sal),
    avg(sal),
    min(sal),
    max(sal)
FROM employee
GROUP BY dept_id
HAVING sum(sal) <= 5000
ORDER BY dept_id;
*/

--例題6(p.73)
/*SELECT
    dept_id,
    sum(sal),
    avg(sal),
    min(sal),
    max(sal)
FROM employee
WHERE gender = 1
GROUP BY dept_id
HAVING sum(sal) <= 5000
ORDER BY dept_id;
*/

--DISTINCT

--例題1(P.74)
/*SELECT 
    DISTINCT dept_id
FROM employee 
ORDER BY dept_id;
*/

--例題2(p.75)
/*SELECT
    DISTINCT ON (dept_id) 
    emp_name,
    dept_id,
    sal
FROM employee
ORDER BY dept_id, sal DESC;
*/