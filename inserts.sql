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
VALUES (26, '150E', 'Laboratory');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (26, '150F', 'Laboratory');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (26, '150G', 'Laboratory');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (26, '150H', 'Laboratory');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (26, '150R', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (27, '106', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (27, '108', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (27, '110', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (27, '112', 'Laboratory');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (27, '116', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (27, '148', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (27, '178', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (27, '156A', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (27, '156B', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (27, '156D', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (27, '156A', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (28, '108', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (28, '140C', 'Laboratory');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (28, '142B', 'Laboratory');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (28, '156', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (28, '162', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (28, '172', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (29, '136', 'Classroom');

-- BSE Building

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (2, '106B', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (2, '110', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (2, '406', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (2, '408', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (2, '412', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (2, '632', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (3, '102', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (3, '106M', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (3, '110A', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (3, '304B.3', 'Laboratory');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (4, '106', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (4, '108', 'Laboratory');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (5, '124A', 'Laboratory');

-- McKinney (MHB)

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (6, '01.02', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (6, '01.04', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (6, '01.06', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (6, '01.08', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (6, '01.10', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (6, '01.12', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (6, '01.24', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (6, '01.30', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (6, '01.36', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (6, '02.10', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (6, '02.16', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (6, '02.20', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '01.05', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '01.16', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '01.18', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '01.28', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '02.04', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '02.18', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '02.22', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '02.26', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '02.38', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '02.52', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '03.06', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '03.14', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '03.16', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '03.18', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '03.20', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '04.06', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '04.10', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '04.20', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '04.22', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (7, '04.28', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (8, '01.23E', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (8, '02.04', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (8, '02.34', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (8, '03.40', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (8, '04.12', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (8, '04.56', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (8, '04.60', 'Laboratory');

-- North Paseo (NPB)

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (9, '102', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (9, '114', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (9, '122', 'Laboratory');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (9, '126', 'Laboratory');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (10, '112', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (11, '108A', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (12, '140', 'Classroom');


-- Business Building (BB)

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (13, '01.02B', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (13, '01.20D', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (13, '01.20M', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (14, '01.02', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (14, '01.06', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (14, '01.10', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (15, '01.02', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (15, '01.06', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (15, '01.10', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (15, '02.06', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (15, '02.02', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (15, '02.14', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (15, '02.28', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (15, '03.02', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (15, '03.05', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (15, '03.16', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (15, '03.24', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (15, '04.06', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (15, '04.18', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (16, '01.08A', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (16, '01.18H', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (16, '02.10', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (16, '02.48', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (16, '02.68', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (16, '03.26', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (16, '03.35', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (16, '04.02', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (16, '04.20', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (16, '06.12', 'Classroom');

-- JPL
INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (19, '01.08E', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (19, '01.12C', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (20, '01.54', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (20, '02.32', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (20, '02.34', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (20, '02.38', 'Classroom');

-- AET
INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (23, '102F', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (24, '106', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (25, '204', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (25, '205C', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (25, '328', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (25, '346', 'Classroom');

-- EB
INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (30, '04.02', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (30, '04.08', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (30, '04.10', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (30, '04.18', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (31, '04.04', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (31, '04.06', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (31, '04.22', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (31, '04.26A', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (31, '04.30', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (31, '04.64', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (31, '04.70', 'Classroom');

-- BSB

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (35, '03.10', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (36, '03.02', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (36, '03.10', 'Classroom');

-- ART

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (37, '01.20', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (37, '01.24', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (37, '01.30', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (37, '02.06', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (38, '02.12', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (38, '02.24', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (38, '03.02B', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (38, '03.14A', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (38, '03.20A', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (38, '03.22A', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (38, '03.02B', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (39, '01.07', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (39, '01.11', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (39, '01.26', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (39, '01.28', 'Classroom');

INSERT INTO location (building_floor_id, room_number, room_type)
VALUES (40, '01.06', 'Classroom');
