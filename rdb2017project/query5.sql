/* Give the sum of repair costs by product category and name where the product category
contains at least two products with a warranty length greater than 1. */
SELECT sum(s.repair_amount), s.product_category_id, s.product_name
FROM hornbd.sold_product s
WHERE product_category_id in( SELECT product_category_id FROM hornbd.sold_product WHERE length_date > 1 GROUP BY product_category_id HAVING count(*) > 2)
GROUP BY s.product_category_id, s.product_name
ORDER BY s.product_category_id, s.product_name