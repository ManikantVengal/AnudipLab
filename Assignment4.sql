
mysql> create database joins;
Query OK, 1 row affected (0.01 sec)

mysql> use joins;
Database changed
mysql> create table department(department_id int(10) primary key not null, department_name varchar(50) not null);
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> desc department;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(50) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> insert into department values(1,'HR'),(2,'IT'),(3,'Finance'),(4,'Marketing');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> create table employee(emp_id int primary key not null, emp_name varchar(30) not null, department_id int(10), foreign key(department_id) references department(department_id));
Query OK, 0 rows affected, 1 warning (0.06 sec)

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| emp_id        | int         | NO   | PRI | NULL    |       |
| emp_name      | varchar(30) | NO   |     | NULL    |       |
| department_id | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into employee values(1,'Rohan',1),(2,'Mohan',2),(3,'Riya',1),(4,'Roshan',NULL),(5,'Krishna',4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+--------+----------+---------------+
| emp_id | emp_name | department_id |
+--------+----------+---------------+
|      1 | Rohan    |             1 |
|      2 | Mohan    |             2 |
|      3 | Riya     |             1 |
|      4 | Roshan   |          NULL |
|      5 | Krishna  |             4 |
+--------+----------+---------------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finance         |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select emp_name, department_name from employee inner join department on employee.department_id=department.department_id;
+----------+-----------------+
| emp_name | department_name |
+----------+-----------------+
| Rohan    | HR              |
| Riya     | HR              |
| Mohan    | IT              |
| Krishna  | Marketing       |
+----------+-----------------+
4 rows in set (0.00 sec)

mysql> select emp_name, department_name from employee left join department on employee.department_id=department.department_id;
+----------+-----------------+
| emp_name | department_name |
+----------+-----------------+
| Rohan    | HR              |
| Mohan    | IT              |
| Riya     | HR              |
| Roshan   | NULL            |
| Krishna  | Marketing       |
+----------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee;
+--------+----------+---------------+
| emp_id | emp_name | department_id |
+--------+----------+---------------+
|      1 | Rohan    |             1 |
|      2 | Mohan    |             2 |
|      3 | Riya     |             1 |
|      4 | Roshan   |          NULL |
|      5 | Krishna  |             4 |
+--------+----------+---------------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finance         |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select emp_name, department_name from employee right join department on employee.department_id=department.department_id;
+----------+-----------------+
| emp_name | department_name |
+----------+-----------------+
| Rohan    | HR              |
| Riya     | HR              |
| Mohan    | IT              |
| NULL     | Finance         |
| Krishna  | Marketing       |
+----------+-----------------+
5 rows in set (0.00 sec)

mysql> select emp_name, department_name from employee cross join department;
+----------+-----------------+
| emp_name | department_name |
+----------+-----------------+
| Rohan    | Marketing       |
| Rohan    | Finance         |
| Rohan    | IT              |
| Rohan    | HR              |
| Mohan    | Marketing       |
| Mohan    | Finance         |
| Mohan    | IT              |
| Mohan    | HR              |
| Riya     | Marketing       |
| Riya     | Finance         |
| Riya     | IT              |
| Riya     | HR              |
| Roshan   | Marketing       |
| Roshan   | Finance         |
| Roshan   | IT              |
| Roshan   | HR              |
| Krishna  | Marketing       |
| Krishna  | Finance         |
| Krishna  | IT              |
| Krishna  | HR              |
+----------+-----------------+
20 rows in set (0.00 sec)