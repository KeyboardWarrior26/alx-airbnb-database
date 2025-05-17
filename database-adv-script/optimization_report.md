# Optimization Report: Complex Query Refactoring

## Initial Query
The original query retrieves all booking details along with user, property, and payment data. It used multiple JOINs and selected all relevant IDs and fields.

## Performance Analysis
Using `EXPLAIN ANALYZE`, it was observed that the query had:
- High cost due to joining large tables.
- Full table scans, especially on the Payment table.

## Refactoring Done
- Switched to `LEFT JOIN` for the Payment table since some bookings might not yet be paid.
- Selected only the necessary fields to reduce memory and I/O.
- Aliased tables for readability and possibly better parsing.
- Ensured indexes existed on:
  - `Booking.user_id`
  - `Booking.property_id`
  - `Payment.booking_id`

## Result
- Query cost reduced.
- Execution time improved.
