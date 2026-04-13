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
CREATE TABLE containing (
	building_id int PRIMARY KEY,
    floor_id int PRIMARY KEY
);
CREATE TABLE floors (
	floor_id int PRIMARY KEY
);


-- Innocent's commit of "location", and "room"
CREATE TABLE location (
	location_id int PRIMARY KEY,
	floor_id int NOT NULL,
	emergency_id int,
	FOREIGN KEY(floor_id) REFERENCES floor (floor_id),
	FOREIGN KEY(emergency_id) REFERENCES emergency(emergency_id)		
);

CREATE TABLE room(
	room_id int PRIMARY KEY,
	location_id int NOT NULL,
	room_name VARCHAR(100) NOT NULL,
	room_type VARCHAR(100),
	FOREIGN KEY(location_id) REFERENCES location(location_id)
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

CREATE TABLE user_resource (
	user_id INT,
    resource_id INT,
	CONSTRAINT accommodates PRIMARY KEY (user_id, resource_id),
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT fk_resource_id FOREIGN KEY (resource_id) REFERENCES resources(id)
);

CREATE TABLE resources (
	resource_id int PRIMARY KEY,
    route_id int REFERENCES emergency_route_resource (route_id),
    location VARCHAR(100),
    availability BOOLEAN NOT NULL,
    handicap BOOLEAN NOT NULL,
    resource_type VARCHAR(100) NOT NULL
);


-- Jesus' commit of "emergency route" and "utilizes"
CREATE TABLE emergency_route (
	route_id int PRIMARY KEY,
	eta int,
	distance int,
	start_location_id int 
	FOREIGN KEY(start_location_id) REFERENCES location(location_id)
);

CREATE TABLE route_resource (
	route_resource_id
	resource_id int,
	route_id int,
	CONSTRAINT route_resource_id PRIMARY KEY (resource_id, route_id),
	CONSTRAINT fk_user_id FOREIGN KEY (resource_id) REFERENCES resources(resource_id),
	CONSTRAINT fk_route_id FOREIGN KEY (route_id) REFERENCES emergency_route(route_id)
);
