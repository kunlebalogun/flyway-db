-- Insert 500 rows of sample data into the customer table
INSERT INTO customer.customer6 (first_name, last_name, email, phone_number, address)
SELECT
    'First' || i,
    'Last' || i,
    'email' || i || '@example.com',
    '555-1234-' || LPAD(i::TEXT, 4, '0'),
    'Address' || i
FROM generate_series(1, 500) AS i;
