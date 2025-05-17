# Performance Monitoring and Refinement Report

## Objective
To continuously improve database performance by monitoring frequently used queries using `EXPLAIN ANALYZE`, identifying bottlenecks, and applying optimizations.

---

## Step 1: Monitored Queries

### Query 1: Join Bookings with Properties
```sql
EXPLAIN ANALYZE
SELECT b.id, b.start_date, p.name
FROM Booking b
JOIN Property p ON b.property_id = p.id
WHERE b.start_date >= '2023-01-01';
