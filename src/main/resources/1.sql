/* Добавить разаработчикам поле (salary - зарплата).  */
ALTER TABLE developers ADD salary DECIMAL;

UPDATE developers set salary=(Case
  WHEN id=1 THEN 1500
  WHEN id=2 THEN 2000
  WHEN id=3 THEN 2500
  WHEN id=4 THEN 2000
  WHEN id=5 THEN 2200
  WHEN id=6 THEN 1800
  WHEN id=7 THEN 2150
  WHEN id=8 THEN 3200
  WHEN id=9 THEN 1700
  WHEN id=10 THEN 900
  WHEN id=11 THEN 1350
  WHEN id=12 THEN 2340
  END)
WHERE id between 1 and 12