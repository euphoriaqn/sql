/* 5. Найти клиента (customer),
 которая приносит меньше всего прибыли компании (company) для каждой из компаний .
  */
SELECT compName, finalTable.firstName, finalTable.lastName, min(sumOfPrjCost) FROM(
SELECT  custNativeTable.cusName as firstName, custNativeTable.cusLastName as lastName, cusProjTable.cusID as finalCusId, sum(prjTable.prjCost) as sumOfPrjCost, prjID, compID, compTable.compName
FROM
(SELECT id as prjID, project_name as prjName, cost as prjCost FROM projects) as prjTable
JOIN (SELECT customer_id as cusID, project_id as projID
FROM customers_projects) as cusProjTable
ON prjTable.prjID = cusProjTable.projID
JOIN (SELECT customers.first_name as cusName, customers. last_name as cusLastName, id as nativeCusID FROM customers) as custNativeTable
on custNativeTable.nativeCusID = cusProjTable.cusID
JOIN (SELECT company_id as compID, project_id as projID FROM companies_projects)
as compProjTable
ON compProjTable.projID = prjTable.prjID
JOIN (SELECT company_name as compName, id as compID2 FROM companies) as compTable
ON compTable.compID2 = compProjTable.compID
GROUP BY compName, cusID
ORDER BY sumOfPrjCost)  as finalTable
GROUP BY compName