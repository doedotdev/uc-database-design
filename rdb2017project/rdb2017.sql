/* CREATE TABLE -> technician ->->->->->->->->->->->->->->->->->->->-> */
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
/* Insert More */ 
INSERT INTO hornbd.technician (technician_name, unit, technician_id) VALUES ('Dan','Data Science','00000007');
INSERT INTO hornbd.technician (technician_name, unit, technician_id) VALUES ('Kobe','Data Science','00000008');
INSERT INTO hornbd.technician (technician_name, unit, technician_id) VALUES ('Shaq','Computer Science','00000009');
INSERT INTO hornbd.technician (technician_name, unit, technician_id) VALUES ('Kawei','Data Science','00000010');
INSERT INTO hornbd.technician (technician_name, unit, technician_id) VALUES ('Kiwi','Computer Science','00000011');
INSERT INTO hornbd.technician (technician_name, unit, technician_id) VALUES ('Jack','Data Science','00000012');


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
/* insert more values */
INSERT INTO hornbd.product_category (model_name, product_category_id) VALUES ('model 1','014');
INSERT INTO hornbd.product_category (model_name, product_category_id) VALUES ('model 2','008');
INSERT INTO hornbd.product_category (model_name, product_category_id) VALUES ('model 3','009');
INSERT INTO hornbd.product_category (model_name, product_category_id) VALUES ('model 2','010');
INSERT INTO hornbd.product_category (model_name, product_category_id) VALUES ('model 1','011');
INSERT INTO hornbd.product_category (model_name, product_category_id) VALUES ('model 6','012');
INSERT INTO hornbd.product_category (model_name, product_category_id) VALUES ('model 2','013');


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
/* insert more values */
INSERT INTO hornbd.customer (customer_name, customer_id) VALUES ('Montjoy','i');
INSERT INTO hornbd.customer (customer_name, customer_id) VALUES ('Paul','j');
INSERT INTO hornbd.customer (customer_name, customer_id) VALUES ('George','k');
INSERT INTO hornbd.customer (customer_name, customer_id) VALUES ('Nan','l');

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
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('C#','00000001');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('C++','00000001');

INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('python','00000002');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('java','00000003');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('R','00000003');

INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('SQL','00000004');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('R','00000004');

INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('C#','00000007');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('SQL','00000007');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('R','00000007');

INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('R','00000008');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('SQL','00000008');

INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('SQL','00000009');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('R','00000009');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('Javascript','00000009');

INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('R','00000010');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('SQL','00000010');

INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('SQL','00000011');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('R','00000011');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('Java','00000011');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('javascript','00000011');

INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('C','00000012');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('C++','00000012');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('SQL','00000012');
INSERT INTO hornbd.skill (skill_name, technician_id) VALUES ('R','00000012');

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

INSERT INTO hornbd.can_repair (certification, technician_id, product_category_id) VALUES ('cert B','00000007','001');
INSERT INTO hornbd.can_repair (certification, technician_id, product_category_id) VALUES ('cert B','00000008','002');
INSERT INTO hornbd.can_repair (certification, technician_id, product_category_id) VALUES ('cert B','00000009','001');
INSERT INTO hornbd.can_repair (certification, technician_id, product_category_id) VALUES ('cert B','00000010','003');
INSERT INTO hornbd.can_repair (certification, technician_id, product_category_id) VALUES ('cert B','00000011','001');
INSERT INTO hornbd.can_repair (certification, technician_id, product_category_id) VALUES ('cert B','00000012','004');


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

INSERT INTO hornbd.sold_product (product_id, standard_price, product_name, start_date, length_date, repair_date, repair_amount, product_category_id, technician_id) VALUES ('P01',300,'phone','01/17/17', 0, '09/17/17', 100, '001', '00000001');

INSERT INTO hornbd.sold_product (product_id, standard_price, product_name, start_date, length_date, repair_date, repair_amount, product_category_id, technician_id) VALUES ('P02',50,'car','01/30/17', 40, '09/17/17', 100, '001', '00000001');

INSERT INTO hornbd.sold_product (product_id, standard_price, product_name, start_date, length_date, repair_date, repair_amount, product_category_id, technician_id) VALUES ('P03',35,'pen','01/01/17', 0, '09/17/17', 100, '003', '00000001');

INSERT INTO hornbd.sold_product (product_id, standard_price, product_name, start_date, length_date, repair_date, repair_amount, product_category_id, technician_id) VALUES ('P04',400,'laptop ','01/05/17', 100, '09/17/17', 100, '001', '00000001');

INSERT INTO hornbd.sold_product (product_id, standard_price, product_name, start_date, length_date, repair_date, repair_amount, product_category_id, technician_id) VALUES ('P05',1200,'shoes','01/09/17', 120, '09/17/17', 100, '005', '00000001');

INSERT INTO hornbd.sold_product (product_id, standard_price, product_name, start_date, length_date, repair_date, repair_amount, product_category_id, technician_id) VALUES ('P06',101,'keys','01/10/17', 1000, '09/17/17', 100, '005', '00000001');

INSERT INTO hornbd.sold_product (product_id, standard_price, product_name, start_date, length_date, repair_date, repair_amount, product_category_id, technician_id) VALUES ('P07',10000000,'gold keys','01/10/17', 0, '09/17/17', 100, '005', '00000002');

INSERT INTO hornbd.sold_product (product_id, standard_price, product_name, start_date, length_date, repair_date, repair_amount, product_category_id, technician_id) VALUES ('P08',5,'knife','01/10/17', 1000, '09/17/17', 100, '005', '00000001');

INSERT INTO hornbd.sold_product (product_id, standard_price, product_name, start_date, length_date, repair_date, repair_amount, product_category_id, technician_id) VALUES ('P09',980,'gold knife','01/10/17', 0, '09/17/17', 100, '005', '00000002');

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

INSERT INTO hornbd.service_agreement (agreement_type, product_category_id, agreement_condition) VALUES ('standard','007','cond f');
INSERT INTO hornbd.service_agreement (agreement_type, product_category_id, agreement_condition) VALUES ('premium','008','cond e');
INSERT INTO hornbd.service_agreement (agreement_type, product_category_id, agreement_condition) VALUES ('basic','009','cond d');
INSERT INTO hornbd.service_agreement (agreement_type, product_category_id, agreement_condition) VALUES ('standard','010','cond c');
INSERT INTO hornbd.service_agreement (agreement_type, product_category_id, agreement_condition) VALUES ('premium','011','cond a');
INSERT INTO hornbd.service_agreement (agreement_type, product_category_id, agreement_condition) VALUES ('basic','012','cond b');

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

INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000001','P01','a',1);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000001','P01','b',3);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000001','P01','c',5);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000001','P01','d',1000);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000002','P01','b',1207);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000003','P01','c',1304);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000004','P01','b',9875);

INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000005','P01','d',1001);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000006','P01','b',1203);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000007','P01','c',1304);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000008','P01','b',9876);

INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000005','P02','d',100);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000006','P02','b',1209);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000007','P02','c',130);
INSERT INTO hornbd.sells (technician_id, product_id, customer_id, sales_amount) VALUES ('00000008','P02','b',98711);
