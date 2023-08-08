{{ config(

    materialized = 'incremental',

    unique_key = 'user_id'

) }}

with events as (

    select * from {{ source('public', 'jaffle_shop_orders') }}

    {% if is_incremental() %}

    where order_date >= (select dateadd('day',-1,max(order_date)) from {{ this }})

    {% endif %}

)

select * from events