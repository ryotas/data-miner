DROP TABLE fruit;
CREATE TABLE fruit (
  tid NUMBER NOT NULL
, cid NUMBER NOT NULL
, apple NUMBER(1)
, orange NUMBER(1)
, banana NUMBER(1)
, melon NUMBER(1)
, mango NUMBER(1)
, papaya NUMBER(1)
, pineapple NUMBER(1)
);
ALTER TABLE fruit ADD CONSTRAINT fruit_pk PRIMARY KEY (id) ;

DROP SEQUENCE tid_seq;
CREATE SEQUENCE tid_seq;

TRUNCATE TABLE fruit;

DECLARE
  apple NUMBER(1);
  orange NUMBER(1);
  banana NUMBER(1);
  melon NUMBER(1);
  mango NUMBER(1);
  papaya NUMBER(1);
  pineapple NUMBER(1);
BEGIN
  FOR i IN 1..5000 LOOP
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO apple FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO orange FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(6, 16))) INTO banana FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO melon FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO mango FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO papaya FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO pineapple FROM DUAL;
    INSERT INTO fruit VALUES (
      tid_seq.nextval
    , TRUNC((tid_seq.nextval - 1) / 10) + 1
    , apple
    , orange
    , banana
    , melon
    , mango
    , papaya
    , pineapple
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
  FOR i IN 1..5000 LOOP
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(3, 13))) INTO apple FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(3, 13))) INTO orange FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(2, 12))) INTO banana FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO melon FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO mango FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO papaya FROM DUAL;
    SELECT FLOOR(0.1 * FLOOR(DBMS_RANDOM.VALUE(1, 11))) INTO pineapple FROM DUAL;
    INSERT INTO fruit VALUES (
      tid_seq.nextval
    , TRUNC((tid_seq.nextval - 1) / 10) + 1
    , apple
    , orange
    , banana
    , melon
    , mango
    , papaya
    , pineapple
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
    INSERT INTO fruit VALUES (
      tid_seq.nextval
    , TRUNC((tid_seq.nextval - 10001) / 1) + 1
    , apple
    , orange
    , banana
    , melon
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
    INSERT INTO fruit VALUES (
      tid_seq.nextval
    , TRUNC((tid_seq.nextval - 10001) / 1) + 1
    , 1
    , orange
    , banana
    , melon
    , mango
    , papaya
    , 1
    );
  END LOOP;
END;
/

COMMIT;

      SELECT 'apple' AS fruit, COUNT(*)/10000 FROM fruit WHERE apple = 1
UNION SELECT 'orange' AS fruit, COUNT(*)/10000 FROM fruit WHERE orange = 1
UNION SELECT 'banana' AS fruit, COUNT(*)/10000 FROM fruit WHERE banana = 1
UNION SELECT 'melon' AS fruit, COUNT(*)/10000 FROM fruit WHERE melon = 1
UNION SELECT 'mango' AS fruit, COUNT(*)/10000 FROM fruit WHERE mango = 1
UNION SELECT 'papaya' AS fruit, COUNT(*)/10000 FROM fruit WHERE papaya = 1
UNION SELECT 'pineapple' AS fruit, COUNT(*)/10000 FROM fruit WHERE pineapple = 1
;

