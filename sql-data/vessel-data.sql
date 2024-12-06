-- vessel

INSERT INTO vessel_data (vessel_id, time, position, speed, course) VALUES
-- Navire 1
(1, '2024-10-01 12:00:00', ST_SetSRID(ST_GeomFromText('POINT(5.1 45.1)'), 4326), 10.5, 180),
(1, '2024-10-01 12:05:00', ST_SetSRID(ST_GeomFromText('POINT(5.2 45.2)'), 4326), 11.0, 190),
(1, '2024-10-01 12:10:00', ST_SetSRID(ST_GeomFromText('POINT(5.3 45.3)'), 4326), 12.0, 200),
(1, '2024-10-01 12:15:00', ST_SetSRID(ST_GeomFromText('POINT(5.4 45.4)'), 4326), 10.0, 210),
(1, '2024-10-01 12:20:00', ST_SetSRID(ST_GeomFromText('POINT(5.5 45.5)'), 4326), 10.2, 215),
(1, '2024-10-01 12:25:00', ST_SetSRID(ST_GeomFromText('POINT(5.6 45.6)'), 4326), 10.7, 220),
(1, '2024-10-01 12:30:00', ST_SetSRID(ST_GeomFromText('POINT(5.7 45.7)'), 4326), 11.2, 225),
(1, '2024-10-01 12:35:00', ST_SetSRID(ST_GeomFromText('POINT(5.8 45.8)'), 4326), 11.5, 230),
(1, '2024-10-01 12:40:00', ST_SetSRID(ST_GeomFromText('POINT(5.9 45.9)'), 4326), 12.0, 235),
(1, '2024-10-01 12:45:00', ST_SetSRID(ST_GeomFromText('POINT(6.0 46.0)'), 4326), 12.5, 240),

-- Navire 2
(2, '2024-10-01 12:00:00', ST_SetSRID(ST_GeomFromText('POINT(6.1 46.1)'), 4326), 8.5, 160),
(2, '2024-10-01 12:05:00', ST_SetSRID(ST_GeomFromText('POINT(6.2 46.2)'), 4326), 9.0, 170),
(2, '2024-10-01 12:10:00', ST_SetSRID(ST_GeomFromText('POINT(6.3 46.3)'), 4326), 9.5, 180),
(2, '2024-10-01 12:15:00', ST_SetSRID(ST_GeomFromText('POINT(6.4 46.4)'), 4326), 10.0, 190),
(2, '2024-10-01 12:20:00', ST_SetSRID(ST_GeomFromText('POINT(6.5 46.5)'), 4326), 10.2, 195),
(2, '2024-10-01 12:25:00', ST_SetSRID(ST_GeomFromText('POINT(6.6 46.6)'), 4326), 10.7, 200),
(2, '2024-10-01 12:30:00', ST_SetSRID(ST_GeomFromText('POINT(6.7 46.7)'), 4326), 11.2, 205),
(2, '2024-10-01 12:35:00', ST_SetSRID(ST_GeomFromText('POINT(6.8 46.8)'), 4326), 11.5, 210),
(2, '2024-10-01 12:40:00', ST_SetSRID(ST_GeomFromText('POINT(6.9 46.9)'), 4326), 12.0, 215),
(2, '2024-10-01 12:45:00', ST_SetSRID(ST_GeomFromText('POINT(7.0 47.0)'), 4326), 12.5, 220),

-- Navire 3
(3, '2024-10-01 12:00:00', ST_SetSRID(ST_GeomFromText('POINT(7.1 47.1)'), 4326), 7.0, 150),
(3, '2024-10-01 12:05:00', ST_SetSRID(ST_GeomFromText('POINT(7.2 47.2)'), 4326), 7.5, 155),
(3, '2024-10-01 12:10:00', ST_SetSRID(ST_GeomFromText('POINT(7.3 47.3)'), 4326), 8.0, 160),
(3, '2024-10-01 12:15:00', ST_SetSRID(ST_GeomFromText('POINT(7.4 47.4)'), 4326), 8.5, 165),
(3, '2024-10-01 12:20:00', ST_SetSRID(ST_GeomFromText('POINT(7.5 47.5)'), 4326), 9.0, 170),
(3, '2024-10-01 12:25:00', ST_SetSRID(ST_GeomFromText('POINT(7.6 47.6)'), 4326), 9.5, 175),
(3, '2024-10-01 12:30:00', ST_SetSRID(ST_GeomFromText('POINT(7.7 47.7)'), 4326), 10.0, 180),
(3, '2024-10-01 12:35:00', ST_SetSRID(ST_GeomFromText('POINT(7.8 47.8)'), 4326), 10.5, 185),
(3, '2024-10-01 12:40:00', ST_SetSRID(ST_GeomFromText('POINT(7.9 47.9)'), 4326), 11.0, 190),
(3, '2024-10-01 12:45:00', ST_SetSRID(ST_GeomFromText('POINT(8.0 48.0)'), 4326), 11.5, 195),

