SELECT AVG(eta_in_minutes) AS avg_eta
FROM emergency_route;

SELECT route_id, distance_in_feet
FROM emergency_route
WHERE distance_in_feet = (
    SELECT MAX(distance_in_feet)
    FROM emergency_route
);

SELECT CONCAT(user_first_name, ' ', user_last_name) AS full_name,
       user_email
FROM users;

SELECT location_id,
       COUNT(*) AS user_count
FROM users
GROUP BY location_id
ORDER BY user_count DESC;

SELECT CONCAT(u.user_first_name, ' ', u.user_last_name) AS full_name,
       b.building_name,
       f.floor_id
FROM users u
JOIN location l ON u.location_id = l.location_id
JOIN building_floor bf ON l.building_floor_id = bf.building_floor_id
JOIN buildings b ON bf.building_id = b.building_id
JOIN floors f ON bf.floor_id = f.floor_id
ORDER BY b.building_name;

SELECT CONCAT(u.user_first_name, ' ', u.user_last_name) AS full_name,
       b.building_name
FROM users u
JOIN location l ON u.location_id = l.location_id
JOIN building_floor bf ON l.building_floor_id = bf.building_floor_id
JOIN buildings b ON bf.building_id = b.building_id
WHERE u.handicap = TRUE
AND b.handicap_access = TRUE;
