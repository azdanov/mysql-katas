CREATE DATABASE customers;
USE customers;

-- https://stackoverflow.com/questions/28558920/postgresql-foreign-key-syntax#answer-28560619
CREATE TABLE customers (
  id         INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100),
  last_name  VARCHAR(100),
  email      VARCHAR(100)
);
CREATE TABLE orders (
  id          INT AUTO_INCREMENT PRIMARY KEY,
  order_date  DATE,
  amount      DECIMAL(8, 2),
  customer_id INT REFERENCES customers (id)
);

INSERT INTO customers (first_name, last_name, email)
VALUES ('Boy', 'George', 'george@gmail.com'),
  ('George', 'Michael', 'gm@gmail.com'),
  ('David', 'Bowie', 'david@gmail.com'),
  ('Blue', 'Steele', 'blue@gmail.com'),
  ('Bette', 'Davis', 'bette@aol.com');

INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
  ('2017/11/11', 35.50, 1),
  ('2014/12/12', 800.67, 2),
  ('2015/01/03', 12.50, 2),
  ('1999/04/11', 450.25, 5);

SELECT *
FROM customers;
SELECT *
FROM orders;

-- Error: Invalid foreign key (No user with id of 98.)
--
-- INSERT INTO orders (order_date, amount, customer_id)
-- VALUES ('2016/06/06', 33.67, 98);

--

-- Orders By George - 2 Step Process
--
SELECT id
FROM customers
WHERE last_name = 'George';

SELECT *
FROM orders
WHERE customer_id = 1;

-- Orders By George - Using a subquery
--
SELECT *
FROM orders
WHERE customer_id =
      (
        SELECT id
        FROM customers
        WHERE last_name = 'George'
      );

--

-- Implicit Cross Join
--
SELECT *
FROM customers, orders;

-- Implicit Inner Join
--
SELECT *
FROM customers, orders
WHERE customers.id = orders.customer_id;

SELECT
  first_name,
  last_name,
  order_date,
  amount
FROM customers, orders
WHERE customers.id = orders.customer_id;

-- Explicit Inner JOIN
--
SELECT *
FROM customers
  JOIN orders
    ON customers.id = orders.customer_id;

SELECT
  first_name,
  last_name,
  order_date,
  amount
FROM customers
  JOIN orders
    ON customers.id = orders.customer_id;

SELECT *
FROM orders
  JOIN customers
    ON customers.id = orders.customer_id;

-- Arbitrary JOIN - meaningless, but still possible
--
SELECT *
FROM customers
  JOIN orders
    ON customers.id = orders.id;

--

-- Getting Complex (Still Inner Joins)
--
SELECT
  first_name,
  last_name,
  order_date,
  amount
FROM customers
  JOIN orders
    ON customers.id = orders.customer_id
ORDER BY order_date;

SELECT
  first_name,
  last_name,
  sum(amount) AS total_spent
FROM customers
  JOIN orders
    ON customers.id = orders.customer_id
GROUP BY orders.customer_id, customers.last_name, customers.first_name
ORDER BY total_spent DESC;

--

-- LEFT JOINS
--
SELECT *
FROM customers
  LEFT JOIN orders
    ON customers.id = orders.customer_id;

SELECT
  first_name,
  last_name,
  order_date,
  amount
FROM customers
  LEFT JOIN orders
    ON customers.id = orders.customer_id;

-- ifnull():
--
SELECT
  first_name,
  last_name,
  ifnull(sum(amount), 0) AS total_spent
FROM customers
  LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent, last_name;

--

-- Right JOIN (seems the same as a left join?)
--
SELECT *
FROM customers
  RIGHT JOIN orders
    ON customers.id = orders.customer_id;

-- ALTERING OUR DATABASE to allow for a better example (optional)
--
DROP TABLE orders;
DROP TABLE customers;

CREATE TABLE customers (
  id         INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100),
  last_name  VARCHAR(100),
  email      VARCHAR(100)
);
CREATE TABLE orders (
  id          INT AUTO_INCREMENT PRIMARY KEY,
  order_date  DATE,
  amount      DECIMAL(8, 2),
  customer_id INT
);

