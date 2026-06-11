/*
Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order
*/
mysql> create database studentinfo;
Query OK, 1 row affected (0.03 sec)

mysql> use studentinfo;
Database changed
mysql> create table student (studid varchar(10) not null primary key, Firstname varchar(20) not null, lastname varchar(20) not null, age int(3) not null,Phone_no int(10), Address varchar(50) not null);
Query OK, 0 rows affected, 2 warnings (0.06 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| studid    | varchar(10) | NO   | PRI | NULL    |       |
| Firstname | varchar(20) | NO   |     | NULL    |       |
| lastname  | varchar(20) | NO   |     | NULL    |       |
| age       | int         | NO   |     | NULL    |       |
| Phone_no  | int         | YES  |     | NULL    |       |
| Address   | varchar(50) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.02 sec)

mysql> insert into student values('S01','Manoj','Pal',20,32165,'Thane');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values('S02','Kartik','Tyagi',21,56412,'Rajasthan'),('S03','Manoj','Tiwari',19,32178,'Bandra'),('S04','Vijay','Murli',22,85432,'Banglore'),('S05','Rohit','Sharma',23,65485,'Mumbai');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from student;
+--------+-----------+----------+-----+----------+-----------+
| studid | Firstname | lastname | age | Phone_no | Address   |
+--------+-----------+----------+-----+----------+-----------+
| S01    | Manoj     | Pal      |  20 |    32165 | Thane     |
| S02    | Kartik    | Tyagi    |  21 |    56412 | Rajasthan |
| S03    | Manoj     | Tiwari   |  19 |    32178 | Bandra    |
| S04    | Vijay     | Murli    |  22 |    85432 | Banglore  |
| S05    | Rohit     | Sharma   |  23 |    65485 | Mumbai    |
+--------+-----------+----------+-----+----------+-----------+
5 rows in set (0.00 sec)

mysql> select * from student order by lastname;
+--------+-----------+----------+-----+----------+-----------+
| studid | Firstname | lastname | age | Phone_no | Address   |
+--------+-----------+----------+-----+----------+-----------+
| S04    | Vijay     | Murli    |  22 |    85432 | Banglore  |
| S01    | Manoj     | Pal      |  20 |    32165 | Thane     |
| S05    | Rohit     | Sharma   |  23 |    65485 | Mumbai    |
| S03    | Manoj     | Tiwari   |  19 |    32178 | Bandra    |
| S02    | Kartik    | Tyagi    |  21 |    56412 | Rajasthan |
+--------+-----------+----------+-----+----------+-----------+
5 rows in set (0.00 sec)
