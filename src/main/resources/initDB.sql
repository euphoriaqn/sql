CREATE TABLE developers (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  first_name varchar(100) DEFAULT NULL,
  last_name varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE skills (
  id int NOT NULL AUTO_INCREMENT,
  skill varchar(100) NOT NULL ,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE developers_skills (
  developer_id int NOT NULL,
  skill_id INT NOT NULL,
  PRIMARY KEY (developer_id, skill_id),
  FOREIGN KEY (developer_id)REFERENCES developers (ID),
  FOREIGN KEY (skill_id) REFERENCES skills (ID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE projects (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  project_name varchar(100) UNIQUE NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE developers_projects (
  developer_id int NOT NULL,
  project_id int NOT NULL,
  PRIMARY KEY (developer_id,project_id),
  FOREIGN KEY (developer_id) REFERENCES developers (id),
  FOREIGN KEY (project_id) REFERENCES projects (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE companies (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  company_name varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE customers (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name varchar(100) NOT NULL,
  last_name varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE companies_projects (
  company_id int NOT NULL,
  project_id int NOT NULL,
  PRIMARY KEY (company_id,project_id),
  FOREIGN KEY (company_id) REFERENCES companies (id),
  FOREIGN KEY (project_id) REFERENCES projects (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE customers_projects (
  customer_id int NOT NULL,
  project_id int NOT NULL,
  PRIMARY KEY (customer_id,project_id),
  FOREIGN KEY (customer_id) REFERENCES customers (id),
  FOREIGN KEY (project_id) REFERENCES projects (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8