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
