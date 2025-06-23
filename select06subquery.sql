/***********************************************************************************/
서브쿼리

SELECT 스칼라 서브쿼리
FROM 인라인 뷰
WHERE 서브쿼리

select * from emp;

20번 부서 사람들만 조회

select * from emp
where deptno = 20;

사번이 7844인 사원과 같은 부서사람들 조회
select * from emp
--where deptno = 7844사람의 부서번호;
where deptno = (select * 
                from emp
                where empno = 7844);
                
select * from emp2;
select * from dept2;

포항 사무실에서 일하는 직원들의 목록 조회

--join 버전
select *
from emp2 e, dept2 d
where e.deptno = d.dcode
AND area = 'Pohang Main Office';

select *
from emp2
where deptno = (select dcode
                from dept2
                where area = 'Pohang Main Office')
                --in (0001, 1003, 1006, 1007)
                ;


select *
from student
where height < ( select height
                 from student
                 where studno = 9513)
order by height;

select *
from emp2
where deptno in (select dcode
                 from dept2
                 where area = 'Pohang Main Office'
                 and dcode =  deptno);









--
select *
from emp2

select *
from student
where height < (select height
                 from student
                 where studno = 9513)
order by height; 

select grade, max(weight)
from student
group by grade;
                 
select *
from student
where weight > (select Max(weight)
                    from student
                    WHERE grade = 2
                    );


select *
from student
where weight <Any (select Max(weight)
                    from student
                    group by grade
                    );
                    
--각 학년별로 몸무게가 제일 많이 나가는 학생의 정보를 조회

--다중행 비교 (in)
--다중컬럼 비교
select * 
from student
where (grade, weight) in(select grade,  max(weight)
                from student
                group by grade)
order by grade;

--전체 평균 급여보다 많이 받는 직원 목록 조회
select *
from emp2
where pay > ( select AVG(pay)
              from emp2);

--직급 직책
--자신과 같은 직급(position)의 평균 급여보다 많이 받는 직원 목록 조회
select *
from emp2 A
where pay > ( select AVG(pay)
              from emp2 B
              where B.position = A.position);
              
--자신과 같은 고용형태(EMP_TYPE_의 평균 급여보다 적게 받는 직원 목록 조회
select *
from emp2 A
where pay < (select avg(pay)
             from emp2 B
             where B.emp_type= A.emp_type);
             
             
/*****************************************************************/
select * from emp2;
select * from dept2;
--사원이름, 부서번호, 부서이름
--join
select e.name, e.deptno, d.dname
from emp2 e, dept2 d
where e.deptno = d.dcode;

--서브쿼리
select
        name,
       deptno,
  (select dname
    from dept2
    where dcode = deptno)
   --where dcode > deptno)
from emp2;

select dname
from dept2
where dcode = 1000;

select * from panmae;
select * from product;

select
    p_date,
    p_code,
    (select p_name
        from product pd
        where pd.p_code = pm.p_code )상품명
from panmae pm;

/*****************************************/

select *
from
    (select empno, ename, job
     from emp)
;


select 
    emp_number, emp_name
from (
 select 
    e.empno emp_number,
    e.ename emp_name,
    e.job,
    e.deptno,
    d.dname,
    d.loc
 from emp e , dept d
where e.deptno = d.deptno)
;


--자신과 같은 고용형태(emp type)의평균 급여보다 적게 받는 직원 목록 조회

--고용형태별 평균 급여
select emp_type, avg(pay) avg_pay
    from emp2
    group by emp_type;
     
select *
from emp2 a, (select emp_type, avg(pay) avg_pay
             from emp2 
             group by emp_type) b
where a.emp_type = b.emp_type
and a.pay < b.avg_pay ;

select
    rownum,
    ceil(rownum / 3),
    studno,
    name,
    grade,
    height
from student
order by height desc;
select 
    rownum,
    studno,
    height
from
(
select
    studno,
    name,
    grade,
    height
from student
order by height desc
);

emp 테이블, dept 테이블 조회. 부서번호와 부서별 최대급여, 부서명 조회

select * from emp;
select * from dept;

--group by 집계 > join


--join -> group by 집계
select
    deptno,max(sal), dname
from (
    select e.deptno, e.sal, d.dname
    from emp e, dept d
    where e.deptno = d.deptno)
    group by deptno, dname
    ;




