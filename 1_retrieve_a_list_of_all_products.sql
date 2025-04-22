/*
WooCommerce stores products as a custom post type (product) 
and uses postmeta for metadata (like price).
*/
Use `kata-woocommerce`;
SELECT ID, post_title, post_date
FROM wp_posts
WHERE post_type = 'product'
  AND post_status = 'publish';
