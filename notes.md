# SQL语法特点：
1、对关键字的大小写不敏感；
2、SQL语句可以以单行或者多行书写，以分号结束；
3、SQL注释：
	-- 单行注， -- 后面一定要加一个空格；
        # 单行注释， #后面可加可不加空格
	/*
	多行注释
	*/ 

# 解压安装MySQL后需要执行的操作：
使用管理员权限进入DOS，在cmd中，进入解压目录下的bin目录依次执行以下命令：
①对mysql进行初始化，请注意，这里会生产一个临时密码，后边要使用这个临时密码
	mysqld --initialize --user=mysql --console
②安装mysql服务
	mysqld --install
③启动mysql服务
	net start mysql
④登录mysql，这里需要使用之前生产的临时密码
	mysql -uroot –p
⑤修改root用户密码
	ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '123456';
⑤修改root用户权限
	create user 'root'@'%' IDENTIFIED WITH mysql_native_password BY ‘123456';

# MySQL的卸载
1:停止服务:
	方式1: 打开DOS,使用net stop mysql命令
	方式2: 【win+R快捷键】 -- 》输入 services.msc -- 》进入服务窗口关闭mysql服务;
2:卸载程序(可选):
	使用360卸载mysql程序或【控制面板】》【程序和功能】》右键卸载程序 ;
3:删除项目根文件夹:
	进入mysql安装位置, 删除mysql的解压文件夹;
4:删除C盘隐藏文件夹(可选):
	显示隐藏文件后, 删除C盘下的“C:\ProgramData\MySQL”所有文件;
5:删除注册表信息:
	【win+R快捷鍵】》输入regedit命令打开注册表窗口, 删除以下文件:
	HKEY_LOCAL_MACHINE/SYSTEM/ControlSet001/Services/Eventlog/Applications/MySQL
	HKEY_LOCAL_MACHINE/SYSTEM/ControlSet002/Services/Eventlog/Applications/MySQL
	HKEY_LOCAL_MACHINE/SYSTEM/CurrentControlSet/Services/Eventlog/Applications/MySQL
6:删除环境变量里的配置:
	如果有更改了环境变量, 那么进入【计算机】》右键【属性】》【高级系统设置】》【环境变量】》删除系统变量中的MYSQL_HOME变量和删除Path变量
	中的mysql路径;
7:删除MYSQL服务
	管理员权限cmd -- 》sc delete MySQL服务名字

# MySQL数据库基本操作-DDL
	功能				    	SQL
	查看所有的数据库			show databases;		
	创建数据库				create database [if not exists] mydb1 [chartset=utf8];
	切换(选择要操作的)数据库 	use mydb1;
	删除数据库				drop database [if exists] mydb1;
	修改数据库编码				alter database mydb1 character set utf8;
## 对表结构的常用操作-创建表















































	