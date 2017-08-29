todolist=# SELECT * FROM todos;
  8 | Get Car                       | Get a job to buy a car                                                                                |         4 | 2004-10-19 10:23:54 | 2005-
  9 | Pay rent                      |  make sure to drop off the chekc by the fourth                                                        |         3 | 2016-10-21 10:23:45 | 2017-
 10 | Go Jogging                    |  Run away the stress 0f today and the pain of the past                                                |         1 | 2017-08-29 10:21:21 | 2020-
 11 | Eat Healthy                   | Shop at Deactures farmers market and buy healthy and exotic foods                                     |         1 | 2017-08-29 10:10:10 | 2020-
 12 | See Doctor                    | dont forget to take my medicine everyday                                                              |         5 | 2010-12-12 10:21:21 | 2030-
 13 | See Therapist                 | seeing the therapist is very important and so is taking my medicine                                   |         2 | 2004-12-12 10:10:10 | 2006-
 14 | Cancel gym membership         | this is important becuase i will save money and i dont go to the gym much anyway i run instead        |         4 | 2017-08-29 10:10:10 |
 15 | see hypnotheraist             | Dont forget to call the hypnotist and schedule an appointment                                         |         3 | 2017-08-25 10:10:10 |
 16 | Call mom                      | Call mother and see how she is doing in alaska                                                        |         6 | 2017-08-29 10:10:10 |
 17 | a                             | b                                                                                                     |         5 | 2017-10-10 10:10:10 |
 18 | b                             | c                                                                                                     |         6 | 2004-12-12 10:10:10 |
 19 | take plane lessons            | learn how to fly plane                                                                                |         7 | 2017-08-29 10:10:10 |
 20 | go to cali                    | move out to california and obtain a job                                                               |         2 | 2017-08-28 10:10:10 |
 21 | complete iron yard            | complete iron yard and all of the projects they give us                                               |         1 | 2017-07-17 10:10:10 |
 22 | get a job                     | getting a job is vital to lifeline                                                                    |         1 | 2017-07-21 10:10:10 |
 23 | make art for therapist office | make sure i turn in my art beroe august 31st when it is due                                           |         5 | 2017-08-25 10:10:10 | 2017-
 24 | go to job fair                | dont forget to have resume ready for jobs and look nice and get your github lingo down, be chamrming! |         2 | 2017-08-29 10:10:10 | 2017-

lines 1-18/18 (END)
admin=# \c todolist
todolist=# \d

INSERT INTO todos (title, details, priotrity, created_at, completed_at) VALUES ('Get Car', 'Get a job to buy a car', 4, '2004-10-19 10:23:54',' 2005-10-19 10:23:45'),('Pay rent',' make sure to drop off the chekc by the fourth', 3,'2016-10-21 10:23:45', '2017-09-04 10:21:23'),('Go Jogging',' Run away the stress 0f today and the pain of the past',1,'2017-08-29 10:21:21', '2020-12-12 12:21:31'),('Eat Healthy', 'Shop at Deactures farmers market and buy healthy and exotic foods', 1, '2017-08-29 10:10:10', '2020-12-12 10:10:10'),('See Doctor', 'dont forget to take my medicine everyday', 5, '2010-12-12 10:21:21', '2030-12-12 10:10:10'), ('See Therapist', 'seeing the therapist is very important and so is taking my medicine', 2, '2004-12-12 10:10:10', '2006-12-12 10:10:10');
INSERT 0 6
INSERT INTO todos (title, details, priotrity, created_at) VALUES ('Cancel gym membership', 'this is important becuase i will save money and i dont go to the gym much anyw
ay i run instead', 4, '2017-08-29 10:10:10'), ('see hypnotheraist', 'Dont forget to call the hypnotist and schedule an appointment', 3, '2017-08-25 10:10:10'), ('Call mom', 'Call mother and see how she is doing in alaska', 6, '2017-08-29 10:10:10'), ('a','b',5,'2017-10-10 10:10:10'), ('b', 'c', 6, '2004-12-12 10:10:10'),('take plane lessons', 'learn how to fly plane', 7, '2017-08-29 10:10:10'), ('go to cali', 'move out to california and obtain a job', 2, '2017-08-28 10:10:10'), ('complete iron yard', 'complete iron yard and all of the projects they give us', 1, '2017-07-17 10:10:10'), ('get a job', 'getting a job is vital to lifeline', 1, '2017-07-21 10:10:10')
todolist-# ;
INSERT 0 9
INSERT INTO todos (title, details, priotrity, created_at, completed_at) VALUES ('make art for therapist office', 'make sure i turn in my art beroe august 31st when it is due', 5, '2017-08-25 10:10:10', '2017-08-31 10:10:10'), ('go to job fair', 'dont forget to have resume ready for jobs and look nice and get your github lingo down, be chamrming!', 2, '2017-08-29 10:10:10', '2017-09-13 10:10:10');
INSERT 0 2

todolist=# SELECT title
todolist-# FROM todos
todolist-# WHERE completed_at IS NULL AND priotrity < 3;
 go to cali
 complete iron yard
 get a job

todolist=# SELECT COUNT(id)
todolist-# FROM todos
todolist-# WHERE completed_at IS NULL AND priotrity < 3;
     3

-- todolist=# SELECT MAX(priotrity)
-- todolist-# FROM todos
-- todolist-# WHERE completed_at IS NULL;
--    7

-- todolist=# SELECT COUNT(id)
-- todolist-# FROM todos
-- todolist-# WHERE created_at < current_date - INTERVAL '30';
--        10

todolist=# SELECT COUNT(id)
FROM todos
WHERE created_at < current_date - INTERVAL '30'
GROUP BY priotrity;
     2
     2
     1
     1
     2
     2

todolist=# SELECT title
todolist-# FROM todos
todolist-# WHERE priotrity = 1 AND created_at
