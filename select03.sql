/**************************************************************/
타입 변환

select 2 + '2' from dual; --자동형변환(묵시적형변환)
select 2 || '2' from dual;
select 2+ to_number('2') from dual; --명시적 형변환

to_char
to_number
to_date

select
    to_char(12321),
    to_char(131.1232),
    sysdate,
    to_char(sysdate),
    to_char(sysdate, 'yyyy'),
    to_char(sysdate, 'mm'),
    to_char(sysdate, 'dd'),
    to_char(sysdate, 'yyyymmdd'),
    to_char(sysdate, 'yyyy/mm/dd'),
    to_char(sysdate, 'yyyy-mm-dd')
from dual;

-- jumin 문자 susbstr
-- birthday 날짜 to_char
select 
 to_char(sysdate, 'yy'),
 to_char(sysdate, 'mm'),
 to_char(sysdate, 'dd')
from student;

select
    sysdate,
    to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'),
    systimestamp,
    to_char(systimestamp, 'yyyy-mm-dd hh24:mi:ss')
    from dual;
    
select
    to_number('123')
from dual;
    
select
    to_char(1234, '999999'),
    to_char(1234, '0999999'),
    to_char(1234, '$999999'),
    '$' || 1234,
    to_char(1234, '9999.99'),
    to_char(1234123, '9,999,999')
from dual;

select
    to_date('2025-01-05') +3,
    to_date('2025/01/05') +3,
    to_date('25/01/05') +3,
    to_date('20250425') +3,
    last_day('2025-02-05'),
    last_day(to_date('2025-02-05') ),
    to_date('2025-06-15', 'yyyy-mm-dd'),
    to_date('25/06/15', 'yy-mm-dd'),
    to_date('2025-04-20', 'yyyy,mm,dd')
    from dual;
    
    
    
