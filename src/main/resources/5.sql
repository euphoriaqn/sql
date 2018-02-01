/* 5. Найти клиента (customer),
 которая приносит меньше всего прибыли компании (company) для каждой из компаний .
  */
select min(table1.summa), table1.lName, table1.compName from
(select last_name as lName, projects.project_name, sum(projects.cost) as summa, companies.company_name as compName from customers
join customers_projects
join projects
on customers.id = customers_projects.customer_id and projects.id = customers_projects.project_id
join companies
join companies_projects
on companies_projects.company_id = companies.id and companies_projects.project_id = projects.id
group by compName, lName
order by summa) as table1
group by table1.compName