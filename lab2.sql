Consider a simple database  Demo with one tables: Employee Employee Table:

 ● Columns:emp_id (Primary Key), first_name, last_name, age, email 

Task 1: Insert Data Write an SQL INSERT statement to insert data into the Employee table. 

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 years. 

Task 4: Updating Data Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 2


mysql> CREATE DATABASE demo;
Query OK, 1 row affected (0.06 sec)

mysql> use demo
Database changed
mysql>  create table employee(
    -> emp_id varchar(100) not null primary key,
    -> first_name varchar(100) not null,
    -> last_name varchar(100) not null,
    -> age int not null,
    -> email_id varchar(100) not null);
Query OK, 0 rows affected (0.09 sec)

mysql> desc employee;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| emp_id     | varchar(100) | NO   | PRI | NULL    |       |
| first_name | varchar(100) | NO   |     | NULL    |       |
| last_name  | varchar(100) | NO   |     | NULL    |       |
| age        | int          | NO   |     | NULL    |       |
| email_id   | varchar(100) | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)



mysql> INSERT INTO employee VALUES
    -> ('E001','Rajnish','Shelar',25,'rajnish@gmail.com');
ERROR 1062 (23000): Duplicate entry 'E001' for key 'employee.PRIMARY'
mysql> INSERT INTO employee VALUES
    -> ('E002','Manish','Shelar',32,'manish@gmail.com');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO employee VALUES
    -> ('E003','harshal','hatle',22,'harshal@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO employee VALUES
    -> ('E004','raj','ramma',42,'raj@gmail.com');
Query OK, 1 row affected (0.05 sec)

mysql> INSERT INTO employee VALUES
    -> ('E005','harshita','hatle',55,'ashok@gmail.com');
Query OK, 1 row affected (0.05 sec)

mysql> select*from employee;
+--------+------------+-----------+-----+-------------------+
| emp_id | first_name | last_name | age | email_id          |
+--------+------------+-----------+-----+-------------------+
| E001   | Rajnish    | Shelar    |  25 | rajnish@gmail.com |
| E002   | Manish     | Shelar    |  32 | manish@gmail.com  |
| E003   | harshal    | hatle     |  22 | harshal@gmail.com |
| E004   | raj        | ramma     |  42 | raj@gmail.com     |
| E005   | harshita   | hatle     |  55 | ashok@gmail.com   |
+--------+------------+-----------+-----+-------------------+
5 rows in set (0.00 sec)

mysql> select first_name ,last_name  from employee;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Rajnish    | Shelar    |
| Manish     | Shelar    |
| harshal    | hatle     |
| raj        | ramma     |
| harshita   | hatle     |
+------------+-----------+
5 rows in set (0.00 sec)

mysql> select first_name ,last_name  from employee where age>30;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Manish     | Shelar    |
| raj        | ramma     |
| harshita   | hatle     |
+------------+-----------+
3 rows in set (0.00 sec)

mysql> select first_name ,last_name , age from employee where age>30;
+------------+-----------+-----+
| first_name | last_name | age |
+------------+-----------+-----+
| Manish     | Shelar    |  32 |
| raj        | ramma     |  42 |
| harshita   | hatle     |  55 |
+------------+-----------+-----+
3 rows in set (0.00 sec)

mysql> update employee set age=age+1 where age>25;
Query OK, 3 rows affected (0.05 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> select*from employee;
+--------+------------+-----------+-----+-------------------+
| emp_id | first_name | last_name | age | email_id          |
+--------+------------+-----------+-----+-------------------+
| E001   | Rajnish    | Shelar    |  25 | rajnish@gmail.com |
| E002   | Manish     | Shelar    |  33 | manish@gmail.com  |
| E003   | harshal    | hatle     |  22 | harshal@gmail.com |
| E004   | raj        | ramma     |  43 | raj@gmail.com     |
| E005   | harshita   | hatle     |  56 | ashok@gmail.com   |
+--------+------------+-----------+-----+-------------------+
5 rows in set (0.00 sec)

mysql>