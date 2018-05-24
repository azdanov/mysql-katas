# MySQL Katas

[![Build Status](https://travis-ci.com/azdanov/mysql-katas.svg?branch=master)](https://travis-ci.com/azdanov/mysql-katas)

> Kata (型 or 形 literally: "form"), a Japanese word, are detailed choreographed patterns of movements practiced either solo or in pairs.

Some simple exercises to practise SQL in MySQL database.

## CRUD

In computer programming, create, read, update, and delete (as an acronym CRUD) are the four basic functions of persistent storage.

| [MySQL](https://dev.mysql.com/doc/refman/5.7/en/sql-syntax-data-manipulation.html) | [crud.sql](https://github.com/azdanov/mysql-katas/blob/master/crud.sql)                                     |
| :--------------------------------------------------------------------------------: | :---------------------------------------------------------------------------------------------------------: |
| [INSERT](https://dev.mysql.com/doc/refman/5.7/en/insert.html)                      | [INSERT](https://github.com/azdanov/mysql-katas/blob/34b3689abac887dc86377a6f04f43f1b2623824f/crud.sql#L15) |
| [SELECT](https://dev.mysql.com/doc/refman/5.7/en/select.html)                      | [SELECT](https://github.com/azdanov/mysql-katas/blob/34b3689abac887dc86377a6f04f43f1b2623824f/crud.sql#L24) |
| [UPDATE](https://dev.mysql.com/doc/refman/5.7/en/update.html)                      | [UPDATE](https://github.com/azdanov/mysql-katas/blob/34b3689abac887dc86377a6f04f43f1b2623824f/crud.sql#L54) |
| [DELETE](https://dev.mysql.com/doc/refman/5.7/en/delete.html)                      | [DELETE](https://github.com/azdanov/mysql-katas/blob/34b3689abac887dc86377a6f04f43f1b2623824f/crud.sql#L64) |

## String Functions

SQL string functions are used primarily for string manipulation, e.g combining strings together or replacing certain symbols or words.

| [MySQL](https://dev.mysql.com/doc/refman/5.7/en/string-functions.html)                                                                                                            | [string_functions.sql](https://github.com/azdanov/mysql-katas/blob/master/string_functions.sql)                                  |
| :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :------------------------------------------------------------------------------------------------------------------------------: |
| [concat()](https://dev.mysql.com/doc/refman/5.7/en/string-functions.html#function_concat)                                                                                         | [concat()](https://github.com/azdanov/mysql-katas/blob/9f8b618fd2dec10a7f23fee15fbff85f91dde91c/string_functions.sql#L40)        |
| [substring()](https://dev.mysql.com/doc/refman/5.7/en/string-functions.html#function_substring)                                                                                   | [substring()](https://github.com/azdanov/mysql-katas/blob/9f8b618fd2dec10a7f23fee15fbff85f91dde91c/string_functions.sql#L48)     |
| [replace()](https://dev.mysql.com/doc/refman/5.7/en/string-functions.html#function_replace)                                                                                       | [replace()](https://github.com/azdanov/mysql-katas/blob/9f8b618fd2dec10a7f23fee15fbff85f91dde91c/string_functions.sql#L56)       |
| [reverse()](https://dev.mysql.com/doc/refman/5.7/en/string-functions.html#function_reverse)                                                                                       | [reverse()](https://github.com/azdanov/mysql-katas/blob/9f8b618fd2dec10a7f23fee15fbff85f91dde91c/string_functions.sql#L61)       |
| [char_length()](https://dev.mysql.com/doc/refman/5.7/en/string-functions.html#function_char-length)                                                                               | [char_length()](https://github.com/azdanov/mysql-katas/blob/9f8b618fd2dec10a7f23fee15fbff85f91dde91c/string_functions.sql#L66)   |
| [upper()](https://dev.mysql.com/doc/refman/5.7/en/string-functions.html#function_upper) / [lower()](https://dev.mysql.com/doc/refman/5.7/en/string-functions.html#function_lower) | [upper()/lower()](https://github.com/azdanov/mysql-katas/blob/9f8b618fd2dec10a7f23fee15fbff85f91dde91c/string_functions.sql#L71) |

## Refining Selections

> Refine - make minor changes so as to improve or clarify.

| [MySQL](https://dev.mysql.com/doc/refman/5.7/en/select.html)                     | [refining_selection.sql](https://github.com/azdanov/mysql-katas/blob/master/refining_selection.sql)                         |
| :------------------------------------------------------------------------------: | :-------------------------------------------------------------------------------------------------------------------------: |
| [DISTINCT](https://dev.mysql.com/doc/refman/5.7/en/select.html)                  | [DISTINCT](https://github.com/azdanov/mysql-katas/blob/7dad586d339ba9a82b7ef72f36125a0be82ce767/refining_selection.sql#L43) |
| [ORDER BY](https://dev.mysql.com/doc/refman/5.7/en/select.html)                  | [ORDER BY](https://github.com/azdanov/mysql-katas/blob/7dad586d339ba9a82b7ef72f36125a0be82ce767/refining_selection.sql#L53) |
| [LIMIT](https://dev.mysql.com/doc/refman/5.7/en/select.html)                     | [LIMIT](https://github.com/azdanov/mysql-katas/blob/7dad586d339ba9a82b7ef72f36125a0be82ce767/refining_selection.sql#L94)    |
| [LIKE](https://dev.mysql.com/doc/refman/5.7/en/string-comparison-functions.html) | [LIKE](https://github.com/azdanov/mysql-katas/blob/7dad586d339ba9a82b7ef72f36125a0be82ce767/refining_selection.sql#L118)    |

## Aggregate Functions

An aggregate function is a function where the values of multiple rows are grouped together to form a single value of more significant meaning or measurement such as a set, a bag or a list.

| [MySQL](https://dev.mysql.com/doc/refman/5.7/en/group-by-functions.html)                                                                                                      | [aggregate_functions.sql](https://github.com/azdanov/mysql-katas/blob/master/aggregate_functions.sql)                           |
| :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------------------------------------------------: |
| [count()](https://dev.mysql.com/doc/refman/5.7/en/group-by-functions.html#function_count)                                                                                     | [count()](https://github.com/azdanov/mysql-katas/blob/7dad586d339ba9a82b7ef72f36125a0be82ce767/aggregate_functions.sql#L43)     |
| [GROUP BY](https://dev.mysql.com/doc/refman/5.7/en/group-by-handling.html)                                                                                                    | [GROUP BY](https://github.com/azdanov/mysql-katas/blob/7dad586d339ba9a82b7ef72f36125a0be82ce767/aggregate_functions.sql#L55)    |
| [min()](https://dev.mysql.com/doc/refman/5.7/en/group-by-functions.html#function_min) / [max()](https://dev.mysql.com/doc/refman/5.7/en/group-by-functions.html#function_max) | [min()/max()](https://github.com/azdanov/mysql-katas/blob/7dad586d339ba9a82b7ef72f36125a0be82ce767/aggregate_functions.sql#L72) |
| [sum()](https://dev.mysql.com/doc/refman/5.7/en/group-by-functions.html#function_sum)                                                                                         | [sum()](https://github.com/azdanov/mysql-katas/blob/7dad586d339ba9a82b7ef72f36125a0be82ce767/aggregate_functions.sql#L107)      |
| [avg()](https://dev.mysql.com/doc/refman/5.7/en/group-by-functions.html#function_avg)                                                                                         | [avg()](https://github.com/azdanov/mysql-katas/blob/7dad586d339ba9a82b7ef72f36125a0be82ce767/aggregate_functions.sql#L119)      |

## Data Types

MySQL has a set of native data types available to users. Such as numeric types, date and time types, string (character and byte) types, and spatial types.

| [MySQL](https://dev.mysql.com/doc/refman/5.7/en/data-types.html)                                            | [data_types.sql](https://github.com/azdanov/mysql-katas/blob/master/data_types.sql)                                                             |
| :---------------------------------------------------------------------------------------------------------: | :---------------------------------------------------------------------------------------------------------------------------------------------: |
| [CHAR/VARCHAR](https://dev.mysql.com/doc/refman/5.7/en/char.html)                                           | [CHAR/VARCHAR](https://github.com/azdanov/mysql-katas/blob/7dad586d339ba9a82b7ef72f36125a0be82ce767/data_types.sql#L1)                          |
| [DECIMAL](https://dev.mysql.com/doc/refman/5.7/en/fixed-point-types.html)                                   | [DECIMAL](https://github.com/azdanov/mysql-katas/blob/7dad586d339ba9a82b7ef72f36125a0be82ce767/data_types.sql#L32)                              |
| [FLOAT/DOUBLE](https://dev.mysql.com/doc/refman/5.7/en/floating-point-types.html)                           | [FLOAT/DOUBLE](https://github.com/azdanov/mysql-katas/blob/7dad586d339ba9a82b7ef72f36125a0be82ce767/data_types.sql#L69)                         |
| [DATE/TIME](https://dev.mysql.com/doc/refman/5.7/en/date-and-time-types.html)                               | [DATE/TIME](https://github.com/azdanov/mysql-katas/blob/7dad586d339ba9a82b7ef72f36125a0be82ce767/data_types.sql#L98)                            |
| [current_date()/current_time()/now()](https://dev.mysql.com/doc/refman/5.7/en/date-and-time-functions.html) | [current_date()/current_time()/now()](https://github.com/azdanov/mysql-katas/blob/7dad586d339ba9a82b7ef72f36125a0be82ce767/data_types.sql#L124) |
| [Date Formatting](https://dev.mysql.com/doc/refman/5.7/en/date-and-time-functions.html)                     | [Date Formatting](https://github.com/azdanov/mysql-katas/blob/7dad586d339ba9a82b7ef72f36125a0be82ce767/data_types.sql#L134)                     |
| [Date Math](https://dev.mysql.com/doc/refman/5.7/en/date-and-time-functions.html)                           | [Date Math](https://github.com/azdanov/mysql-katas/blob/7dad586d339ba9a82b7ef72f36125a0be82ce767/data_types.sql#L240)                           |
| [TIMESTAMP](https://dev.mysql.com/doc/refman/5.7/en/datetime.html)                                          | [TIMESTAMP](https://github.com/azdanov/mysql-katas/blob/7dad586d339ba9a82b7ef72f36125a0be82ce767/data_types.sql#L303)                           |

## Logical Expressions

Logical operators are typically used with [Boolean](https://dev.mysql.com/doc/refman/5.7/en/boolean-literals.html) (logical) values. There are three logical operators in MySQL: __||__ (_OR_), __&&__ (_AND_), __!__ (_NOT_).

| [MySQL Logical](https://dev.mysql.com/doc/refman/5.7/en/logical-operators.html) / [MySQL Comparison](https://dev.mysql.com/doc/refman/5.7/en/comparison-operators.html) | [logical_expressions.sql](https://github.com/azdanov/mysql-katas/blob/master/logical_expressions.sql)                                          |
| :---------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :--------------------------------------------------------------------------------------------------------------------------------------------: |
| [NOT Equal](https://dev.mysql.com/doc/refman/5.7/en/comparison-operators.html#operator_not-equal)                                                                       | [NOT Equal](https://github.com/azdanov/mysql-katas/blob/c1057802d7859a744b00afedfb14e53ab169334e/logical_expressions.sql#L43)                  |
| [NOT LIKE](https://dev.mysql.com/doc/refman/5.7/en/string-comparison-functions.html#operator_not-like)                                                                  | [NOT LIKE](https://github.com/azdanov/mysql-katas/blob/c1057802d7859a744b00afedfb14e53ab169334e/logical_expressions.sql#L58)                   |
| [Greater Than](https://dev.mysql.com/doc/refman/5.7/en/comparison-operators.html#operator_greater-than)                                                                 | [Greater Than](https://github.com/azdanov/mysql-katas/blob/c1057802d7859a744b00afedfb14e53ab169334e/logical_expressions.sql#L65)               |
| [Less Than](https://dev.mysql.com/doc/refman/5.7/en/comparison-operators.html#operator_less-than)                                                                       | [Less Than](https://github.com/azdanov/mysql-katas/blob/c1057802d7859a744b00afedfb14e53ab169334e/logical_expressions.sql#L74)                  |
| [Greater/Less Than Or Equal](https://dev.mysql.com/doc/refman/5.7/en/comparison-operators.html)                                                                         | [Greater/Less Than Or Equal](https://github.com/azdanov/mysql-katas/blob/c1057802d7859a744b00afedfb14e53ab169334e/logical_expressions.sql#L83) |
| [Logical AND](https://dev.mysql.com/doc/refman/5.7/en/logical-operators.html#operator_and)                                                                              | [Logical AND](https://github.com/azdanov/mysql-katas/blob/c1057802d7859a744b00afedfb14e53ab169334e/logical_expressions.sql#L98)                |
| [Logical OR](https://dev.mysql.com/doc/refman/5.7/en/logical-operators.html#operator_or)                                                                                | [Logical OR](https://github.com/azdanov/mysql-katas/blob/c1057802d7859a744b00afedfb14e53ab169334e/logical_expressions.sql#L107)                |
| [BETWEEN](https://dev.mysql.com/doc/refman/5.7/en/comparison-operators.html#operator_between)                                                                           | [BETWEEN](https://github.com/azdanov/mysql-katas/blob/c1057802d7859a744b00afedfb14e53ab169334e/logical_expressions.sql#L116)                   |
| [IN](https://dev.mysql.com/doc/refman/5.7/en/comparison-operators.html#function_in)                                                                                     | [IN](https://github.com/azdanov/mysql-katas/blob/c1057802d7859a744b00afedfb14e53ab169334e/logical_expressions.sql#L131)                        |
| [CASE](https://dev.mysql.com/doc/refman/5.7/en/case.html)                                                                                                               | [CASE](https://github.com/azdanov/mysql-katas/blob/c1057802d7859a744b00afedfb14e53ab169334e/logical_expressions.sql#L155)                      |

## One-to-Many

In a one-to-many relationship, one record in a table can be associated with one or more records in another table. For example, each customer can have many sales orders.

| [One-to-Many](https://fmhelp.filemaker.com/help/16/fmp/en/index.html#page/FMP_Help/one-to-many-relationships.html)           | [one_to_many.sql](https://github.com/azdanov/mysql-katas/blob/master/one_to_many.sql)        |
| :--------------------------------------------------------------------------------------------------------------------------: | :------------------------------------------------------------------------------------------: |
| [PRIMARY KEY](https://dev.mysql.com/doc/refman/5.7/en/constraint-primary-key.html)                                           | [PRIMARY KEY](https://github.com/azdanov/mysql-katas/blob/master/one_to_many.sql#L4)         |
| [FOREIGN KEY](https://dev.mysql.com/doc/refman/5.7/en/constraint-foreign-key.html)                                           | [FOREIGN KEY](https://github.com/azdanov/mysql-katas/blob/master/one_to_many.sql#L4)         |
| [JOIN](https://dev.mysql.com/doc/refman/5.7/en/join.html)                                                                    | [JOIN](https://github.com/azdanov/mysql-katas/blob/master/one_to_many.sql#L67)               |
| [IFNULL()](https://dev.mysql.com/doc/refman/5.7/en/control-flow-functions.html#function_ifnull)                              | [IFNULL()](https://github.com/azdanov/mysql-katas/blob/master/one_to_many.sql#L156)          |
| [ON DELETE CASCADE](https://dev.mysql.com/doc/refman/5.7/en/create-table-foreign-keys.html#foreign-keys-referential-actions) | [ON DELETE CASCADE](https://github.com/azdanov/mysql-katas/blob/master/one_to_many.sql#L233) |

## Many-to-Many

A many-to-many relationship occurs when multiple records in a table are associated with multiple records in another table. For example, a many-to-many relationship exists between customers and products: customers can purchase various products, and products can be purchased by many customers.

| [Many-to-Many](https://fmhelp.filemaker.com/help/16/fmp/en/index.html#page/FMP_Help%2Fmany-to-many-relationships.html%23) | [many_to_many.sql](https://github.com/azdanov/mysql-katas/blob/master/many_to_many.sql)        |
| :----------------------------------------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------------------: |
