

select
    product_id,
    product_name::varchar(255) as product_name,
    category::varchar(50) as category,
    price::numeric(10, 2) as price
from "postgres"."public"."raw_product_data"