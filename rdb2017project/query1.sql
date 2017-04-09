
/* List all sold products (product ID, product name, and standard price) where the standard
price is at least $100. */
SELECT s.product_id, s.product_name, s.standard_price
FROM hornbd.sold_product s
WHERE s.standard_price >= 100;
