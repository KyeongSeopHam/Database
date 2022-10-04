-- 보호소에서 중성화한 동물
SELECT B.ANIMAL_ID,B.ANIMAL_TYPE,B.NAME from ANIMAL_INS as A
LEFT JOIN ANIMAL_OUTS as B ON A.ANIMAL_ID =B.ANIMAL_ID
WHERE A.SEX_UPON_INTAKE LIKE 'INTACT%'
AND (B.SEX_UPON_OUTCOME LIKE 'Neutered%' 
      OR B.SEX_UPON_OUTCOME LIKE 'Spay%')
