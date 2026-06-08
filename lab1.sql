/*
Create Database StudentManagementSystem

1.Create Table student

with attribute:  ●StudentID (Primary Key)
●Name
●Age
●Address


2.Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 
● StudentID (Foreign key) 
● Date 
● InstructorName 
● Feedback

Add 5 Records in table

*/



mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.01 sec)

mysql> use StudentManagementSystem;
Database changed

mysql> create table student(student_id varchar(10) NOT NULl primary key, Name varchar(50) NOT NULL, Age varchar(50) NOT NULL,address varchar(40) NOT NULL);

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | varchar(10) | NO   | PRI | NULL    |       |
| Name       | varchar(50) | NO   |     | NULL    |       |
| Age        | varchar(50) | NO   |     | NULL    |       |
| address    | varchar(40) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+

mysql> insert into student values('S101', 'Ashutosh', '15', 'Mumbai');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values('S102', 'Atul', '16', 'Digha'),('S103', 'Bhanu', '15', 'dahanu'),('s104','Dinesh','17', 'dombivli'),('s105','saurabh', '18','kalyan');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from student;
+------------+----------+-----+----------+
| student_id | Name     | Age | address  |
+------------+----------+-----+----------+
| S101       | Ashutosh | 15  | Mumbai   |
| S102       | Atul     | 16  | Digha    |
| S103       | Bhanu    | 15  | dahanu   |
| s104       | Dinesh   | 17  | dombivli |
| s105       | saurabh  | 18  | kalyan   |
+------------+----------+-----+----------+
5 rows in set (0.00 sec)

mysql> create table feedback(feedback_id varchar(10) not null primary key, student_id varchar(10), date datetime not null, instructor_name varchar(20) not null, feedback varchar(50), foreign key(student_id) references student(student_id));
Query OK, 0 rows affected (0.05 sec)

mysql> desc feedback;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| feedback_id     | varchar(10) | NO   | PRI | NULL    |       |
| student_id      | varchar(10) | YES  | MUL | NULL    |       |
| date            | datetime    | NO   |     | NULL    |       |
| instructor_name | varchar(20) | NO   |     | NULL    |       |
| feedback        | varchar(50) | YES  |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into feedback values('F101', 'S101', '2026-08-06', 'Rajshree', 'Excellent');
Query OK, 1 row affected (0.01 sec)

mysql> insert into feedback values('F102', 'S102', '2026-07-06', 'Ashish', 'good'),('F103','S103','2026-07-06','Nikhil','good'),('F104','s104','2026-06-08','Kale','Nice'),('F105','s105','2026-06-07','Tejas','Excellent');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from feedback;
+-------------+------------+---------------------+-----------------+-----------+
| feedback_id | student_id | date                | instructor_name | feedback  |
+-------------+------------+---------------------+-----------------+-----------+
| F101        | S101       | 2026-08-06 00:00:00 | Rajshree        | Excellent |
| F102        | S102       | 2026-07-06 00:00:00 | Ashish          | good      |
| F103        | S103       | 2026-07-06 00:00:00 | Nikhil          | good      |
| F104        | s104       | 2026-06-08 00:00:00 | Kale            | Nice      |
| F105        | s105       | 2026-06-07 00:00:00 | Tejas           | Excellent |
+-------------+------------+---------------------+-----------------+-----------+
5 rows in set (0.00 sec)
