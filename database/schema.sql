/*
========================================================
    Database model
    Definition of tables
========================================================
*/

-- Roles
CREATE TABLE roles(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL UNIQUE
);

-- Users
CREATE TABLE users(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role_id INTEGER NOT NULL REFERENCES roles(id)
);

-- states
CREATE TABLE states(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    state_name VARCHAR(30) NOT NULL UNIQUE
);

-- Services
CREATE TABLE services(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(255) NOT NULL,
    duration_min INTEGER NOT NULL CHECK(duration_min >= 60),
    state_id INTEGER NOT NULL REFERENCES states(id)
);

-- days
CREATE TABLE days_of_week(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    day_name VARCHAR(15) NOT NULL UNIQUE
);

-- Business hours
CREATE TABLE business_hours(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    day_id INTEGER NOT NULL REFERENCES days_of_week(id),
    opening_time TIME NOT NULL,
    closing_time TIME NOT NULL
);

--Status
CREATE TABLE status(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    status_name VARCHAR(50) NOT NULL UNIQUE
);

-- Bookings
CREATE TABLE bookings(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    service_name VARCHAR(50) NOT NULL,
    service_description VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL REFERENCES users(id),
    service_id INTEGER NOT NULL REFERENCES services(id),
    booking_date DATE NOT NULL,
    start_time TIME NOT NULL,
    service_duration_min INTEGER NOT NULL CHECK(service_duration_min > 0),
    status_id INTEGER NOT NULL REFERENCES status(id)
);