//Task Description	
● Create a database with the name StudentManagementSystem. 

Create a table with named Student with attributes

: ● StudentID (Primary Key) ● FirstName ● LastName ● DateOfBirth ● Gender ● Email ● Phone

Insert 5 Records in students table//


mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.02 sec)

mysql> use StudentManagementSystem;
Database changed
mysql> create table Student(student_id varchar(10)not null primary key,First_name varchar(20) not null,Last_Name varchar(10) not null,DateOfBirth DateTime not null,Gender varchar(10) not null,Email varchar(20) not null,Phone varchar(10) not null);
Query OK, 0 rows affected (0.10 sec)

mysql> desc Student;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| student_id  | varchar(10) | NO   | PRI | NULL    |       |
| First_name  | varchar(20) | NO   |     | NULL    |       |
| Last_Name   | varchar(10) | NO   |     | NULL    |       |
| DateOfBirth | datetime    | NO   |     | NULL    |       |
| Gender      | varchar(10) | NO   |     | NULL    |       |
| Email       | varchar(20) | NO   |     | NULL    |       |
| Phone       | varchar(10) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> insert into Student values('S101','Suraj','dobar','2000-02-25','Male','surajdobar50@','1234567890');
Query OK, 1 row affected (0.03 sec)

mysql> insert into Student values('S102','Aarish','khan','2002-02-25','Male','Aarishkhan@50','1234567890');
Query OK, 1 row affected (0.03 sec)

mysql> insert into Student values('S103','Vikas','Dubey','2005-03-31','Male','VikasDubey@50','1234567890'),('S104','Nihal','Pandey','2004-04-30','Male','NihalPandey50@','123456789'),('S105','Kuldeep','Yadav','2005-05-31','Male','Kuldeepyadav@50','0123456789');
Query OK, 3 rows affected (0.03 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> Select* from student;
+------------+------------+-----------+---------------------+--------+-----------------+------------+
| student_id | First_name | Last_Name | DateOfBirth         | Gender | Email           | Phone      |
+------------+------------+-----------+---------------------+--------+-----------------+------------+
| S101       | Suraj      | dobar     | 2000-02-25 00:00:00 | Male   | surajdobar50@   | 1234567890 |
| S102       | Aarish     | khan      | 2002-02-25 00:00:00 | Male   | Aarishkhan@50   | 1234567890 |
| S103       | Vikas      | Dubey     | 2005-03-31 00:00:00 | Male   | VikasDubey@50   | 1234567890 |
| S104       | Nihal      | Pandey    | 2004-04-30 00:00:00 | Male   | NihalPandey50@  | 123456789  |
| S105       | Kuldeep    | Yadav     | 2005-05-31 00:00:00 | Male   | Kuldeepyadav@50 | 0123456789 |
+------------+------------+-----------+---------------------+--------+-----------------+------------+
5 rows in set (0.00 sec)

mysql>