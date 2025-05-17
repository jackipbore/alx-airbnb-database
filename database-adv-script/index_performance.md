# Index Performance Optimization

This document outlines the indexing strategy used to improve query performance in the Airbnb database.

## 🧠 Indexes Created

To optimize queries involving frequent JOINs, WHERE filters, and ORDER BY operations, the following indexes were added:

```sql
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_booking_date ON bookings(booking_date);
CREATE INDEX idx_properties_owner_id ON properties(owner_id);
CREATE INDEX idx_users_email ON users(email);

