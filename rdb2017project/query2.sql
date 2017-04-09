
/* List all products (product ID and name) for sold products that have never been
purchased by any customer. */
SELECT s.product_id, s.product_name
FROM hornbd.sold_product s
WHERE s.product_id not in (
    SELECT product_id
    FROM hornbd.sells);
