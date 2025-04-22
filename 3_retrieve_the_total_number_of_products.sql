Use `kata-woocommerce`;

SELECT COUNT(*) AS total_products
FROM wp_posts
WHERE post_type = 'product'
  AND post_status = 'publish';
  
/**
SELECT COUNT(*) AS total_products
FROM wp_posts
WHERE post_type = 'product';
*/
