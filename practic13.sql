select 
empno  사번,
name  이름,
to_char (birthday, 'yy/mm/dd') as 생년월일,
hobby  취미,
pay  급여,
pay * 1.5  성과금,
'perm' || case
WHEN COUNT(*) OVER(PARTITION BY EMP_TYPE) > 1 THEN 'ent family'
             ELSE 'anent'
           END AS "직원 분류",
tel,
case
    WHEN PAY >= 60000000
    THEN '상'
    WHEN PAY >= 45000000 AND PAY < 60000000 THEN '중'
    WHEN PAY >= 35000001 AND PAY < 45000000 THEN '하'
    ELSE '화이팅'
  END  급여수준
from emp2 
where
to_char(birthday,'yy') between 70 and 79
and(
substr(tel,1,2) = '02' or
substr(tel,1,3) = '031' 
);

