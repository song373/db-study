select 
empno,
ename,
to_char ( (sal * 12) + comm, '999,999') salary
from emp
where ename = 'allen';


select 
empno,
ename,
to_char(hiredate, 'yyyy-mm-dd')hiredate,
to_char((sal*12)+comm, '$999,999') sal,
'$' || to_char( (sal*123) +comm , 'fm99,999') sal,
to_char(((sal*12)+comm)*1.15, '$999,999') "15%인상"
from emp
where comm is not null;



