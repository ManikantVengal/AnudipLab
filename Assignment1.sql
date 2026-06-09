mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
8 rows in set (0.00 sec)

mysql> use e_commerce;
Database changed
mysql> create table employee(empid int(10) not null primary key, empname varchar(50) not null, salary double not null);
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> insert into employee values(1,'Yuva',50000),(2,'Yogi',65000),(3,'jitendra',55000),(4,'hardik',70000),(5,'tyagi',60000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------+----------+--------+
| empid | empname  | salary |
+-------+----------+--------+
|     1 | Yuva     |  50000 |
|     2 | Yogi     |  65000 |
|     3 | jitendra |  55000 |
|     4 | hardik   |  70000 |
|     5 | tyagi    |  60000 |
+-------+----------+--------+
5 rows in set (0.00 sec)

mysql> update employee set salary=80000 where empid=4;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+-------+----------+--------+
| empid | empname  | salary |
+-------+----------+--------+
|     1 | Yuva     |  50000 |
|     2 | Yogi     |  65000 |
|     3 | jitendra |  55000 |
|     4 | hardik   |  80000 |
|     5 | tyagi    |  60000 |
+-------+----------+--------+
5 rows in set (0.00 sec)

mysql> update employee set empname = 'Aditya' where empid=1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+-------+----------+--------+
| empid | empname  | salary |
+-------+----------+--------+
|     1 | Aditya   |  50000 |
|     2 | Yogi     |  65000 |
|     3 | jitendra |  55000 |
|     4 | hardik   |  80000 |
|     5 | tyagi    |  60000 |
+-------+----------+--------+
5 rows in set (0.00 sec)

mysql> delete from employee where empid=5;
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee;
+-------+----------+--------+
| empid | empname  | salary |
+-------+----------+--------+
|     1 | Aditya   |  50000 |
|     2 | Yogi     |  65000 |
|     3 | jitendra |  55000 |
|     4 | hardik   |  80000 |
+-------+----------+--------+
4 rows in set (0.00 sec)

mysql> delete from employee;
Query OK, 4 rows affected (0.01 sec)

mysql> select * from employee;
Empty set (0.00 sec)

mysql> desc employee;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| empid   | int         | NO   | PRI | NULL    |       |
| empname | varchar(50) | NO   |     | NULL    |       |
| salary  | double      | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into employee values(1,'Yuva',50000),(2,'Yogi',65000),(3,'jitendra',55000),(4,'hardik',70000),(5,'tyagi',60000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------+----------+--------+
| empid | empname  | salary |
+-------+----------+--------+
|     1 | Yuva     |  50000 |
|     2 | Yogi     |  65000 |
|     3 | jitendra |  55000 |
|     4 | hardik   |  70000 |
|     5 | tyagi    |  60000 |
+-------+----------+--------+
5 rows in set (0.00 sec)

mysql> truncate table employee;
Query OK, 0 rows affected (0.04 sec)

mysql> select * from employee;
Empty set (0.00 sec)

mysql> desc employee;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| empid   | int         | NO   | PRI | NULL    |       |
| empname | varchar(50) | NO   |     | NULL    |       |
| salary  | double      | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> drop table employee;
Query OK, 0 rows affected (0.07 sec)

mysql> desc employee;
ERROR 1146 (42S02): Table 'e_commerce.employee' doesn't exist
mysql> create table employee(empid int(10) not null primary key, empname varchar(50) not null, salary double not null);
Query OK, 0 rows affected, 1 warning (0.03 sec)

mysql> insert into employee values(1,'Yuva',50000),(2,'Yogi',65000),(3,'jitendra',55000),(4,'hardik',70000),(5,'tyagi',60000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------+----------+--------+
| empid | empname  | salary |
+-------+----------+--------+
|     1 | Yuva     |  50000 |
|     2 | Yogi     |  65000 |
|     3 | jitendra |  55000 |
|     4 | hardik   |  70000 |
|     5 | tyagi    |  60000 |
+-------+----------+--------+
5 rows in set (0.00 sec)

mysql> alter table employee add email varchar(100) not null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| empid   | int          | NO   | PRI | NULL    |       |
| empname | varchar(50)  | NO   |     | NULL    |       |
| salary  | double       | NO   |     | NULL    |       |
| email   | varchar(100) | NO   |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> alter table employee modify empname varchar(100) not null;
Query OK, 5 rows affected (0.09 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| empid   | int          | NO   | PRI | NULL    |       |
| empname | varchar(100) | NO   |     | NULL    |       |
| salary  | double       | NO   |     | NULL    |       |
| email   | varchar(100) | NO   |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee drop column email;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| empid   | int          | NO   | PRI | NULL    |       |
| empname | varchar(100) | NO   |     | NULL    |       |
| salary  | double       | NO   |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename column salary to empsalary;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| empid     | int          | NO   | PRI | NULL    |       |
| empname   | varchar(100) | NO   |     | NULL    |       |
| empsalary | double       | NO   |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename to employee_details;
Query OK, 0 rows affected (0.03 sec)

mysql> desc employee;
ERROR 1146 (42S02): Table 'e_commerce.employee' doesn't exist
mysql> desc employee_details;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| empid     | int          | NO   | PRI | NULL    |       |
| empname   | varchar(100) | NO   |     | NULL    |       |
| empsalary | double       | NO   |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee_details drop primary key;
Query OK, 5 rows affected (0.09 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| empid     | int          | NO   |     | NULL    |       |
| empname   | varchar(100) | NO   |     | NULL    |       |
| empsalary | double       | NO   |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)