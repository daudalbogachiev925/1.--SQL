-- Объём по упражнениям
SELECT e.name, SUM(s.weight*s.reps) AS volume
FROM sets s JOIN exercises e ON s.exercise_id=e.id
GROUP BY e.id ORDER BY volume DESC;

-- Тренировки по юзерам
SELECT u.name, COUNT(*) AS n, SUM(w.duration_min) AS minutes
FROM workouts w JOIN users u ON w.user_id=u.id
GROUP BY u.id;

-- Лучший подход
SELECT * FROM sets ORDER BY weight DESC LIMIT 1;
