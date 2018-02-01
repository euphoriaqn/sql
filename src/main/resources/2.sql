/*2. Найти самый дорогой проект (исходя из ЗП разработчиков). */
select project_name from projects
  join
  developers
  join developers_projects
    on projects.id = developers_projects.project_id and developers.id = developers_projects.developer_id
group by project_name
order by sum(developers.salary) desc
limit 1