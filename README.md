# uc-database-design
University of Cincinnati - Database Design

```
/* Drop all tables

drop table hornbd.sold_product;
drop table hornbd.service_agreement;
drop table hornbd.sells;
drop table hornbd.can_repair;
drop table hornbd.skill;
drop table hornbd.customer;
drop table hornbd.technician;
drop table hornbd.product_category;
*/



/* CREATE TABLE -> TECHNICIAN ->->->->->->->->->->->->->->->->->->->-> */
CREATE TABLE hornbd.technician
,FALLBACK
,NO BEFORE JOURNAL
,NO AFTER JOURNAL
(
technician_name char(30) TITLE 'technician_name' NOT NULL,
unit char(30) TITLE 'unit' NOT NULL,
technician_id char(30) TITLE 'technician_id' NOT NULL,
PRIMARY KEY (technician_id)
);
INSERT INTO hornbd.technician (technician_name, unit, technician_id) VALUES ('Joe','Data Science','00000001');
INSERT INTO hornbd.technician (technician_name, unit, technician_id) VALUES ('Bill','Data Science','00000002');
INSERT INTO hornbd.technician (technician_name, unit, technician_id) VALUES ('Elis','Computer Science','00000003');
INSERT INTO hornbd.technician (technician_name, unit, technician_id) VALUES ('Ben','Data Science','00000004');
INSERT INTO hornbd.technician (technician_name, unit, technician_id) VALUES ('Austin','Computer Science','00000005');
INSERT INTO hornbd.technician (technician_name, unit, technician_id) VALUES ('DaQuan','Data Science','00000006');


/* CREATE TABLE -> product_category ->->->->->->->->->->->->->->->->->->->-> */
CREATE TABLE hornbd.product_category
,FALLBACK
,NO BEFORE JOURNAL
,NO AFTER JOURNAL
(
product_category_id char(30) TITLE 'product_category_id' NOT NULL,
model_name char(30) TITLE 'model_name' NOT NULL,
PRIMARY KEY (product_category_id)
);
INSERT INTO hornbd.product_category (model_name, product_category_id) VALUES ('model 1','001');
INSERT INTO hornbd.product_category (model_name, product_category_id) VALUES ('model 2','002');
INSERT INTO hornbd.product_category (model_name, product_category_id) VALUES ('model 3','003');
INSERT INTO hornbd.product_category (model_name, product_category_id) VALUES ('model 2','004');
INSERT INTO hornbd.product_category (model_name, product_category_id) VALUES ('model 1','007');
INSERT INTO hornbd.product_category (model_name, product_category_id) VALUES ('model 6','005');
INSERT INTO hornbd.product_category (model_name, product_category_id) VALUES ('model 2','006');


/* CREATE TABLE -> customer ->->->->->->->->->->->->->->->->->->->-> */
CREATE TABLE hornbd.customer
,FALLBACK
,NO BEFORE JOURNAL
,NO AFTER JOURNAL
(
customer_name char(30) TITLE 'customer_name' NOT NULL,
customer_id char(30) TITLE 'customer_id' NOT NULL,
PRIMARY KEY (customer_id)
);
INSERT INTO hornbd.customer (customer_name, customer_id) VALUES ('AJ','a');
INSERT INTO hornbd.customer (customer_name, customer_id) VALUES ('Ben','b');
INSERT INTO hornbd.customer (customer_name, customer_id) VALUES ('Han','c');
INSERT INTO hornbd.customer (customer_name, customer_id) VALUES ('Cheng','d');
INSERT INTO hornbd.customer (customer_name, customer_id) VALUES ('Davis','e');
INSERT INTO hornbd.customer (customer_name, customer_id) VALUES ('Talaga','f');
INSERT INTO hornbd.customer (customer_name, customer_id) VALUES ('Perdy','g');
INSERT INTO hornbd.customer (customer_name, customer_id) VALUES ('Nui','h');


/* CREATE TABLE -> skill ->->->->->->->->->->->->->->->->->->->-> */
CREATE TABLE hornbd.skill
,FALLBACK
,NO BEFORE JOURNAL
,NO AFTER JOURNAL
(
skill_name char(30) TITLE 'skill_name' NOT NULL,
technician_id char(30) TITLE 'technician_id' NOT NULL,
PRIMARY KEY (skill_name, technician_id),
FOREIGN KEY (technician_id) REFERENCES hornbd.technician(technician_id) /* FK -> hornbd.technician -> technician_id */
);
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('R','00000001');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('SQL','00000001');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('python','00000002');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('C++','00000001');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('java','00000003');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('SQL','00000004');


/* CREATE TABLE -> can_repair ->->->->->->->->->->->->->->->->->->->-> */
CREATE TABLE hornbd.can_repair
,FALLBACK
,NO BEFORE JOURNAL
,NO AFTER JOURNAL
(
certification char(30) TITLE 'certification' NOT NULL,
technician_id char(30) TITLE 'technician_id' NOT NULL,
product_category_id char(30) TITLE 'product_category_id' NOT NULL,
PRIMARY KEY (technician_id, product_category_id),
FOREIGN KEY (technician_id) REFERENCES hornbd.technician(technician_id), /* FK -> hornbd.technician -> technician_id */ 
FOREIGN KEY (product_category_id) REFERENCES hornbd.product_category(product_category_id) /* FK -> hornbd.product_category -> product_category_id */
);
INSERT INTO hornbd.can_repair (certification, technician_id, product_category_id) VALUES ('cert A','00000001','001');
INSERT INTO hornbd.can_repair (certification, technician_id, product_category_id) VALUES ('cert A','00000002','002');
INSERT INTO hornbd.can_repair (certification, technician_id, product_category_id) VALUES ('cert A','00000003','001');
INSERT INTO hornbd.can_repair (certification, technician_id, product_category_id) VALUES ('cert A','00000004','003');
INSERT INTO hornbd.can_repair (certification, technician_id, product_category_id) VALUES ('cert A','00000005','001');
INSERT INTO hornbd.can_repair (certification, technician_id, product_category_id) VALUES ('cert A','00000006','004');


/* CREATE TABLE -> sold_product ->->->->->->->->->->->->->->->->->->->-> */
CREATE TABLE hornbd.sold_product
,FALLBACK
,NO BEFORE JOURNAL
,NO AFTER JOURNAL
(
product_id char(30) TITLE 'product_id' NOT NULL,
standard_price int TITLE 'standard_price' NOT NULL,
product_name char(30) TITLE 'product_name' NOT NULL,
start_date char(30) TITLE 'start_date' NOT NULL,
length_date int TITLE 'length_date' NOT NULL,
repair_date char(30) TITLE 'repair_date' NOT NULL,
repair_amount int TITLE 'repair_amount' NOT NULL,
product_category_id char(30) TITLE 'product_category_id' NOT NULL,
technician_id char(30) TITLE 'technician_id' NOT NULL,
PRIMARY KEY (product_id),
FOREIGN KEY (product_category_id) REFERENCES hornbd.product_category(product_category_id),
FOREIGN KEY (technician_id) REFERENCES hornbd.technician(technician_id)
);

INSERT INTO hornbd.sold_product (product_id, standard_price, product_name, start_date, length_date, repair_date, repair_amount, product_category_id, technician_id) VALUES ('product a',300,'phone','01/17/17', 0, '09/17/17', 100, '001', '00000001');

INSERT INTO hornbd.sold_product (product_id, standard_price, product_name, start_date, length_date, repair_date, repair_amount, product_category_id, technician_id) VALUES ('product b',50,'car','01/30/17', 40, '09/17/17', 100, '001', '00000001');

INSERT INTO hornbd.sold_product (product_id, standard_price, product_name, start_date, length_date, repair_date, repair_amount, product_category_id, technician_id) VALUES ('product c',35,'pen','01/01/17', 0, '09/17/17', 100, '003', '00000001');

INSERT INTO hornbd.sold_product (product_id, standard_price, product_name, start_date, length_date, repair_date, repair_amount, product_category_id, technician_id) VALUES ('product d',400,'laptop ','01/05/17', 100, '09/17/17', 100, '001', '00000001');

INSERT INTO hornbd.sold_product (product_id, standard_price, product_name, start_date, length_date, repair_date, repair_amount, product_category_id, technician_id) VALUES ('product e',1200,'shoes','01/09/17', 120, '09/17/17', 100, '005', '00000001');


/* CREATE TABLE -> service_agreement ->->->->->->->->->->->->->->->->->->->-> */
CREATE TABLE hornbd.service_agreement
,FALLBACK
,NO BEFORE JOURNAL
,NO AFTER JOURNAL
(
agreement_type char(30) TITLE 'agreement_type' NOT NULL,
product_category_id char(30) TITLE 'product_category_id' NOT NULL,
agreement_condition char(30) TITLE 'agreement_condition' NOT NULL,
PRIMARY KEY (product_category_id, agreement_type),
FOREIGN KEY (product_category_id) REFERENCES hornbd.product_category(product_category_id)
);
INSERT INTO hornbd.service_agreement (agreement_type, product_category_id, agreement_condition) VALUES ('standard','001','cond f');
INSERT INTO hornbd.service_agreement (agreement_type, product_category_id, agreement_condition) VALUES ('premium','003','cond e');
INSERT INTO hornbd.service_agreement (agreement_type, product_category_id, agreement_condition) VALUES ('basic','005','cond d');
INSERT INTO hornbd.service_agreement (agreement_type, product_category_id, agreement_condition) VALUES ('standard','002','cond c');
INSERT INTO hornbd.service_agreement (agreement_type, product_category_id, agreement_condition) VALUES ('premium','004','cond a');
INSERT INTO hornbd.service_agreement (agreement_type, product_category_id, agreement_condition) VALUES ('basic','006','cond b');

/* CREATE TABLE -> sells ->->->->->->->->->->->->->->->->->->->-> */
CREATE TABLE hornbd.sells
,FALLBACK
,NO BEFORE JOURNAL
,NO AFTER JOURNAL
(
technician_id char(30) TITLE 'technician_id' NOT NULL,
product_id char(30) TITLE 'product_id' NOT NULL,
customer_id char(30) TITLE 'customer_id' NOT NULL,
sales_amount int TITLE 'sales_amount' NOT NULL,
PRIMARY KEY (customer_id, product_id, technician_id),
FOREIGN KEY (customer_id) REFERENCES hornbd.customer(customer_id),
FOREIGN KEY (product_id) REFERENCES hornbd.sold_product(product_id),
FOREIGN KEY (technician_id) REFERENCES hornbd.technician(technician_id)
);

INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000001','product a','a',1);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000001','product a','b',3);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000001','product a','c',5);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000001','product a','d',100);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000002','product a','b',120);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000003','product a','c',130);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000004','product a','b',987);
```

