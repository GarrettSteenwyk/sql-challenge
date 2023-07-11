--the various tables
CREATE TABLE departments (
	dept_no VARCHAR(4) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE titles (
	title_id VARCHAR(5) PRIMARY KEY NOT NULL,
	title VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(5),
	birth_date DATE NOT NULL,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	--Changed length of those two after finalizing graphic, not changing graphic
	sex VARCHAR(1)NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT PRIMARY KEY NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	foreign key (emp_no) references employees (emp_no)
);

--for some unknown reason, this will not take the manager csv
--thought there was a typo in something but manager table would also take the emp csv
INSERT INTO dept_manager (dept_no, emp_no)
VALUES ('d001', 110022),
('d001', 110039),
('d002', 110085),
('d002', 110114),
('d003', 110183),
('d003', 110228),
('d004', 110303),
('d004', 110344),
('d004', 110386),
('d004', 110420),
('d005', 110511),
('d005', 110567),
('d006', 110725),
('d006', 110765),
('d006', 110800),
('d006', 110854),
('d007', 111035),
('d007', 111133),
('d008', 111400),
('d008', 111534),
('d009', 111692),
('d009', 111784),
('d009', 111877),
('d009', 111939);
