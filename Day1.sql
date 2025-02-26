Enter password: *****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 15
Server version: 8.0.33 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+---------------------+
| Database            |
+---------------------+
| akshu               |
| ecommerce           |
| information_schema  |
| maharashtra         |
| mysql               |
| performance_schema  |
| sakila              |
| student_mgmt_system |
| sys                 |
| world               |
+---------------------+
10 rows in set (0.00 sec)

mysql> use ecommerce;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| product             |
+---------------------+
1 row in set (0.02 sec)

mysql> create table emp(id varchar(5) not null primary key,name varchar(20) not null,mob_no varchar(10) not null,address
 varchar(100) not null,salary int not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into emp (id,name,mob_no,address,salary) values ('E101','Akshata','9308852424','Solapur',40000),('E102','A
nuradha','9309686840','Mohol',50000),('E103','Pooja','8668626250','Pune',45000),('E104','Shweta','7387404055','Latur',30
000),('E105','Neha','8112246600',35000);
ERROR 1136 (21S01): Column count doesn't match value count at row 5
mysql> insert into emp (id,name,mob_no,address,salary) values ('E101','Akshata','9308852424','Solapur',40000),('E102','Anuradha','9309686840','Mohol',50000),('E103','Pooja','8668626250','Pune',45000),('E104','Shweta','7387404055','Latur',30000),('E105','Neha','8112246600','Pune',35000);
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+------+----------+------------+---------+--------+
| id   | name     | mob_no     | address | salary |
+------+----------+------------+---------+--------+
| E101 | Akshata  | 9308852424 | Solapur |  40000 |
| E102 | Anuradha | 9309686840 | Mohol   |  50000 |
| E103 | Pooja    | 8668626250 | Pune    |  45000 |
| E104 | Shweta   | 7387404055 | Latur   |  30000 |
| E105 | Neha     | 8112246600 | Pune    |  35000 |
+------+----------+------------+---------+--------+
5 rows in set (0.02 sec)

mysql> select id,name,salary from emp where name like 'A%';
+------+----------+--------+
| id   | name     | salary |
+------+----------+--------+
| E101 | Akshata  |  40000 |
| E102 | Anuradha |  50000 |
+------+----------+--------+
2 rows in set (0.00 sec)

mysql> select id,name from emp where name like '%e%';
+------+--------+
| id   | name   |
+------+--------+
| E104 | Shweta |
| E105 | Neha   |
+------+--------+
2 rows in set (0.00 sec)

mysql> select id,name from emp where name like 'P____';
+------+-------+
| id   | name  |
+------+-------+
| E103 | Pooja |
+------+-------+
1 row in set (0.00 sec)

mysql> select id,name,salary from emp where salary>=40000;
+------+----------+--------+
| id   | name     | salary |
+------+----------+--------+
| E101 | Akshata  |  40000 |
| E102 | Anuradha |  50000 |
| E103 | Pooja    |  45000 |
+------+----------+--------+
3 rows in set (0.00 sec)

mysql> select id,name from emp where name like '____a';
+------+-------+
| id   | name  |
+------+-------+
| E103 | Pooja |
+------+-------+
1 row in set (0.00 sec)

mysql> select id,name,salary from emp where salary<=40000;
+------+---------+--------+
| id   | name    | salary |
+------+---------+--------+
| E101 | Akshata |  40000 |
| E104 | Shweta  |  30000 |
| E105 | Neha    |  35000 |
+------+---------+--------+
3 rows in set (0.00 sec)

mysql> update table emp set address='Tuljapur' where name=='Neha';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table emp set address='Tuljapur' where name=='Neha'' at line 1
mysql> update table emp set address='Tuljapur' where name='Neha';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table emp set address='Tuljapur' where name='Neha'' at line 1
mysql> update emp set address='Tuljapur' where name='Neha';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+------+----------+------------+----------+--------+
| id   | name     | mob_no     | address  | salary |
+------+----------+------------+----------+--------+
| E101 | Akshata  | 9308852424 | Solapur  |  40000 |
| E102 | Anuradha | 9309686840 | Mohol    |  50000 |
| E103 | Pooja    | 8668626250 | Pune     |  45000 |
| E104 | Shweta   | 7387404055 | Latur    |  30000 |
| E105 | Neha     | 8112246600 | Tuljapur |  35000 |
+------+----------+------------+----------+--------+
5 rows in set (0.00 sec)

mysql> update emp set id='E110' where id='E103';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+------+----------+------------+----------+--------+
| id   | name     | mob_no     | address  | salary |
+------+----------+------------+----------+--------+
| E101 | Akshata  | 9308852424 | Solapur  |  40000 |
| E102 | Anuradha | 9309686840 | Mohol    |  50000 |
| E104 | Shweta   | 7387404055 | Latur    |  30000 |
| E105 | Neha     | 8112246600 | Tuljapur |  35000 |
| E110 | Pooja    | 8668626250 | Pune     |  45000 |
+------+----------+------------+----------+--------+
5 rows in set (0.00 sec)

mysql> update emp set id='E109' where id='E102';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+------+----------+------------+----------+--------+
| id   | name     | mob_no     | address  | salary |
+------+----------+------------+----------+--------+
| E101 | Akshata  | 9308852424 | Solapur  |  40000 |
| E104 | Shweta   | 7387404055 | Latur    |  30000 |
| E105 | Neha     | 8112246600 | Tuljapur |  35000 |
| E109 | Anuradha | 9309686840 | Mohol    |  50000 |
| E110 | Pooja    | 8668626250 | Pune     |  45000 |
+------+----------+------------+----------+--------+
5 rows in set (0.00 sec)

mysql> delete from emp where id='E104';
Query OK, 1 row affected (0.01 sec)

mysql> select * from emp;
+------+----------+------------+----------+--------+
| id   | name     | mob_no     | address  | salary |
+------+----------+------------+----------+--------+
| E101 | Akshata  | 9308852424 | Solapur  |  40000 |
| E105 | Neha     | 8112246600 | Tuljapur |  35000 |
| E109 | Anuradha | 9309686840 | Mohol    |  50000 |
| E110 | Pooja    | 8668626250 | Pune     |  45000 |
+------+----------+------------+----------+--------+
4 rows in set (0.00 sec)

mysql>
