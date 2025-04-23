/**
Hoodie with Pocket ID 34
*/
Use `kata-woocommerce`;
SELECT p.ID, p.post_title, p.post_content, pm.meta_key, pm.meta_value
FROM wp_posts p
LEFT JOIN wp_postmeta pm ON p.ID = pm.post_id
WHERE p.ID = 26;
