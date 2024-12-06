
CREATE EXTENSION IF NOT EXISTS postgis;
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- vessel

CREATE TABLE vessel_data (
    vessel_id INT,
    time TIMESTAMPTZ NOT NULL,
    position GEOMETRY(Point, 4326),
    speed NUMERIC,
    course NUMERIC,
    PRIMARY KEY (vessel_id, time)
);

CREATE INDEX idx_vessel_data_position_gist ON vessel_data USING GIST (position);

-- Convertir en hypertable https://docs.timescale.com/use-timescale/latest/hypertables/about-hypertables/
SELECT create_hypertable('vessel_data', 'time');

-- ZONES

CREATE TABLE zone (
    id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
    name TEXT,
    geometrie GEOMETRY(Polygon, 4326)
);

CREATE INDEX idx_zone_geometrie_gist ON zone USING GIST (geometrie);
