/**
Hoodie with Pocket ID 34

@see https://woocommerce.com/document/installed-taxonomies-post-types/#wordpress-core-tables
*/

Use `kata-woocommerce`;

/** Does product exist? */
SELECT meta_key, meta_value
FROM wp_postmeta
WHERE post_id = 34
  AND meta_key IN ('_price', '_regular_price', '_sale_price');
  
DELETE FROM wp_postmeta WHERE post_id = 34;
DELETE FROM wp_term_relationships WHERE object_id = 34;
DELETE FROM wp_posts WHERE ID = 34;


/** Verify */

SELECT meta_key, meta_value
FROM wp_postmeta
WHERE post_id = 34
  AND meta_key IN ('_price', '_regular_price', '_sale_price');