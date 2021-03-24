{% snapshot snap_dim_products %}

{{
    config(
      target_database='mllkthdbt',
      target_schema='dbt_snapshots',
      unique_key='product_id',

      strategy='check',
      check_cols=['name', 'price']
    )
}}

-- Snapshots implement type-2 Slowly Changing Dimensions 

select *
from {{ ref('dim_products') }}

{% endsnapshot %}
