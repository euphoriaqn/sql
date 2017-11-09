INSERT INTO projects ( project_name)
VALUES ('project1'),('project2'),('project3'),('project4'),
('project5'),('project6'),('project7'),('project8'),('project9');

INSERT INTO skills (skill)
VALUES ('Java'),('C++'),('JavaScript'),('C#'),('UI/UX'),('PHP');

INSERT INTO developers (first_name, last_name)
VALUES ('Ivan', 'Oberemko'),('Orest', 'Lyutiy'),('Vladimir', 'Shilov'),
('Vladimir', 'Lenin'),('Nikolay', 'Ostrecov'),('Pavlo', 'Vinogradov'),
('Petro', 'Cake'),('Olena', 'Petrova'),('Marina', 'Orlova'),
('Misha', 'Zaporozhec'),('Dima', 'Vavilov'),('Nikolas', 'Gora');

INSERT INTO customers (first_name, last_name)
VALUES ('Rinat','Ahmetov'), ('Igor','Kolomoyskiy'), ('Petro','Poroshenko');

INSERT INTO companies (company_name)
VALUES ('Luxoft'), ('GlobalLogic'), ('Ciclum'), ('GoIt');

INSERT INTO companies_projects (company_id, project_id)
VALUES (1, 1), (2,4), (3,2), (4,3), (1, 9), (2, 5), (3, 7), (4, 6), (1, 8);

INSERT INTO customers_projects (customer_id, project_id)
VALUES (1, 1), (2,4), (3,2), (1,3), (2, 9), (3, 5), (1, 7), (1, 6), (2, 8);

INSERT INTO developers_projects (developer_id, project_id)
VALUES (1, 1), (2, 4), (3, 2), (4, 3), (5, 9), (6, 5), (7, 7), (8, 6), (9, 8),
  (10, 1), (11, 4), (12, 2), (1, 3), (2, 9), (3, 5), (4, 7), (5, 6), (6, 8),
  (7, 1), (8, 4), (9, 2), (10, 3), (11, 9), (12, 5),(1, 7), (2, 6), (3, 8),
  (4, 1), (5, 2), (6, 3), (7, 4), (8, 5), (9, 6), (10, 7), (11, 8), (12, 9),
  (12, 1), (11, 2), (9, 4), (7, 6), (6, 7), (5, 8), (2, 5);

INSERT INTO developers_skills (developer_id, skill_id)
VALUES (1, 1), (2, 1), (3, 1), (4, 2), (5, 2), (6, 2), (7, 3), (8, 3), (9, 4),
  (10, 5), (11, 5), (12, 6)