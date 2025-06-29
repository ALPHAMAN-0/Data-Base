CREATE DATABASE HR;
USE HR;
CREATE TABLE regions (
    region_id INT PRIMARY KEY,
    region_name VARCHAR(50) NOT NULL
);
CREATE TABLE countries (
    country_id CHAR(2) PRIMARY KEY,
    country_name VARCHAR(50) NOT NULL,
    region_id INT,
    FOREIGN KEY (region_id) REFERENCES regions(region_id)
);
CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    street_address VARCHAR(100),
    postal_code VARCHAR(20),
    city VARCHAR(50) NOT NULL,
    state_province VARCHAR(50),
    country_id CHAR(2),
    FOREIGN KEY (country_id) REFERENCES countries(country_id)
);
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL,
    manager_id INT,
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);
CREATE TABLE jobs (
    job_id INT PRIMARY KEY,
    job_title VARCHAR(50) NOT NULL,
    min_salary DECIMAL(10,2),
    max_salary DECIMAL(10,2)
);
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    hire_date DATE NOT NULL,
    job_id INT,
    salary DECIMAL(10,2),
    commission_pct DECIMAL(4,2),
    manager_id INT,
    department_id INT,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
ALTER TABLE departments
ADD CONSTRAINT fk_manager
FOREIGN KEY (manager_id) REFERENCES employees(employee_id);

