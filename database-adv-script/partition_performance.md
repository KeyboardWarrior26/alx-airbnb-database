# Partitioning Performance Report

## Objective
To improve query performance on the large Booking table by partitioning it by year using the `start_date` column.

## What Was Done
- Dropped the original `Booking` table.
- Created a partitioned version of the `Booking` table using `PARTITION BY RANGE (start_date)`.
- Defined yearly partitions: `Booking_2022`, `Booking_2023`, and `Booking_2024`.
- Ran `EXPLAIN ANALYZE` on a query filtering bookings in June 2023.

## Results
The `EXPLAIN ANALYZE` output showed that only the relevant partition (`Booking_2023`) was scanned, not the entire Booking table. This significantly reduced the query planning and execution time compared to the non-partitioned version.

## Conclusion
Partitioning large tables by date improves performance for queries filtered by time ranges, as it avoids full table scans.
