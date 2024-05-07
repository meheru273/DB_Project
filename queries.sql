--description of each table
DESC product_details;
DESC customer_details;
DESC order_details;
DESC supplier_details;
DESC delivery_details;
DESC payment_details;



 -- data according each table
 select * from product_details;
 select * from customer_details;
 select * from order_details;
 select * from supplier_details;
 select * from delivery_details;
 select * from payment_details;


--add column to customer_details table 

alter table customer_details add customer_location char(20);

alter table customer_details modify customer_location varchar(23);



--selection from product_details table 

select * from product_details where product_id=(select product_id from order_details where customer_id=( select customer_id from customer_details where name='Jhon Doe'));

--update customer_details table  

update customer_details set password=44 where customer_id=3;

--delete from product_details table 
insert into product_details(product_id,product_name,price,quantity)values(10,'stove',58,125);
delete from  product_details where product_id=5;



--union operation to select products with different features
select product_name from product_details where product_name like 'W%' union select product_name
 from product_details where product_name like '%m%';

-- find max price with with clause 
WITH max_price AS (SELECT MAX(price) AS val FROM order_details)
SELECT * FROM order_details,max_price WHERE order_details.price = max_price.val;



--aggregate functions

--count total products 
select count(*) from product_details;

--Create alias name

select count(product_name) as number_of_product from product_details;

--find distinct product_name 
select count(distinct product_name) as number_of_product from product_details;


--avg total product 
select avg(price) from product_details;
select sum(quantity) from product_details;


--group by 
select transaction_id,avg(price) from payment_details group by transaction_id;

--having 
select quantity,avg(price) from order_details group by quantity having avg(price)>100;


--nested subquery to find customers who ordered a specific product

SELECT product_details.*FROM product_details WHERE product_name LIKE '%nd%'AND product_id IN (
SELECT order_details.product_id FROM order_details WHERE order_details.customer_id IN (
SELECT customer_id FROM customer_details WHERE name LIKE '%er%'));




--set membership to find a product with particular name

SELECT product_details.* FROM product_details WHERE product_name LIKE '%nd%' AND product_id IN 
(SELECT order_details.product_id FROM order_details WHERE order_details.customer_id IN (
SELECT customer_id FROM customer_details WHERE name LIKE '%er%'));





--some all exist unique operations to find supplier_id
select * from supplier_details where supplier_id> some(select supplier_id from supplier_details where supplier_id>=3);
select * from supplier where supplier_id > all(select supplier_id from supplier_details where supplier_id>=14);


--join operation to show all products from product_details and order_details

SELECT * FROM product_details JOIN order_details 
ON product_details.product_id = order_details.product_id WHERE product_details.product_id = 21;



--view 
create view products as select product_id,product_name from product_details;




