select avg (sal)

from emp;

select avg (sal)
from emp
where deptno = 30;


select  deptno, avg (sal)
from emp
group by deptno;

select
    deptno,
    count(*)인원수,
    --to_char(avg(sal), '9999.99')평균급여
    round(avg(sal), 2) 평균급여,
    trunc(avg(sal), 2) 평균급여
from emp
group by deptno
order by deptno;

select job, avg (sal)
from emp
group by job;


select job, max (sal)
from emp
group by job;

select deptno, max (sal)
from emp
group by deptno;

