--WHERE ��

--���1(p.52)
--SELECT emp_name, sal FROM employee;

--��L��WHERE ���ǉ�

--(2000�ȏ�)
--SELECT emp_name, sal FROM employee WHERE sal >= 2000;

--(1500����)
--SELECT emp_name, sal FROM employee WHERE sal < 1500;

--���2(p.53)
/*SELECT gender AS ����,
       emp_name AS ���O,
       sal AS ���^
    FROM employee
    WHERE gender = 2
    ORDER BY sal DESC;
*/

--���3(p.53)
/*SELECT emp_name AS ���O,
       sal AS ���^
    FROM employee
    WHERE emp_name = '���� �O�]';
*/

--���4(p.54)
/*SELECT emp_name AS ���O,
       sal AS ���^,
       birthday AS �a���� 
    FROM employee
    WHERE birthday >= '1980-01-01'
    ORDER BY birthday DESC;
*/

--���5(p.54)
/*SELECT emp_name AS ���O,
       sal AS ���^,
       birthday AS �a����,
       emp_id    �@�@�@�@�@--�m�F�p
    FROM employee
    WHERE emp_id = 20;
*/
/*��L�̊m�F�p
SELECT * FROM employee;
*/

--�_�����Z�q

--���1(p.55)�@����
/*SELECT emp_name AS ���O,
       sal AS ���^
    FROM employee
    WHERE sal >= 2000 AND sal <= 3000;
    WHERE sal > 1999 AND sal < 3001;  --(����ł��\)
*/

--��L�̕�version (BETWEEN)�͈͂������ꍇ��BETWEEN���Z�q���g����

/*SELECT emp_name AS ���O,
       sal AS ���^
    FROM employee
    WHERE sal BETWEEN 2000 AND 3000
    ORDER BY sal DESC;
*/

--���2(p.55)
/*SELECT emp_name AS ���O,
       sal AS ���^,
       gender AS ����   --�m�F�p
    FROM employee
    WHERE gender = 2 AND sal >= 2000
    ORDER BY sal DESC;
*/

--���3(p.56)
/*SELECT emp_name AS ���O,
       sal AS ���^,
       emp_id     --�m�F�p
    FROM employee
    WHERE emp_id = 2 or emp_id = 4 or emp_id = 7
    ORDER BY emp_id DESC;
*/

--���3(p.56) �ЂƂɂ܂Ƃ܂����
/*SELECT emp_name AS ���O,
       sal AS ���^,
       emp_id     --�m�F�p
    FROM employee
    WHERE emp_id IN ( 2, 4, 7 )
    ORDER BY emp_id DESC;
*/

--���4(p.56)
/*SELECT emp_name AS ���O,
       sal AS ���^,
       gender      --�m�F�p
       FROM employee
       WHERE gender = 2 or sal >=2000
       ORDER BY sal DESC;
*/

--���5(p.57)
/*SELECT emp_name AS ���O,
       sal AS ���^,
       gender AS ���� --�m�F�p
    FROM employee
    WHERE gender = 2 or (sal >=2000 AND sal <= 3000) --AND��OR��NOT�͏���NOT,AND,OR�̏��ŗD�悳���
    ORDER BY gender DESC;
*/

--�h�����K���̖@�����g����
--���6(p.57)
/*SELECT emp_name AS ���O,
       sal AS ���^,
       gender AS ���� --�m�F�p
    FROM employee
    WHERE gender != 2 AND (sal < 2000 OR sal > 3000) --AND��OR��NOT�͏���NOT,AND,OR�̏��ŗD�悳���
    ORDER BY sal DESC;
*/

--BETWEEN���Z�q

--���1(p.58)
/*SELECT emp_name AS ���O,
       sal AS ���^
    FROM employee
    WHERE sal BETWEEN 2000 AND 3000
    ORDER BY sal DESC;
*/

--���2(p.59)
/*SELECT emp_name AS ���O,
       sal AS ���^
    FROM employee
    WHERE (sal BETWEEN 2000 AND 3000) OR gender = 2
    ORDER BY sal DESC;
*/

--IN���Z�q

--���1(p.59)
/*SELECT emp_name AS ���O,
       sal AS ���^
    FROM employee
    WHERE emp_id IN ( 2, 4, 7 )
    ORDER BY sal DESC;
*/

--LIKE���Z�q(���������Ƃ��镶����p�^�[�����w��ł���)

/*���C���h�J�[�h
�@%(0�����܂��͔C�ӂ̕�������w��)
�@_(�����A�C�ӂ�1�������w��)

*/

--���1(p.60)
/*SELECT * FROM customer
    WHERE address LIKE '%���s%';
*/
--��ŏI���Z���𒲂ׂ�ꍇ
/*SELECT * FROM customer
    WHERE address LIKE '%��';
*/
--�s���܂ޏZ���𒲂ׂ�ꍇ
/*SELECT * FROM customer
    WHERE address LIKE '%�s%';
*/

--���2(p.60)
/*SELECT * FROM customer
    WHERE address NOT LIKE '�����s%';
*/

--���3(p.61)�O�����ڂ��u���v�̌ڋq�����Ɖ����@�i������͊��S��v����Ȃ��Ƃ����Ȃ��I�j
/*SELECT * FROM customer
    WHERE cust_name LIKE '__ ��%';
*/

/*NULL�̌����iNULL�͋󔒒l�Ƃ����Ӗ��j
  NULL�̌����ł͊֌W���Z�q(=,!=)���g���Ă̌����͂ł��Ȃ�
  IS NULL �܂��́@IS NOT NULL �Ō�������
*/

--���1(p.62)
/*SELECT * FROM employee
    WHERE comm IS NULL;
*/

--�p�c�_�Ƃ̗��K
/*SELECT * FROM customer
    WHERE FAX LIKE '_____8%';
*/

--���N������1983�N3��3���̐l�Ɠ����w�N�̎w���҂̎������N�����𒊏o
/*SELECT emp_name,
       birthday 
    FROM employee
    WHERE birthday BETWEEN '1983-04-02' AND '1984-04-01';
*/