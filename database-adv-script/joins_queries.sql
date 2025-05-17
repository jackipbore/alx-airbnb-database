-- INNER JOIN: Bookings with Users
SELECT b.id AS booking_id, b.property_id, b.start_date, b.end_date,
       u.id AS user_id, u.name AS user_name, u.email
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

-- LEFT JOIN: Properties and their reviews
SELECT p.id AS property_id, p.name AS property_name, p.location,
       r.id AS review_id, r.rating, r.comment
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;
