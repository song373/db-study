/******************************************************/
일반함수

nvl
값이 null 일때 기본값

select
    sal,
    comm,
    (sal*12)+comm,
    (sal*12)+nvl(comm, 0)
    from emp;
    
    select
    sal*12+comm
    from emp
    where comm is not null
    union all
    select
    sal*12
    from emp
    where comm is not null;
    
    select nvl(123,0), nvl(null,0) from dual;
    

nvl2

select 
    nvl(null,10),
    nvl2(123, '있다', '없다'),
    nvl2(null, '있다', '없다')
from dual;


decode

select
    decode(10,10, '같다', '다르다'),
    decode(10,20, '같다', '다르다'),
    decode(10,10, '같다'),
    decode(10,20, '같다'), --null
    decode(10,20, '같다',null),
    decode(10,20, '20이다',30,'30이다',40,'40이다','아니다'),
    decode(10,20, '20이다',30,'30이다',40,'40이다'),
    decode(10,20, '20이다',30,'30이다',40,'40이다','null'),
    decode(10,20, '20이다',30,'30이다',40,'40이다',50,'50이다',60,'60이다',null)
from dual;

select
    name,
    deptno,
    decode(deptno, 101, '컴공', 102, '전기',103, '기계',201, '물리', '그외분과'),
    '전공 학과:' || decode(deptno, 101, '컴공', 102, '전기',103, '기계',201, '물리', '그외분과') 전공
from professor;


case 문

select 
    grade ||'학년'
from student;

--1,2 저학년 3,4 고학년
select
    grade,
    decode(grade,1,'저학년',2,'저학년',3,'고학년', 4,'고학년','없음. 1~4여야하는데..')as 구분,
    case grade
        when 1 then '저학년'
        when 2 then '저학년'
        when 3 then '고학년'
        when 4 then '고학년'
        --else '그외'
    end as 고저구분,
    case 
        when grade in (1,2) then '저학년'
        when grade between 3 and 4 then '고학년'
    end as "범위로구분"
from student;


    