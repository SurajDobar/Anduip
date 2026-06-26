/*
question: 	
Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order
 */

mysql> create database demo;
Query OK, 1 row affected (0.01 sec)

mysql> use demo;
Database changed
mysql> CREATE TABLE student (stud_id INT PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50),Age INT,Phoneno VARCHAR(15),Address VARCHAR(100));
Query OK, 0 rows affected (0.05 sec)

mysql> desc student;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| stud_id   | int          | NO   | PRI | NULL    |       |
| FirstName | varchar(50)  | YES  |     | NULL    |       |
| LastName  | varchar(50)  | YES  |     | NULL    |       |
| Age       | int          | YES  |     | NULL    |       |
| Phoneno   | varchar(15)  | YES  |     | NULL    |       |
| Address   | varchar(100) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> INSERT INTO student (stud_id, FirstName, LastName, Age, Phoneno, Address)VALUES(1, 'Rahul', 'Sharma', 20, '9876543210', 'Mumbai'),(2, 'Priya', 'Patel', 21, '9876543211', 'Pune'),(3, 'Amit', 'Verma', 19, '9876543212', 'Nashik'),(4, 'Sneha', 'Gupta', 22, '9876543213', 'Delhi'),(5, 'Karan', 'Mehta', 20, '9876543214', 'Ahmedabad');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student ;
+---------+-----------+----------+------+------------+-----------+
| stud_id | FirstName | LastName | Age  | Phoneno    | Address   |
+---------+-----------+----------+------+------------+-----------+
|       1 | Rahul     | Sharma   |   20 | 9876543210 | Mumbai    |
|       2 | Priya     | Patel    |   21 | 9876543211 | Pune      |
|       3 | Amit      | Verma    |   19 | 9876543212 | Nashik    |
|       4 | Sneha     | Gupta    |   22 | 9876543213 | Delhi     |
|       5 | Karan     | Mehta    |   20 | 9876543214 | Ahmedabad |
+---------+-----------+----------+------+------------+-----------+
5 rows in set (0.00 sec)

mysql> select * from student order by LastName ASC;
+---------+-----------+----------+------+------------+-----------+
| stud_id | FirstName | LastName | Age  | Phoneno    | Address   |
+---------+-----------+----------+------+------------+-----------+
|       4 | Sneha     | Gupta    |   22 | 9876543213 | Delhi     |
|       5 | Karan     | Mehta    |   20 | 9876543214 | Ahmedabad |
|       2 | Priya     | Patel    |   21 | 9876543211 | Pune      |
|       1 | Rahul     | Sharma   |   20 | 9876543210 | Mumbai    |
|       3 | Amit      | Verma    |   19 | 9876543212 | Nashik    |
+---------+-----------+----------+------+------------+-----------+
5 rows in set (0.00 sec)

