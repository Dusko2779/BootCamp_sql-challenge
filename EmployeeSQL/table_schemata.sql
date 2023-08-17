CREATE TABLE Titles (
    title_id CHAR(10) PRIMARY KEY,
    title VARCHAR(255)
);

CREATE TABLE Departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(255)
);

CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title_id CHAR(10),
    birth_date DATE,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex CHAR(1),
    hire_date DATE,
    FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

CREATE TABLE Salaries (
    emp_no INT PRIMARY KEY,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Dept_emp (
    emp_no INT,
    dept_no CHAR(4),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE Dept_manager (
    dept_no CHAR(4),
    emp_no INT,
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);





