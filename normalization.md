# Database Normalization: Airbnb Clone Project

## Objective:
To apply normalization principles to ensure the database is in 3NF.

---

## First Normal Form (1NF)
- Each entity has a primary key.
- All attributes contain atomic values.
- Example: `User` table does not store multiple phone numbers in one field.

---

## Second Normal Form (2NF)
- All non-key attributes are fully dependent on the primary key.
- Example: In `Booking`, the total cost is calculated based on booking details, not stored redundantly.

---

## Third Normal Form (3NF)
- No transitive dependencies.
- `City`, `State`, and `Country` data were moved to separate tables to avoid redundancy.
- All attributes are directly dependent on the primary key.

---

## Conclusion
The schema has been reviewed and refactored to achieve 3NF. All potential redundancy and update anomalies have been resolved.
