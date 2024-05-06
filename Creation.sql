-- Customer Details Table
CREATE TABLE customer_details (
  customer_id INTEGER PRIMARY KEY, 
  email VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  name VARCHAR(100),     
  address VARCHAR(100)  
  );

-- Supplier Details Table
CREATE TABLE supplier_details (
    supplier_id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    phone VARCHAR(15),
    type VARCHAR(20) NOT NULL CHECK (type IN ('Active', 'Inactive'))
);

-- Product Details Table
CREATE TABLE product_details (
    product_id INTEGER PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(15, 2) NOT NULL,
    quantity INTEGER,
    exp_date DATE NOT NULL CHECK (exp_date > CURRENT_DATE),
    description VARCHAR(200)
);


-- Order Details Table
CREATE TABLE order_details (
  order_id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  product_id INTEGER,
  supplier_id INTEGER,
  price DECIMAL(15, 2) DEFAULT 0.00,
  quantity INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customer_details(customer_id) ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES product_details(product_id) ON DELETE CASCADE,
  FOREIGN KEY (supplier_id) REFERENCES supplier_details(supplier_id) ON DELETE SET NULL
);

-- Payment Details Table

CREATE TABLE payment_details (
    transaction_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    supplier_id INTEGER,
    price DECIMAL(15, 2) NOT NULL, 
    startdate DATE,
    enddate DATE,
    FOREIGN KEY (customer_id) REFERENCES customer_details(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (supplier_id) REFERENCES supplier_details(supplier_id)
);

-- Delivery Details Table

CREATE TABLE delivery_details (
    id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    supplier_id INTEGER,
    status VARCHAR(20) NOT NULL CHECK (status IN ('processing', 'delivered')),
    startdate DATE,
    enddate DATE,
    FOREIGN KEY (customer_id) REFERENCES customer_details(customer_id) ON DELETE CASCADE,
    FOREIGN KEY (supplier_id) REFERENCES supplier_details(supplier_id)
);
