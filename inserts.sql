INSERT INTO buildings
VALUES (1, "Biotechnology Sciences and Engineering Building (BSE)", TRUE, 5, TRUE, TRUE),
(2, "McKinney Humanities Building (MHB)", TRUE, 4, TRUE, FALSE),
(3, "North Paseo Building (NPB)", TRUE, 5, TRUE, FALSE),
(4, "Business Building (BB)", TRUE, 4, TRUE, TRUE),
(5, "John Peace Library (JPL)", TRUE, 4, FALSE, TRUE),
(6, "Applied Engineering and Technology (AET)", TRUE, 4, TRUE, FALSE),
(7, "Science and Engineering Building (SEB)", TRUE, 4, TRUE, TRUE),
(8, "Engineering Building (EB)", TRUE, 4, TRUE, FALSE),
(9, "Biosciences Building (BSB)", TRUE, 3, TRUE, FALSE),
(10, "Arts Building (ART)", TRUE, 4, TRUE, FALSE);


INSERT INTO floors
VALUES (0), (1), (2), (3), (4), (5);


INSERT INTO building_floor (building_id, floor_id)
VALUES (1, 0), (1, 1), (1, 2), (1, 3), (1, 4),
	(2, 2), (2, 3), (2, 4),
    (3, 1), (3, 2), (3, 3), (3, 4), (3, 5),
    (4, 0), (4, 1), (4, 2), (4, 3), 
    (5, 1), (5, 2), (5, 3), (5, 4),
    (6, 0), (6, 1), (6, 2), (6, 3),
    (7, 1), (7, 2), (7, 3), (7, 4),
    (8, 1), (8, 2), (8, 3), (8, 4),
    (9, 1), (9, 2), (9, 3),
    (10, 1), (10, 2), (10, 3), (10, 4);

-- SEB Building
INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (26, '150E', 'Laboratory'), (26, '150F', 'Laboratory'), (26, '150G', 'Laboratory'),
	(26, '150H', 'Laboratory'), (26, '150R', 'Classroom'), (27, '106', 'Classroom'),
	(27, '108', 'Classroom'), (27, '110', 'Classroom'), (27, '112', 'Laboratory'),
	(27, '116', 'Classroom'), (27, '148', 'Classroom'), (27, '178', 'Classroom'),
	(27, '156A', 'Classroom'), (27, '156B', 'Classroom'), (27, '156D', 'Classroom'),
	(27, '156A', 'Classroom'), (28, '108', 'Classroom'), (28, '140C', 'Laboratory'),
    (28, '142B', 'Laboratory'), (28, '156', 'Classroom'), (28, '162', 'Classroom'),
	(28, '172', 'Classroom'), (29, '136', 'Classroom');

-- BSE Building

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (2, '106B', 'Classroom'), (2, '110', 'Classroom'), (2, '406', 'Classroom'),
	(2, '408', 'Classroom'), (2, '412', 'Classroom'), (2, '632', 'Classroom'),
	(3, '102', 'Classroom'), (3, '106M', 'Classroom'), (3, '110A', 'Classroom'),
	(3, '304B.3', 'Laboratory'), (4, '106', 'Classroom'), (4, '108', 'Laboratory'),
	(5, '124A', 'Laboratory');

-- McKinney (MHB)

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (6, '01.02', 'Classroom'), (6, '01.04', 'Classroom'),
	(6, '01.06', 'Classroom'), (6, '01.08', 'Classroom'), (6, '01.10', 'Classroom'),
	(6, '01.12', 'Classroom'), (6, '01.24', 'Classroom'), (6, '01.30', 'Classroom'),
	(6, '01.36', 'Classroom'), (6, '02.10', 'Classroom'), (6, '02.16', 'Classroom'),
	(6, '02.20', 'Classroom'), (7, '01.05', 'Classroom'), (7, '01.16', 'Classroom'),
	(7, '01.18', 'Classroom'), (7, '01.28', 'Classroom'), (7, '02.04', 'Classroom'),
	(7, '02.18', 'Classroom'), (7, '02.22', 'Classroom'), (7, '02.26', 'Classroom'),
	(7, '02.38', 'Classroom'), (7, '02.52', 'Classroom'), (7, '03.06', 'Classroom'),
	(7, '03.14', 'Classroom'), (7, '03.16', 'Classroom'), (7, '03.18', 'Classroom'),
	(7, '03.20', 'Classroom'), (7, '04.06', 'Classroom'), (7, '04.10', 'Classroom'),
	(7, '04.20', 'Classroom'), (7, '04.22', 'Classroom'), (7, '04.28', 'Classroom'),
	(8, '01.23E', 'Classroom'), (8, '02.04', 'Classroom'), (8, '02.34', 'Classroom'),
	(8, '03.40', 'Classroom'), (8, '04.12', 'Classroom'), (8, '04.56', 'Classroom'),
	(8, '04.60', 'Laboratory');

