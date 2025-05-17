-- Index for faster user lookup
CREATE INDEX idx_users_email ON users(email);

-- Index for joining bookings to users
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index for joining bookings to properties
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index for ordering bookings by date
CREATE INDEX idx_bookings_date ON bookings(date);

-- Index for filtering properties by host
CREATE INDEX idx_properties_host_id ON properties(host_id);
