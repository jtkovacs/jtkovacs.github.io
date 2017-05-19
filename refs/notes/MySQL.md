# MySQL

[phpMyAdmin](https://www.phpmyadmin.net/) is a MySQL GUI, or you can work with MySQL from Bash: 

```Bash
/usr/bin/mysql -u [uname] -p [pwd]
quit;

/var/log/mysql/error.log
# errors log location 

less my.cnf
# view configs
```

## Manage databases

```SQL
CREATE DATABASE dname;

SHOW DATABASES;
```

## Manage users

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