-- Ajoutez les navires 4 à 10 de manière similaire
(4, '2024-10-01 12:00:00', ST_SetSRID(ST_GeomFromText('POINT(8.1 48.1)'), 4326), 6.0, 140),
(4, '2024-10-01 12:05:00', ST_SetSRID(ST_GeomFromText('POINT(8.2 48.2)'), 4326), 6.5, 145),
(4, '2024-10-01 12:10:00', ST_SetSRID(ST_GeomFromText('POINT(8.3 48.3)'), 4326), 7.0, 150),
(4, '2024-10-01 12:15:00', ST_SetSRID(ST_GeomFromText('POINT(8.4 48.4)'), 4326), 7.5, 155),

(5, '2024-10-01 12:00:00', ST_SetSRID(ST_GeomFromText('POINT(8.5 48.5)'), 4326), 5.0, 130),
(5, '2024-10-01 12:05:00', ST_SetSRID(ST_GeomFromText('POINT(8.6 48.6)'), 4326), 5.5, 135),
(5, '2024-10-01 12:10:00', ST_SetSRID(ST_GeomFromText('POINT(8.7 48.7)'), 4326), 6.0, 140),
(5, '2024-10-01 12:15:00', ST_SetSRID(ST_GeomFromText('POINT(8.8 48.8)'), 4326), 6.5, 145),

(6, '2024-10-01 12:00:00', ST_SetSRID(ST_GeomFromText('POINT(8.9 48.9)'), 4326), 4.0, 120),
(6, '2024-10-01 12:05:00', ST_SetSRID(ST_GeomFromText('POINT(9.0 49.0)'), 4326), 4.5, 125),
(6, '2024-10-01 12:10:00', ST_SetSRID(ST_GeomFromText('POINT(9.1 49.1)'), 4326), 5.0, 130),
(6, '2024-10-01 12:15:00', ST_SetSRID(ST_GeomFromText('POINT(9.2 49.2)'), 4326), 5.5, 135),

(7, '2024-10-01 12:00:00', ST_SetSRID(ST_GeomFromText('POINT(9.3 49.3)'), 4326), 3.0, 110),
(7, '2024-10-01 12:05:00', ST_SetSRID(ST_GeomFromText('POINT(9.4 49.4)'), 4326), 3.5, 115),
(7, '2024-10-01 12:10:00', ST_SetSRID(ST_GeomFromText('POINT(9.5 49.5)'), 4326), 4.0, 120),
(7, '2024-10-01 12:15:00', ST_SetSRID(ST_GeomFromText('POINT(9.6 49.6)'), 4326), 4.5, 125),

(8, '2024-10-01 12:00:00', ST_SetSRID(ST_GeomFromText('POINT(9.7 49.7)'), 4326), 2.0, 100),
(8, '2024-10-01 12:05:00', ST_SetSRID(ST_GeomFromText('POINT(9.8 49.8)'), 4326), 2.5, 105),
(8, '2024-10-01 12:10:00', ST_SetSRID(ST_GeomFromText('POINT(9.9 49.9)'), 4326), 3.0, 110),
(8, '2024-10-01 12:15:00', ST_SetSRID(ST_GeomFromText('POINT(10.0 50.0)'), 4326), 3.5, 115),

(9, '2024-10-01 12:00:00', ST_SetSRID(ST_GeomFromText('POINT(10.1 50.1)'), 4326), 1.0, 90),
(9, '2024-10-01 12:05:00', ST_SetSRID(ST_GeomFromText('POINT(10.2 50.2)'), 4326), 1.5, 95),
(9, '2024-10-01 12:10:00', ST_SetSRID(ST_GeomFromText('POINT(10.3 50.3)'), 4326), 2.0, 100),
(9, '2024-10-01 12:15:00', ST_SetSRID(ST_GeomFromText('POINT(10.4 50.4)'), 4326), 2.5, 105),

(10, '2024-10-01 12:00:00', ST_SetSRID(ST_GeomFromText('POINT(10.5 50.5)'), 4326), 0.5, 80),
(10, '2024-10-01 12:05:00', ST_SetSRID(ST_GeomFromText('POINT(10.6 50.6)'), 4326), 1.0, 85),
(10, '2024-10-01 12:10:00', ST_SetSRID(ST_GeomFromText('POINT(10.7 50.7)'), 4326), 1.5, 90),
(10, '2024-10-01 12:15:00', ST_SetSRID(ST_GeomFromText('POINT(10.8 50.8)'), 4326), 2.0, 95);


-- ZONES
INSERT INTO zone (name, geometrie) VALUES
('Zone 1', ST_SetSRID(ST_GeomFromText('POLYGON((4.5 44.5, 5.5 44.5, 5.5 45.5, 4.5 45.5, 4.5 44.5))'), 4326)),
('Zone 2', ST_SetSRID(ST_GeomFromText('POLYGON((5.5 45.5, 6.5 45.5, 6.5 46.5, 5.5 46.5, 5.5 45.5))'), 4326)),
('Zone 3', ST_SetSRID(ST_GeomFromText('POLYGON((6.0 46.0, 7.0 46.0, 7.0 47.0, 6.0 47.0, 6.0 46.0))'), 4326));
