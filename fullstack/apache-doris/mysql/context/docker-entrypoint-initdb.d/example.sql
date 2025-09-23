CREATE USER 'zentao'@'%' IDENTIFIED BY 'rw_acdcdgJMsRXaX@zentao';
GRANT ALL ON *.* TO 'zentao'@'%';

FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS `zentao` CHARACTER SET 'utf8mb4' COLLATE 'utf8mb4_bin' ;