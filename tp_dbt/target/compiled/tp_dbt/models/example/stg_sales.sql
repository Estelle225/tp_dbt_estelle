

select
    sale_id,
    product_id,
    quantity::integer as quantity,
    sale_date::date as sale_date
from "postgres"."public"."raw_sales_data"