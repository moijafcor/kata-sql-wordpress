/*
WooCommerce stores customer data in wp_users and wp_usermeta.
*/
Use `kata-woocommerce`;

/**
WooCommerce official demo data does not include Customers or Orders

@see https://github.com/woocommerce/woocommerce/blob/trunk/plugins/woocommerce/sample-data/sample_products.csv
*/
SELECT DISTINCT u.ID, u.user_login, u.user_email
FROM wp_users u
JOIN wp_wc_orders o ON u.ID = o.customer_id
WHERE o.status IN ('wc-completed', 'wc-processing');
