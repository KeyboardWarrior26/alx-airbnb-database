-- Initial complex query (before optimization)
EXPLAIN ANALYZE
SELECT 
    Booking.id AS booking_id,
    Booking.created_at AS booking_date,
    User.id AS user_id,
    User.name AS user_name,
    Property.id AS property_id,
    Property.name AS property_name,
    Payment.id AS payment_id,
    Payment.amount,
    Payment.status
FROM Booking
JOIN User ON Booking.user_id = User.id
JOIN Property ON Booking.property_id = Property.id
JOIN Payment ON Booking.id = Payment.booking_id;

-- Optimized query
-- Let's assume not all columns are needed, and LEFT JOIN used in case some payments aren't made yet
EXPLAIN ANALYZE
SELECT 
    B.id AS booking_id,
    B.created_at AS booking_date,
    U.name AS user_name,
    P.name AS property_name,
    PM.amount,
    PM.status
FROM Booking B
JOIN User U ON B.user_id = U.id
JOIN Property P ON B.property_id = P.id
LEFT JOIN Payment PM ON B.id = PM.booking_id;
