/*
Cap ID 32

@see https://woocommerce.com/document/variable-product/
Regular Price (required) – Set the price for this variation. Variations without prices don’t show in your store.
Sale Price (optional) – Set a price for this variation when on sale.

_regular_price and _sale_price
*/

Use `kata-woocommerce`;

SELECT meta_key, meta_value
FROM wp_postmeta
WHERE post_id = 32
  AND meta_key IN ('_price', '_regular_price', '_sale_price');

/** Use `kata-woocommerce`; 
Let's mark up each price by 100
 */
 
UPDATE wp_postmeta
SET meta_value = '118'
WHERE post_id = 32 AND meta_key = '_price';

UPDATE wp_postmeta
SET meta_value = '116'
WHERE post_id = 32 AND meta_key = '_regular_price';

UPDATE wp_postmeta
SET meta_value = '116'
WHERE post_id = 32 AND meta_key = '_sale_price';

/** Verify */

SELECT meta_key, meta_value
FROM wp_postmeta
WHERE post_id = 32
  AND meta_key IN ('_price', '_regular_price', '_sale_price');
