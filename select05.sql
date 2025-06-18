/**************************************/
복수행 함수

count(대상) 갯수세기

select count(*)
from emp;

--식별시 / 기본키(primary key)
select
    count(empno),
    count(mgr),
    count(comm),
    null
from emp;

select count(*)
from emp
where comm is not null;

select count(*)
from student
where grade =4;

select count(empno), sum(sal)
from emp;

--10,20부서에 총 몇명? 총 급여 얼마씩?
select count(empno), sum(sal)
from emp
where deptno in (10,20);

select
    sum(height),
    avg(height),
    max(height),
    min(height),
    stddev(height),
    variance(height)
from student;


/***********************************************/
group by 그룹화

그룹화 결과에 대해 조건 -> having

select
from 
where
group by 컬럼대상 대상을 기준으로 그룹지어서 계산
         group by 에 명시한 컬럼은 select 조회엣 사용 가능
having
order by

--각 학년별 평균키
select '1학년' 학년, avg(height) 평균키
from student
where grade =1 
union all
select '2학년', avg(height)
from student
where grade =2 
union all
select '3학년', avg(height)
from student
where grade =3 
union all
select '4학년', avg(height)
from student
where grade =4 ;


select grade, avg (height)
from student
group by grade
order by grade desc;

select studno, avg(height)
from student
group by studno;


select grade, avg(height) avgh
from student
where grade in (1,2,3)
group by grade
order by avgh;
--order by 2;
--order by avg (height) desc;
--order by grade desc;


select deptno, avg(sal)
from emp
group by deptno
having avg(sal) >= 2000;


1)  급여가 1600 이상인 직원들 대상, 부서별 평균 급여
select deptno, avg(sal)
from emp
where sal >=1600;
group by deptno;

2) 부서별 평균 급여가 1600 이상인 경우, 부서별 평균 급여
select deptno, avg(sal)
from emp
--where avg (sal) >=1600;
group by deptno
having avg(sal) >= 1600;

--
학생 각 학년별 평균 몸무게
평균 몸무게 65키로 이상

select grade, avg(weight)
from student
group by grade
having avg(weight) >=65;

--
학생 4학년을 제외하고 각 학년별 평균 몸무게
평균 몸무게 65키로 이상

select grade, AVG(weight)
from student
where grade != 4
group by grade
having AVG(weight) >= 65;


select deptno, job, avg(sal),count(*)
from emp
group by deptno, job;




