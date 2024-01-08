-- update练习
CREATE TABLE employee
(
	id INT,
	NAME VARCHAR(20),
	sex VARCHAR(10),
	salary FLOAT	
);
INSERT INTO employee VALUES(1,"zhangsan","male",2000);
INSERT INTO employee VALUES(2,"lisi","male",1000);
INSERT INTO employee VALUES(3,"xiaohong","female",4000);

-- 将所有员工薪水修改为5000元。
-- 将姓名为’zhangsan’的员工薪水修改为3000元。
-- 将姓名为’lisi’的员工薪水修改为4000元,sex改为female。
-- 将xiaohong的薪水在原有基础上增加1000元。



-- select练习


CREATE TABLE student(
	id INT,
	NAME VARCHAR(20),
	chinese INT,
	english INT,
	math INT
);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(1,'张小明',89,78,90);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(2,'李进',67,53,95);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(3,'王五',87,78,77);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(4,'李一',88,98,92);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(5,'李来财',82,84,67);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(6,'张进宝',55,85,45);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(7,'黄蓉',75,65,30);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(7,'黄蓉',75,65,30);

-- 查询表中所有学生的信息。
-- 查询表中所有学生的姓名和对应的英语成绩。
-- 过滤表中重复数据。
-- 统计每个学生的总分。
-- 在所有学生总分数上加10分特长分。
-- 使用别名表示学生分数。
-- 查询英语成绩大于90分的同学
-- 查询总分大于200分的所有同学

-- 查询英语分数在 80－90之间的同学。
-- 查询英语分数不在 80－90之间的同学。

-- 查询数学分数为89,90,91的同学。
-- 查询所有姓李的学生英语成绩。
-- 查询数学分80并且语文分80的同学。
-- 查询英语80或者总分200的同学 






CREATE TABLE student(
	id INT,
	NAME VARCHAR(20),
	chinese INT,
	english INT,
	math INT
);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(1,'张小明',89,78,90);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(2,'李进',67,53,95);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(3,'王五',87,78,77);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(4,'李一',88,98,92);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(5,'李来财',82,84,67);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(6,'张进宝',55,85,45);
INSERT INTO student(id,NAME,chinese,english,math) VALUES(7,'黄蓉',75,65,30);


-- 对数学成绩排序后输出。
-- 对总分排序后输出，然后再按从高到低的顺序输出
-- 对姓李的学生成绩排序输出






-- ----------------------------------------------------------

CREATE TABLE emp(
	empno		INT, -- 员工编号
	ename		VARCHAR(50), -- 员工名字
	job		VARCHAR(50),  -- 工作名字
	mgr		INT, -- 上级领导编号
	hiredate	DATE,-- 入职日期
	sal		INT, -- 薪资
	comm		INT, -- 奖金
	deptno		INT  --  部门编号
) ;

INSERT INTO emp VALUES(7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20);
INSERT INTO emp VALUES(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30);
INSERT INTO emp VALUES(7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,30);
INSERT INTO emp VALUES(7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20);
INSERT INTO emp VALUES(7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30);
INSERT INTO emp VALUES(7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,30);
INSERT INTO emp VALUES(7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,10);
INSERT INTO emp VALUES(7788,'SCOTT','ANALYST',7566,'1987-04-19',3000,NULL,20);
INSERT INTO emp VALUES(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10);
INSERT INTO emp VALUES(7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30);
INSERT INTO emp VALUES(7876,'ADAMS','CLERK',7788,'1987-05-23',1100,NULL,20);
INSERT INTO emp VALUES(7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30);
INSERT INTO emp VALUES(7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20);
INSERT INTO emp VALUES(7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10);
#------------------------------------------------------------

-- 1、按员工编号升序排列不在10号部门工作的员工信息

-- 2、查询姓名第二个字母不是”A”且薪水大于800元的员工信息，按年薪降序排列

-- 3、求每个部门的平均薪水


-- 4、求各个部门的最高薪水


-- 5、求每个部门每个岗位的最高薪水
 

-- 6、求平均薪水大于2000的部门编号

-- 7、将部门平均薪水大于1500的部门编号列出来，按部门平均薪水降序排列
-- 8、选择公司中有奖金的员工姓名，工资
-- 9、查询员工最高工资和最低工资的差距


-- --------------------------------------------------------------
CREATE TABLE emp(
	empno		INT,
	ename		VARCHAR(50),
	job		VARCHAR(50),
	mgr		INT,
	hiredate	DATE,
	sal		INT,
	comm		INT,
	deptno		INT
) ;

INSERT INTO emp VALUES(7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20);
INSERT INTO emp VALUES(7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30);
INSERT INTO emp VALUES(7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,30);
INSERT INTO emp VALUES(7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20);
INSERT INTO emp VALUES(7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30);
INSERT INTO emp VALUES(7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,30);
INSERT INTO emp VALUES(7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,10);
INSERT INTO emp VALUES(7788,'SCOTT','ANALYST',7566,'1987-04-19',3000,NULL,20);
INSERT INTO emp VALUES(7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10);
INSERT INTO emp VALUES(7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30);
INSERT INTO emp VALUES(7876,'ADAMS','CLERK',7788,'1987-05-23',1100,NULL,20);
INSERT INTO emp VALUES(7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30);
INSERT INTO emp VALUES(7902,'FORD','ANALYST',7566,'1981-12-03',,NULL,20);
INSERT INTO emp VALUES(7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10);

-- 1、求最高薪水的员工信息

-- 2、求多于平均薪水的员工信息

-- 部门表 

CREATE TABLE dept(
	deptno		INT PRIMARY KEY AUTO_INCREMENT, #部门编号
	dname		VARCHAR(14), #部门的 名字
	loc		VARCHAR(13)  #部门的位置
);
INSERT INTO dept VALUES(10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO dept VALUES(20, 'RESEARCH', 'DALLAS');
INSERT INTO dept VALUES(30, 'SALES', 'CHICAGO');
INSERT INTO dept VALUES(40, 'OPERATIONS', 'BOSTON'))


-- 1.  查询和SMITH相同部门的员工姓名和雇用日期
-- 2.  查询和姓名中包含字母u的员工在相同部门的员工的员工号和姓名
-- 3.  查询管理者是King的员工姓名和工资 
-- 4.  查询每个员工领导名称，要求显示结果为:员工号，员工姓名 员工领导名
   

  
