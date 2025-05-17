-- INNER JOIN: Bookings with Users
SELECT b.id AS booking_id, b.property_id, b.start_date, b.end_date,
       u.id AS user_id, u.name AS user_name, u.email
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

