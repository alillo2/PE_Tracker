CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email text NOT NULL,
    password text NOT NULL
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name text NOT NULL,
    school INT NOT NULL,
    expires DATE NOT NULL
);

CREATE TABLE schools (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    address TEXT NOT NULL
);

CREATE TABLE observations (
    id SERIAL PRIMARY KEY,
    users_id INT NOT NULL,
    students_id INT NOT NULL,
    tasks_id INT NOT NULL,
    duration INTERVAL NOT NULL
);

CREATE TABLE tasks (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

INSERT INTO tasks (name) VALUES
    ('Study');

INSERT INTO tasks (name) VALUES
    ('Final Project');

INSERT INTO tasks (name) VALUES
    ('Weekly Assign.');


INSERT INTO students (name, school, expires) VALUES
    ('Adam Lillo', '1', '11-08-2021');

INSERT INTO students (name, school, expires) VALUES
    ('Peter Pan', '1', '12-09-2022');

INSERT INTO schools (name, address) VALUES
    ('CVTC', '620 W Clairemont Ave, Eau Claire, WI 54701');




ALTER TABLE observations RENAME COLUMN sutdents_id TO students_id;
