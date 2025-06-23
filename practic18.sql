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
