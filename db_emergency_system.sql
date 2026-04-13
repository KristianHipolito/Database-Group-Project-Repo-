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
    building_id int,
    floor_id int,
    CONSTRAINT building_floor_id PRIMARY KEY (building_id, floor_id),
	CONSTRAINT fk_building_id FOREIGN KEY (building_id) REFERENCES buildings(building_id),
	CONSTRAINT fk_floor_id FOREIGN KEY (floor_id) REFERENCES floors(floor_id)
);

CREATE TABLE room(
	room_id int PRIMARY KEY,
	room_name VARCHAR(100) NOT NULL,
	room_type VARCHAR(100)
);


-- Innocent's commit of "location", and "room"
CREATE TABLE location (
	location_id int PRIMARY KEY,
	floor_id int NOT NULL,
    room_id int NOT NULL,
	FOREIGN KEY(floor_id) REFERENCES floors (floor_id),
    FOREIGN KEY(room_id) REFERENCES room (room_id)
);

CREATE TABLE emergency_route (
	route_id int PRIMARY KEY,
	eta int,
	distance int,
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
	resource_id int PRIMARY KEY,
    route_id int REFERENCES emergency_route_resource (route_id),
    location VARCHAR(100),
    availability BOOLEAN NOT NULL,
    handicap BOOLEAN NOT NULL,
    resource_type VARCHAR(100) NOT NULL
);

CREATE TABLE user_resource (
	user_id INT,
    resource_id INT,
	CONSTRAINT accommodates PRIMARY KEY (user_id, resource_id),
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users(user_id),
    CONSTRAINT fk_resource_id FOREIGN KEY (resource_id) REFERENCES resources(resource_id)
);


-- Jesus' commit of "emergency route" and "utilizes"

CREATE TABLE route_resource (
	route_resource_id int,
	resource_id int,
	route_id int,
	CONSTRAINT route_resource_id PRIMARY KEY (resource_id, route_id),
	CONSTRAINT fk_resources_id FOREIGN KEY (resource_id) REFERENCES resources(resource_id),
	CONSTRAINT fk_route_id FOREIGN KEY (route_id) REFERENCES emergency_route(route_id)
);
