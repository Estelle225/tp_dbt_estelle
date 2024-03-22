

select
    sale_date,
    count(*) as total_sales
from "postgres"."public"."stg_sales"
group by sale_date