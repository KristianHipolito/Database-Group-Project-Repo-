CREATE DATABASE IF NOT EXISTS db_emergency_system;
USE db_emergency_system;

-- Kristian's commit of "buildings", "containing", "floors"
CREATE TABLE buildings (
	building_id int PRIMARY KEY,
	building_name VARCHAR(100),
    handicap_access BOOLEAN,
    total_floors int,
    contains_professor_office BOOLEAN,
    contains_restraunt BOOLEAN
);

CREATE TABLE floors (
	floor_id int PRIMARY KEY
);

CREATE TABLE building_floor (
	building_floor_id int AUTO_INCREMENT PRIMARY KEY,
    building_id int,
    floor_id int,
	FOREIGN KEY (building_id) REFERENCES buildings(building_id),
	FOREIGN KEY (floor_id) REFERENCES floors(floor_id)
);


-- Innocent's commit of "location", and "room"
CREATE TABLE location (
	location_id int AUTO_INCREMENT PRIMARY KEY,
	building_floor_id int NOT NULL,
    room_number VARCHAR(100) NOT NULL,
	room_type VARCHAR(100) NOT NULL,
	FOREIGN KEY(building_floor_id) REFERENCES building_floor (building_floor_id)
);

CREATE TABLE emergency_route (
	route_id int PRIMARY KEY,
	eta_in_minutes DECIMAL(3, 2),
	distance_in_feet int,
	start_location_id int,
	FOREIGN KEY(start_location_id) REFERENCES location(location_id)
);


-- Carlos' commit of "users", "user_resource" (accommodates), and "resources"
CREATE TABLE users (
	user_id int PRIMARY KEY,
    location_id int REFERENCES locations (location_id),
    handicap BOOLEAN,
    user_first_name VARCHAR(100) NOT NULL,
    user_last_name VARCHAR(100) NOT NULL,
    user_email VARCHAR(100) NOT NULL
);

CREATE TABLE resources (
	resource_id int AUTO_INCREMENT PRIMARY KEY,
    route_id int REFERENCES emergency_route_resource (route_id),
    location VARCHAR(100),
    availability BOOLEAN NOT NULL,
    handicap BOOLEAN NOT NULL,
    resource_type VARCHAR(100) NOT NULL
);

CREATE TABLE user_resource (
	user_resource int AUTO_INCREMENT PRIMARY KEY,
	user_id INT,
    resource_id INT,
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users(user_id),
    CONSTRAINT fk_resource_id FOREIGN KEY (resource_id) REFERENCES resources(resource_id)
);


-- Jesus' commit of "emergency route" and "utilizes"

CREATE TABLE route_resource (
	route_resource_id int AUTO_INCREMENT PRIMARY KEY,
	resource_id int,
	route_id int,
	CONSTRAINT fk_resources_id FOREIGN KEY (resource_id) REFERENCES resources(resource_id),
	CONSTRAINT fk_route_id FOREIGN KEY (route_id) REFERENCES emergency_route(route_id)
);
