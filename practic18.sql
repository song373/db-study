select * from student;
select * from department;
SELECT
    S.NAME name ,
    deptno1,
    D.dname DEPTNo1
    
FROM student S, department D

WHERE 
    s.deptno1 = d.deptno
    AND s.deptno1 = (
    
        SELECT deptno1
        FROM student
        WHERE name = 'Anthony Hopkins'
    
    );

SELECT p.name, p.hiredate, d.dname
FROM professor p, department d 
WHERE hiredate > (SELECT hiredate
                    FROM professor
                    WHERE name = 'Meg Ryan') --85/09/18
    AND p.deptno = d.deptno
ORDER BY hiredate;

select * from emp2;
select * from dept2;



select name, weight
from student
where weight > (select avg(weight)
                from student
                where deptno1 =201);
                
select empno, name, deptno
from emp2
where deptno in (select dcode
                from dept2
                where area = 'Pohang Main Office');

select empno, name, deptno
from emp2 e, dept2 d
where e.deptno = d.dcode
and d.area = 'Pohang Main Office';

select empno, name, deptno
from emp2 e, (select dcode
               from dept2
               where area = 'Pohang Main Office') d
where e.deptno = d.dcode;





