-- Sample Users
INSERT INTO users (id, name, email) VALUES
(1, 'Alice Johnson', 'alice@example.com'),
(2, 'Bob Smith', 'bob@example.com');

-- Sample Properties
INSERT INTO properties (id, owner_id, name, location, price_per_night) VALUES
(1, 1, 'Ocean View Apartment', 'Mombasa', 70),
(2, 2, 'City Studio', 'Nairobi', 40);

-- Sample Bookings
INSERT INTO bookings (id, user_id, property_id, start_date, end_date) VALUES
(1, 2, 1, '2025-06-10', '2025-06-15'),
(2, 1, 2, '2025-07-01', '2025-07-05');

-- Sample Payments
INSERT INTO payments (id, booking_id, amount, payment_date) VALUES
(1, 1, 350, '2025-06-10'),
(2, 2, 200, '2025-07-01');
