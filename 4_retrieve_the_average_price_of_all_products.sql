Use `kata-woocommerce`;
SELECT AVG(CAST(pm.meta_value AS DECIMAL(10,2))) AS avg_price
FROM wp_postmeta pm
JOIN wp_posts p ON pm.post_id = p.ID
WHERE pm.meta_key = '_price'
  AND p.post_type = 'product'
  AND p.post_status = 'publish';

/** '29.335714' */
