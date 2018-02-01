/* 4. Добавить поле (cost - стоимость) в таблицу Projects . */

ALTER TABLE projects ADD cost DECIMAL;

UPDATE projects set cost=(Case
WHEN id=1 THEN 25000
WHEN id=2 THEN 37000
WHEN id=3 THEN 15000
WHEN id=4 THEN 40000
WHEN id=5 THEN 22000
WHEN id=6 THEN 14000
WHEN id=7 THEN 50000
WHEN id=8 THEN 26000
WHEN id=9 THEN 17500
END)
WHERE id between 1 and 9