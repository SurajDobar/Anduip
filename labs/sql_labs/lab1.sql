/*
question : Create a database with the name StudentManagementSystem. 

Create a table with named Student with attributes

: ● StudentID (Primary Key) ● FirstName ● LastName ● DateOfBirth ● Gender ● Email ● Phone

Insert 5 Records in students table
*/

mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| ecommerce               |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
8 rows in set (0.00 sec)

mysql> use StudentManagementSystem;
Database changed
mysql> CREATE TABLE Student ( StudentID varchar(10) PRIMARY KEY not null,    FirstName VARCHAR(50) not null,    LastName VARCHAR(50) not null,    DateOfBirth DATETime not null,    Gender VARCHAR(10) not null,    Email VARCHAR(100) not null,    Phone VARCHAR(15) not null );
Query OK, 0 rows affected (0.03 sec)


mysql> desc student;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| StudentID   | varchar(10)  | NO   | PRI | NULL    |       |
| FirstName   | varchar(50)  | NO   |     | NULL    |       |
| LastName    | varchar(50)  | NO   |     | NULL    |       |
| DateOfBirth | datetime     | NO   |     | NULL    |       |
| Gender      | varchar(10)  | NO   |     | NULL    |       |
| Email       | varchar(100) | NO   |     | NULL    |       |
| Phone       | varchar(15)  | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> INSERT INTO Student
    -> (StudentID, FirstName, LastName, DateOfBirth, Gender, Email, Phone)
    -> VALUES
    -> ('S001', 'Rahul', 'Sharma', '2002-03-15', 'Male', 'rahul.sharma@email.com', '9876543210'),
    -> ('S002', 'Priya', 'Patel', '2001-07-22', 'Female', 'priya.patel@email.com', '9876543211'),
    -> ('S003', 'Amit', 'Verma', '2003-01-10', 'Male', 'amit.verma@email.com', '9876543212'),
    -> ('S004', 'Sneha', 'Reddy', '2002-11-30', 'Female', 'sneha.reddy@email.com', '9876543213'),
    -> ('S005', 'Arjun', 'Singh', '2001-09-18', 'Male', 'arjun.singh@email.com', '9876543214');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+-----------+-----------+----------+---------------------+--------+------------------------+------------+
| StudentID | FirstName | LastName | DateOfBirth         | Gender | Email                  | Phone      |
+-----------+-----------+----------+---------------------+--------+------------------------+------------+
| S001      | Rahul     | Sharma   | 2002-03-15 00:00:00 | Male   | rahul.sharma@email.com | 9876543210 |
| S002      | Priya     | Patel    | 2001-07-22 00:00:00 | Female | priya.patel@email.com  | 9876543211 |
| S003      | Amit      | Verma    | 2003-01-10 00:00:00 | Male   | amit.verma@email.com   | 9876543212 |
| S004      | Sneha     | Reddy    | 2002-11-30 00:00:00 | Female | sneha.reddy@email.com  | 9876543213 |
| S005      | Arjun     | Singh    | 2001-09-18 00:00:00 | Male   | arjun.singh@email.com  | 9876543214 |
+-----------+-----------+----------+---------------------+--------+------------------------+------------+
5 rows in set (0.00 sec)
