DROP TABLE fruit_table;
CREATE TABLE fruit_table (
  id      NUMBER(10) NOT NULL
, apple NUMBER(1)
, orange NUMBER(1)
, banana NUMBER(1)
, melon NUMBER(1)
, mango NUMBER(1)
, papaya NUMBER(1)
, pineapple NUMBER(1)
);
ALTER TABLE fruit_table ADD CONSTRAINT fruit_table_pk PRIMARY KEY (id) ;

DROP SEQUENCE fruit_seq;
CREATE SEQUENCE fruit_seq;

TRUNCATE TABLE fruit_table;
DECLARE
  apple NUMBER(1);
  orange NUMBER(1);
  banana NUMBER(1);
  melon NUMBER(1);
  mango NUMBER(1);
  papaya NUMBER(1);
  pineapple NUMBER(1);
BEGIN
  FOR i IN 1..10000 LOOP
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(2, 12))) INTO apple FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(2, 12))) INTO orange FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(4, 14))) INTO banana FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO melon FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO mango FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO papaya FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO pineapple FROM DUAL;
    INSERT INTO fruit_table VALUES (
      fruit_seq.nextval
    , NULLIF(apple, 0)
    , NULLIF(orange, 0)
    , NULLIF(banana, 0)
    , NULLIF(melon, 0)
    , NULLIF(mango, 0)
    , NULLIF(papaya, 0)
    , NULLIF(pineapple, 0)
    );
  END LOOP;
END;
/

DECLARE
  apple NUMBER(1);
  orange NUMBER(1);
  banana NUMBER(1);
  melon NUMBER(1);
  mango NUMBER(1);
  papaya NUMBER(1);
  pineapple NUMBER(1);
BEGIN
  FOR i IN 1..50 LOOP
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(2, 12))) INTO apple FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(2, 12))) INTO orange FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(4, 14))) INTO banana FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO melon FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO mango FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO papaya FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO pineapple FROM DUAL;
    INSERT INTO fruit_table VALUES (
      fruit_seq.nextval
    , NULLIF(apple, 0)
    , NULLIF(orange, 0)
    , NULLIF(banana, 0)
    , NULLIF(melon, 0)
    , 1
    , 1
    , 1
    );
  END LOOP;
END;
/

DECLARE
  apple NUMBER(1);
  orange NUMBER(1);
  banana NUMBER(1);
  melon NUMBER(1);
  mango NUMBER(1);
  papaya NUMBER(1);
  pineapple NUMBER(1);
BEGIN
  FOR i IN 1..300 LOOP
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(2, 12))) INTO apple FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(2, 12))) INTO orange FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(4, 14))) INTO banana FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO melon FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO mango FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO papaya FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO pineapple FROM DUAL;
    INSERT INTO fruit_table VALUES (
      fruit_seq.nextval
    , 1
    , NULLIF(orange, 0)
    , NULLIF(banana, 0)
    , NULLIF(melon, 0)
    , NULLIF(mango, 0)
    , NULLIF(papaya, 0)
    , 1
    );
  END LOOP;
END;
/

COMMIT;

      SELECT 'apple' AS fruit, COUNT(*)/10000 FROM fruit_table WHERE apple = 1
UNION SELECT 'orange' AS fruit, COUNT(*)/10000 FROM fruit_table WHERE orange = 1
UNION SELECT 'banana' AS fruit, COUNT(*)/10000 FROM fruit_table WHERE banana = 1
UNION SELECT 'melon' AS fruit, COUNT(*)/10000 FROM fruit_table WHERE melon = 1
UNION SELECT 'mango' AS fruit, COUNT(*)/10000 FROM fruit_table WHERE mango = 1
UNION SELECT 'papaya' AS fruit, COUNT(*)/10000 FROM fruit_table WHERE papaya = 1
UNION SELECT 'pineapple' AS fruit, COUNT(*)/10000 FROM fruit_table WHERE pineapple = 1
;

