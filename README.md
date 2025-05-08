# ALX Airbnb Clone Project

## Project Overview
The Airbnb Clone Project is a full-stack application that simulates the core functionalities of Airbnb. It includes features like property listings, user accounts, bookings, reviews, and secure payments. This project focuses on backend development, database design, API integration, CI/CD, and application security.

## Project Goals
- Learn team collaboration and Git workflows
- Understand backend development with Django
- Design and manage databases using MySQL
- Explore GraphQL for modern API design
- Implement security and CI/CD pipelines
- Work with tools like Docker and GitHub Actions

## Tech Stack
- **Django** – Backend web framework for building APIs
- **MySQL** – Relational database to store app data
- **GraphQL** – Flexible API query language
- **Docker** – Containerization for development and deployment
- **GitHub Actions** – Automate CI/CD processes
 
## Team Roles

### 1. Backend Developer
Responsible for the server-side logic of the application, APIs, and core functionalities. Ensures data is properly processed and served to the frontend.

### 2. Frontend Developer
Focuses on building the user interface and user experience. Implements designs and communicates with backend services.

### 3. DevOps Engineer
Sets up CI/CD pipelines, automates testing and deployment, and ensures infrastructure stability.

### 4. Database Administrator (DBA)
Designs and manages the database structure. Ensures data integrity, performance, and security.

### 5. Project Manager
Coordinates team efforts, sets deadlines, and ensures deliverables are met on time and within scope.

### 6. QA Engineer
Tests features, reports bugs, and ensures the application meets quality standards before release.

## Technology Stack

- **Django**: A high-level Python web framework used to build the backend and RESTful APIs.
- **PostgreSQL**: A powerful, open-source object-relational database used to store user and listing data.
- **GraphQL**: A query language for the API, allowing clients to request only the data they need.
- **Docker**: Used to containerize the application, ensuring consistent environments across development and production.
- **Nginx**: Acts as a reverse proxy and serves static files in production.
- **Gunicorn**: A Python WSGI HTTP server for serving Django applications in production.
- **Redis**: An in-memory data store used for caching and background task management.
- **Celery**: A task queue to handle asynchronous tasks like sending emails or generating reports.

## Database Design

### Entities and Fields:

**1. Users**
- `id`: Unique identifier
- `name`: Full name of the user
- `email`: User's email address
- `password`: Hashed password
- `role`: Host or Guest

**2. Properties**
- `id`: Unique property ID
- `user_id`: ID of the host (foreign key)
- `title`: Name of the property
- `location`: Address or coordinates
- `price_per_night`: Cost per night

**3. Bookings**
- `id`: Unique booking ID
- `user_id`: ID of the guest (foreign key)
- `property_id`: ID of the booked property (foreign key)
- `check_in_date`: Start of the booking
- `check_out_date`: End of the booking

**4. Reviews**
- `id`: Unique review ID
- `user_id`: ID of the reviewer (foreign key)
- `property_id`: ID of the reviewed property (foreign key)
- `rating`: Star rating
- `comment`: Written feedback

**5. Payments**
- `id`: Unique payment ID
- `booking_id`: ID of the related booking (foreign key)
- `amount`: Total cost
- `payment_date`: Date of payment
- `status`: Payment status (e.g., paid, refunded)

### Relationships:

- A **User** can be a **Host** (has many Properties) or **Guest** (makes many Bookings).
- A **Property** belongs to one User (Host) but can have many **Bookings** and **Reviews**.
- A **Booking** is linked to one **Property** and one **User** (Guest).
- A **Review** is made by a **User** for a **Property**.
- A **Payment** is linked to one **Booking**.

## Feature Breakdown

### 1. User Management
Allows users to register, log in, and manage their profiles. It also includes authentication and role-based access, distinguishing between hosts and guests.

### 2. Property Management
Hosts can list, update, and remove properties. This includes adding property details such as name, description, price, photos, and location.

### 3. Booking System
Enables guests to search for available properties, make bookings, and view their booking history. It also ensures booking dates don’t overlap and availability is maintained.

### 4. Review and Rating System
Guests can leave reviews and rate properties after their stay. This helps future users make informed decisions based on real feedback.

### 5. Payment Integration
Secure payment system for processing booking transactions. Ensures transparency and records all payments for both hosts and guests.

### 6. Search and Filtering
Users can search for properties using filters like location, price range, dates, and property type. This improves user experience by making property discovery easier.

### 7. Admin Dashboard (Optional/Advanced)
An interface for administrators to monitor users, properties, bookings, and flag/report inappropriate content or activity.

## API Security

### Authentication
We will use JWT (JSON Web Tokens) to verify the identity of users accessing the platform. This ensures that only registered users can access protected endpoints.

### Authorization
Role-based access control (RBAC) will be implemented to ensure that users can only access resources they are permitted to. For example, a guest cannot access host-specific features like property management.

### Rate Limiting
Rate limiting will be used to prevent abuse by restricting the number of API requests a user can make within a set time frame. This protects the system from spam and potential denial-of-service (DoS) attacks.

### Input Validation & Sanitization
All user input will be validated and sanitized to prevent injection attacks, such as SQL injection or XSS (Cross-site Scripting).

### HTTPS Enforcement
All data transmission will be encrypted via HTTPS to ensure secure communication between clients and the server.

---

### Importance of API Security

- **Protecting User Data:** Prevents unauthorized access to sensitive information such as personal details and payment data.
- **Securing Payments:** Ensures payment transactions are not intercepted or altered during processing.
- **Maintaining Platform Integrity:** Prevents malicious users from exploiting the system or gaining unauthorized control over features.
- **Building User Trust:** A secure platform assures users that their data and interactions are safe, enhancing credibility and adoption.

## CI/CD Pipeline

CI/CD stands for Continuous Integration and Continuous Deployment. It is a set of practices that allow developers to automatically build, test, and deploy code whenever changes are made. This process ensures that code is always in a deployable state and helps catch bugs early in the development cycle.

CI/CD pipelines are crucial in this project to maintain code quality, ensure consistent testing, and enable smooth deployments. It helps teams deliver new features faster and more reliably.

**Tools we may use:**
- **GitHub Actions** – For automating workflows such as testing and deployment.
- **Docker** – For containerizing the application to ensure consistent environments across development, testing, and production.