-- INSERTING NEW DATA (no longer bound by foreign key constraint)
--
INSERT INTO customers (first_name, last_name, email)
VALUES ('Boy', 'George', 'george@gmail.com'),
  ('George', 'Michael', 'gm@gmail.com'),
  ('David', 'Bowie', 'david@gmail.com'),
  ('Blue', 'Steele', 'blue@gmail.com'),
  ('Bette', 'Davis', 'bette@aol.com');

INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
  ('2017/11/11', 35.50, 1),
  ('2014/12/12', 800.67, 2),
  ('2015/01/03', 12.50, 2),
  ('1999/04/11', 450.25, 5);

INSERT INTO orders (order_date, amount, customer_id) VALUES
  ('2017/11/05', 23.45, 45),
  (CURDATE(), 777.77, 109);

SELECT *
FROM customers
  RIGHT JOIN orders
    ON customers.id = orders.customer_id;

SELECT
  ifnull(first_name, 'MISSING') AS first,
  ifnull(last_name, 'USER')     AS last,
  sum(amount)
FROM customers
  RIGHT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY first, last;

--

-- ON DELETE CASCADE:
--
DROP TABLE orders;
DROP TABLE customers;
CREATE TABLE customers (
  id         INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100),
  last_name  VARCHAR(100),
  email      VARCHAR(100)
);
CREATE TABLE orders (
  id          INT AUTO_INCREMENT PRIMARY KEY,
  order_date  DATE,
  amount      DECIMAL(8, 2),
  customer_id INT REFERENCES customers (id)
    ON DELETE CASCADE
);

INSERT INTO customers (first_name, last_name, email)
VALUES ('Boy', 'George', 'george@gmail.com'),
  ('George', 'Michael', 'gm@gmail.com'),
  ('David', 'Bowie', 'david@gmail.com'),
  ('Blue', 'Steele', 'blue@gmail.com'),
  ('Bette', 'Davis', 'bette@aol.com');

INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
  ('2017/11/11', 35.50, 1),
  ('2014/12/12', 800.67, 2),
  ('2015/01/03', 12.50, 2),
  ('1999/04/11', 450.25, 5);

SELECT *
FROM customers;
SELECT *
FROM orders;

DELETE FROM customers
WHERE email = 'gm@gmail.com';

SELECT *
FROM customers;
SELECT *
FROM orders;

--

DROP TABLE orders;
DROP TABLE customers;
DROP DATABASE customers;

--

CREATE DATABASE practice;
USE practice;

CREATE TABLE students (
  id         INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100)
);

CREATE TABLE papers (
  title      VARCHAR(100),
  grade      INT,
  student_id INT,
  FOREIGN KEY (student_id)
  REFERENCES students (id)
    ON DELETE CASCADE
);

INSERT INTO students (first_name) VALUES
  ('Caleb'),
  ('Samantha'),
  ('Raj'),
  ('Carlos'),
  ('Lisa');

INSERT INTO papers (student_id, title, grade) VALUES
  (1, 'My First Book Report', 60),
  (1, 'My Second Book Report', 75),
  (2, 'Russian Lit Through The Ages', 94),
  (2, 'De Montaigne and The Art of The Essay', 98),
  (4, 'Borges and Magical Realism', 89);

--

SELECT
  first_name,
  title,
  grade
FROM students
  INNER JOIN papers
    ON students.id = papers.student_id
ORDER BY grade DESC;
-- alternative
SELECT
  first_name,
  title,
  grade
FROM students
  RIGHT JOIN papers
    ON students.id = papers.student_id
ORDER BY grade DESC;

--

SELECT
  first_name,
  title AS paper,
  grade
FROM students
  LEFT JOIN papers
    ON students.id = papers.student_id;

--

SELECT
  first_name,
  ifnull(title, 'MISSING') AS paper,
  ifnull(grade, 0)         AS grade
FROM students
  LEFT JOIN papers
    ON students.id = papers.student_id;

--

SELECT
  first_name,
  ifnull(avg(grade), 0) AS average
FROM students
  LEFT JOIN papers
    ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;

--

SELECT
  first_name,
  ifnull(avg(grade), 0) AS average,
  CASE
  WHEN avg(grade) IS NULL
    THEN 'FAILING'
  WHEN avg(grade) >= 75
    THEN 'PASSING'
  ELSE 'FAILING'
  END                   AS passing_status
FROM students
  LEFT JOIN papers
    ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;

DROP TABLE papers;
DROP TABLE students;
DROP DATABASE practice;
