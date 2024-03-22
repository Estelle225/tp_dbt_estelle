
  
    

  create  table "postgres"."public"."daily_sales_volume__dbt_tmp"
  
  
    as
  
  (
    

select
    sale_date,
    count(*) as total_sales
from "postgres"."public"."stg_sales"
group by sale_date
  );
  