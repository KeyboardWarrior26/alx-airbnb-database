-- Index on Booking.user_id to speed up joins and filters by user
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Check performance BEFORE indexing
EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE user_id = 42;

-- Index on Property.id to optimize joins and counts
CREATE INDEX idx_property_id ON Property(id);

-- Check performance BEFORE indexing
EXPLAIN ANALYZE
SELECT Property.id, COUNT(Booking.id) AS total_bookings
FROM Property
LEFT JOIN Booking ON Property.id = Booking.property_id
GROUP BY Property.id;

-- Index on Booking.created_at for date range queries
CREATE INDEX idx_booking_created_at ON Booking(created_at);

-- Check performance BEFORE indexing
EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE created_at BETWEEN '2024-01-01' AND '2024-12-31';

