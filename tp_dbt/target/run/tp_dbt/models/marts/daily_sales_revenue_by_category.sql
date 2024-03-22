
  
    

  create  table "postgres"."public"."daily_sales_revenue_by_category__dbt_tmp"
  
  
    as
  
  (
    

select
    s.sale_date,
    p.category,
    sum(s.quantity * p.price) as daily_revenue
from "postgres"."public"."stg_sales" s
join "postgres"."public"."stg_products" p on s.product_id = p.product_id
group by s.sale_date, p.category
  );
  