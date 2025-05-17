-- Step 1: Rename original table
ALTER TABLE Booking RENAME TO Booking_original;

-- Step 2: Create a new partitioned table
CREATE TABLE Booking (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    property_id INTEGER NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(50),
    payment_id INTEGER
) PARTITION BY RANGE (start_date);

-- Step 3: Create partitions by year
CREATE TABLE Booking_2022 PARTITION OF Booking
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE Booking_2023 PARTITION OF Booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF Booking
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Step 4: Reinsert data from the original table
INSERT INTO Booking (id, user_id, property_id, start_date, end_date, status, payment_id)
SELECT id, user_id, property_id, start_date, end_date, status, payment_id
FROM Booking_original;

-- Step 5: Test query performance
EXPLAIN ANALYZE
SELECT * FROM Booking
WHERE start_date BETWEEN '2023-06-01' AND '2023-06-30';
