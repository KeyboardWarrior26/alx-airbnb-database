# Airbnb Advanced SQL Queries

This project demonstrates the use of SQL joins as part of the ALX Airbnb Database Module.

## Task 0: Write Complex Queries with Joins

- `INNER JOIN`: Lists bookings along with the users who made them.
- `LEFT JOIN`: Lists properties and their reviews, including those without any reviews.
- `FULL OUTER JOIN`: Combines users and bookings, even if they aren't linked.

## Files

- `joins_queries.sql`: Contains all required SQL queries.


## Subqueries

### 1. Properties with Average Rating > 4.0

This query uses a non-correlated subquery to calculate the average rating of each property and selects those with an average above 4.0.

### 2. Users with More Than 3 Bookings

This is a correlated subquery that counts bookings per user and filters users with more than three bookings.
