-- CHAR/VARCHAR:
--
CREATE DATABASE dogs;
USE dogs;

CREATE TABLE dogs (
  name  CHAR(5),
  breed VARCHAR(10)
);

INSERT INTO dogs (name, breed) VALUES ('bob', 'beagle');

INSERT INTO dogs (name, breed) VALUES ('robby', 'corgi');

-- Warning
-- INSERT INTO dogs (name, breed) VALUES ('Princess Jane', 'Retriever');

SELECT *
FROM dogs;

-- Error
-- INSERT INTO dogs (name, breed) VALUES ('Jane', 'Retrievesadfdsafdasfsafr');

SELECT *
FROM dogs;

DROP TABLE dogs;
DROP DATABASE dogs;

--

-- DECIMAL:
--
CREATE DATABASE items;
USE items;

CREATE TABLE items (
  price DECIMAL(5, 2)
);

INSERT INTO items (price) VALUES (7);

SELECT *
FROM items;

-- Error
-- INSERT INTO items (price) VALUES (1000);

INSERT INTO items (price) VALUES (34.88);

SELECT *
FROM items;

INSERT INTO items (price) VALUES (34.2989999);

SELECT *
FROM items;

INSERT INTO items (price) VALUES (1.9999);

SELECT *
FROM items;

DROP TABLE items;
DROP DATABASE items;

--

-- FLOAT:
--
CREATE DATABASE thingies;
USE thingies;

CREATE TABLE thingies (
  price FLOAT -- Contrived Example
);

INSERT INTO thingies (price) VALUES (88.45);

SELECT *
FROM thingies;

INSERT INTO thingies (price) VALUES (8877.45);

SELECT *
FROM thingies;

INSERT INTO thingies (price) VALUES (8877665544.45);

SELECT *
FROM thingies;

DROP TABLE thingies;
DROP DATABASE thingies;

--

-- DATE/TIME:
--
CREATE DATABASE people;
USE people;

CREATE TABLE people (
  name      VARCHAR(100),
  birthdate DATE,
  birthtime TIME,
  birthdt   DATETIME
);

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

SELECT *
FROM people;

DROP TABLE people;
DROP DATABASE people;

--

-- CURRENT_DATE()/CURRENT_TIME()/now():
--
SELECT CURRENT_DATE();

SELECT CURRENT_TIME();

SELECT NOW();

--

-- Formatting Date:
--
CREATE DATABASE people;
USE people;

CREATE TABLE people (
  name      VARCHAR(100),
  birthdate DATE,
  birthtime TIME,
  birthdt   DATETIME
);

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

SELECT *
FROM people;

SELECT
  name,
  birthdate
FROM people;

SELECT
  name,
  DAY(birthdate)
FROM people;

SELECT
  name,
  birthdate,
  DAY(birthdate)
FROM people;

SELECT
  name,
  birthdate,
  DAYNAME(birthdate)
FROM people;

SELECT
  name,
  birthdate,
  DAYOFWEEK(birthdate)
FROM people;

SELECT
  name,
  birthdate,
  DAYOFYEAR(birthdate)
FROM people;

SELECT
  name,
  birthtime,
  DAYOFYEAR(birthtime)
FROM people;

SELECT
  name,
  birthdt,
  DAYOFYEAR(birthdt)
FROM people;

SELECT
  name,
  birthdt,
  MONTH(birthdt)
FROM people;

SELECT
  name,
  birthdt,
  MONTHNAME(birthdt)
FROM people;

SELECT
  name,
  birthtime,
  HOUR(birthtime)
FROM people;

SELECT
  name,
  birthtime,
  MINUTE(birthtime)
FROM people;

SELECT CONCAT(MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate))
FROM people;

SELECT DATE_FORMAT(birthdt, 'Was born on a %W')
FROM people;

SELECT DATE_FORMAT(birthdt, '%m/%d/%Y')
FROM people;

SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%m')
FROM people;

DROP TABLE people;
DROP DATABASE people;

-- Date Math:
--
CREATE DATABASE people;
USE people;

CREATE TABLE people (
  name      VARCHAR(100),
  birthdate DATE,
  birthtime TIME,
  birthdt   DATETIME
);

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

SELECT *
FROM people;

SELECT DATEDIFF(NOW(), birthdate)
FROM people;

SELECT
  name,
  birthdate,
  DATEDIFF(NOW(), birthdate)
FROM people;

SELECT
  birthdt,
  DATE_ADD(birthdt, INTERVAL 1 MONTH)
FROM people;

SELECT
  birthdt,
  DATE_ADD(birthdt, INTERVAL 10 SECOND)
FROM people;

SELECT
  birthdt,
  DATE_ADD(birthdt, INTERVAL 3 QUARTER)
FROM people;

SELECT
  birthdt,
  birthdt + INTERVAL 1 MONTH
FROM people;

SELECT
  birthdt,
  birthdt - INTERVAL 5 MONTH
FROM people;

SELECT
  birthdt,
  birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR
FROM people;

DROP TABLE people;
DROP DATABASE people;

-- TIMESTAMPS:
--
CREATE DATABASE comments;
USE comments;

CREATE TABLE comments (
  content    VARCHAR(100),
  created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO comments (content) VALUES ('lol what a funny article');

INSERT INTO comments (content) VALUES ('I found this offensive');

INSERT INTO comments (content) VALUES ('Ifasfsadfsadfsad');

SELECT *
FROM comments
ORDER BY created_at DESC;

--

CREATE TABLE comments2 (
  content    VARCHAR(100),
  changed_at TIMESTAMP DEFAULT NOW()
  ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO comments2 (content) VALUES ('dasdasdasd');

INSERT INTO comments2 (content) VALUES ('lololololo');

INSERT INTO comments2 (content) VALUES ('I LIKE CATS AND DOGS');

UPDATE comments2
SET content = 'THIS IS NOT GIBBERISH'
WHERE content = 'dasdasdasd';

SELECT *
FROM comments2;

SELECT *
FROM comments2
ORDER BY changed_at;

--

CREATE TABLE comments3 (
  content    VARCHAR(100),
  changed_at TIMESTAMP DEFAULT NOW()
  ON UPDATE NOW()
);

DROP TABLE comments;
DROP TABLE comments2;
DROP TABLE comments3;
DROP DATABASE comments;
