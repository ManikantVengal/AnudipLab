
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
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee_details     |
| orders               |
| product              |
+----------------------+
4 rows in set (0.00 sec)

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
5 rows in set (0.00 sec)

mysql> select * from employee_details limit 3;
+-------+----------+-----------+
| empid | empname  | empsalary |
+-------+----------+-----------+
|     1 | Yuva     |     50000 |
|     2 | Yogi     |     65000 |
|     3 | jitendra |     55000 |
+-------+----------+-----------+
3 rows in set (0.00 sec)

mysql> select * from employee_details limit 2;
+-------+---------+-----------+
| empid | empname | empsalary |
+-------+---------+-----------+
|     1 | Yuva    |     50000 |
|     2 | Yogi    |     65000 |
+-------+---------+-----------+
2 rows in set (0.00 sec)

mysql> select * from employee_details order by empsalary;
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

mysql> select * from employee_details order by empname;
+-------+----------+-----------+
| empid | empname  | empsalary |
+-------+----------+-----------+
|     4 | hardik   |     70000 |
|     3 | jitendra |     55000 |
|     5 | tyagi    |     60000 |
|     2 | Yogi     |     65000 |
|     1 | Yuva     |     50000 |
+-------+----------+-----------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by empname desc;
+-------+----------+-----------+
| empid | empname  | empsalary |
+-------+----------+-----------+
|     1 | Yuva     |     50000 |
|     2 | Yogi     |     65000 |
|     5 | tyagi    |     60000 |
|     3 | jitendra |     55000 |
|     4 | hardik   |     70000 |
+-------+----------+-----------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by empsalary desc;
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

mysql> select * from employee_details order by empsalary desc limit 2;
+-------+---------+-----------+
| empid | empname | empsalary |
+-------+---------+-----------+
|     4 | hardik  |     70000 |
|     2 | Yogi    |     65000 |
+-------+---------+-----------+
2 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+--------+------------------+------------+-----------------+----------+
| customer_id | name   | city   | email            | phone_no   | address         | pin_code |
+-------------+--------+--------+------------------+------------+-----------------+----------+
| c101        | gautam | mumbai | gauti@gmail.com  | 213564     | sionkoliwada    |    40020 |
| c102        | Harish | mumbai | harish@gmail.com | 3216549870 | Chendnikoliwada |   400600 |
| c103        | Raju   | mumbai | Raju@gmail.com   | 9874652310 | Dharavi         |   400201 |
| c104        | Paresh | mumbai | Paresh@gmail.com | 9754681230 | Dharavi         |   400204 |
| c105        | Manish | mumbai | Manish@gmail.com | 8945671230 | Wadala          |   400205 |
+-------------+--------+--------+------------------+------------+-----------------+----------+
5 rows in set (0.02 sec)

mysql> select distinct city from customer;
+--------+
| city   |
+--------+
| mumbai |
+--------+
1 row in set (0.00 sec)

mysql> select city from customer;
+--------+
| city   |
+--------+
| mumbai |
| mumbai |
| mumbai |
| mumbai |
| mumbai |
+--------+
5 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+--------+------------------+------------+-----------------+----------+
| customer_id | name   | city   | email            | phone_no   | address         | pin_code |
+-------------+--------+--------+------------------+------------+-----------------+----------+
| c101        | gautam | mumbai | gauti@gmail.com  | 213564     | sionkoliwada    |    40020 |
| c102        | Harish | mumbai | harish@gmail.com | 3216549870 | Chendnikoliwada |   400600 |
| c103        | Raju   | mumbai | Raju@gmail.com   | 9874652310 | Dharavi         |   400201 |
| c104        | Paresh | mumbai | Paresh@gmail.com | 9754681230 | Dharavi         |   400204 |
| c105        | Manish | mumbai | Manish@gmail.com | 8945671230 | Wadala          |   400205 |
+-------------+--------+--------+------------------+------------+-----------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id between 'c101' and 'c104';
+-------------+--------+--------+------------------+------------+-----------------+----------+
| customer_id | name   | city   | email            | phone_no   | address         | pin_code |
+-------------+--------+--------+------------------+------------+-----------------+----------+
| c101        | gautam | mumbai | gauti@gmail.com  | 213564     | sionkoliwada    |    40020 |
| c102        | Harish | mumbai | harish@gmail.com | 3216549870 | Chendnikoliwada |   400600 |
| c103        | Raju   | mumbai | Raju@gmail.com   | 9874652310 | Dharavi         |   400201 |
| c104        | Paresh | mumbai | Paresh@gmail.com | 9754681230 | Dharavi         |   400204 |
+-------------+--------+--------+------------------+------------+-----------------+----------+
4 rows in set (0.00 sec)

mysql> select * from orders;
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date | order_status |
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
| o01      | c101        | p01        |        3 |    25998.00 | online       | 2026-06-06 | delivered    |
| o02      | c102        | p02        |        1 |    60000.00 | online       | 2026-06-07 | delivered    |
| o03      | c103        | p03        |        5 |     5000.00 | online       | 2026-06-26 | ordered      |
| o04      | c104        | p04        |        4 |    40000.00 | offline      | 2026-06-05 | delivered    |
| o05      | c105        | p05        |        2 |    60000.00 | online       | 2026-06-06 | ordered      |
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
5 rows in set (0.02 sec)

mysql> select * from orders where order_date between '2026-01-01' and '2026-04-01';
Empty set (0.00 sec)

