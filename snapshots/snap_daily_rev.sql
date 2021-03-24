
select
    current_date,
    current_timestamp as time,
    sum(amount) as daily_rev
from {{ ref('fct_orders') }}

