# Advanced SQL Queries with Joins

## INNER JOIN
This query retrieves all bookings along with the corresponding user details. It uses `INNER JOIN` which ensures only bookings that are associated with existing users are included.

## LEFT JOIN
This query lists all properties and any reviews they might have. Even if a property has no reviews, it will still appear due to the `LEFT JOIN`.

## FULL OUTER JOIN
This query simulates a `FULL OUTER JOIN` using a `UNION` of a `LEFT JOIN` and `RIGHT JOIN`. It retrieves:
- All users (with or without bookings)
- All bookings (with or without users)

