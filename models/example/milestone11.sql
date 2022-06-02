
{{ config(materialized='table') }}

select
  n.CODE,
  month(n.NAV_DATE) as month,
  avg(n.NAV) as avg_nav,
  avg(n.REPURCHASE_PRICE) as avg_repurchase,
  avg(n.SALE_PRICE)as avg_sale
from "FINALDB"."FINALSCHEMA"."NAVHISTORY" n
group by n.CODE,month
