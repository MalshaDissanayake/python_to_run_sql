-- Create the employees table
CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(100)
);

-- Insert data into the employees table
INSERT INTO employees (name, age, department) VALUES
('John Doe', 30, 'Marketing'),
('Jane Smith', 35, 'Sales'),
('Alice Johnson', 28, 'Finance');

-- Create a table for storing customer information
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    address VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(50),
    zip_code VARCHAR(20),
    country VARCHAR(100),
    date_of_birth DATE,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
 
 -- Insert data into the customers table
INSERT INTO customers (first_name, last_name, email, phone_number, address, city, state, zip_code, country, date_of_birth)
VALUES
('John', 'Doe', 'john.doe@example.com', '123-456-7890', '123 Main Street', 'Anytown', 'CA', '12345', 'USA', '1985-01-15'),
('Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '456 Elm Street', 'Sometown', 'NY', '54321', 'USA', '1990-03-25'),
('Alice', 'Johnson', 'alice.johnson@example.com', '555-123-4567', '789 Oak Avenue', 'Another City', 'TX', '67890', 'USA', '1988-07-10');

