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
JOIN wp_posts o ON u.ID = o.post_author
WHERE o.post_type = 'shop_order'
  AND o.post_status IN ('wc-completed', 'wc-processing');
