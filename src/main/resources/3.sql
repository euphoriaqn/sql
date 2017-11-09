/* 3. Вычислить общую ЗП всех Java разработчиков.  */

SELECT sum(salary)
FROM developers, skills, developers_skills
WHERE developers.id = developers_skills.developer_id and developers_skills.skill_id = skills.id and skill = 'Java'
GROUP BY skill