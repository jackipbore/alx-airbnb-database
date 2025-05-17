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


# Aggregations and Window Functions

This file is part of the ALX Airbnb Database Module project and contains SQL queries focused on aggregations and window functions for data analysis.

## File

- `aggregations_and_window_functions.sql`: SQL file with queries for counting bookings and ranking properties using window functions.

## Tasks

### 1. Total Number of Bookings per User

**Objective**: Use the `COUNT` function with `GROUP BY` to determine how many bookings each user has made.

# Aggregations and Window Functions

This file is part of the ALX Airbnb Database Module project and contains SQL queries focused on aggregations and window functions for data analysis.

## File

- `aggregations_and_window_functions.sql`: SQL file with queries for counting bookings and ranking properties using window functions.

## Tasks

### 1. Total Number of Bookings per User

**Objective**: Use the `COUNT` function with `GROUP BY` to determine how many bookings each user has made.

```sql
SELECT u.id, u.name, COUNT(b.id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
GROUP BY u.id, u.name
ORDER BY total_bookings DESC;



# Aggregations and Window Functions

This file is part of the ALX Airbnb Database Module project and contains SQL queries focused on aggregations and window functions for data analysis.

## File

- `aggregations_and_window_functions.sql`: SQL file with queries for counting bookings and ranking properties using window functions.

## Tasks

### 1. Total Number of Bookings per User

**Objective**: Use the `COUNT` function with `GROUP BY` to determine how many bookings each user has made.

```sql
SELECT u.id, u.name, COUNT(b.id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
GROUP BY u.id, u.name
ORDER BY total_bookings DESC;
