/*
Database Schema: Consider a simple database with one tables: BankAccount 

Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.
*/



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
mysql> create table Bankaccount (account_id varchar(10) not null primary key,account_holder_name varchar(20) not null, account_balance double not null);
Query OK, 0 rows affected (0.06 sec)

mysql> desc bankaccount;
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| account_id          | varchar(10) | NO   | PRI | NULL    |       |
| account_holder_name | varchar(20) | NO   |     | NULL    |       |
| account_balance     | double      | NO   |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into bankaccount values ('101','Vishal',20000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into bankaccount values ('102','Naitik',22000),('103','karthik',25000),('104','gautam',45000),('105','Vishwas',37000);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select account_holder_name, account_balance from bankaccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Vishal              |           20000 |
| Naitik              |           22000 |
| karthik             |           25000 |
| gautam              |           45000 |
| Vishwas             |           37000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select account_holder_name, account_balance from bankaccount where account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| gautam              |           45000 |
| Vishwas             |           37000 |
+---------------------+-----------------+
2 rows in set (0.00 sec)

mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Vishal              |           20000 |
| 102        | Naitik              |           22000 |
| 103        | karthik             |           25000 |
| 104        | gautam              |           45000 |
| 105        | Vishwas             |           37000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> update bankaccount set account_balance = 50000 where account_id = 101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Vishal              |           50000 |
| 102        | Naitik              |           22000 |
| 103        | karthik             |           25000 |
| 104        | gautam              |           45000 |
| 105        | Vishwas             |           37000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)
