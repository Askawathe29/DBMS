Enter password: *****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 16
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
10 rows in set (0.05 sec)

mysql> create database BankAccount;
Query OK, 1 row affected (0.04 sec)

mysql> use BankAccount;
Database changed
mysql> create table Bank_Account(account_id int(5) not null primary key,account_holder_name varchar(20) not null,account
_balance int not null);
Query OK, 0 rows affected, 1 warning (0.10 sec)

mysql> insert into Bank_Account (account_id,account_holder_name,account_balance) values (101,'Akshata K',25000),(102,'Fi
za P',30000),(103,'Anuradha',50000),(104,'Shweta',45000),(105,'Pooja',40000);  --Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table. 
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from Bank_Account;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Akshata K           |           25000 |
|        102 | Fiza P              |           30000 |
|        103 | Anuradha            |           50000 |
|        104 | Shweta              |           45000 |
|        105 | Pooja               |           40000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)


mysql> select account_holder_name,account_balance from Bank_Account;   --Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Akshata K           |           25000 |
| Fiza P              |           30000 |
| Anuradha            |           50000 |
| Shweta              |           45000 |
| Pooja               |           40000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select account_holder_name,account_balance from Bank_Account where account_balance>30000;   /*Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000. */
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Anuradha            |           50000 |
| Shweta              |           45000 |
| Pooja               |           40000 |
+---------------------+-----------------+
3 rows in set (0.02 sec)

mysql> update Bank_Account set account_balance=60000 where account_id=101;  /*Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. */
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select 8from bank-account;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-account' at line 1

mysql> select *from Bank_Account;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Akshata K           |           60000 |
|        102 | Fiza P              |           30000 |
|        103 | Anuradha            |           50000 |
|        104 | Shweta              |           45000 |
|        105 | Pooja               |           40000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql>