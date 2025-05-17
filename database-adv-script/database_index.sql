-- Create indexes on frequently used columns for optimization

-- Index on user_id in bookings table for faster JOINs and filters
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on property_id in bookings table for JOINs with properties
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on booking_date for faster queries on date ranges
CREATE INDEX idx_bookings_booking_date ON bookings(booking_date);

-- Index on owner_id in properties table (if applicable)
CREATE INDEX idx_properties_owner_id ON properties(owner_id);

-- Index on email in users table for quick user lookups
CREATE INDEX idx_users_email ON users(email);

-- Example EXPLAIN to analyze performance before/after indexing
EXPLAIN ANALYZE 
SELECT * FROM bookings 
WHERE user_id = 123;
