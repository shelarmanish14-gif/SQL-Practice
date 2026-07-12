Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order

mysql> use demo;
Database changed
mysql> CREATE TABLE Student(    stud_id INT PRIMARY KEY,    FirstName VARCHAR(50),    LastName VARCHAR(50),    Age INT,    PhoneNo VARCHAR(15),    Address VARCHAR(100));
Query OK, 0 rows affected (0.15 sec)

mysql> INSERT INTO Student(stud_id, FirstName, LastName, Age, PhoneNo, Address)VALUES(101, 'Raj', 'Pandey', 24, '9876543210', 'Nashik'),(102, 'Amit', 'Sharma', 22, '9876543211', 'Mumbai'),(103, 'Priya', 'Patil', 23, '9876543212', 'Pune'),(104, 'Neha', 'Gupta', 21, '9876543213', 'Delhi'),(105, 'Rohan', 'Verma', 25, '9876543214', 'Nagpur');
Query OK, 5 rows affected (0.06 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from student;
+---------+-----------+----------+------+------------+---------+
| stud_id | FirstName | LastName | Age  | PhoneNo    | Address |
+---------+-----------+----------+------+------------+---------+
|     101 | Raj       | Pandey   |   24 | 9876543210 | Nashik  |
|     102 | Amit      | Sharma   |   22 | 9876543211 | Mumbai  |
|     103 | Priya     | Patil    |   23 | 9876543212 | Pune    |
|     104 | Neha      | Gupta    |   21 | 9876543213 | Delhi   |
|     105 | Rohan     | Verma    |   25 | 9876543214 | Nagpur  |
+---------+-----------+----------+------+------------+---------+
5 rows in set (0.00 sec)

mysql> select* from student order by lastname asc;
+---------+-----------+----------+------+------------+---------+
| stud_id | FirstName | LastName | Age  | PhoneNo    | Address |
+---------+-----------+----------+------+------------+---------+
|     104 | Neha      | Gupta    |   21 | 9876543213 | Delhi   |
|     101 | Raj       | Pandey   |   24 | 9876543210 | Nashik  |
|     103 | Priya     | Patil    |   23 | 9876543212 | Pune    |
|     102 | Amit      | Sharma   |   22 | 9876543211 | Mumbai  |
|     105 | Rohan     | Verma    |   25 | 9876543214 | Nagpur  |
+---------+-----------+----------+------+------------+---------+
5 rows in set (0.00 sec)

mysql>