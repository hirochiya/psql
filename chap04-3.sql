--��֐�/�O���[�v

--���1(p.67)
/*SELECT
    count(*) AS �s��,  --�s���J�E���g
    sum(sal) AS ���v,  --���^�̍��v�i�j�̒��͈���
    avg(sal) AS ����,  --���^�̕���
    min(sal) AS �ŏ��l,--�����̍Œ�l
    max(sal) AS �ō��l --�����̍ō��l
FROM employee;
*/

--���2(P.67)
/*SELECT
    count(*) AS �s��,  --�s���J�E���g
    sum(sal) AS ���v,  --���^�̍��v�i�j�̒��͈���
    avg(sal) AS ����,  --���^�̕���
    min(sal) AS �ŏ��l,--�����̍Œ�l
    max(sal) AS �ō��l --�����̍ō��l
FROM employee
WHERE dept_id = 30;
*/

--���3(p.67)
/*SELECT
    count(*) - count(comm)
FROM employee
*/
--�ʃo�[�W����
/*SELECT count(*) FROM employee
    WHERE comm IS NULL;
*/

--���4(p.68)
--SELECT count(DISTINCT dept_id) FROM employee;

--�O���[�v

--���1(p.71)
/*SELECT
    dept_id,
    count(*) AS �s��,  --�s���J�E���g
    sum(sal) AS ���v,  --���^�̍��v�i�j�̒��͈���
    avg(sal) AS ����,  --���^�̕���
    min(sal) AS �ŏ��l,--�����̍Œ�l
    max(sal) AS �ō��l --�����̍ō��l
FROM employee
GROUP BY dept_id
ORDER BY avg(sal) DESC;
*/

--���2(p.71)
/*SELECT
     gender,
     count(*)
  FROM employee
  GROUP BY gender
  ORDER BY gender;
*/

--���3(p.72)
/*SELECT 
    dept_id,
    gender,
    count(*),
    avg(sal)
FROM employee
GROUP BY dept_id, gender
ORDER BY dept_id, gender;
*/

--���4(p.72)
/*SELECT 
    gender,
    dept_id,
    count(*),
    avg(sal)
FROM employee
GROUP BY dept_id, gender
ORDER BY gender, dept_id;
*/

--���5(p.73)
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

--���6(p.73)
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

--���1(P.74)
/*SELECT 
    DISTINCT dept_id
FROM employee 
ORDER BY dept_id;
*/

--���2(p.75)
/*SELECT
    DISTINCT ON (dept_id) 
    emp_name,
    dept_id,
    sal
FROM employee
ORDER BY dept_id, sal DESC;
*/