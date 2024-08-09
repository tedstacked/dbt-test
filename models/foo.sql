{% set V_BATCH_ID = 123 %}

WITH 

FINAL_SQL AS (
SELECT 
    MD5(OBJECT_CONSTRUCT ('COL1',123::STRING
                        , 'COL2',CURRENT_DATE::STRING
                        , 'COL3','MODELN'::STRING
                        )::STRING) AS FUNNEL_KEY, -- SINCE WE DON'T HAVE PROPER NK, WE ARE GOING WITH OID
    'alice' AS USER_NAME
  FROM DUAL
)

SELECT FUNNEL_KEY,
       USER_NAME
  FROM FINAL_SQL
