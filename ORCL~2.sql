select * from student;
select * from department;

select
name stu_name,
deptno1,
dname dept_name
from student,department;

select * from emp2;
select * from p_grade;

select
e.ename,
e.POSITION,
e.SALARY,
g.low_sal,
g_high_sal
from emp2 e
join
p_grade g on e.position =g.position
where e.position is not null
order by
e.salary;

SELECT
  e.ENAME       AS "NAME",
  e.POSITION    AS "POSITION",
  e.SALARY      AS "PAY",
  g.LOW_SAL     AS "LOW PAY",
  g.HIGH_SAL    AS "HIGH PAY"
from
  emp2 e
JOIN
  p_grade g ON e.POSITION = g.POSITION
WHERE
  e.POSITION IS NOT NULL
ORDER BY
  e.SALARY;
  
select * from customer;
select * from gift;

select
gname,
point

from customer;


