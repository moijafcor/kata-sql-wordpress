/*
WooCommerce stores customer data in wp_users and wp_usermeta.
*/
Use `kata-woocommerce`;

/**
WooCommerce official demo data does not include Customers or Orders, but
this can be generalized from the queries about product prices, etc.

@see https://github.com/woocommerce/woocommerce/blob/trunk/plugins/woocommerce/sample-data/sample_products.csv

@see https://woocommerce.com/document/installed-taxonomies-post-types/#wordpress-core-tables
*/
SELECT 
    u.ID AS user_id,
    u.user_login,
    u.user_email,
    SUM(o.total_amount) AS total_spent
FROM wp_wc_orders o
JOIN wp_users u ON u.ID = o.customer_id
WHERE o.status IN ('wc-completed', 'wc-processing')
GROUP BY u.ID
ORDER BY total_spent DESC
LIMIT 1;

