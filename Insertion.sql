-- insert into customer_table

INSERT INTO customer_details(customer_id, email, password, name, address) values(111, 'meheru@gmail.com', 1234, 'Meheru','Khulna,Bangladesh');

INSERT INTO customer_details(customer_id, email, password, name, address) VALUES(112, 'john.doe@example.com', '5678', 'John Doe', '1234 Elm Street, Springfield');
INSERT INTO customer_details(customer_id, email, password, name, address) VALUES(113, 'jane.smith@domain.com', '91011', 'Jane Smith', '5678 Oak Street, Rivertown');
INSERT INTO customer_details(customer_id, email, password, name, address) VALUES(114, 'alice.jones@web.com', '121314', 'Alice Jones', '91011 Pine Lane, Lakeside');
INSERT INTO customer_details(customer_id, email, password, name, address) VALUES(115, 'bob.brown@service.net', '151617', 'Bob Brown', '121314 Birch Road, Mountainview');

-- Adding in supplier_details

INSERT INTO supplier_details(supplier_id, name, phone, type) VALUES(2, 'Supplier Inc', '100000102', 'Active');

INSERT INTO supplier_details(supplier_id, name, phone, type) VALUES(3, 'Global Goods', '100000103', 'Active');

INSERT INTO supplier_details(supplier_id, name, phone, type) VALUES(4, 'Tech Solutions', '100000104', 'Active');

INSERT INTO supplier_details(supplier_id, name, phone, type) VALUES(5, 'Organic Farms', '100000105', 'Active');

INSERT INTO supplier_details(supplier_id, name, phone, type) VALUES(6, 'Quick Supplies', '100000106', 'Inactive');


-- adding in product_details

INSERT INTO product_details(product_id, product_name, price, quantity, exp_date, description) VALUES
(21, 'Windows Laptop', 500, 1, TO_DATE('01-01-2024', 'DD-MM-YY'), 'High performance laptop with latest Windows OS');

INSERT INTO product_details(product_id, product_name, price, quantity, exp_date, description) VALUES
(22, 'Android Smartphone', 300, 10, TO_DATE('01-06-2024', 'DD-MM-YY'), 'Latest model with advanced camera');

INSERT INTO product_details(product_id, product_name, price, quantity, exp_date, description) VALUES
(23, 'Bluetooth Headphones', 150, 15, TO_DATE('15-03-2024', 'DD-MM-YY'), 'Noise cancelling with long battery life');

INSERT INTO product_details(product_id, product_name, price, quantity, exp_date, description) VALUES
(24, 'Smartwatch', 200, 5, TO_DATE('20-07-2024', 'DD-MM-YY'), 'Waterproof with health tracking features');

INSERT INTO product_details(product_id, product_name, price, quantity, exp_date, description) VALUES
(25, 'Ergonomic Keyboard', 70, 20, TO_DATE('10-01-2024', 'DD-MM-YY'), 'Comfortable typing with backlit keys');

INSERT INTO product_details(product_id, product_name, price, quantity, exp_date, description) VALUES
(26, 'External Hard Drive', 100, 30, TO_DATE('01-05-2024', 'DD-MM-YY'), '1TB capacity with fast transfer speeds');

INSERT INTO product_details(product_id, product_name, price, quantity, exp_date, description) VALUES
(27, 'Gaming Monitor', 250, 8, TO_DATE('15-11-2024', 'DD-MM-YY'), '4K resolution with high refresh rates');


--inserting into order_details

INSERT INTO order_details(order_id, customer_id, product_id, supplier_id, price, quantity) VALUES(11, 111, 21, 2, 1000, 2);
INSERT INTO order_details(order_id, customer_id, product_id, supplier_id, price, quantity) VALUES(12, 112, 22, 3, 800, 1);
INSERT INTO order_details(order_id, customer_id, product_id, supplier_id, price, quantity) VALUES(13, 113, 23, 4, 600, 3);
INSERT INTO order_details(order_id, customer_id, product_id, supplier_id, price, quantity) VALUES(14, 114, 24, 5, 900, 4);
INSERT INTO order_details(order_id, customer_id, product_id, supplier_id, price, quantity) VALUES(15, 115, 25, 6, 450, 2); 

--insert in payment_details

INSERT INTO payment_details(transaction_id, customer_id, supplier_id, price, startdate, enddate) VALUES
(32, 111, 2, 1200.00, TO_DATE('2024-07-01', 'YYYY-MM-DD'), TO_DATE('2024-07-15', 'YYYY-MM-DD'));
INSERT INTO payment_details(transaction_id, customer_id, supplier_id, price, startdate, enddate) VALUES
(33, 112, 3, 1100.00, TO_DATE('2024-08-01', 'YYYY-MM-DD'), TO_DATE('2024-08-31', 'YYYY-MM-DD'));
INSERT INTO payment_details(transaction_id, customer_id, supplier_id, price, startdate, enddate) VALUES
(34, 115, 4, 1600.00, TO_DATE('2024-09-01', 'YYYY-MM-DD'), TO_DATE('2024-09-30', 'YYYY-MM-DD'));
INSERT INTO payment_details(transaction_id, customer_id, supplier_id, price, startdate, enddate) VALUES
(35, 113, 5, 950.00, TO_DATE('2024-10-01', 'YYYY-MM-DD'), TO_DATE('2024-10-31', 'YYYY-MM-DD'));
INSERT INTO payment_details(transaction_id, customer_id, supplier_id, price, startdate, enddate) VALUES
(36, 115, 6, 1350.00, TO_DATE('2024-11-01', 'YYYY-MM-DD'), TO_DATE('2024-11-30', 'YYYY-MM-DD'));

--insert into delivery_details

INSERT INTO delivery_details(id, customer_id, supplier_id, status, startdate, enddate) VALUES
(42, 112, 2, 'processing', TO_DATE('2024-12-05', 'YYYY-MM-DD'), TO_DATE('2025-01-05', 'YYYY-MM-DD'));
INSERT INTO delivery_details(id, customer_id, supplier_id, status, startdate, enddate) VALUES
(43, 113, 3, 'delivered', TO_DATE('2024-11-15', 'YYYY-MM-DD'), TO_DATE('2024-11-30', 'YYYY-MM-DD'));
INSERT INTO delivery_details(id, customer_id, supplier_id, status, startdate, enddate) VALUES
(44, 114, 4, 'processing', TO_DATE('2024-12-10', 'YYYY-MM-DD'), TO_DATE('2025-01-10', 'YYYY-MM-DD'));
INSERT INTO delivery_details(id, customer_id, supplier_id, status, startdate, enddate) VALUES
(45, 115, 5, 'delivered', TO_DATE('2024-10-01', 'YYYY-MM-DD'), TO_DATE('2024-10-15', 'YYYY-MM-DD'));
INSERT INTO delivery_details(id, customer_id, supplier_id, status, startdate, enddate) VALUES
(46, 111, 6, 'processing', TO_DATE('2024-11-01', 'YYYY-MM-DD'), TO_DATE('2024-12-01', 'YYYY-MM-DD'));

