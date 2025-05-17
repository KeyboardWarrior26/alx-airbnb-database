-- 1. Properties with average rating > 4.0
SELECT p.id, p.name
FROM properties p
WHERE (
    SELECT AVG(r.rating)
    FROM reviews r
    WHERE r.property_id = p.id
) > 4.0
ORDER BY p.id;

-- 2. Users with more than 3 bookings (correlated subquery)
SELECT u.id, u.name
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.id
) > 3
ORDER BY u.id;
