1. professor 테이블과 department 테이블을 조회하여 각 학과별로 입사일이 가장 오래된 교수의
교수번호화 이름, 학과명을 출력하세요
(입사일 순으로 오름차순 정렬);

select
p.profno,
p.name,
d.dname
from professor p
join department d on p.deptno = d.deptno
where (d.dname, p.hiredate) in (
select d2.dname,
min(p2.hiredate)
from professor p2
join department d2 on p2.deptno = d2.deptno
group by d2.dname
)order by p.hiredate asc;

select p1.profno,
p1.name,
(select d.dname
from department d
where d.deptno = p1.deptno) dname
from professor p1
where p1.hiredate = (select min(p2.hiredate)
from professor p2
where p2.deptno = p1.deptno);

select min (hiredate)
from professor
where deptno = 101;

select profno, name, dname
from(
 select profno, name,
       deptno, hiredate,
       rank() over (partition by deptno order by hiredate) rank
from professor)a, department b
where rank = 1
and a.deptno = b.deptno;

2. emp2 테이블 
직급별로 해당 직급에서 최대 연봉을 받는 직원의 이름과 직급, 연봉을 출력하세요
(연봉순으로 오름차순 정렬)
;



select 
name,
position,
to_char(pay, '999999999')pay
from emp2
where 
position is not null
and pay in (
select max(pay)
from emp2
group by position
)
order by pay;

select * from student;
select * from department;








