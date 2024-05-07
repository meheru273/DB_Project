--(pl/sql)


SET SERVEROUTPUT ON;
DECLARE
  name_e VARCHAR2(100); 
  pquantity NUMBER := 3;  
BEGIN
  SELECT product_name INTO name_e
  FROM product_details
  WHERE product_id IN (
    SELECT product_id
    FROM order_details
    WHERE quantity = pquantity
  );
  DBMS_OUTPUT.PUT_LINE(pquantity || ' no of products ' || name_e);
END;
/



--using cursor and loop in plsql

SET SERVEROUTPUT ON;
DECLARE
  CURSOR customer_cursor IS 
    SELECT customer_id, name, email FROM customer_details;
  record customer_cursor%ROWTYPE;
BEGIN
  OPEN customer_cursor;
  LOOP
    FETCH customer_cursor INTO record;
    EXIT WHEN customer_cursor%NOTFOUND OR customer_cursor%ROWCOUNT > 3;
    DBMS_OUTPUT.PUT_LINE('customer_id: ' || record.customer_id || ', name: ' || record.name || ', email: ' || record.email);
  END LOOP;
  CLOSE customer_cursor;
END;
/


--plsql procedure

SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE getproduct IS
  p_id product_details.product_id%TYPE := 21;
  p_price product_details.price%TYPE;
BEGIN
  SELECT price INTO p_price FROM product_details WHERE product_id = p_id;
  DBMS_OUTPUT.PUT_LINE('Product Price: ' || p_price);
END;
/

BEGIN
  getproduct;
END;
/

---plsql function

CREATE OR REPLACE FUNCTION avg_price RETURN NUMBER IS
  avg_prc product_details.price%TYPE;
BEGIN
  SELECT AVG(price) INTO avg_prc FROM product_details;
  RETURN avg_prc;
END;
/
SET SERVEROUTPUT ON;
DECLARE
  avg_prc NUMBER;
BEGIN
  avg_prc := avg_price();
  DBMS_OUTPUT.PUT_LINE('Average Price: ' || avg_prc);
END;
/


-- plsql eles if 
SET SERVEROUTPUT ON;
DECLARE
  old_price product_details.price%TYPE;
  new_price product_details.price%TYPE;
  id product_details.product_id%TYPE := 22;
BEGIN
  SELECT price INTO old_price FROM product_details WHERE product_id = id;
  IF old_price < 300 THEN
    new_price := old_price;
  ELSIF old_price BETWEEN 300 AND 500 THEN
    new_price := old_price + 100;
  ELSE
    new_price := old_price + 50;
  END IF;
  DBMS_OUTPUT.PUT_LINE(id || ' old price = ' || old_price || ', new price = ' || new_price);
END;
/

--trigger 

CREATE OR REPLACE TRIGGER update_delivery_status
BEFORE UPDATE OF startdate, enddate ON delivery_details
FOR EACH ROW
BEGIN
    IF :NEW.enddate IS NOT NULL AND :NEW.enddate <= SYSDATE THEN
        :NEW.status := 'delivered';
    ELSIF :NEW.startdate IS NOT NULL AND :NEW.startdate <= SYSDATE THEN
        :NEW.status := 'processing';
    END IF;
END;
/


INSERT INTO order_details(order_id, customer_id, product_id, supplier_id, price, quantity) VALUES(18, 118, 28, 8, 1000, null);


--transaction managemnt
DROP TABLE dummy ;
CREATE TABLE dummy (
id int,
Name Varchar (10)
);
INSERT INTO dummy VALUES (1, 'A');
INSERT INTO dummy VALUES (2, 'B');
INSERT INTO dummy VALUES (3, 'C');
INSERT INTO dummy VALUES (4, 'D');
INSERT INTO dummy VALUES (5, 'E');
COMMIT;
select * from dummy ;
delete from dummy ;
rollback ;
select * from dummy ;
INSERT INTO dummy VALUES (6, 'F');
savepoint cont_6 ;
INSERT INTO dummy VALUES (7, 'G');
savepoint cont_7;
rollback to cont_6;
select * from dummy ;


---date ---
select startdate from delivery_details ;
          select enddate from delivery_details ;
  select add_months (startdate,2) as two_months_extension
          from payment_details 
          where transaction_id=5;
  select add_months (startdate,-2) as two_months_extension
          from payment_details
          where transaction_id=5;




          -----------------------------------------------------------------------------------------------------------------------

set SERVEROUTPUT on;
begin
dbms_output.put_line('Project Name:  ');
dbms_output.put_line('------------');
dbms_output.put_line('Supply Chain Management Database ');
dbms_output.put_line('Created by:  ');
dbms_output.put_line('----------');
dbms_output.put_line('Meheru Zannat' );
dbms_output.put_line('Roll: ');
dbms_output.put_line('----');
dbms_output.put_line('2007039 ');
dbms_output.put_line('--------------------------------------------------');
end;
/