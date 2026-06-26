/*Create database Studentmanagementsystem contain  "Student" table with the following a columns:StudentId,FirstName,lastName

 and "Course" table with the following a columns: CourseId,CourseName 

and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).

You want to use inner join to generate a list of all possible student-course combinations.

	*/

mysql> CREATE DATABASE StudentManagementSystem;
Query OK, 1 row affected (0.01 sec)

mysql> use StudentManagementSystem;
Database changed
mysql> CREATE TABLE Student(StudentID VARCHAR(10) PRIMARY KEY,FirstName VARCHAR(20) NOT NULL,LastName VARCHAR(20) NOT NULL);
Query OK, 0 rows affected (0.02 sec)

mysql> DESC Student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| StudentID | varchar(10) | NO   | PRI | NULL    |       |
| FirstName | varchar(20) | NO   |     | NULL    |       |
| LastName  | varchar(20) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> CREATE TABLE Course(CourseID VARCHAR(10) PRIMARY KEY,CourseName VARCHAR(50) NOT NULL);
Query OK, 0 rows affected (0.02 sec)

mysql> DESC Course;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| CourseID   | varchar(10) | NO   | PRI | NULL    |       |
| CourseName | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> CREATE TABLE Enrollment(EnrollmentID VARCHAR(10) PRIMARY KEY,StudentID VARCHAR(10),CourseID VARCHAR(10),FOREIGN KEY(StudentID) REFERENCES Student(StudentID),FOREIGN KEY(CourseID) REFERENCES Course(CourseID));
Query OK, 0 rows affected (0.05 sec)

mysql> DESC Enrollment;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| EnrollmentID | varchar(10) | NO   | PRI | NULL    |       |
| StudentID    | varchar(10) | YES  | MUL | NULL    |       |
| CourseID     | varchar(10) | YES  | MUL | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO Student VALUES('S101','Suraj','Dobar'),('S102','Rahul','Sharma'),('S103','Priya','Patil');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Course VALUES('C101','MySQL'),('C102','Java'),('C103','Python');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Enrollment VALUES('E101','S101','C101'),('E102','S102','C102'),('E103','S103','C103');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT s.StudentID,s.FirstName,s.LastName,c.CourseID,c.CourseName FROM Student s INNER JOIN Enrollment e ON s.StudentID=e.StudentID INNER JOIN Course c ON e.CourseID=c.CourseID;
+-----------+-----------+----------+----------+------------+
| StudentID | FirstName | LastName | CourseID | CourseName |
+-----------+-----------+----------+----------+------------+
| S101      | Suraj     | Dobar    | C101     | MySQL      |
| S102      | Rahul     | Sharma   | C102     | Java       |
| S103      | Priya     | Patil    | C103     | Python     |
+-----------+-----------+----------+----------+------------+
3 rows in set (0.00 sec)


