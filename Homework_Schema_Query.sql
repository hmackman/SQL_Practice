-- CREATE TABLE Departments (
--     Department_Number varchar   NOT NULL,
--     Department_Name varchar   NOT NULL,
--     CONSTRAINT pk_Departments PRIMARY KEY (
--         Department_Number
--      )
-- );

-- select * from Departments

-- CREATE TABLE Department_Employee (
--     Employee_Number int   NOT NULL,
--     Department_Number varchar   NOT NULL,
--     From_Date date   NOT NULL,
--     To_Date date   NOT NULL,
--     CONSTRAINT pk_Department_Employee PRIMARY KEY (
--         Employee_Number,Department_Number
--      )
-- );

-- select * from Department_Employee


-- CREATE TABLE Department_Manager (
--     Department_Number varchar   NOT NULL,
--     Employee_Number int   NOT NULL,
--     From_Date date   NOT NULL,
--     To_Date date   NOT NULL,
--     CONSTRAINT pk_Department_Manager PRIMARY KEY (
--         Department_Number,Employee_Number
--      )
-- );

-- select * from Department_Manager

-- CREATE TABLE Employees (
--     Employee_Number int   NOT NULL,
--     Birth_Date date   NOT NULL,
--     First_Name varchar   NOT NULL,
--     Last_Name varchar   NOT NULL,
--     Gender varchar   NOT NULL,
--     Hire_Date date   NOT NULL,
--     CONSTRAINT pk_Employees PRIMARY KEY (
--         Employee_Number
--      )
-- );

-- select * from Employees

-- CREATE TABLE Salaries (
--     Employee_Number int   NOT NULL,
--     Salary int   NOT NULL,
--     From_Date date   NOT NULL,
--     To_Date date   NOT NULL,
--     CONSTRAINT pk_Salaries PRIMARY KEY (
--         Employee_Number
--      )
-- );

-- select * from Salaries

-- CREATE TABLE Titles (
--     Employee_Number int   NOT NULL,
--     Title varchar   NOT NULL,
--     From_Date date   NOT NULL,
--     To_Date date   NOT NULL,
--     CONSTRAINT pk_Titles PRIMARY KEY (
--         Employee_Number,From_Date
--      )
-- );

-- select * from Titles

ALTER TABLE Department_Employee ADD CONSTRAINT fk_Department_Employee_Employee_Number FOREIGN KEY(Employee_Number)
REFERENCES Employees (Employee_Number);

ALTER TABLE Department_Employee ADD CONSTRAINT fk_Department_Employee_Department_Number FOREIGN KEY(Department_Number)
REFERENCES Departments (Department_Number);

ALTER TABLE Department_Manager ADD CONSTRAINT fk_Department_Manager_Department_Number FOREIGN KEY(Department_Number)
REFERENCES Departments (Department_Number);

ALTER TABLE Department_Manager ADD CONSTRAINT fk_Department_Manager_Employee_Number FOREIGN KEY(Employee_Number)
REFERENCES Employees (Employee_Number);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_Employee_Number FOREIGN KEY(Employee_Number)
REFERENCES Employees (Employee_Number);

ALTER TABLE Titles ADD CONSTRAINT fk_Titles_Employee_Number FOREIGN KEY(Employee_Number)
REFERENCES Employees (Employee_Number);



