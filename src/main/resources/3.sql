/* 3. Вычислить общую ЗП всех Java разработчиков.  */

select sum(developers.salary)
from developers
join skills
join developers_skills
on developers.id = developers_skills.developer_id and skills.id = developers_skills.skill_id and skill = 'Java'