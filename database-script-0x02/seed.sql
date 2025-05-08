-- Insert Users
INSERT INTO users (id, name, email) VALUES
(1, 'John Doe', 'john@example.com'),
(2, 'Jane Smith', 'jane@example.com');

-- Insert Properties
INSERT INTO properties (id, owner_id, title, location, price_per_night) VALUES
(1, 1, 'Seaside Cottage', 'Cape Town', 800),
(2, 2, 'Mountain Cabin', 'Drakensberg', 650);

-- Insert Bookings
INSERT INTO bookings (id, user_id, property_id, start_date, end_date) VALUES
(1, 2, 1, '2025-06-01', '2025-06-05'),
(2, 1, 2, '2025-07-10', '2025-07-12');

-- Insert Payments
INSERT INTO payments (id, booking_id, amount, status) VALUES
(1, 1, 3200, 'paid'),
(2, 2, 1300, 'paid');
