create database itheima;
show create database itheima;
CREATE DATABASE `itheima` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION = 'N' */;
drop database itheima;
create database itheima;
show create database itheima;
CREATE DATABASE `itheima` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION = 'N' */;

create database toeflcet46;
show create database toeflcet46;
CREATE DATABASE `toeflcet46` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION = 'N' */;
select database();
use toeflcet46;
show create table cet46words;
CREATE TABLE `cet46words`
(
    `C1` text
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
alter table `cet46words`
    change `c1` `word` varchar(50) not null unique;
show create table `cet46words`;
CREATE TABLE `cet46words`
(
    `word` varchar(50) NOT NULL,
    UNIQUE KEY `word` (`word`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
truncate table `cet46words`;
select *
from cet46words;
show create table cet46words;
select count(word)
from cet46words;

CREATE TABLE `toeflcet46`
(
    `word` varchar(50) NOT NULL,
    UNIQUE KEY `word` (`word`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
rename table cet46words to cet46;

use itheima;
create table if not exists `employee`
(
    `id`     int,
    `name`   varchar(20),
    `gender` varchar(10),
    `salary` double
);

insert into itheima.employee(id, name, gender, salary)
values (1, '张三', '男', 2000),
       (2, '李四', '男', 1000),
       (3, '王五', '男', 4000);

update itheima.employee set salary = 5000;
update itheima.employee set salary = 3000 where name = '张三';
update itheima.employee set salary = 4000, gender = '女' where name = '李四';

# 错误写法
update itheima.employee set salary = 4000 and gender = '女' where name = '李四';

update itheima.employee set salary = salary + 1000 where name = '王五';
select * from itheima.employee;
