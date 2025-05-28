-- Create Table Customer 
CREATE TABLE customer (
   customer_id serial PRIMARY KEY,
   first_name character varying(100) NOT NULL,
   last_name character varying(100) NOT NULL,
   email character varying(255) UNIQUE NOT NULL,
   created_date timestamp with time zone NOT NULL DEFAULT now(),
   updated_date timestamp with time zone
);

-- Drop Table Customer 
DROP TABLE IF EXISTS customer;

-- Alter Table by adding new column 
ALTER TABLE customer ADD COLUMN active boolean;

-- to check if column added in table or not
select * from customer;

-- Drop column active
ALTER TABLE customer DROP COLUMN active;

-- to check if column removed from table or not
select * from customer;

-- Rename email to email_address
ALTER TABLE customer RENAME COLUMN email TO email_address;

-- Now rename email_address to email
ALTER TABLE customer RENAME COLUMN email_address TO email;

-- Rename table name 
ALTER TABLE customer RENAME TO users;

-- Reassign the old table name
ALTER TABLE users RENAME TO customer;

-- Create Orders table
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL REFERENCES customer(customer_id),
    order_date timestamp with time zone NOT NULL DEFAULT now(),
    order_number CHARACTER VARYING(50) NOT NULL,
    order_amount DECIMAL(10,2) NOT NULL
);

