/* 6. Вычислить, среднюю ЗП программистов в проекте, который приносит наименьшую прибыль. */

/*SELECT avg(salary)
FROM */
SELECT avg(salary)
FROM
  (SELECT projects.id,min(cost) AS minCost
   FROM projects
   GROUP BY cost
   LIMIT 1) AS tableMinCost
  LEFT JOIN
  (SELECT * FROM developers_projects) as devProj
    ON tableMinCost.id = devProj.project_id
  INNER JOIN
  (SELECT salary, id
   FROM developers) as table2
    ON table2.id = developer_id

