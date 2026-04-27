CREATE DATABASE IF NOT EXISTS db_emergency_system;
USE db_emergency_system;

-- Kristian's commit of "buildings", "containing", "floors"

/* Creates a table to contain the different buildings around the UTSA campus.
   It contains the name of the building, if they are handicap accessable, the
   number of floors, and if there are professor offices and restaurants.
*/
CREATE TABLE buildings (
	building_id int AUTO_INCREMENT PRIMARY KEY,
	building_name VARCHAR(100),
    handicap_access BOOLEAN,
    total_floors int,
    contains_professor_office BOOLEAN,
    contains_restaurant BOOLEAN
);

/* Creates a table to contain floors.
   Mainly to hold the floor numbers to be used in the "building_floor" table.
*/
CREATE TABLE floors (
	floor_id int PRIMARY KEY
);

/* A bridge table for "buildings" and "floors".
   Takes the primary ids of "buildings" and "floors" to be easily accessable
   for the "locations" table.
*/
CREATE TABLE building_floor (
	building_floor_id int AUTO_INCREMENT PRIMARY KEY,
    building_id int,
    floor_id int,
	FOREIGN KEY (building_id) REFERENCES buildings(building_id),
	FOREIGN KEY (floor_id) REFERENCES floors(floor_id)
);


-- Innocent's commit of "location"

/* Stores all the details of a specific location of any building.
   The locations are labeled through room numbers and the type of
   room (classroom, laboratory, office, etc.).
*/
CREATE TABLE location (
	location_id int AUTO_INCREMENT PRIMARY KEY,
	building_floor_id int NOT NULL,
    room_number VARCHAR(100) NOT NULL,
	room_type VARCHAR(100) NOT NULL,
	FOREIGN KEY(building_floor_id) REFERENCES building_floor (building_floor_id)
);

/* Contains emergency routes with their details of ETAs and
   distances.
   The routes are connected through the location primary id
   as "start_location_id".
*/
CREATE TABLE emergency_route (
	route_id int AUTO_INCREMENT PRIMARY KEY,
	eta_in_minutes DECIMAL(3, 2),
	distance_in_feet int,
	start_location_id int,
	FOREIGN KEY(start_location_id) REFERENCES location(location_id)
);


-- Carlos' commit of "users", "user_resource" (accommodates), and "resources"

/* A table for the users of the database.
   Stores all the information needed for the users, including
   first and last name, email, if the user is handicap and the
   location (room) they are currently in.
*/
CREATE TABLE users (
	user_id int AUTO_INCREMENT PRIMARY KEY,
    location_id int REFERENCES locations (location_id),
    handicap BOOLEAN,
    user_first_name VARCHAR(100) NOT NULL,
    user_last_name VARCHAR(100) NOT NULL,
    user_email VARCHAR(100) NOT NULL
);

/* A table to store the different types of resource that can
   be found around the UTSA campus.
   Information includes the location description of the resource,
   the availability (open or closed), if it can be used by handicap,
   and the type (stairs, elevator, ramp, etc.)
*/
CREATE TABLE resources (
	resource_id int AUTO_INCREMENT PRIMARY KEY,
    route_id int REFERENCES route_resource (route_id),
    location VARCHAR(100),
    availability BOOLEAN NOT NULL,
    handicap BOOLEAN NOT NULL,
    resource_type VARCHAR(100) NOT NULL
);

/* Links the "users" and "resources" table to determine which 
   resources the user can use depending on if they are handicap or
   not.
*/
CREATE TABLE user_resource (
	user_resource int AUTO_INCREMENT PRIMARY KEY,
	user_id INT,
    resource_id INT,
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users(user_id),
    CONSTRAINT fk_resource_id FOREIGN KEY (resource_id) REFERENCES resources(resource_id)
);


-- Jesus' commit of "route_resource"

/* Links the "emergency_route" and "resources" tables for routes to
   be able to track which resource its using.
*/
CREATE TABLE route_resource (
	route_resource_id int AUTO_INCREMENT PRIMARY KEY,
	resource_id int,
	route_id int,
	CONSTRAINT fk_resources_id FOREIGN KEY (resource_id) REFERENCES resources(resource_id),
	CONSTRAINT fk_route_id FOREIGN KEY (route_id) REFERENCES emergency_route(route_id)
);
