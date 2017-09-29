<p class="path"><a href="../pkb.html">pkb contents</a> \> MySQL | nearly 98 words | updated 05/18/2017</p><div class="TOC">- 1. [MySQL](#mysql)
	- 1.1. [Manage databases](#manage-databases)
	- 1.2. [Manage users](#manage-users)
</div>
# 1. MySQL

[phpMyAdmin](https://www.phpmyadmin.net/) is a MySQL GUI, or you can work with MySQL from Bash: 

```Bash
/usr/bin/mysql -u [uname] -p [pwd]
quit;

/var/log/mysql/error.log
# errors log location 

less my.cnf
# view configs
```

## 1.1. Manage databases

```SQL
CREATE DATABASE dname;

SHOW DATABASES;
```

## 1.2. Manage users

```SQL
SELECT User, Host, Password FROM mysql.user;
-- view users

INSERT INTO mysql.user (User,Host,Password) VALUES('username','localhost',PASSWORD('pwd')); 
FLUSH PRIVILEGES;
-- add user

UPDATE mysql.user SET Password = PASSWORD('pwd') WHERE User = 'root'; 
FLUSH PRIVILEGES;
-- change password
 
GRANT ALL PRIVILEGES ON demodb.* to demouser@localhost; 
FLUSH PRIVILEGES; 
SHOW GRANTS FOR 'demouser'@'localhost';
-- grant privileges
```
