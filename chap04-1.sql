--列の選択

--例題１（ｐ.33）
--SELECT * FROM employee;
--例題2(p.33)
--\d employee;
--例題3（ｐ.34）
--SELECT emp_name, birthday, sal FROM employee;
--例題4(p.34)
--SELECT emp_name, birthday, sal, sal * 12 FROM employee;
--例題5(p.35)
--SELECT emp_name, birthday, sal, sal * 12 AS 年収 FROM employee;
--例題6（p.35）
--SELECT emp_name, birthday, sal, CAST(sal * 12 AS int) AS 年収 FROM employee;
--例題7(p.36)
--SELECT emp_name, birthday, sal, (sal * 12)::int AS 年収 FROM employee;

--文字列連結

--例題1(p.36)
--SELECT '担当者　' || emp_name || '　の誕生日は　'|| birthday || ' です。 ' AS 誕生日 FROM employee;

--to_char(式、書式)関数

--例題１(p.37)
--SELECT emp_name, to_char(birthday , 'DAY, Month DD, YYYY') FROM employee;
--例題２(p.38)
--SELECT emp_name, to_char(sal * 1000, '9G999G999D99') FROM employee;

--nullの扱い

--例題1(p.40)
--SELECT emp_name, birthday, sal, comm, sal + comm FROM employee;

--commの名前を収入に変える
--SELECT emp_name, birthday, sal, comm, comm AS 収入 FROM employee;

--null値の変換　　COALESCE(式、値)の使用

--例題1(p.41)
--SELECT  emp_name, birthday, sal, comm, sal + COALESCE(comm, 0) AS 月収 FROM employee;

--CASE式

--例題1(p.42)
--SELECT emp_name, gender FROM employee;
--例題2(p.43)
/*SELECT 
    emp_name,
        CASE
            WHEN gender = 1 THEN '男'
                            else '女'
        END
    FROM employee;
*/
--例題3(p.43)
/*SELECT
    emp_name,
        CASE
            WHEN gender = 1 THEN '男'
                            ELSE '女'
        END AS 性別
    FROM employee;
*/
--例題5(p.44)
/*SELECT 
    emp_name, 
    birthday,
    sal,
    comm, 
    sal + CASE 
            WHEN comm IS NULL THEN 0 ELSE comm  END
FROM employee;
*/

--並び替え（ORDER　BY　句）[|]パイプは「or」という意味

--ASC(昇順)　/　DESC（降順）

--例題1(p.45) 昇順(A to Z)
--SELECT * FROM employee ORDER BY birthday;
--例題2(p.45) 降順(Z to A)
--SELECT * FROM employee ORDER BY sal DESC;
--例題3(p.46)
--SELECT * FROM employee ORDER BY gender DESC, sal DESC;
--例題4(p.46)
/*SELECT emp_name AS 名前,
       birthday AS 誕生日,
       sal AS 給与,
       comm,
       sal + comm AS 月収 
    FROM employee 
    ORDER BY 月収;
*/

--結果表の行数の制限（LIMIT 取得行数 OFFSET 開始位置）

--例題1(p.48)
--SELECT * FROM employee ORDER BY sal DESC LIMIT 3;
--例題2(p.48)
--SELECT * FROM employee ORDER BY sal DESC LIMIT 3 OFFSET 1;