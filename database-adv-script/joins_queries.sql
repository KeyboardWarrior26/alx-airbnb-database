-- INNER JOIN: Retrieve all bookings with respective users
SELECT b.id AS booking_id, u.id AS user_id, u.name AS user_name
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

-- LEFT JOIN: Retrieve all properties with their reviews (including those with no reviews)
SELECT p.id AS property_id, p.title AS property_title, r.id AS review_id, r.comment
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;

-- FULL OUTER JOIN: Retrieve all users and bookings, even if no match exists
-- For MySQL or SQLite, use UNION of LEFT and RIGHT JOIN (since FULL OUTER JOIN is not supported)
SELECT u.id AS user_id, u.name AS user_name, b.id AS booking_id
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id

UNION

SELECT u.id AS user_id, u.name AS user_name, b.id AS booking_id
FROM users u
RIGHT JOIN bookings b ON u.id = b.user_id;
