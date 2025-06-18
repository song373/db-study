select 
profno,
name,
pay,
bonus,
to_char((pay*12+ nvl(bonus, 0)), '99,999') total
from professor
where deptno = 201;

select
empno,
ename,
comm,
nvl2(comm, 'exist', 'null')
from emp
where deptno = 30;

select *From emp;