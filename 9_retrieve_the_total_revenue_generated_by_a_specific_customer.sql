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
SELECT SUM(CAST(pm.meta_value AS DECIMAL(10,2))) AS total_revenue
FROM wp_posts o
JOIN wp_postmeta pm ON o.ID = pm.post_id
WHERE o.post_type = 'shop_order'
  AND o.post_status IN ('wc-completed', 'wc-processing')
  AND o.post_author = 5
  AND pm.meta_key = '_order_total';
