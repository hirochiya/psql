--��̑I��

--���P�i��.33�j
--SELECT * FROM employee;
--���2(p.33)
--\d employee;
--���3�i��.34�j
--SELECT emp_name, birthday, sal FROM employee;
--���4(p.34)
--SELECT emp_name, birthday, sal, sal * 12 FROM employee;
--���5(p.35)
--SELECT emp_name, birthday, sal, sal * 12 AS �N�� FROM employee;
--���6�ip.35�j
--SELECT emp_name, birthday, sal, CAST(sal * 12 AS int) AS �N�� FROM employee;
--���7(p.36)
--SELECT emp_name, birthday, sal, (sal * 12)::int AS �N�� FROM employee;

--������A��

--���1(p.36)
--SELECT '�S���ҁ@' || emp_name || '�@�̒a�����́@'|| birthday || ' �ł��B ' AS �a���� FROM employee;

--to_char(���A����)�֐�

--���P(p.37)
--SELECT emp_name, to_char(birthday , 'DAY, Month DD, YYYY') FROM employee;
--���Q(p.38)
--SELECT emp_name, to_char(sal * 1000, '9G999G999D99') FROM employee;

--null�̈���

--���1(p.40)
--SELECT emp_name, birthday, sal, comm, sal + comm FROM employee;

--comm�̖��O�������ɕς���
--SELECT emp_name, birthday, sal, comm, comm AS ���� FROM employee;

--null�l�̕ϊ��@�@COALESCE(���A�l)�̎g�p

--���1(p.41)
--SELECT  emp_name, birthday, sal, comm, sal + COALESCE(comm, 0) AS ���� FROM employee;

--CASE��

--���1(p.42)
--SELECT emp_name, gender FROM employee;
--���2(p.43)
/*SELECT 
    emp_name,
        CASE
            WHEN gender = 1 THEN '�j'
                            else '��'
        END
    FROM employee;
*/
--���3(p.43)
/*SELECT
    emp_name,
        CASE
            WHEN gender = 1 THEN '�j'
                            ELSE '��'
        END AS ����
    FROM employee;
*/
--���5(p.44)
/*SELECT 
    emp_name, 
    birthday,
    sal,
    comm, 
    sal + CASE 
            WHEN comm IS NULL THEN 0 ELSE comm  END
FROM employee;
*/

--���ёւ��iORDER�@BY�@��j[|]�p�C�v�́uor�v�Ƃ����Ӗ�

--ASC(����)�@/�@DESC�i�~���j

--���1(p.45) ����(A to Z)
--SELECT * FROM employee ORDER BY birthday;
--���2(p.45) �~��(Z to A)
--SELECT * FROM employee ORDER BY sal DESC;
--���3(p.46)
--SELECT * FROM employee ORDER BY gender DESC, sal DESC;
--���4(p.46)
/*SELECT emp_name AS ���O,
       birthday AS �a����,
       sal AS ���^,
       comm,
       sal + comm AS ���� 
    FROM employee 
    ORDER BY ����;
*/

--���ʕ\�̍s���̐����iLIMIT �擾�s�� OFFSET �J�n�ʒu�j

--���1(p.48)
--SELECT * FROM employee ORDER BY sal DESC LIMIT 3;
--���2(p.48)
--SELECT * FROM employee ORDER BY sal DESC LIMIT 3 OFFSET 1;