1.
select * 
from student;

select 
name as "이름",
substr(jumin, 1,2)"년도",
substr(jumin, 3,2)"월",
substr(jumin, 5,2)"일"
--
--
from student;

--2.
--
--
select 
name,
tel,
instr(tel, ')') "괄호위치"
from student
where deptno1 = 201;

--3
--
--

select 
name,
tel,
instr(tel, '3') "3의위치"
from student
where deptno1 = 101;


select 
name,
tel,
substr(tel, 1,   instr(tel,')')-1  ) 지역번호
from student
where deptno1 = 201;







