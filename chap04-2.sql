--WHERE 句

--例題1(p.52)
--SELECT emp_name, sal FROM employee;

--上記にWHERE 句を追加

--(2000以上)
--SELECT emp_name, sal FROM employee WHERE sal >= 2000;

--(1500未満)
--SELECT emp_name, sal FROM employee WHERE sal < 1500;

--例題2(p.53)
/*SELECT gender AS 性別,
       emp_name AS 名前,
       sal AS 給与
    FROM employee
    WHERE gender = 2
    ORDER BY sal DESC;
*/

--例題3(p.53)
/*SELECT emp_name AS 名前,
       sal AS 給与
    FROM employee
    WHERE emp_name = '安部 弘江';
*/

--例題4(p.54)
/*SELECT emp_name AS 名前,
       sal AS 給与,
       birthday AS 誕生日 
    FROM employee
    WHERE birthday >= '1980-01-01'
    ORDER BY birthday DESC;
*/

--例題5(p.54)
/*SELECT emp_name AS 名前,
       sal AS 給与,
       birthday AS 誕生日,
       emp_id    　　　　　--確認用
    FROM employee
    WHERE emp_id = 20;
*/
/*上記の確認用
SELECT * FROM employee;
*/

--論理演算子

--例題1(p.55)　数式
/*SELECT emp_name AS 名前,
       sal AS 給与
    FROM employee
    WHERE sal >= 2000 AND sal <= 3000;
    WHERE sal > 1999 AND sal < 3001;  --(これでも可能)
*/

--上記の別version (BETWEEN)範囲を扱う場合はBETWEEN演算子を使える

/*SELECT emp_name AS 名前,
       sal AS 給与
    FROM employee
    WHERE sal BETWEEN 2000 AND 3000
    ORDER BY sal DESC;
*/

--例題2(p.55)
/*SELECT emp_name AS 名前,
       sal AS 給与,
       gender AS 性別   --確認用
    FROM employee
    WHERE gender = 2 AND sal >= 2000
    ORDER BY sal DESC;
*/

--例題3(p.56)
/*SELECT emp_name AS 名前,
       sal AS 給与,
       emp_id     --確認用
    FROM employee
    WHERE emp_id = 2 or emp_id = 4 or emp_id = 7
    ORDER BY emp_id DESC;
*/

--例題3(p.56) ひとつにまとまるやり方
/*SELECT emp_name AS 名前,
       sal AS 給与,
       emp_id     --確認用
    FROM employee
    WHERE emp_id IN ( 2, 4, 7 )
    ORDER BY emp_id DESC;
*/

--例題4(p.56)
/*SELECT emp_name AS 名前,
       sal AS 給与,
       gender      --確認用
       FROM employee
       WHERE gender = 2 or sal >=2000
       ORDER BY sal DESC;
*/

--例題5(p.57)
/*SELECT emp_name AS 名前,
       sal AS 給与,
       gender AS 性別 --確認用
    FROM employee
    WHERE gender = 2 or (sal >=2000 AND sal <= 3000) --ANDとORとNOTは順にNOT,AND,ORの順で優先される
    ORDER BY gender DESC;
*/

--ドモルガンの法則を使うと
--例題6(p.57)
/*SELECT emp_name AS 名前,
       sal AS 給与,
       gender AS 性別 --確認用
    FROM employee
    WHERE gender != 2 AND (sal < 2000 OR sal > 3000) --ANDとORとNOTは順にNOT,AND,ORの順で優先される
    ORDER BY sal DESC;
*/

--BETWEEN演算子

--例題1(p.58)
/*SELECT emp_name AS 名前,
       sal AS 給与
    FROM employee
    WHERE sal BETWEEN 2000 AND 3000
    ORDER BY sal DESC;
*/

--例題2(p.59)
/*SELECT emp_name AS 名前,
       sal AS 給与
    FROM employee
    WHERE (sal BETWEEN 2000 AND 3000) OR gender = 2
    ORDER BY sal DESC;
*/

--IN演算子

--例題1(p.59)
/*SELECT emp_name AS 名前,
       sal AS 給与
    FROM employee
    WHERE emp_id IN ( 2, 4, 7 )
    ORDER BY sal DESC;
*/

--LIKE演算子(検索条件とする文字列パターンを指定できる)

/*ワイルドカード
　%(0文字または任意の文字列を指定)
　_(下線、任意の1文字を指定)

*/

--例題1(p.60)
/*SELECT * FROM customer
    WHERE address LIKE '%大阪市%';
*/
--区で終わる住所を調べる場合
/*SELECT * FROM customer
    WHERE address LIKE '%区';
*/
--都を含む住所を調べる場合
/*SELECT * FROM customer
    WHERE address LIKE '%都%';
*/

--例題2(p.60)
/*SELECT * FROM customer
    WHERE address NOT LIKE '東京都%';
*/

--例題3(p.61)三文字目が「光」の顧客情報を照会する方法（文字列は完全一致じゃないといけない！）
/*SELECT * FROM customer
    WHERE cust_name LIKE '__ 光%';
*/

/*NULLの検索（NULLは空白値という意味）
  NULLの検索では関係演算子(=,!=)を使っての検索はできない
  IS NULL または　IS NOT NULL で検索する
*/

--例題1(p.62)
/*SELECT * FROM employee
    WHERE comm IS NULL;
*/

--角田神との練習
/*SELECT * FROM customer
    WHERE FAX LIKE '_____8%';
*/

--生年月日が1983年3月3日の人と同じ学年の指導者の氏名生年月日を抽出
/*SELECT emp_name,
       birthday 
    FROM employee
    WHERE birthday BETWEEN '1983-04-02' AND '1984-04-01';
*/