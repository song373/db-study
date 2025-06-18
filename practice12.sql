select * from student;

select
name,
jumin,
birthday,
to_char(birthday, 'mm'),
case
WHEN TO_NUMBER(SUBSTR(BIRTHDAY, 4, 2)) BETWEEN 1 AND 3 THEN '1분기'
WHEN TO_NUMBER(SUBSTR(BIRTHDAY, 4, 2)) BETWEEN 4 AND 6 THEN '2분기'
WHEN TO_NUMBER(SUBSTR(BIRTHDAY, 4, 2)) BETWEEN 7 AND 9 THEN '3분기'
WHEN TO_NUMBER(SUBSTR(BIRTHDAY, 4, 2)) BETWEEN 10 AND 12 THEN '4분기'
else '4분기'
end 분기
from student;

select
empno,
ename,
sal,
case
    when sal between 1 and 1000 then 'level 1'
    when sal between 1001 and 2000 then 'level 2'
    when sal >= 2001 and sal <= 3000 then 'level 3'
    when sal between 3001 and 4000 then 'level 4'
    --else 'level 5'
    when sal > 4000 then 'level 5'
    end 급여등급
from emp;