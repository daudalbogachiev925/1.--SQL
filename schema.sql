CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT);
CREATE TABLE workouts (id INTEGER PRIMARY KEY, user_id INTEGER,
    date DATE, duration_min INTEGER);
CREATE TABLE exercises (id INTEGER PRIMARY KEY, name TEXT, muscle TEXT);
CREATE TABLE sets (
    id INTEGER PRIMARY KEY, workout_id INTEGER,
    exercise_id INTEGER, weight REAL, reps INTEGER);
