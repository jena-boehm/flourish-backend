DROP TABLE IF EXISTS plants CASCADE;
DROP TABLE IF EXISTS plant_care_logs;

CREATE TABLE plants(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    plant_name: TEXT NOT NULL,
    location: TEXT,
    image_url: TEXT,
    light_directions: TEXT NOT NULL,
    water_directions: TEXT NOT NULL,
    food_directions: TEXT NOT NULL,
    notes: TEXT
);

CREATE TABLE plant_care_logs(
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    plant_id: BIGINT REFERENCES plants(id),
    water_completed: DATE,
    food_completed: DATE,
);

