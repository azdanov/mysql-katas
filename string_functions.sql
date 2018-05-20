CREATE DATABASE books;
USE books;

CREATE TABLE books
(
  book_id        INT NOT NULL AUTO_INCREMENT,
  title          VARCHAR(100),
  author_fname   VARCHAR(100),
  author_lname   VARCHAR(100),
  released_year  INT,
  stock_quantity INT,
  pages          INT,
  PRIMARY KEY (book_id)
);

DESC books;

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
  ('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
  ('Norse Mythology', 'Neil', 'Gaiman', 2016, 43, 304),
  ('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
  ('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
  ('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
  ('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
  ('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
  ('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
  ('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
  ('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
  ('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
  ('Where I''m Calling From: Selected Stories', 'Raymond', 'Carver', 1989, 12, 526),
  ('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
  ('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
  ('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
  ('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

SELECT *
FROM books;

-- concat:
--
SELECT concat(title, '-', author_fname, '-', author_lname)
FROM books;

SELECT concat_ws(' - ', title, author_fname, author_lname)
FROM books;

-- substring:
--
SELECT substring(title, 1, 10) AS "short title"
FROM books;

SELECT concat(substring(title, 1, 10), '...') AS "short title"
FROM books;

-- replace:
--
SELECT substring(replace(title, 'e', '3'), 1, 10) AS "l33t string"
FROM books;

-- reverse:
--
SELECT reverse(author_fname)
FROM books;

-- char_length:
--
SELECT concat(author_lname, ' is ', char_length(author_lname), ' characters long')
FROM books;

-- upper/lower:
--
SELECT concat(upper(author_lname), ' ', lower(author_fname))
FROM books;

--

SELECT
  concat(substring(title, 1, 10), '...')  AS "short title",
  concat(author_lname, ',', author_fname) AS author,
  concat(stock_quantity, ' in stock')     AS quantity
FROM books;

--

DROP TABLE books;
DROP DATABASE books;
