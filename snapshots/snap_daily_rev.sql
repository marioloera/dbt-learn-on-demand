{% snapshot orders_snapshot %}

{{
    config(
      target_database='mllkthdbt',
      target_schema='dbt_snapshots',
      unique_key='date',

      strategy='timestamp',
      updated_at='loaded_at',
    )
}}

select
    current_date as date,
    current_timestamp as loaded_at,
    sum(amount) as daily_rev
from {{ ref('fct_orders') }}

{% endsnapshot %}
