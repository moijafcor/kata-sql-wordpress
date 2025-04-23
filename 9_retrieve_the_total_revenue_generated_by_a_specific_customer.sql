/*
WooCommerce stores customer data in wp_users and wp_usermeta.
*/
Use `kata-woocommerce`;

/**
WooCommerce official demo data does not include Customers or Orders.
Uses created manually.

@see https://github.com/woocommerce/woocommerce/blob/trunk/plugins/woocommerce/sample-data/sample_products.csv

@see https://woocommerce.com/document/installed-taxonomies-post-types/#wordpress-core-tables
*/
/**
Customer ID 2
*/
SELECT 
    SUM(total_amount) AS total_revenue
FROM wp_wc_orders
WHERE customer_id = 2
  AND status IN ('wc-completed', 'wc-processing');
  
/**
Customer Email: 
*/
SELECT 
    SUM(o.total_amount) AS total_revenue
FROM wp_wc_orders o
JOIN wp_wc_order_addresses oa 
    ON oa.order_id = o.id AND oa.address_type = 'billing'
WHERE oa.email = 'moijafcor+wctest_1@gmail.com'
  AND o.status IN ('wc-completed', 'wc-processing');
