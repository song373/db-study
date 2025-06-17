
select 
ename,
replace(ename, substr(ename, 3,2), '--') replace
--substr(ename,3 ,2)
from emp
where deptno = 20;

select
        name, 
        jumin,
        replace(jumin, substr(jumin, 7,7), '-/-/-/-') 주민뒷자리숨김,
        substr(jumin, 1, 6) || '-/-/-/-' ,
        concat( substr(jumin, 1, 6), '-/-/-/-')
from student
where deptno1 = 101;

select
name,
tel, 
replace(tel, substr(tel, 5, 3) ,'***') replace
from student
where deptno1 = 102;

select
name,
tel,
replace(tel, substr(tel, -4, 4) ,'****') replace
from student
where deptno1 = 101;
