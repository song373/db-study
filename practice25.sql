CREATE TABLE T_MENU_12 (
    MENU_ID        NUMBER PRIMARY KEY,                    -- 메뉴 아이디
    MENU_NAME      VARCHAR2(128) NOT NULL,                -- 메뉴 이름
    PRICE          NUMBER(10),                            -- 가격
    CATEGORY       VARCHAR2(64),                          -- 종류
    DEVELOP_DATE   DATE                                   -- 메뉴개발일자
);
INSERT INTO T_MENU_12 VALUES (1, '싸이버거',       6000, '완전식품', SYSDATE);
INSERT INTO T_MENU_12 VALUES (2, '콩나물비빔밥',   7000, '탄수화물', SYSDATE);
INSERT INTO T_MENU_12 VALUES (3, '닭가슴살',       3000, '단백질',   SYSDATE);
INSERT INTO T_MENU_12 VALUES (4, '베트남쌀국수',   8000, '탄수화물', SYSDATE);
INSERT INTO T_MENU_12 VALUES (5, '라면',           2000, '밀가루',   SYSDATE);

UPDATE T_MENU_12
SET PRICE = 8500
WHERE MENU_NAME = '베트남쌀국수';

DELETE FROM T_MENU_12
WHERE MENU_NAME = '라면';

SELECT*FROM T_MENU_12
ORDER BY PRICE;

select * from t_menu_12