-- North Paseo (NPB)

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (9, '102', 'Classroom'), (9, '114', 'Classroom'), (9, '122', 'Laboratory'),
	(9, '126', 'Laboratory'), (10, '112', 'Classroom'), (11, '108A', 'Classroom'),
	(12, '140', 'Classroom');

-- Business Building (BB)

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (13, '01.02B', 'Classroom'), (13, '01.20D', 'Classroom'),
	(13, '01.20M', 'Classroom'), (14, '01.02', 'Classroom'), (14, '01.06', 'Classroom'),
	(14, '01.10', 'Classroom'), (15, '01.02', 'Classroom'), (15, '01.06', 'Classroom'),
	(15, '01.10', 'Classroom'), (15, '02.06', 'Classroom'), (15, '02.02', 'Classroom'),
	(15, '02.14', 'Classroom'), (15, '02.28', 'Classroom'), (15, '03.02', 'Classroom'),
	(15, '03.05', 'Classroom'), (15, '03.16', 'Classroom'), (15, '03.24', 'Classroom'),
	(15, '04.06', 'Classroom'), (15, '04.18', 'Classroom'), (16, '01.08A', 'Classroom'),
	(16, '01.18H', 'Classroom'), (16, '02.10', 'Classroom'), (16, '02.48', 'Classroom'),
	(16, '02.68', 'Classroom'), (16, '03.26', 'Classroom'), (16, '03.35', 'Classroom'),
	(16, '04.02', 'Classroom'), (16, '04.20', 'Classroom'), (16, '06.12', 'Classroom');

-- JPL
INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (19, '01.08E', 'Classroom'), (19, '01.12C', 'Classroom'), (20, '01.54', 'Classroom'), 
	(20, '02.32', 'Classroom'), (20, '02.34', 'Classroom'), (20, '02.38', 'Classroom');

-- AET
INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (23, '102F', 'Classroom'), (24, '106', 'Classroom'), (25, '204', 'Classroom'),
	(25, '205C', 'Classroom'), (25, '328', 'Classroom'), (25, '346', 'Classroom');

-- EB
INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (30, '04.02', 'Classroom'), (30, '04.08', 'Classroom'), (30, '04.10', 'Classroom'),
	(30, '04.18', 'Classroom'), (31, '04.04', 'Classroom'), (31, '04.06', 'Classroom'),
	(31, '04.22', 'Classroom'), (31, '04.26A', 'Classroom'), (31, '04.30', 'Classroom'),
	(31, '04.64', 'Classroom'), (31, '04.70', 'Classroom');

-- BSB

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (35, '03.10', 'Classroom'), (36, '03.02', 'Classroom'), (36, '03.10', 'Classroom');

-- ART

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (37, '01.20', 'Classroom'), (37, '01.24', 'Classroom'), (37, '01.30', 'Classroom'),
	(37, '02.06', 'Classroom'), (38, '02.24', 'Classroom'), (38, '03.02B', 'Classroom'),
	(38, '03.14A', 'Classroom'), (38, '03.20A', 'Classroom'), (38, '03.22A', 'Classroom'),
	(38, '03.02B', 'Classroom'), (39, '01.07', 'Classroom'), (39, '01.11', 'Classroom'),
	(39, '01.26', 'Classroom'), (39, '01.28', 'Classroom'), (40, '01.06', 'Classroom');



