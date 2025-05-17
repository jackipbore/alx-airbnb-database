# Optimization Report

## Objective
To improve the performance of a complex query that joins bookings with user, property, and payment details.

## Initial Query
The initial query joined four tables: `bookings`, `users`, `properties`, and `payments`. It retrieved all fields using wide `SELECT` statements and had no use of indexing. This led to higher execution time and inefficient performance.

### Issues Identified via EXPLAIN
- Full table scans on `bookings`, `users`, and `payments`
- Redundant columns being selected
- Absence of indexes on foreign keys like `user_id`, `property_id`, `booking_id`

## Optimized Query Strategy
- Selected only necessary columns
- Ensured indexes were in place on:
  - `bookings.user_id`
  - `bookings.property_id`
  - `payments.booking_id`
- Reordered joins for better execution plan

## Result
After running the optimized query using `EXPLAIN ANALYZE`, the query plan showed:
- Reduced execution time
- Use of index scans instead of full table scans
- Improved overall query efficiency
