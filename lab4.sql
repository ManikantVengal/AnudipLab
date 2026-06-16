mysql> use Studentmanagementsystem;
Database changed
mysql> create table student(studentid varchar(10) primary key not null, firstname varchar(50) not null, lastname varchar(50) not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into student values('S101','Raju','Gupta'),('S102','Ramesh','Verma'),('S103','Vikas','Singh'),('S104','Suresh','Kota'),('S105',
    -> 'Deepak','Kari');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+-----------+-----------+----------+
| studentid | firstname | lastname |
+-----------+-----------+----------+
| S101      | Raju      | Gupta    |
| S102      | Ramesh    | Verma    |
| S103      | Vikas     | Singh    |
| S104      | Suresh    | Kota     |
| S105      | Deepak    | Kari     |
+-----------+-----------+----------+
5 rows in set (0.00 sec)

mysql> create table Course(courseid varchar(10) primary key not null,coursename varchar(50) not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into Course values('C101','Science'),('C102','Commerce'),('C103','Arts'),('C104','Vocational'),('C105','IT');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Course;
+----------+------------+
| courseid | coursename |
+----------+------------+
| C101     | Science    |
| C102     | Commerce   |
| C103     | Arts       |
| C104     | Vocational |
| C105     | IT         |
+----------+------------+
5 rows in set (0.00 sec)

mysql> Create table Enrollment(Enrollmentid varchar(10) not null, studentid varchar(10) not null, courseid varchar(10) not null, foreign key(studentid) references student(studentid), foreign key(courseid) references Course(courseid));
Query OK, 0 rows affected (0.04 sec)

mysql> insert into Enrollment values('E101','S102','C104'),('E102','S105','C101'),('E103','S103','C102'),('E104','S101','C103'),('E105','S104','C104');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> Select * from Enrollment;
+--------------+-----------+----------+
| Enrollmentid | studentid | courseid |
+--------------+-----------+----------+
| E101         | S102      | C104     |
| E102         | S105      | C101     |
| E103         | S103      | C102     |
| E104         | S101      | C103     |
| E105         | S104      | C104     |
+--------------+-----------+----------+
5 rows in set (0.00 sec)

mysql> SELECT Student.StudentId,Student.FirstName,Student.LastName,Course.CourseId,Course.CourseName FROM Enrollment INNER JOIN Student ON Enrollment.StudentID = Student.StudentId INNER JOIN Course ON Enrollment.CourseID = Course.CourseId;
+-----------+-----------+----------+----------+------------+
| StudentId | FirstName | LastName | CourseId | CourseName |
+-----------+-----------+----------+----------+------------+
| S102      | Ramesh    | Verma    | C104     | Vocational |
| S105      | Deepak    | Kari     | C101     | Science    |
| S103      | Vikas     | Singh    | C102     | Commerce   |
| S101      | Raju      | Gupta    | C103     | Arts       |
| S104      | Suresh    | Kota     | C104     | Vocational |
+-----------+-----------+----------+----------+------------+
5 rows in set (0.00 sec)
