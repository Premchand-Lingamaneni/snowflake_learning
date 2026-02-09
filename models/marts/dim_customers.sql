select
    id as customer_id,
    email as customer_email
from {{ ref('stg_customer') }}
