/*
========================================================
    Initial values
========================================================
*/

-- Roles
INSERT INTO roles(
    role_name
) VALUES 
    ('ADMIN'),
    ('CLIENT');

-- States
INSERT INTO states(
    state_name
) VALUES
    ('Active'),
    ('Inactive');

-- Days
INSERT INTO days_of_week(
    day_name
) VALUES 
    ('Monday'),
    ('Tuesday'),
    ('Wednesday'),
    ('Thursday'),
    ('Friday'),
    ('Saturday'),
    ('Sunday');

-- Status
INSERT INTO status(
    status_name
) VALUES 
    ('CONFIRMED'),
    ('CANCELLED'),
    ('COMPLETED');