CREATE TABLE job_history (
    employee_id INT,
    start_date DATE NOT NULL,
    end_date DATE,
    job_id INT,
    department_id INT,
    PRIMARY KEY (employee_id, start_date),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
INSERT INTO regions (region_id, region_name) VALUES
(1, 'Europe'),
(2, 'Americas'),
(3, 'Asia'),
(4, 'Middle East and Africa');

-- Inserting sample data into COUNTRIES
INSERT INTO countries (country_id, country_name, region_id) VALUES
('US', 'United States', 2),
('UK', 'United Kingdom', 1),
('IN', 'India', 3),
('AE', 'United Arab Emirates', 4);

-- Inserting sample data into LOCATIONS
INSERT INTO locations (location_id, street_address, postal_code, city, state_province, country_id) VALUES
(1, '123 Main St', '10001', 'New York', 'NY', 'US'),
(2, '45 London Rd', 'SW1A', 'London', NULL, 'UK'),
(3, '78 Mumbai Ave', '400001', 'Mumbai', NULL, 'IN'),
(4, '90 Dubai St', '12345', 'Dubai', NULL, 'AE');

-- Inserting sample data into JOBS
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
(1, 'Manager', 8000.00, 15000.00),
(2, 'Developer', 6000.00, 12000.00),
(3, 'Analyst', 5000.00, 10000.00),
(4, 'Clerk', 3000.00, 6000.00);

-- Inserting sample data into DEPARTMENTS
INSERT INTO departments (department_id, department_name, manager_id, location_id) VALUES
(1, 'IT', NULL, 1),
(2, 'HR', NULL, 2),
(3, 'Sales', NULL, 3),
(4, 'Finance', NULL, 4);

-- Inserting sample data into EMPLOYEES (at least 50 rows)
INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
(1, 'John', 'Doe', 'john.doe@company.com', '123-456-7890', '2020-01-15', 1, 12000.00, 0.10, NULL, 1),
(2, 'Jane', 'Smith', 'jane.smith@company.com', '234-567-8901', '2019-03-22', 2, 9000.00, NULL, 1, 1),
(3, 'Emily', 'Johnson', 'emily.j@company.com', '345-678-9012', '2021-06-10', 3, 7000.00, 0.05, 1, 2),
(4, 'Michael', 'Brown', 'michael.b@company.com', '456-789-0123', '2018-11-05', 4, 4500.00, NULL, 3, 3),
(5, 'Sarah', 'Davis', 'sarah.d@company.com', '567-890-1234', '2020-09-12', 1, 11000.00, 0.15, NULL, 4),
(6, 'David', 'Wilson', 'david.w@company.com', '678-901-2345', '2017-04-18', 2, 9500.00, NULL, 1, 1),
(7, 'Laura', 'Martinez', 'laura.m@company.com', '789-012-3456', '2022-02-25', 3, 7200.00, 0.05, 5, 2),
(8, 'James', 'Taylor', 'james.t@company.com', '890-123-4567', '2019-07-30', 1, 13000.00, 0.10, NULL, 3),
(9, 'Anna', 'Anderson', 'anna.a@company.com', '901-234-5678', '2021-01-08', 4, 5000.00, NULL, 8, 3),
(10, 'Robert', 'Thomas', 'robert.t@company.com', '012-345-6789', '2020-05-14', 2, 8800.00, NULL, 1, 1),
(11, 'Lisa', 'Jackson', 'lisa.j@company.com', '123-456-7891', '2018-12-01', 3, 6800.00, 0.05, 5, 2),
(12, 'Mark', 'White', 'mark.w@company.com', '234-567-8902', '2019-10-20', 4, 4800.00, NULL, 8, 3),
(13, 'Karen', 'Harris', 'karen.h@company.com', '345-678-9013', '2020-03-17', 1, 11500.00, 0.15, NULL, 4),
(14, 'Steven', 'Lewis', 'steven.l@company.com', '456-789-0124', '2021-08-04', 2, 9200.00, NULL, 1, 1),
(15, 'Megan', 'Walker', 'megan.w@company.com', '567-890-1235', '2017-06-22', 3, 7100.00, 0.05, 5, 2),
(16, 'Paul', 'Allen', 'paul.a@company.com', '678-901-2346', '2019-02-11', 4, 5200.00, NULL, 8, 3),
(17, 'Susan', 'Young', 'susan.y@company.com', '789-012-3457', '2020-07-09', 1, 12500.00, 0.10, NULL, 1),
(18, 'Daniel', 'King', 'daniel.k@company.com', '890-123-4568', '2018-05-16', 2, 8700.00, NULL, 1, 1),
(19, 'Nancy', 'Wright', 'nancy.w@company.com', '901-234-5679', '2021-04-03', 3, 6900.00, 0.05, 5, 2),
(20, 'Thomas', 'Scott', 'thomas.s@company.com', '012-345-6790', '2020-11-27', 4, 5300.00, NULL, 8, 3),
(21, 'Jennifer', 'Green', 'jennifer.g@company.com', '123-456-7892', '2019-09-15', 1, 11800.00, 0.15, NULL, 4),
(22, 'Charles', 'Adams', 'charles.a@company.com', '234-567-8903', '2018-03-12', 2, 9100.00, NULL, 1, 1),
(23, 'Patricia', 'Baker', 'patricia.b@company.com', '345-678-9014', '2020-01-30', 3, 7000.00, 0.05, 5, 2),
(24, 'Joseph', 'Gonzalez', 'joseph.g@company.com', '456-789-0125', '2021-05-19', 4, 5400.00, NULL, 8, 3),
(25, 'Linda', 'Nelson', 'linda.n@company.com', '567-890-1236', '2017-08-06', 1, 12200.00, 0.10, NULL, 1),
(26, 'William', 'Carter', 'william.c@company.com', '678-901-2347', '2019-04-23', 2, 9300.00, NULL, 1, 1),
(27, 'Elizabeth', 'Mitchell', 'elizabeth.m@company.com', '789-012-3458', '2020-10-11', 3, 7200.00, 0.05, 5, 2),
(28, 'Richard', 'Perez', 'richard.p@company.com', '890-123-4569', '2018-07-28', 4, 5500.00, NULL, 8, 3),
(29, 'Mary', 'Roberts', 'mary.r@company.com', '901-234-5680', '2021-02-14', 1, 12800.00, 0.15, NULL, 4),
(30, 'Christopher', 'Turner', 'christopher.t@company.com', '012-345-6791', '2020-06-01', 2, 8900.00, NULL, 1, 1),
(31, 'Barbara', 'Phillips', 'barbara.p@company.com', '123-456-7893', '2019-12-08', 3, 6800.00, 0.05, 5, 2),
(32, 'Matthew', 'Campbell', 'matthew.c@company.com', '234-567-8904', '2018-01-25', 4, 5600.00, NULL, 8, 3),
(33, 'Deborah', 'Parker', 'deborah.p@company.com', '345-678-9015', '2020-04-12', 1, 11500.00, 0.10, NULL, 1),
(34, 'George', 'Evans', 'george.e@company.com', '456-789-0126', '2021-09-29', 2, 9000.00, NULL, 1, 1),
(35, 'Margaret', 'Edwards', 'margaret.e@company.com', '567-890-1237', '2017-11-16', 3, 7100.00, 0.05, 5, 2),
(36, 'Andrew', 'Collins', 'andrew.c@company.com', '678-901-2348', '2019-05-03', 4, 5700.00, NULL, 8, 3),
(37, 'Sandra', 'Stewart', 'sandra.s@company.com', '789-012-3459', '2020-08-20', 1, 12400.00, 0.15, NULL, 4),
(38, 'Kenneth', 'Sanchez', 'kenneth.s@company.com', '890-123-4570', '2018-10-07', 2, 8800.00, NULL, 1, 1),
(39, 'Donna', 'Morris', 'donna.m@company.com', '901-234-5681', '2021-03-24', 3, 6900.00, 0.05, 5, 2),
(40, 'Edward', 'Rogers', 'edward.r@company.com', '012-345-6792', '2020-12-11', 4, 5800.00, NULL, 8, 3),
(41, 'Carol', 'Reed', 'carol.r@company.com', '123-456-7894', '2019-06-28', 1, 11900.00, 0.10, NULL, 1),
(42, 'Ronald', 'Cook', 'ronald.c@company.com', '234-567-8905', '2018-02-15', 2, 9100.00, NULL, 1, 1),
(43, 'Ruth', 'Morgan', 'ruth.m@company.com', '345-678-9016', '2020-05-02', 3, 7000.00, 0.05, 5, 2),
(44, 'Jason', 'Bell', 'jason.b@company.com', '456-789-0127', '2021-10-19', 4, 5900.00, NULL, 8, 3),
(45, 'Sharon', 'Murphy', 'sharon.m@company.com', '567-890-1238', '2017-09-06', 1, 12100.00, 0.15, NULL, 4),
(46, 'Larry', 'Bailey', 'larry.b@company.com', '678-901-2349', '2019-01-23', 2, 9200.00, NULL, 1, 1),
(47, 'Michelle', 'Rivera', 'michelle.r@company.com', '789-012-3460', '2020-07-10', 3, 7200.00, 0.05, 5, 2),
(48, 'Kevin', 'Cooper', 'kevin.c@company.com', '890-123-4571', '2018-04-27', 4, 6000.00, NULL, 8, 3),
(49, 'Cynthia', 'Richardson', 'cynthia.r@company.com', '901-234-5682', '2021-06-14', 1, 12600.00, 0.10, NULL, 1),
(50, 'Jeffrey', 'Cox', 'jeffrey.c@company.com', '012-345-6793', '2020-02-01', 2, 9300.00, NULL, 1, 1);

-- Inserting sample data into JOB_HISTORY
INSERT INTO job_history (employee_id, start_date, end_date, job_id, department_id) VALUES
(2, '2018-03-01', '2019-03-21', 4, 3),
(3, '2020-06-01', '2021-06-09', 2, 1),
(4, '2017-11-01', '2018-11-04', 3, 2);
