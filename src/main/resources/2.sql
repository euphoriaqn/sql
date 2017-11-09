/*2. Найти самый дорогой проект (исходя из ЗП разработчиков). */
SELECT bigTable.prjName, bigTable.sumSalary
FROM (
       SELECT table1.prjName, table2.devID, sum(SalaryTable.devSalary) as sumSalary
       FROM
         (SELECT project_name as prjName, id as prjID from projects) as table1
         JOIN
         (SELECT developers_projects.developer_id as devID, developers_projects.project_id as prjID
          FROM developers_projects) as table2
           on table1.prjID = table2.prjID
         JOIN
         (SELECT salary as devSalary, id as devID2 FROM developers) as SalaryTable
           on table2.devID = SalaryTable.devID2
       GROUP BY table1.prjName) as bigTable
ORDER BY sumSalary DESC
LIMIT 1