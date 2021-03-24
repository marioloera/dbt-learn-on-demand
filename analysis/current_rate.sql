with 

rates as (
    select *
    from {{ ref('snowflake_contract_rates') }}
),

rates_ordered as (
    select *,
        ROW_NUMBER() OVER (ORDER BY effective_date DESC) AS Rn
    from rates
),

final as (
    select *
    from rates_ordered
    where Rn = 1
)

select *
from final
