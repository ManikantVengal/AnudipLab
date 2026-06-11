mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentinfo             |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
9 rows in set (0.01 sec)

mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| bankaccount          |
| customer             |
| employee_details     |
| orders               |
| product              |
+----------------------+
5 rows in set (0.01 sec)

mysql> select * from employee_details;
+-------+----------+-----------+
| empid | empname  | empsalary |
+-------+----------+-----------+
|     1 | Yuva     |     50000 |
|     2 | Yogi     |     65000 |
|     3 | jitendra |     55000 |
|     4 | hardik   |     70000 |
|     5 | tyagi    |     60000 |
+-------+----------+-----------+
5 rows in set (0.02 sec)

mysql> alter table employee_details rename employee;
Query OK, 0 rows affected (0.03 sec)

mysql> select * from employee;
+-------+----------+-----------+
| empid | empname  | empsalary |
+-------+----------+-----------+
|     1 | Yuva     |     50000 |
|     2 | Yogi     |     65000 |
|     3 | jitendra |     55000 |
|     4 | hardik   |     70000 |
|     5 | tyagi    |     60000 |
+-------+----------+-----------+
5 rows in set (0.00 sec)

mysql> select * from employee where empsalary >5000;
+-------+----------+-----------+
| empid | empname  | empsalary |
+-------+----------+-----------+
|     1 | Yuva     |     50000 |
|     2 | Yogi     |     65000 |
|     3 | jitendra |     55000 |
|     4 | hardik   |     70000 |
|     5 | tyagi    |     60000 |
+-------+----------+-----------+
5 rows in set (0.00 sec)

mysql> select * from employee where empsalary >60000;
+-------+---------+-----------+
| empid | empname | empsalary |
+-------+---------+-----------+
|     2 | Yogi    |     65000 |
|     4 | hardik  |     70000 |
+-------+---------+-----------+
2 rows in set (0.00 sec)

mysql> select * from employee order by empsalary desc;
+-------+----------+-----------+
| empid | empname  | empsalary |
+-------+----------+-----------+
|     4 | hardik   |     70000 |
|     2 | Yogi     |     65000 |
|     5 | tyagi    |     60000 |
|     3 | jitendra |     55000 |
|     1 | Yuva     |     50000 |
+-------+----------+-----------+
5 rows in set (0.00 sec)

mysql> select * from employee order by empsalary;
+-------+----------+-----------+
| empid | empname  | empsalary |
+-------+----------+-----------+
|     1 | Yuva     |     50000 |
|     3 | jitendra |     55000 |
|     5 | tyagi    |     60000 |
|     2 | Yogi     |     65000 |
|     4 | hardik   |     70000 |
+-------+----------+-----------+
5 rows in set (0.00 sec)

mysql> create table order_details(order_id int not null primary key,department varchar(50) not null, amount double not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into order_details values(1,'sales',1000),(2,'sales',1500),(3,'HR',800);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from order_details;
+----------+------------+--------+
| order_id | department | amount |
+----------+------------+--------+
|        1 | sales      |   1000 |
|        2 | sales      |   1500 |
|        3 | HR         |    800 |
+----------+------------+--------+
3 rows in set (0.00 sec)

mysql> select department, sum(amount) as total_amount from order_details group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
| HR         |          800 |
+------------+--------------+
2 rows in set (0.01 sec)

mysql> select department, avg(amount) as total_avg from order_details group by department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| sales      |      1250 |
| HR         |       800 |
+------------+-----------+
2 rows in set (0.00 sec)

mysql> select department, sum(amount) as total_amount from order_details group by department having sum(amount) > 1000;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
+------------+--------------+
1 row in set (0.00 sec)

mysql> create table employee_details (emloyeeid int not null, name varchar(50) not null, department varchar(50) not null, salary double not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc employee_details;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| emloyeeid  | int         | NO   |     | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| department | varchar(50) | NO   |     | NULL    |       |
| salary     | double      | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into employee_details values ( 1,'Rahul','IT',50000),(2,'Nikhil','Finance',30000),(3,'Jiya','HR',60000),(4,'Lalit','Finance',35000),(5,'Mehul','IT',45000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee_details;
+-----------+--------+------------+--------+
| emloyeeid | name   | department | salary |
+-----------+--------+------------+--------+
|         1 | Rahul  | IT         |  50000 |
|         2 | Nikhil | Finance    |  30000 |
|         3 | Jiya   | HR         |  60000 |
|         4 | Lalit  | Finance    |  35000 |
|         5 | Mehul  | IT         |  45000 |
+-----------+--------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department, count(*) as total_employee from employee_details group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| IT         |              2 |
| Finance    |              2 |
| HR         |              1 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> select department, sum(salary) as total_salary from employee_details group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| IT         |        95000 |
| Finance    |        65000 |
| HR         |        60000 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select department, avg(salary) as total_avg from employee_details group by  department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| IT         |     47500 |
| Finance    |     32500 |
| HR         |     60000 |
+------------+-----------+
3 rows in set (0.00 sec)

mysql> select department, salary, count(*) from employee_details group by department, salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| IT         |  50000 |        1 |
| Finance    |  30000 |        1 |
| HR         |  60000 |        1 |
| Finance    |  35000 |        1 |
| IT         |  45000 |        1 |
+------------+--------+----------+
5 rows in set (0.00 sec)

mysql> select department, count(*) as total from employee_details group by department having count(*) > 1;
+------------+-------+
| department | total |
+------------+-------+
| IT         |     2 |
| Finance    |     2 |
+------------+-------+
2 rows in set (0.00 sec)

mysql> select department, count(*) as total from employee_details group by department having count(*) <= 1;
+------------+-------+
| department | total |
+------------+-------+
| HR         |     1 |
+------------+-------+
1 row in set (0.00 sec)
