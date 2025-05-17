# Performance Monitoring and Refinement

## Objective
To monitor database performance using tools like `EXPLAIN ANALYZE`, identify bottlenecks in query execution, and apply schema/indexing improvements to optimize performance.

---

## 1. Tools Used
- **EXPLAIN ANALYZE**: To visualize and understand the query plan and timing.
- **SHOW PROFILE** (if using MySQL): Used for analyzing the time spent in each phase of query execution.

---

## 2. Sample Query (Before Optimization)

```sql
EXPLAIN ANALYZE
SELECT b.id, u.name, p.name, pay.amount
FROM Booking b
JOIN User u ON b.user_id = u.id
JOIN Property p ON b.property_id = p.id
JOIN Payment pay ON b.id = pay.booking_id
WHERE b.start_date BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY b.start_date;
