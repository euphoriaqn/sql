/* 4. Добавить поле (cost - стоимость) в таблицу Projects . */

ALTER TABLE projects ADD cost DECIMAL;

UPDATE projects
SET cost = 25000
WHERE id = 1;

UPDATE projects
SET cost = 37000
WHERE id = 2;

UPDATE projects
SET cost = 15000
WHERE id = 3;

UPDATE projects
SET cost = 40000
WHERE id = 4;

UPDATE projects
SET cost = 22000
WHERE id = 5;

UPDATE projects
SET cost = 14000
WHERE id = 6;

UPDATE projects
SET cost = 50000
WHERE id = 7;

UPDATE projects
SET cost = 26000
WHERE id = 8;

UPDATE projects
SET cost = 17500
WHERE id = 9;
