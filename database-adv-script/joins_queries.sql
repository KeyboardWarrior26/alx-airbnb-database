-- INNER JOIN: Retrieve all bookings with respective users
SELECT b.id AS booking_id, u.id AS user_id, u.name AS user_name
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

-- LEFT JOIN to retrieve all properties and their reviews
SELECT properties.id AS property_id,
       properties.name AS property_name,
       reviews.id AS review_id,
       reviews.comment
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id
ORDER BY properties.id;

-- FULL OUTER JOIN: Retrieve all users and bookings, even if no match exists
-- For MySQL or SQLite, use UNION of LEFT and RIGHT JOIN (since FULL OUTER JOIN is not supported)
SELECT u.id AS user_id, u.name AS user_name, b.id AS booking_id
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id

UNION

SELECT u.id AS user_id, u.name AS user_name, b.id AS booking_id
FROM users u
RIGHT JOIN bookings b ON u.id = b.user_id;
