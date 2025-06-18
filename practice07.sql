select 
studno,
name,
to_char(birthday, 'yyyy-mm-dd') birthday
from student
where to_char(birthday, 'mm') ='01';

select  
empno,
ename,
hiredate
from emp;

select
empno,
ename,
hiredate
from emp
where
to_char(hiredate, 'mm')in ('01','02','03')