mysql> select * from orders where order_date between '2026-06-01' and '2026-06-30';
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date | order_status |
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
| o01      | c101        | p01        |        3 |    25998.00 | online       | 2026-06-06 | delivered    |
| o02      | c102        | p02        |        1 |    60000.00 | online       | 2026-06-07 | delivered    |
| o03      | c103        | p03        |        5 |     5000.00 | online       | 2026-06-26 | ordered      |
| o04      | c104        | p04        |        4 |    40000.00 | offline      | 2026-06-05 | delivered    |
| o05      | c105        | p05        |        2 |    60000.00 | online       | 2026-06-06 | ordered      |
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
5 rows in set (0.00 sec)

mysql> select * from orders where order_date between '2026-06-01' and '2026-06-15';
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date | order_status |
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
| o01      | c101        | p01        |        3 |    25998.00 | online       | 2026-06-06 | delivered    |
| o02      | c102        | p02        |        1 |    60000.00 | online       | 2026-06-07 | delivered    |
| o04      | c104        | p04        |        4 |    40000.00 | offline      | 2026-06-05 | delivered    |
| o05      | c105        | p05        |        2 |    60000.00 | online       | 2026-06-06 | ordered      |
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
4 rows in set (0.00 sec)

mysql> select * from orders where order_date not between '2026-06-01' and '2026-06-15';
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date | order_status |
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
| o03      | c103        | p03        |        5 |     5000.00 | online       | 2026-06-26 | ordered      |
+----------+-------------+------------+----------+-------------+--------------+------------+--------------+
1 row in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+--------+------------------+------------+-----------------+----------+
| customer_id | name   | city   | email            | phone_no   | address         | pin_code |
+-------------+--------+--------+------------------+------------+-----------------+----------+
| c101        | gautam | mumbai | gauti@gmail.com  | 213564     | sionkoliwada    |    40020 |
| c102        | Harish | mumbai | harish@gmail.com | 3216549870 | Chendnikoliwada |   400600 |
| c103        | Raju   | mumbai | Raju@gmail.com   | 9874652310 | Dharavi         |   400201 |
| c104        | Paresh | mumbai | Paresh@gmail.com | 9754681230 | Dharavi         |   400204 |
| c105        | Manish | mumbai | Manish@gmail.com | 8945671230 | Wadala          |   400205 |
+-------------+--------+--------+------------------+------------+-----------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id in('c103','c105','c101');
+-------------+--------+--------+------------------+------------+--------------+----------+
| customer_id | name   | city   | email            | phone_no   | address      | pin_code |
+-------------+--------+--------+------------------+------------+--------------+----------+
| c101        | gautam | mumbai | gauti@gmail.com  | 213564     | sionkoliwada |    40020 |
| c103        | Raju   | mumbai | Raju@gmail.com   | 9874652310 | Dharavi      |   400201 |
| c105        | Manish | mumbai | Manish@gmail.com | 8945671230 | Wadala       |   400205 |
+-------------+--------+--------+------------------+------------+--------------+----------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_id not in('c103','c105','c101');
+-------------+--------+--------+------------------+------------+-----------------+----------+
| customer_id | name   | city   | email            | phone_no   | address         | pin_code |
+-------------+--------+--------+------------------+------------+-----------------+----------+
| c102        | Harish | mumbai | harish@gmail.com | 3216549870 | Chendnikoliwada |   400600 |
| c104        | Paresh | mumbai | Paresh@gmail.com | 9754681230 | Dharavi         |   400204 |
+-------------+--------+--------+------------------+------------+-----------------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where city is null;
Empty set (0.00 sec)

mysql> select * from customer where city is not null;
+-------------+--------+--------+------------------+------------+-----------------+----------+
| customer_id | name   | city   | email            | phone_no   | address         | pin_code |
+-------------+--------+--------+------------------+------------+-----------------+----------+
| c101        | gautam | mumbai | gauti@gmail.com  | 213564     | sionkoliwada    |    40020 |
| c102        | Harish | mumbai | harish@gmail.com | 3216549870 | Chendnikoliwada |   400600 |
| c103        | Raju   | mumbai | Raju@gmail.com   | 9874652310 | Dharavi         |   400201 |
| c104        | Paresh | mumbai | Paresh@gmail.com | 9754681230 | Dharavi         |   400204 |
| c105        | Manish | mumbai | Manish@gmail.com | 8945671230 | Wadala          |   400205 |
+-------------+--------+--------+------------------+------------+-----------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where city='Mumbai' and address='sion';
Empty set (0.00 sec)

mysql> select * from customer where city='Mumbai' and address='sionkoliwada';
+-------------+--------+--------+-----------------+----------+--------------+----------+
| customer_id | name   | city   | email           | phone_no | address      | pin_code |
+-------------+--------+--------+-----------------+----------+--------------+----------+
| c101        | gautam | mumbai | gauti@gmail.com | 213564   | sionkoliwada |    40020 |
+-------------+--------+--------+-----------------+----------+--------------+----------+
1 row in set (0.00 sec)

mysql> select * from customer where city='Mumbai' or address='sionkoliwada';
+-------------+--------+--------+------------------+------------+-----------------+----------+
| customer_id | name   | city   | email            | phone_no   | address         | pin_code |
+-------------+--------+--------+------------------+------------+-----------------+----------+
| c101        | gautam | mumbai | gauti@gmail.com  | 213564     | sionkoliwada    |    40020 |
| c102        | Harish | mumbai | harish@gmail.com | 3216549870 | Chendnikoliwada |   400600 |
| c103        | Raju   | mumbai | Raju@gmail.com   | 9874652310 | Dharavi         |   400201 |
| c104        | Paresh | mumbai | Paresh@gmail.com | 9754681230 | Dharavi         |   400204 |
| c105        | Manish | mumbai | Manish@gmail.com | 8945671230 | Wadala          |   400205 |
+-------------+--------+--------+------------------+------------+-----------------+----------+
5 rows in set (0.00 sec)