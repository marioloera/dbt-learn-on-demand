{{ config(
    materialized = 'incremental',
    unique_key = 'order_id'
) }}

with orders as (
    
    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from {{ source('jaffle_shop', 'orders') }}

    {# only in the incremental loads, we use this because ref will create cyclical deps#}
    {%- if is_incremental() %}
    where order_date > (
        select max(i.order_date)
        from {{ this }} as i
    )
    {% endif %}
)

select * from orders