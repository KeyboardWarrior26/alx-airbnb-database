# Normalization Steps

This document outlines how the Airbnb database design has been normalized up to the Third Normal Form (3NF).

---

## First Normal Form (1NF)

- **Rule**: Ensure atomicity—no repeating groups or arrays.
- **Applied**: All attributes contain only atomic values.
  - Example: `User` table has individual fields for `name`, `email`, and `password`.
  - No multiple phone numbers or emails in one field.

---

## Second Normal Form (2NF)

- **Rule**: Remove partial dependencies (only applies to tables with composite primary keys).
- **Applied**:
  - Each non-key attribute is fully functionally dependent on the whole primary key.
  - Example: In the `Booking` table, `start_date` and `end_date` depend on the full `id`, not just part of a composite key (which we avoided by using single-column `id` as PK).

---

## Third Normal Form (3NF)

- **Rule**: Remove transitive dependencies (non-key attributes should not depend on other non-key attributes).
- **Applied**:
  - All non-key attributes depend only on the primary key.
  - Example: In `Property`, fields like `location` and `price_per_night` depend only on `id`, not on `owner_id`.

---

## Summary

All tables have been reviewed to:
- Eliminate redundancy,
- Ensure clear foreign key relationships,
- Achieve 3NF.

This supports scalability, maintainability, and integrity of the database.
