select
    orders.*,
    order_item_sum.gross_item_sales_amount,
    order_item_sum.item_discount_amount
    from {{ref('stg_tpch_orders')}} as orders
    Join {{ref('int_order_items_summary')}} as order_item_sum
    ON orders.order_key = order_item_sum.order_key
    order by orders.order_date