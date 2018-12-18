DROP DATABASE IF EXISTS bamazon_DB;
CREATE database bamazon_DB;

USE bamazon_DB;

CREATE TABLE products (
 id INT NULL AUTO_INCREMENT,
 item_id VARCHAR(100) NULL,
 product_name VARCHAR(100) NULL,
 department_name VARCHAR(100) NULL, 
 customer_price DECIMAL(10,4) NULL,
 stock_qty NUMERIC(10,4) NULL,
 PRIMARY KEY (id)
);

INSERT INTO products (item_id, product_name, department_name,
 customer_price, stock_qty)
VALUES ("baby", "babyseats","infants", 40.00, 50);
INSERT INTO products (item_id, product_name, department_name,
 customer_price, stock_qty)
VALUES ("pets", "bones","dogs", 5.00, 50);
INSERT INTO products (item_id, product_name, department_name,
 customer_price, stock_qty)
VALUES ("pets", "dogbowls","dogs", 2.00, 50);
INSERT INTO products (item_id, product_name, department_name,
 customer_price, stock_qty)
VALUES ("baby", "cribs","infant", 150.00, 50);
INSERT INTO products (item_id, product_name, department_name,
 customer_price, stock_qty)
VALUES ("pets", "beds","cats", 25.00, 50);
INSERT INTO products (item_id, product_name, department_name,
 customer_price, stock_qty)
VALUES ("baby", "blankets","infants", 15.00, 50);
INSERT INTO products (item_id, product_name, department_name,
 customer_price, stock_qty)
VALUES ("pets", "food","dogs", 15.00, 50);
INSERT INTO products (item_id, product_name, department_name,
 customer_price, stock_qty)
VALUES ("baby", "strollers","infants
", 115.00, 50);
INSERT INTO products (item_id, product_name, department_name,
 customer_price, stock_qty)
VALUES ("pets", "bones","dogs", 5.00, 50);
INSERT INTO products (item_id, product_name, department_name,
 customer_price, stock_qty)
VALUES ("pets", "bones","dogs", 5.00, 50);