INSERT INTO users 
VALUES (1, 1, FALSE, "Carlos", "Miranda", "carlos.miranda2@my.utsa.edu"), 
(2, 2, FALSE, "Jesus", "Pantoja", "jesus.pentoja@my.utsa.edu"), 
(3, 4, FALSE, "Kristian", "Hipolito", "kristian.hipolito@my.utsa.edu"), 
(4, 3, FALSE, "Innocent", "Hakim", "innocent.hakim@my.utsa.edu"), 
(5, 8, FALSE, "Robert", "Garcia", "robert.garcia@my.utsa.edu"), 
(6, 14, TRUE, "Henry", "Nguyen", "henry.nguyen@my.utsa.edu"), 
(7, 5, FALSE, "Jose", "Gonzalez", "jose.gonzalez@my.utsa.edu"), 
(8, 17, TRUE, "Juan", "Castillo", "juan.castillo@my.utsa.edu"), 
(9, 24, TRUE, "Abigail", "Hernandez", "abigail.hernandez@my.utsa.edu"), 
(10, 16, FALSE, "Fabiola", "Garcia", "fabiola.garcia@my.utsa.edu"), 
(11, 4, FALSE, "Nate", "Collette", "nate.collette@my.utsa.edu"), 
(12, 1, FALSE, "Alexa", "Martinez", "alexa.martinez@my.utsa.edu"), 
(13, 3, FALSE, "Luis", "Garcia", "luis.garcia@my.utsa.edu"), 
(14, 10, TRUE, "Mike", "Scott", "mike.scott@my.utsa.edu"), 
(15, 12, FALSE, "Paulina", "Olmos", "paulina.olmos@my.utsa.edu"), 
(16, 17, FALSE, "Carolina", "Sloan", "carolina.sloan@my.utsa.edu"), 
(17, 19, FALSE, "Katrina", "Brown", "katrina.brown@my.utsa.edu"), 
(18, 20, FALSE, "Christine", "Kim", "christine.kim@my.utsa.edu"), 
(19, 4, TRUE, "Claire", "Shaw", "claire.shaw@my.utsa.edu"), 
(20, 3, FALSE, "Matthew", "Hartwell", "matthew.hartwell@my.utsa.edu"), 
(21, 2, FALSE, "Kristina", "Hinajosa", "kristina.hinajosa@my.utsa.edu"), 
(22, 7, FALSE, "Prescilla", "Costilla", "prescilla.costilla@my.utsa.edu"), 
(23, 14, FALSE, "Thomas", "Presley", "thomas.presley@my.utsa.edu"), 
(24, 15, FALSE, "Jay", "Davis", "jay.davis@my.utsa.edu");

INSERT INTO emergency_route
VALUE (1, 1.50, 100, 1),
(2, 1.00, 60, 4),
(3, 1.50, 105, 3),
(4, 1.25, 82, 5),
(5, 2.00, 135, 8),
(6, 0.50, 34, 2),
(7, 0.75, 57, 6),
(8, 0.25, 22, 7),
(9, 1.00, 68, 10);

INSERT INTO resources (location, availability, handicap, resource_type)
VALUES ('1st floor - Laboratory', TRUE, FALSE, 'Wheelchair'),
('1st floor - Laboratory' , FALSE, TRUE, 'RAMPS'),
('1st floor - Laboratory', FALSE, FALSE, 'Stairs'),
('1st floor - Laboratory', TRUE, TRUE, 'Elevator'),
('1st floor - Classroom', TRUE, FALSE, 'Wheelchair'),
('1st floor - Classroom' , FALSE, TRUE, 'RAMPS'),
('1st floor - Classroom', FALSE, FALSE, 'Stairs'),
('1st floor - Classroom', TRUE, TRUE, 'Elevator'),
('2nd floor - Classroom', TRUE, FALSE, 'Wheelchair'),
('2nd floor - Classroom' , FALSE, TRUE, 'RAMPS'),
('3rd floor - Classroom', FALSE, FALSE, 'Stairs'),
('3rd floor - Classroom', TRUE, TRUE, 'Elevator'),
('3rd floor - Classroom', TRUE, FALSE, 'Wheelchair'),
('3rd floor - Classroom' , FALSE, TRUE, 'RAMPS'),
('3rd floor - Classroom', TRUE, TRUE, 'Elevator'),
('3rd floor - Laboratory', TRUE, FALSE, 'Wheelchair'),
('3rd floor - Laboratory' , FALSE, TRUE, 'RAMPS'),
('3rd floor - Laboratory', FALSE, FALSE, 'Stairs'),
('4th floor - Classroom', TRUE, TRUE, 'Elevator'),
('4th floor - Classroom', TRUE, FALSE, 'Wheelchair'),
('4th floor - Classroom', FALSE, TRUE, 'RAMPS'),
('4th floor - Classroom', FALSE, FALSE, 'Stairs'),
('4th floor - Classroom', TRUE, TRUE, 'Elevator');

INSERT INTO user_resource (user_id, resource_id) VALUES
(1,3),(1,5),(2,1),(2,4),(3,2),(3,6),
(4,1),(4,3),(5,2),(5,7),(6,4),(6,8),
(7,1),(7,5),(8,3),(8,6),(9,2),(9,9),
(10,4),(10,10);

INSERT INTO route_resource (resource_id, route_id) VALUES
(1,1),(2,1),(3,2),(4,2),(5,3),(6,3),
(7,4),(8,4),(9,5);
