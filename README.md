# User Management App

## Overview
The User Management App is a simple system for managing user data with a MySQL database. It allows users to register, log in, and store relevant details such as their email and password.

## Features
- User registration with email and password
- Secure password storage
- Unique email enforcement
- Auto-incrementing user IDs

## Database Schema
The application uses a MySQL database with the following `users` table:

| Field   | Type         | Null | Key | Default | Extra          |
|---------|-------------|------|-----|---------|----------------|
| id      | int         | NO   | PRI | NULL    | auto_increment |
| email   | varchar(255)| NO   | UNI | NULL    |                |
| password| varchar(255)| NO   |     | NULL    |                |

## Setup Instructions

### Prerequisites
- MySQL Server installed
- A MySQL client or command line access

### Database Setup
1. Create the database:
   ```sql
   CREATE DATABASE user_management;
   ```

2. Use the database:
   ```sql
   USE user_management;
   ```

3. Create the `users` table:
   ```sql
   CREATE TABLE users (
       id INT AUTO_INCREMENT PRIMARY KEY,
       email VARCHAR(255) NOT NULL UNIQUE,
       password VARCHAR(255) NOT NULL
   );
   ```

### Inserting Data
To insert a new user:
```sql
INSERT INTO users (email, password) VALUES ('user@example.com', 'securepassword');
```

### Viewing Data
To view all users:
```sql
SELECT * FROM users;
```

## Future Improvements
- Implement password hashing for security
- Add user authentication and session management
- Expand with additional user profile details

## License
This project is open-source and available for modification and distribution.

