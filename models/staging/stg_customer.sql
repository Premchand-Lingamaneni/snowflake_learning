with source_customer as (

    select
        id,
        first_name,
        last_name,
        email,
        created_at
    from {{ source('raw', 'customer') }}

)

select *
from source_customer