# Questions

```
/* List all sold products (product ID, product name, and standard price) where the standard
price is at least $100. */
SELECT s.product_id, s.product_name, s.standard_price
FROM hornbd.sold_product s
WHERE s.standard_price >= 100;

/* List all products (product ID and name) for sold products that have never been
purchased by any customer. */
SELECT s.product_id, s.product_name
FROM hornbd.sold_product s
WHERE s.product_id not in (
    SELECT product_id
    FROM hornbd.sells);

/* List name and ID for technicians in the Data Science unit who have SQL and R
programming as skills. */
SELECT t.technician_name, t.technician_id
FROM hornbd.technician t, hornbd.skill s
WHERE t.technician_id = s.technician_id AND s.skill_name = 'SQL' AND t.technician_id in(
    SELECT t.technician_id
    FROM hornbd.technician t, hornbd.skill s
    WHERE t.technician_id = s.technician_id AND s.skill_name = 'R');

/* List the technicians (identifier and name) who can repair a product that they have also
sold for a cost greater than $1000. */
SELECT t.technician_id, t.technician_name
FROM hornbd.technician t, hornbd.can_repair r, hornbd.sells s
WHERE t.technician_id = r.technician_id AND t.technician_id = s.technician_id AND s.sales_amount > 1000;


/* Give the sum of repair costs by product category and name where the product category
contains at least two products with a warranty length greater than 1. */
SELECT sum(s.repair_amount), s.product_category_id, s.product_name
FROM hornbd.sold_product s
WHERE s.length_date > 1
GROUP BY s.product_category_id, s.product_name
HAVING count(*)> 2;
```
