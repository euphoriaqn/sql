/* Добавить разаработчикам поле (salary - зарплата).  */
ALTER TABLE developers ADD salary DECIMAL;

UPDATE developers
SET salary = 1500
WHERE id = 1;

UPDATE developers
SET salary = 2000
WHERE id = 2;

UPDATE developers
SET salary = 2500
WHERE id = 3;

UPDATE developers
SET salary = 2000
WHERE id = 4;

UPDATE developers
SET salary = 2200
WHERE id = 5;

UPDATE developers
SET salary = 1800
WHERE id = 6;

UPDATE developers
SET salary = 2150
WHERE id = 7;

UPDATE developers
SET salary = 3200
WHERE id = 8;

UPDATE developers
SET salary = 1700
WHERE id = 9;

UPDATE developers
SET salary = 900
WHERE id = 10;

UPDATE developers
SET salary = 1350
WHERE id = 11;

UPDATE developers
SET salary = 2340
WHERE id = 12;