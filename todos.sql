CREATE TABLE todos (id SERIAL PRIMARY KEY, title VARCHAR(255) NOT NULL, details TEXT  NULL, priotrity INTEGER NOT NULL DEFAULT 1, created_at TIMESTAMP NOT NULL, completed_at TIMESTAMP);

todolist=# SELECT * FROM todos
todolist-# ;
 id |    title     |                                                details                                                | priotrity |     created_at      |    completed_at
----+--------------+-------------------------------------------------------------------------------------------------------+-----------+---------------------+---------------------
  1 | Do Laundry   | DOnt forget to trade my ten dollar bill in for 10 dollars worth of quarters                           |         1 | 2004-10-19 10:23:54 | 2005-10-19 10:23:54
  2 | Vacuum Rug   | The 2000 dollar rug is nice do not forget to keep that piece of usable art clean                      |         2 | 2004-10-19 10:23:54 |
  3 | mytodolist   | The 2000 dollar rug is nice do not forget to keep that piece of usable art clean                      |         2 | 2004-10-19 10:23:54 |
  4 | Vacuum Rug   | The 2000 dollar rug is nice do not forget to keep that piece of usable art clean                      |         2 | 2004-10-19 10:23:54 |
  5 | Vacuum Rug   | The 2000 dollar rug is nice do not forget to keep that piece of usable art clean                      |         2 | 2004-10-19 10:23:54 |
  6 | pay bill     | dont forget to pay the rent the last day it is due is on the 4th of next month                        |         4 | 2005-10-19 10:23:54 |
  7 | water plants | Even though sadly my pepper plant broke off the only limbs with fruit hanging on them life will go on |         3 | 2005-10-19 10:23:54 |
(7 rows)

INSERT INTO todos (title, details, priotrity, created_at, completed_at) VALUES ('Do Laundry', 'DOnt forget to trade my ten dollar bill in for 10 dollars worth of quarters', 1, '2004-10-19 10:23:54', '2005-10-19 10:23:54');

INSERT INTO todos (title, details, priotrity, created_at) VALUES ('mytodolist', 'The 2000 dollar rug is nice do not forget to keep that piece of usable art clean', 2, '2004-10-19 10:23:54');

INSERT INTO todos (title, details, priotrity, created_at) VALUES ('Vacuum Rug', 'The 2000 dollar rug is nice do not forget to keep that piece of usable art clean', 2, '2004-10-19 10:23:54');

INSERT INTO todos (title, details, priotrity, created_at) VALUES ('pay bill', 'water plants'),('dont forget to pay the rent the last day it is due is on the 4th of nect month', 'Even though sadly my pepper plant broke off the only limbs with fruit hanging on them life will go on'), (3,4), ('2005-10-19 10:23:54', '2005-10-19 10:23:54');

INSERT INTO todos (title, details, priotrity, created_at) VALUES ('pay bill', 'dont forget to pay the rent the last day it is due is on the 4th of next month', 4, '2005-10-19 10:23:54'),('water plants', 'Even though sadly my pepper plant broke off the only limbs with fruit hanging on them life will go on', 3, '2005-10-19 10:23:54');

SELECT title FROM todos WHERE completed_at IS NULL;

SELECT title FROM todos WHERE priotrity > 1;

UPDATE todos SET completed_at = '2005-10-19 10:23:54' WHERE completed_at IS NULL;

 DELETE FROM todos WHERE completed_at IS NOT NULL;
