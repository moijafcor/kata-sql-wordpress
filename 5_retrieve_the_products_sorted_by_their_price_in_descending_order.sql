Use `kata-woocommerce`;
SELECT p.ID, p.post_title, CAST(pm.meta_value AS DECIMAL(10,2)) AS price
FROM wp_posts p
JOIN wp_postmeta pm ON p.ID = pm.post_id
WHERE p.post_type = 'product'
  AND p.post_status = 'publish'
  AND pm.meta_key = '_price'
ORDER BY price DESC;
