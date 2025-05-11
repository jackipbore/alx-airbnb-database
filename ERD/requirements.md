# ERD for Airbnb Clone Database

## Entities

- **User**: id, name, email, password_hash
- **Property**: id, owner_id, title, description, price_per_night
- **Booking**: id, user_id, property_id, start_date, end_date
- **Payment**: id, booking_id, amount, status, payment_date
- **Review**: id, user_id, property_id, rating, comment

## Relationships

- A User can own many Properties
- A User can make many Bookings
- A Booking is for one Property
- A Booking has one Payment
- A Property can have many Reviews
- A User can write many Reviews


