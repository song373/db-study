/*********************************************/
join

select * from emp;

select * from dept;

--join 기준 deptno 가 같은!!

--select empno, ename, dname, loc, d.deptno
select e.empno, e.ename, d.dname, d.loc, d.deptno
from emp e, dept d
where e.deptno = d.deptno;

select *
from emp e inner join dept d
on e.deptno = d.deptno;


select *
from emp e, dept d; --join 조건 누락 -> 카티션 곱
--where e.deptno = d.deptno;


select * from student;
select * from professor;
--student <- join(profno) -> professor 



--select *
select
    s.name, p.name, s.studno, p.profno, p.email
from student s, professor p
where s.profno = p.profno;


select
    s.name, p.name, s.studno, p.profno, p.email
from student s inner join professor p
on s.profno = p.profno;


inner join, outer join

select count(*) from student;
select * from student;

select *
from student s, professor p
--where s.profno = p.profno(+);
--where p.profno = s.profno(+);
where p.profno(+) = s.profno;

select *
from student s left outer join professor p
--from student s right outer join professor p
--from professor p left outer join student s
--from professor p right outer join student s
on s.profno = p.profno;

--professor

select count(*) from professor; --16명

select
    s.name, p.name, s.studno, p.profno, p.email
from professor p, student s
where p.profno = s.profno;

select
    s.name, p.name, s.studno, p.profno, p.email
from professor p, student s
where p.profno = s.profno(+);

select s.name 학생이름, s.profno 교수번호 , p.name 교수이름
from student s, professor p
where s.profno = p.profno;



select * from department;

select s.name stu_name, d.dname dept_name, p.name prof_name
from student s, professor p, department d
where s.profno = p.profno
and s.deptno1 = d.deptno;

select s.name stu_name, d.dname dept_name, p.name prof_name
from
    student s
    inner join professor p
    on s.profno = p.profno
    inner join department d
    on s.deptno1 = d.deptno;
    
    
    select s.name, p.profno, p.name
    from student s, professor p
    where s.deptno1 = 101
    and s.profno = p.profno;
    
    
--1) 학생명, 학생학과번호, 학생의 학과명, 교수명, 교수학과번호
select s.name, s.deptno1, d.dname, p.name, p.deptno
--select *
from student s, professor p,  department d
where s.profno = p.profno
and d.deptno = s.deptno1;

--2) 학생명, 학생학과번호 교수의 학과명, 교수명, 교수학과번호
select s.name, s.deptno1, d.dname, p.name, p.deptno
--select *
from student s, professor p,  department d
where s.profno = p.profno
and d.deptno = p.deptno
--and s.deptno1 <> p.deptno;

--3) 학생명, 학생학과번호, 학생의 학과명 ,교수명, 교수학과번호, 교수의 학과명

select s.name, s.deptno, ds.dname, p.name, p.deptno, dp.dname
from student s, professor p, department dp, department ds
where s.profno = p.profno
and dp.deptno = p.deptno  --학과 <-> 교수
and ds.deptno = s.deptno1 --학과<-> 학생
;



/*************************************************************************/
비등가 join

select * from customer;
select * from gift;

select *
from customer c, gift g
where c.point between g.g_start AND g.g_end;

select * from hakjum;

self join

select * from emp;


select *
from emp e1, emp e2
where e1.mgr = e2.empno;

select a.empno 내사번, a.name 내이름, a.pempno 상사사번, b.name 상사이름 
from emp2 a, emp2 b
where a.pempno = b.empno;








