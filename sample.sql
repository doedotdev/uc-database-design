CREATE TABLE kdavis.likes
,FALLBACK
,NO BEFORE JOURNAL
,NO AFTER JOURNAL
(
customer char(20) TITLE 'customer' NOT NULL,
beverage char(30) TITLE 'beverage' NOT NULL
)
UNIQUE PRIMARY INDEX(customer, beverage);

INSERT INTO kdavis.likes (customer, beverage) VALUES ('Joe','Guinness');
INSERT INTO kdavis.likes (customer, beverage) VALUES ('Joe','Heineken');
INSERT INTO kdavis.likes (customer, beverage) VALUES ('Joe','Bud');
INSERT INTO kdavis.likes (customer, beverage) VALUES ('Mary','Guinness');
INSERT INTO kdavis.likes (customer, beverage) VALUES ('Mary','Heineken');
INSERT INTO kdavis.likes (customer, beverage) VALUES ('Sue','Bud');
INSERT INTO kdavis.likes (customer, beverage) VALUES ('Jane','Porter');
INSERT INTO kdavis.likes (customer, beverage) VALUES ('Jane','Cherry Icee');
INSERT INTO kdavis.likes (customer, beverage) VALUES ('Scott','Cherry Icee');
INSERT INTO kdavis.likes (customer, beverage) VALUES ('Scott','Lemonade');
INSERT INTO kdavis.likes (customer, beverage) VALUES ('TJ','Lemonade');
INSERT INTO kdavis.likes (customer, beverage) VALUES ('TJ','Porter');
INSERT INTO kdavis.likes (customer, beverage) VALUES ('Jane','Coca Cola');
INSERT INTO kdavis.likes (customer, beverage) VALUES ('Tom','Coca Cola');

CREATE TABLE kdavis.frequents
,FALLBACK
,NO BEFORE JOURNAL
,NO AFTER JOURNAL
(
customer char(20) TITLE 'customer' NOT NULL,
location char(50) TITLE 'location' NOT NULL
)
UNIQUE PRIMARY INDEX(customer, location);

INSERT INTO kdavis.frequents (customer, location) VALUES ('Joe','Rainbow Pub');
INSERT INTO kdavis.frequents (customer, location) VALUES ('Mary','Rainbow Pub');
INSERT INTO kdavis.frequents (customer, location) VALUES ('Sue','Rainbow Pub');
INSERT INTO kdavis.frequents (customer, location) VALUES ('Sue','Tavern at the End of the World');
INSERT INTO kdavis.frequents (customer, location) VALUES ('TJ','Groovy Tunes');

CREATE TABLE kdavis.serves
,FALLBACK
,NO BEFORE JOURNAL
,NO AFTER JOURNAL
(
cost int TITLE 'cost' NOT NULL,
beverage char(20) TITLE 'beverage' NOT NULL,
location char(50) TITLE 'location' NOT NULL
)
UNIQUE PRIMARY INDEX(beverage, location);

INSERT INTO kdavis.serves (cost, beverage, location) VALUES (5,'Guinness','Rainbow Pub');
INSERT INTO kdavis.serves (cost, beverage, location) VALUES (1,'Cherry Icee','Rainbow Pub');
INSERT INTO kdavis.serves (cost, beverage, location) VALUES(4,'Heineken','Rainbow Pub');
INSERT INTO kdavis.serves (cost, beverage, location) VALUES(1,'Lemonade','Tavern at the End of the World');
INSERT INTO kdavis.serves (cost, beverage, location) VALUES(4,'Strawberry Smoothie','Groovy Tunes');
INSERT INTO kdavis.serves (cost, beverage, location) VALUES(2,'Cherry Icee','Tavern at the End of the World');
INSERT INTO kdavis.serves (cost, beverage, location) VALUES(6,'Porter','Groovy Tunes');
INSERT INTO kdavis.serves (cost, beverage, location) VALUES(2,'Bud','Rainbow Pub');
INSERT INTO kdavis.serves (cost, beverage, location) VALUES(3,'Cherry Icee','Groovy Tunes');
INSERT INTO kdavis.serves (cost, beverage, location) VALUES(3,'Lemonade','Groovy Tunes');
INSERT INTO kdavis.serves (cost, beverage, location) VALUES(1,'Coca Cola','E Street Bistro');
INSERT INTO kdavis.serves (cost, beverage, location) VALUES(3,'Heineken','Groovy Tunes');


