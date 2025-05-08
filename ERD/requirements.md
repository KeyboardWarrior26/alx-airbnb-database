# Entity-Relationship Diagram (ERD)

## Entities and Attributes

### User
- id (PK)
- name
- email
- password

### Property
- id (PK)
- owner_id (FK → User.id)
- title
- location
- price_per_night

### Booking
- id (PK)
- user_id (FK → User.id)
- property_id (FK → Property.id)
- start_date
- end_date

### Review
- id (PK)
- user_id (FK → User.id)
- property_id (FK → Property.id)
- rating
- comment

### Payment
- id (PK)
- booking_id (FK → Booking.id)
- amount
- payment_date

## Relationships
- A User can own many Properties.
- A User can make many Bookings.
- A Booking belongs to one Property and one User.
- A Review is left by a User for a Property.
- A Booking can have one Payment.
