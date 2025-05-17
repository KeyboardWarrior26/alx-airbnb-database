# Index Performance Report

This document presents performance analysis before and after adding indexes to frequently queried columns in the `User`, `Booking`, and `Property` tables.

---

## 1. Index on `booking(user_id)`

### Query Tested:
```sql
SELECT * FROM booking WHERE user_id = 5;

