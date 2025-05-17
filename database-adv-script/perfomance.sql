-- Initial complex query: Retrieve all bookings with user, property, and payment details
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    b.booking_date,
    b.status,
    u.id AS user_id,
    u.name AS user_name,
    u.email AS user_email,
    p.id AS property_id,
    p.name AS property_name,
    p.location,
    pay.id AS payment_id,
    pay.amount,
    pay.payment_date
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.id
JOIN 
    properties p ON b.property_id = p.id
LEFT JOIN 
    payments pay ON b.id = pay.booking_id
WHERE 
    b.status = 'confirmed'
    AND b.booking_date > '2024-01-01';

-- Optimized version of the query
-- Assumes indexing on b.user_id, b.property_id, pay.booking_id
-- and use of appropriate SELECT fields
EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    b.booking_date,
    b.status,
    u.name AS user_name,
    u.email AS user_email,
    p.name AS property_name,
    pay.amount,
    pay.payment_date
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.id
JOIN 
    properties p ON b.property_id = p.id
LEFT JOIN 
    payments pay ON b.id = pay.booking_id
WHERE 
    b.status = 'confirmed'
    AND b.booking_date > '2024-01-01';
