/*Assignment3*/
/*1
select count(Order_no)
from sales_order;
*/
/*2
select AVG(Sell_price)
from product_master;
*/
/*2
select AVG(Cost_price)
from product_master;
*/
/*3
select count(Cost_price)
from product_master
where Cost_price>=1500;
*/
/*3
select count(Sell_price)
from product_master
where Sell_price>=1500;
*/
/*4
select MAX(Cost_price) max_price, MIN(Cost_price) min_price
from product_master;
*/
/*5
UPDATE client_master
set city='Madras'
where client_no='C005';
*/
/*6
UPDATE client_master
set Balance_due=3000
where client_no='C005';
*/
/*7
DELETE FROM client_master
where state='Tamilnadu';
*/
/*8
ALTER TABLE	client_master
add(Telephone NUMBER(10));
*/
/*9
ALTER TABLE	client_master
MODIFY(Pincode NUMBER(10));
*/
/*10
ALTER TABLE client_master
DROP COLUMN Address2;
*/
/*11
CREATE TABLE client_master_duplicate
AS
(SELECT * FROM client_master
WHERE 1=2);
*/
/*12
INSERT INTO client_master_duplicate
(SELECT * FROM client_master);
*/
/*13
RENAME client_master_duplicate
TO c_master;
*/
/*14
DROP TABLE c_master;
*/


/*Assignment4*/
/*1
SELECT LPAD (ename,15) FROM emp;
*/
/*2
SELECT LPAD (ename,15,'*') FROM emp;
*/
/*3
SELECT * FROM emp
WHERE
	(job='MANAGER' AND deptno=10) OR
	(job='CLERK' AND deptno=20) OR
	(job!='MANAGER' AND job!='CLERK' AND sal>=2000);
*/
/*4
SELECT ename, hiredate FROM emp
WHERE hiredate BETWEEN '01-FEB-81' AND '31-AUG-81';
*/
/*5
SELECT ename, hiredate, job FROM emp
WHERE job='MANAGER' AND TO_CHAR(hiredate,'yy')=81;
*/
/*6
SELECT ename, sal FROM emp
WHERE sal IN(800,1600,2450);
*/
/*7
SELECT ename, job FROM emp
WHERE job IN('CLERK','SALESMAN','ANALYST');
*/
/*8
SELECT COUNT(ename), AVG(sal) FROM emp
GROUP BY deptno;
*/
/*9
SELECT AVG(sal) FROM emp
WHERE deptno=30;
*/
/*10
SELECT MIN(sal) FROM emp
WHERE job='CLERK';
*/
/*11
SELECT MAX(sal) FROM emp
WHERE job='SALESMAN';
*/
/*12
SELECT ename FROM emp emp1
WHERE deptno!=(SELECT deptno FROM emp emp2
WHERE emp1.mgr=emp2.empno);
*/
/*13
SELECT COUNT(ename) from emp
WHERE comm IS NULL;
*/
/*14
SELECT dname, deptno FROM dept
WHERE deptno NOT IN(10,20,30);
*/


/*Assignment5*/
/*1
SELECT ename, dname, loc FROM emp, dept
WHERE emp.deptno=dept.deptno
ORDER BY dept.dname;
*/
/*2
SELECT ename,sal FROM emp
WHERE deptno IN(SELECT deptno FROM dept WHERE loc='DALLAS')
ORDER BY sal DESC;
*/
/*3
SELECT ename, dname, job, loc FROM emp, dept
WHERE dept.deptno IN(SELECT deptno FROM dept WHERE loc='DALLAS');
*/
/*4
SELECT ename, sal, sal*.1 PF, sal*.6 HRA, sal*.4 DA, ((sal*.1)+(sal*.6)+(sal*.4)+sal) GS
FROM emp
ORDER BY GS ASC;
*/
/*5
SELECT ename, sal FROM emp
WHERE mgr=(SELECT empno FROM emp WHERE ename='KING');
*/
/*6
SELECT ename, loc, sal FROM emp, dept
WHERE emp.deptno=dept.deptno AND loc='DALLAS' AND
sal>(SELECT MAX(sal) FROM emp, dept
		WHERE loc='CHICAGO' AND emp.deptno=dept.deptno);
*/
/*7
SELECT ename, job FROM emp
WHERE job=(SELECT job FROM emp WHERE ename='SMITH');
*/
/*8
SELECT job FROM emp
WHERE sal=(SELECT MAX(AVG(sal)) FROM emp GROUP BY job);
*/
/*9
SELECT ename, sal FROM (SELECT ename, sal FROM emp ORDER BY sal DESC)
WHERE ROWNUM<=10;
*/
/*10
SELECT REPLACE(ename,'A','a') FROM emp;
*/
/*11
SELECT ename, sal, ROUND(sal, -3) FROM emp;
*/
/*12
SELECT SUBSTR(ename, 1, 3),  SUBSTR(ename, -3) FROM emp;
*/