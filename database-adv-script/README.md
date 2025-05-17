# Advanced SQL Queries with Joins

## INNER JOIN
This query retrieves all bookings along with the corresponding user details. It uses `INNER JOIN` which ensures only bookings that are associated with existing users are included.

## LEFT JOIN
This query lists all properties and any reviews they might have. Even if a property has no reviews, it will still appear due to the `LEFT JOIN`.

## FULL OUTER JOIN
This query simulates a `FULL OUTER JOIN` using a `UNION` of a `LEFT JOIN` and `RIGHT JOIN`. It retrieves:
- All users (with or without bookings)
- All bookings (with or without users)

# Advanced SQL: Subqueries

This file is part of the ALX Airbnb Database Module project and contains solutions for the **Subqueries** task. It demonstrates the use of both **non-correlated** and **correlated** subqueries for advanced data filtering and analysis.

## File

- `subqueries.sql`: Contains two SQL queries solving the mandatory subquery challenges.

## Tasks

### 1. Properties with Average Rating > 4.0

**Objective**: Use a subquery to find all properties where the average rating is greater than 4.0.

**Approach**:
- A non-correlated subquery is used in the `WHERE` clause.
- The subquery calculates the average rating for each property in the `reviews` table.
- The main query filters `properties` where the `id` exists in the subquery results.

```sql
SELECT p.id, p.name, p.location
FROM properties p
WHERE p.id IN (
    SELECT r.property_id
    FROM reviews r
    GROUP BY r.property_id
    HAVING AVG(r.rating) > 4.0
);
