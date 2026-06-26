/* question : Consider a simple database  Demo with one tables: Employee Employee Table:

 ● Columns:emp_id (Primary Key), first_name, last_name, age, email 

Task 1: Insert Data Write an SQL INSERT statement to insert data into the Employee table. 

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 years. 

Task 4: Updating Data Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 2

 Submission: Create an SQL script file containing your solutions for all tasks (queries). Name the file "lab_assignment2.sql" Provide comments above each query to indicate the task number and the query's purpose

*/

mysql> create database Demo
    -> ;
Query OK, 1 row affected (0.01 sec)

mysql> use Demo
Database changed
mysql> create table Employee(emp_id varchar(30) primary key not null , first_name varchar(20) not null ,last_name varchar(30) not null ,age int not null ,email varchar(50) not null  );
Query OK, 0 rows affected (0.05 sec)

mysql> desc Employee;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| emp_id     | varchar(30) | NO   | PRI | NULL    |       |
| first_name | varchar(20) | NO   |     | NULL    |       |
| last_name  | varchar(30) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
| email      | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into Employee values('E101', 'Sundar','lal',30,"sundarsundarho@gmail.com");
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee values('E102', 'Daya','tapu ke papa',33,"aaeehallooo@gmil.com"),('E103', 'Champak','lal',70,"terabaap@gmail.com"),('E104', 'Tapu','gada',20,"tapusenaleader@gmail.com"),('E105', 'jethalal','gada',35,"jalebifafdalover@gmail.com");
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from Employee;
+--------+------------+--------------+-----+----------------------------+
| emp_id | first_name | last_name    | age | email                      |
+--------+------------+--------------+-----+----------------------------+
| E101   | Sundar     | lal          |  30 | sundarsundarho@gmail.com   |
| E102   | Daya       | tapu ke papa |  33 | aaeehallooo@gmil.com       |
| E103   | Champak    | lal          |  70 | terabaap@gmail.com         |
| E104   | Tapu       | gada         |  20 | tapusenaleader@gmail.com   |
| E105   | jethalal   | gada         |  35 | jalebifafdalover@gmail.com |
+--------+------------+--------------+-----+----------------------------+
5 rows in set (0.00 sec)

mysql> select first_name,last_name from Employee;
+------------+--------------+
| first_name | last_name    |
+------------+--------------+
| Sundar     | lal          |
| Daya       | tapu ke papa |
| Champak    | lal          |
| Tapu       | gada         |
| jethalal   | gada         |
+------------+--------------+
5 rows in set (0.00 sec)

mysql> select first_name,last_name from Employee where age>30;
+------------+--------------+
| first_name | last_name    |
+------------+--------------+
| Daya       | tapu ke papa |
| Champak    | lal          |
| jethalal   | gada         |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> update Employee set age=age+1 where age > 2;
Query OK, 5 rows affected (0.01 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> select*from employee;
+--------+------------+--------------+-----+----------------------------+
| emp_id | first_name | last_name    | age | email                      |
+--------+------------+--------------+-----+----------------------------+
| E101   | Sundar     | lal          |  31 | sundarsundarho@gmail.com   |
| E102   | Daya       | tapu ke papa |  34 | aaeehallooo@gmil.com       |
| E103   | Champak    | lal          |  71 | terabaap@gmail.com         |
| E104   | Tapu       | gada         |  21 | tapusenaleader@gmail.com   |
| E105   | jethalal   | gada         |  36 | jalebifafdalover@gmail.com |
+--------+------------+--------------+-----+----------------------------+
5 rows in set (0.00 sec)