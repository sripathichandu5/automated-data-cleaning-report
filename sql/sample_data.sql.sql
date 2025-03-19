CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    joining_date DATE,
    email VARCHAR(100)
);

INSERT INTO employees (emp_id, emp_name, department, salary, joining_date, email) VALUES
(1, 'John Doe', 'Sales', 50000, '2021-05-10', 'john@example.com'),
(2, 'Jane Smith', NULL, 55000, '2022-01-15', 'jane@example.com'), -- Missing department
(3, 'Michael Brown', 'HR', 48000, '2020-03-20', 'michael@example.com'),
(4, 'Emily Davis', 'Finance', 60000, '2023-02-12', 'emily@example.com'),
(5, 'David Wilson', 'IT', 62000, '2021-11-05', 'david@example.com'),
(6, 'Sophia Johnson', 'Sales', 53000, '2022-09-25', 'sophia@example.com'),
(7, NULL, 'Finance', 60000, '2023-08-12', 'finance@example.com'), -- Missing name
(8, 'Daniel Miller', 'Marketing', 51000, '2022-05-10', 'daniel@example.com'),
(9, 'Ava Anderson', 'IT', 65000, '2021-03-16', 'ava@example.com'),
(10, 'James Thomas', 'Sales', 47000, '2022-12-19', 'james@example.com'),

-- Duplicates
(11, 'John Doe', 'Sales', 50000, '2021-05-10', 'john@example.com'), 
(12, 'Jane Smith', NULL, 55000, '2022-01-15', 'jane@example.com'),

-- More dummy data
(13, 'Grace Martin', 'HR', 49000, '2023-01-20', 'grace@example.com'),
(14, 'Henry Lee', 'Finance', 70000, '2020-04-08', 'henry@example.com'),
(15, 'Isabella Perez', 'Marketing', 52000, '2021-07-13', 'isabella@example.com'),
(16, 'Liam White', NULL, 58000, '2022-03-09', 'liam@example.com'), -- Missing department
(17, 'Olivia Harris', 'Sales', 54000, '2023-09-27', NULL), -- Missing email
(18, 'Noah Clark', 'IT', 62000, '2020-08-14', 'noah@example.com'),
(19, 'Emma Lewis', 'Finance', 59000, '2021-06-22', 'emma@example.com'),
(20, 'Mason Young', 'HR', 51000, '2023-04-18', 'mason@example.com'),

-- Continue adding similar dummy entries
(21, 'Ethan King', 'Sales', 48000, '2022-07-11', 'ethan@example.com'),
(22, 'Mia Scott', 'Marketing', 53000, '2023-05-05', 'mia@example.com'),
(23, 'Lucas Green', 'IT', 61000, '2021-09-30', 'lucas@example.com'),
(24, 'Amelia Baker', 'Finance', NULL, '2022-10-21', 'amelia@example.com'), -- Missing salary
(25, 'Logan Adams', 'HR', 49500, '2023-03-29', 'logan@example.com'),

(26, 'Harper Nelson', 'Sales', 56000, '2020-02-15', 'harper@example.com'),
(27, 'Elijah Carter', 'IT', 60000, '2022-11-09', 'elijah@example.com'),
(28, 'Abigail Mitchell', NULL, 54000, '2021-01-25', 'abigail@example.com'), -- Missing department
(29, 'William Roberts', 'Finance', 58000, '2023-06-02', 'william@example.com'),
(30, 'Charlotte Turner', 'Marketing', 50000, '2020-12-12', 'charlotte@example.com'),

-- Some more duplicates
(31, 'Michael Brown', 'HR', 48000, '2020-03-20', 'michael@example.com'),
(32, 'Emily Davis', 'Finance', 60000, '2023-02-12', 'emily@example.com'),

-- Fill remaining up to 50
(33, 'Alexander Phillips', 'Sales', 51500, '2022-08-18', 'alexander@example.com'),
(34, 'Sofia Campbell', 'Finance', 60500, '2021-05-23', 'sofia@example.com'),
(35, 'Benjamin Parker', 'Marketing', 55500, '2020-06-17', 'benjamin@example.com'),
(36, 'Evelyn Evans', 'HR', 50000, '2022-09-14', 'evelyn@example.com'),
(37, 'Sebastian Edwards', 'Sales', NULL, '2023-07-30', 'sebastian@example.com'), -- Missing salary
(38, 'Chloe Collins', 'IT', 62000, '2021-02-26', 'chloe@example.com'),
(39, NULL, 'Finance', 59000, '2022-05-06', 'finance2@example.com'), -- Missing name
(40, 'Matthew Stewart', 'HR', 50500, '2020-10-19', 'matthew@example.com'),

(41, 'Ella Sanchez', 'Sales', 52000, '2023-11-15', 'ella@example.com'),
(42, 'Jack Morris', 'Marketing', 53000, '2021-07-04', 'jack@example.com'),
(43, 'Aria Rogers', 'IT', 61000, '2020-03-28', 'aria@example.com'),
(44, 'Henry Cook', 'Finance', 59000, '2022-01-31', 'henryc@example.com'),
(45, 'Scarlett Morgan', NULL, 57000, '2023-09-08', 'scarlett@example.com'), -- Missing department

(46, 'Daniel Bell', 'HR', 50000, '2020-06-03', 'danielb@example.com'),
(47, 'Victoria Reed', 'Sales', 54000, '2021-12-22', 'victoria@example.com'),
(48, 'Samuel Bailey', 'Marketing', NULL, '2023-04-10', 'samuel@example.com'), -- Missing salary
(49, 'Luna Cooper', 'IT', 61500, '2022-08-14', NULL), -- Missing email
(50, 'Levi Richardson', 'Finance', 60000, '2021-10-07', 'levi@example.com');
