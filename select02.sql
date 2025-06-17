
/***************************************/
단일행 함수

select * from dual;
dual : 더미 데이터가 들어있는 임시로 사용하는 테이블

select initcap('abc')from dual;

select ename, initcap (ename)
from emp;

select name, LOWER(name), upper(name)
from student;

select name, length(name)
from student;

select length('asdoijf'), lengthb('asdoijf'),
       length('한글'), lengthb('한글') --한글 한글자 3byte
from dual;

--이름이 알파벳 5자 이상 이상만 조회
select * 
from emp
where length(ename) >= 5;

select '아침' || '점심', concat('아침','점심')
from dual;

select '아침' || '점심' || '저녁', concat (concat('아침','점심'), '저녁')
from dual;

--substr(대상값/컬럼명, 시작지점(1~), 자릿수)
select
substr('abcdefg', 1, 3),
substr('abcdefg', 3, 5),
substr('abcdefg', -4, 2)
from dual;

--instr(대상값/컬럼명, 찾는값)
--instr(대상값/컬럼명, 찾는값, 시작위치)
--instr(대상값/컬럼명, 찾는값, 시작위치, 몇번째값)
select
instr('2025-06-01 10:25:48', '-'),
instr('2025-06-01 10:25:48', ':'),
instr('2025-06-01 10:25:48', '-', 7),
instr('2025-06-01 10:25:48', ':', 15),
instr('2025-06-01 10:25:48', '-', 1, 2)
from dual;

select 
    tel,
    instr(tel, ')')
from student; -- 010-1234-5678 055)381-2158


select
lpad('문자',10, '-'),
rpad('123', 6, '*'),
lpad(5, 2, 0),
lpad(15, 2, 0)
from dual;

--trim 공백제거
select
'*' || ltrim('abcd') || '*',
rtrim('abcd'),
trim('abcd'),
ltrim('*abcd*', '*')
from dual;

select
replace('abcde', 'c', '/')
from dual;

select
birthday,
replace(birthday, '/', '$')
from student;


/******************************/
--숫자


select
round(1.67), --반올림
round(1.67, 1),
round(1.64578,3),
round(1.64578,0),
round(357.123,-1),
trunc(1.456,2),
mod(15,4), --나머지
ceil(123.123),--인접 큰 정수
floor(123.123),--인접 작은 정수
power(6,3) -- 6*6*6제곱
from dual;

select 
rownum, --행번호
ceil(rownum/3) 그룹번호, --1/3 = 0.33 -> 1 2/3=0.66 -> 1 3/3 = 1
                        --4/3 = 1.33 -> 2 5/3 = 1.66 ->2 6/3 =2
ceil(rownum/4) 팀구호,
empno,
ename
from emp;
--where rownum <=5;


/********************************************************/
--날짜

select
null,
sysdate, --현재날짜
systimestamp, --현재날짜시간
months_between('2024-01-05','2024-03-05'), --앞날짜-뒷날짜 -> 월로 환산
months_between('2025-11-05','2025-06-21'),
from dual;

select
add_months(sysdate, 3),
add_months(sysdate, -8),
last_day(sysdate),
next_day(sysdate, '수'),
next_day(sysdate, '토')
from dual;

select
sysdate,
round(sysdate),
trunc(sysdate),
trunc(sysdate, 'dd'), --year month day
trunc(sysdate, 'mm'),
trunc(sysdate, 'yy'),
add_months(sysdate, 1),
sysdate + 3,
sysdate + 7,
--다음달의 첫날
trunc(add_months(sysdate,1), 'mm'),
last_day(sysdate)+1,
--전월의 마지막날
last_day(add_months(sysdate, -1)),
trunc(sysdate, 'mm')-1
from dual;




