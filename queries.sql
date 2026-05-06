-- What is the average estimated time (in minutes) for all emergency routes?
-- Useful for understanding overall evacuation efficiency across the system.
SELECT AVG(eta_in_minutes) AS avg_eta
FROM emergency_route;

-- Which route has the longest distance (in feet)?
-- Helps identify the most physically demanding evacuation path.
SELECT route_id, distance_in_feet
FROM emergency_route
WHERE distance_in_feet = (
    SELECT MAX(distance_in_feet)
    FROM emergency_route
);

-- List all users with their full name and email.
-- Useful for contact directories or emergency notifications.
SELECT CONCAT(user_first_name, ' ', user_last_name) AS full_name,
       user_email
FROM users;

-- Count how many users are at each location.
-- Helps identify crowded areas or high-risk zones during emergencies.
SELECT location_id,
       COUNT(*) AS user_count
FROM users
GROUP BY location_id
ORDER BY user_count DESC;

-- Show each user's location.
-- Useful for mapping where people are located within the campus.
SELECT CONCAT(u.user_first_name, ' ', u.user_last_name) AS full_name,
       b.building_name,
       f.floor_id
FROM users u
JOIN location l ON u.location_id = l.location_id
JOIN building_floor bf ON l.building_floor_id = bf.building_floor_id
JOIN buildings b ON bf.building_id = b.building_id
JOIN floors f ON bf.floor_id = f.floor_id
ORDER BY b.building_name;

-- Find users with disabilities assigned to handicap-accessible buildings.
-- Helps ensure accessibility needs are properly supported.
SELECT CONCAT(u.user_first_name, ' ', u.user_last_name) AS full_name,
       b.building_name
FROM users u
JOIN location l ON u.location_id = l.location_id
JOIN building_floor bf ON l.building_floor_id = bf.building_floor_id
JOIN buildings b ON bf.building_id = b.building_id
WHERE u.handicap = TRUE
AND b.handicap_access = TRUE;

-- Find routes with above-average evacuation time.
-- These may need optimization or redesign.
SELECT route_id, eta_in_minutes
FROM emergency_route
WHERE eta_in_minutes > (
    SELECT AVG(eta_in_minutes)
    FROM emergency_route
);

-- Detect potential accessibility issues.
-- These are critical safety risks.
SELECT CONCAT(u.user_first_name, ' ', u.user_last_name) AS full_name,
       b.building_name
FROM users u
JOIN location l ON u.location_id = l.location_id
JOIN building_floor bf ON l.building_floor_id = bf.building_floor_id
JOIN buildings b ON bf.building_id = b.building_id
WHERE u.handicap = TRUE
AND b.handicap_access = FALSE;

-- Find the quickest route for emergency response optimization.
SELECT route_id, eta_in_minutes
FROM emergency_route
ORDER BY eta_in_minutes ASC
LIMIT 1;

-- Identify unique resource types available in each building.
-- Use Case: Quickly auditing safety equipment coverage without clutter.
SELECT DISTINCT 
    b.building_name, 
    r.resource_type
FROM buildings b
JOIN building_floor bf ON b.building_id = bf.building_id
JOIN location l ON bf.building_floor_id = l.building_floor_id
JOIN route_resource rr ON l.location_id = rr.resource_id
JOIN resources r ON rr.resource_id = r.resource_id
ORDER BY b.building_name;

-- Find the fastest route available per building
SELECT *
FROM (
    SELECT
        b.building_name,
        er.route_id,
        er.eta_in_minutes,
        ROW_NUMBER() OVER (
            PARTITION BY b.building_name
            ORDER BY er.eta_in_minutes ASC
        ) AS rn
    FROM buildings b
    JOIN building_floor bf ON b.building_id = bf.building_id
    JOIN location l ON bf.building_floor_id = l.building_floor_id
    JOIN route_resource rr ON l.location_id = rr.resource_id
    JOIN emergency_route er ON rr.route_id = er.route_id
) ranked
WHERE rn = 1;
