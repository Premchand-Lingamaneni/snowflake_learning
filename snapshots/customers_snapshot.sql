{% snapshot customers_snapshot %}

{{
    config(
        target_schema='snapshots',
        unique_key='id',
        strategy='check',
        check_cols=['email']
    )
}}

select
    id,
    email
from {{ ref('stg_customer') }}

{% endsnapshot %}
