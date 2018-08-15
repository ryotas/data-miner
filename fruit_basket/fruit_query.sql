SELECT consequent, MAX(lift)
FROM suggestion
WHERE
    antecedent = UPPER(:v1)
AND consequent != UPPER(:v1)
GROUP BY consequent
ORDER BY MAX(lift) DESC
;

SELECT consequent, MAX(lift)
FROM suggestion
WHERE antecedent IN (
  UPPER(:v1)
, UPPER(:v2)
, UPPER(:v1 || ', ' || :v2)
, UPPER(:v2 || ', ' || :v1) 
)
AND consequent != UPPER(:v1)
AND consequent != UPPER(:v2)
GROUP BY consequent
ORDER BY MAX(lift) DESC
;
