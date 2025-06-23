/*
참조 테이블 : panmae, product, gift
출력 데이터 : 상품명, 상품가, 구매수량, 총금액,
적립포인트, 새해2배적립포인트, 사은품명, 포인트 범위

- panmae 테이블을 기준으로 포인트를 보여준다.
- 포인트는 구매한 금액 1원당 100의 포인트를 부여한다.
(단, 01월 01인 경우는 새해 이벤트로 인해 1원당 200의 포인트를 부여한다.)
- 적립포인트와 새해2배적립포인트를 모두 보여준다.
(이 경우, 이벤트 날인 01월 01일을 제외하고는 포인트가 동일 할 것이다.)
- 새해2배적립포인트를 기준으로 해당 포인트 기준으로 받을수 있는 사은품을 보여준다.
- 사은품 명 옆에 해당 사은품을 받을 수 있는 포인트의 범위를 함께 보여준다.

* 출력 양식과 컬럼 헤더에 표기되는 이름 확인!
*/


select * from panmae;
select * from product;

select * from gift;

1:100
2400 구매금액 -> 240000
1월 1일? 1:200






select
    --substr(p_date, 1, 4) || '-' ||substro(p_date,5,2) || '-' || substr(p_date,7,2)
    to_char( to_date(pm.p_date) ,'yyyy-mm-dd') 판매일자,
    pm.p_code 상품코드,
    pd.p_name 상품명,
    to_char(pd.p_price, '99,999') 상품가,
    pm.p_qty 구매수량,
    to_char(pm.p_total, '99,999') 총금액,
    to_char (pm.p_total, '999,999') 적립포인트,
    --to_char(pm.p_total*200, '999,999') 새해2배적립포인트
    --to_char(to_Date(pm.p_date), 'mmdd')
    decode (substr(pm.p_date, 5, 4), '0101', pm.p_total*200, pm.p_total * 100)새해2배적립포인트
    gf.gname 사은품명
    to_char(gf.g._start, '999,999')포인트 start,
    to_char(gf.g._end, '999,999')포인트 end
    /*
   case substr(pm.p_date, 5,4)
        when '0101' then pm.p_total*200
        else pm.p_total * 100
    end 새해2배적립포인트
    
    case
    when substr(pm.p_date, 5, 4) = '0101' then pm.p_total*200
    else pm.p_total * 100
    */
    from panmae pm, product pd
    where pm.p_code = pd.p_code
    and decode (substr(pm.p_date, 5,4),'0101', pm.p_total*200, pm.p_total*100) between  gf.g_start and gf.g_end
    order by pm.p_date;
    
    --gifr 테이블과 조인
    -- g_start <= 2배적립 포인트가 <= g_end