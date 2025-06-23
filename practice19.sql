1.
emp2 테이블 활용
직원 중 'Section head' 직급 최소 연봉자 보다
연봉이 높은 사람의 이름, 직급, 연봉을 출력하기.


select name, position, pay
from emp2
where pay  > (select min(pay)
              from emp2
              where position = 'Section head')
order by pay desc;


2.
Student 테이블.
전체 학생중에서 체중이 2학년 학생들의 체중에서 가장 적게 나가는 학생보다
몸무게가 더 적은 학생의 이름, 학년, 몸무게 출력

select name, grade, weight
from student
where weight <(select min(weight)
               from student             
               where grade = 2);


3.
emp2, dept2 활용
각 부서별 평균연봉을 구하고,
그 중에서 가장 작은 평균 연봉보다도
더 적게 받는 직원들의
부서명, 직원명, 연봉 출력



SELECT
    D.dname ,
    E.name ,
    TO_CHAR(E.pay, '999999999') pay
FROM 
    EMP2 E, DEPT2 D
WHERE
    E.DEPTNO = D.DCODE
    AND E.PAY < ALL (
    
        SELECT AVG(PAY)
        FROM EMP2 E, DEPT2 D
        GROUP BY deptno
    
)
ORDER BY PAY;

SELECT
    D.dname ,
    E.name ,
    e.pay
    from emp2 e, dept2 d
    where e.pay <(select min(Avg_pay)
    from (select avg(pay) avg_pay
    from emp2 group by deptno) )
    and e.deptno = d.dcode;
