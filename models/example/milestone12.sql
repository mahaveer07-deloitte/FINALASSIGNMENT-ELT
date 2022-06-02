
{{ config(materialized='table') }}

SELECT
  CODE,
  MIN(NAV) as minimum,
  MAX(NAV) as maximum
FROM "FINALDB"."FINALSCHEMA"."NAVHISTORY"
GROUP BY CODE
