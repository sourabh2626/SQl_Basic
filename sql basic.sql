
create database demo;
use demo;

create table sourabh(
sou_id int,
sou_name varchar(10),
sou_phone int,
sou_add varchar(20),
sou_coll varchar(20)
);
desc sourabh;
create table employee(
emp_id char (10),
emp_name varchar(10),
emp_addr varchar(20	),
emp_salary char(10)
);

desc employee;
show tables;
drop table emp;
create table Zomoto(
Food_name char(10),
Coustmer_add varchar(10),
Hotel_name varchar(20)
);
create table Product(
P_id int,
P_name varchar(10),
P_price decimal(9,2),
P_quantity int,
P_man_date date,
P_exp_date date,
P_decscription varchar(100),
P_image blob);
 
 desc Product;
 rename table Product to Pro;
 
 alter table Pro
 add P_email varchar(10);
 desc Pro;
 
 alter table Pro
 drop P_image;
 
 alter table Pro
 rename column P_email to P_mail;
 
 -- Modifing datatypes
 alter table Pro
 modify P_id varchar(10);
 
 alter table Pro
 drop P_id;
 
 alter table Pro
 add P_id int;
 
 alter table Pro
 modify P_id varchar(10);
 
 alter table Pro
 rename column  P_id to P_idd;
 
  rename table Pro to Product;
 show databases;
 use demo;
 desc demo;
 drop database demo;
 
 
 
 create database orders;
 use orders;

show databases;
use orders;
create table orderdetais(
or_id int,
or_name varchar(10),
or_date date,
or_quantity int);
 
CREATE DATABASE SCOTT ;
USE SCOTT;
CREATE TABLE emp
(
 empno decimal(4,0) NOT NULL,
 ename varchar(10) default NULL,
 job varchar(9) default NULL,
 mgr decimal(4,0) default NULL,
 hiredate date default NULL,
 sal decimal(7,2) default NULL,
 comm decimal(7,2) default NULL,
 deptno decimal(2,0) default NULL
);
CREATE TABLE dept (
 deptno decimal(2,0) default NULL,
 dname varchar(14) default NULL,
 loc varchar(13) default NULL
);
INSERT INTO emp VALUES 
('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO emp VALUES 
('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO emp VALUES 
('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO emp VALUES
('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO emp VALUES 
('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO emp VALUES 
('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO emp VALUES 
('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO emp VALUES 
('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
INSERT INTO emp VALUES 
('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO emp VALUES 
('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
INSERT INTO emp VALUES 
('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
INSERT INTO emp VALUES 
('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
INSERT INTO emp VALUES 
('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
INSERT INTO emp VALUES 
('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');


INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');
INSERT INTO dept VALUES ('30','SALES','CHICAGO');
INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');
 
 select * from emp;
 select hiredate from emp;
 desc emp;
 select ename ,sal from emp;
 select ename ,comm,job from emp;
 select * from dept;
delete from  dept
where deptno=40;
select ename ,sal-sal*0.5 as hike from emp;


truncate table emp;

use scott;
delete from  dept
where deptno=40;

select ename ,sal, job
from emp where job= "manager";

select ename,sal from emp
where sal>2500;

select * from emp 
where comm =1400;

select ename,sal*12 as annulsal
from emp 
where sal*12<15000;

select ename,job,hiredate
from emp
where year(hiredate)>1981;

select ename ,hiredate
from emp
where year(hiredate)<1981;
 
 select * from emp; 
 
 select concat("sou ","desai");
 select ename ,sal from emp
 where sal<2000 and job ="salesman";
 
 select ename, hiredate 
 from emp
 where year(hiredate)>1983 and year(hiredate)<1988;
 
 select ename,job from emp
 where job="manager" and sal>2500;
 
 select ename,job,sal
 from emp
 where sal=3000 or sal=5000;
 
 select ename ,deptno
 from emp
 where deptno!=30;
 
 select ename,deptno
 from emp
 where deptno=10 or deptno=20;
 
 select ename,deptno
 from emp
 where not deptno=30;
 
 
 select ename,job
 from emp
 where not job="president";
 
 
 select * 
 from emp
 where sal>1000 and (job="salesman" or job="manager" or job="clerk") and deptno!=20;
 
 select * ,sal*0.4 as hike
 from emp
 where deptno!=30 and year(hiredate)>1982 and (job="analyst" or job="salesman" or job="president")
 and sal*12>10000 and comm!=1400;
 
 
 
 
 
 create table xx(
 order_date date,
 sales int);
 
 insert into xx 
 values("2001-01-23",16);
  insert into xx 
 values("2001-02-15",33);
 select * from xx
order by order_date asc ;

use scott;
select ename from emp 
where job in("manager" ,'salesman','analyst' ,'clerk' ,'president') and deptno in (10,20);

select * from emp
where sal in(1000,3000,5000,2450);


select ename ,hiredate,job,deptno
from emp
where deptno in (10,30) and job in("analyst" ,'clerk');

select ename ,sal,deptno
from emp
where deptno!=10 and deptno!=20;


select empno,job, empno,deptno
from emp
where job!="manager" and job!="salesman";

select ename,hiredate from emp
where  year(hiredate)=1980;

select ename ,sal from emp
where sal between 1000 and 2000;

select ename ,hiredate
from emp
where hiredate not between "1981-01-01" and "1981-12-31";

select ename ,sal
from emp
where sal is null;

select ename ,comm
from emp
where comm is null;

select * from emp;

select ename,sal
from emp
where sal is not null;

select ename ,comm,sal
from emp
where sal is not null and comm is  null;

select ename
from emp
where ename like "S%";

select ename from emp
where ename like "m%r";

select ename from emp
where length(ename)=4; 

select ename from emp 
where ename like "____";

select ename from emp
where ename like "%l%";

select ename from emp
where ename like "_a%";

select ename from emp
where ename not like "a%" and ename not like "e%" and ename not like "i%" and ename not like "o%" and ename not like "u%";

select ename from emp
where ename like "%@_%" escape"@";

update emp
set ename ="S_mith"
where ename ="smith";

select * from emp;
use scott;

select sal,comm ,sal+comm,sal+ifnull(comm,0) as total_sal
from emp;

select coalesce(comm)
from emp;

create table product(
p_id int,
pname varchar(10),price int);

insert into  product values(5,"mobile",45000);
select * from product;

select p_id,pname,price,
case
when price>20000 then "Expensive"
else "average"
end is_or_not
from product;

create table flipkart(
orderid int,
cos_name varchar(10),
product varchar(10),
price bigint);

insert into flipkart values(
3,"abhi","tv",200000);

select *,
case 
when price>100000 then "exp"
else "not exp"
end exp_or_not
from flipkart;


select max(sal) as max_sal
from emp;

select max(sal),job
from emp
where job="manager";

select min(sal),ename
from emp
where ename like "%a%";

select avg(sal) as total
from emp
where comm is not null and deptno=30;

select count(job)
from emp
where deptno=30;

select max(sal)as max,min(sal)as min,sal*12 as total
from emp;

select ename 
from emp
where reverse(ename)=ename;

select empno
from emp
where mod(empno,2)=0;

select substr(ename,1,3) 
from emp;
use scott;
select substr(ename,1,5)
from emp;

/*--second highes salary*/

select max(sal)as second_max
from emp
where sal<(select max(sal) from emp);
select max(sal)
from emp; 

/*third largest salary*/
SELECT MAX(sal) AS third_largest_salary
FROM emp
WHERE sal < (SELECT MAX(sal) FROM emp)
AND sal < (SELECT MAX(sal) FROM emp WHERE sal < (SELECT MAX(sal) FROM emp));

select sal 
from emp
order by sal desc
limit 4;

/* last four records*/

select * from emp
order by empno desc;

select lower(ename),empno from emp
order by empno desc;
select * from emp;

select * ,sal+ifnull(comm,0) as total_sal,
case 
when sal>1000 then "avg"
else "low"
end avg_low
from emp;

use scott;
/* wildcard caracter*/
select ename from emp
where ename like "%s";

SELECT * FROM emp
WHERE ename LIKE 'a%'or ename like "e%"or ename like "i%"or ename like "o%"or ename like "u%";
show databases;
create database amozan;
use amozan;
create table order1(
order_id int,
order_date date,
order_prize bigint,
order_qty int);
desc order2;
drop table order1;
rename table order1 to order2;
alter table order2
rename column order_id to id;
alter table order2
add column order_id int;
alter table order2
drop  column id;

use scott;
select* from emp;
update emp
set ename = 'Smith'
where ename = 's_mith';
select upper(ename)from emp;

update emp
set ename ="S_MITH"
where ename ="smith";

use scott;
create view soua
as select empno,ename ,comm ,sal from emp
where empno=7499;

select * from emp;
drop view soua;

set global log_bin_trust_function_creators =1;


select sum(sal),count(*),deptno from emp
group by deptno;


select ename,job,count(*),deptno
from emp
where job!= 'analyst'
group by deptno;

select max(sal),min(sal),sal*12 as annual_sal 
from emp
group by deptno;

select count(*),ename,job  from emp
where ename like "%n"
group by job,ename;

select count(sal),sal
from emp
group by sal;

select count(distinct job);

select count(*),deptno from emp
group by deptno
having count(deptno)>=4;

select count(*), deptno 
from emp
where job!= "clerk"
group by deptno
having count(*)>=3;

select count(*),job
from emp
group by job
having count(job)>1;

select max(sal),job
from emp
group by job
having max(sal)>3000;

select count(*),deptno
from emp
where sal>1500
group by deptno
having sum(sal)>3500;

select ename from emp
order by ename desc;

select count(*),deptno
from emp
group by deptno
order by deptno desc;

select ename ,sal
from emp
where sal is not null
order by sal;

create table customer(
cid int primary key,
cname varchar(10) not null,
cadd varchar(50),
email varchar(20) unique not null,
cphno bigint check(length(cphno)=10) unique);
 
drop table customer; 

create table product(
pid int primary key,
pname varchar(20) not null ,
price int,
cid int,
constraint cid_fk foreign key(cid) references customer(cid));


drop table product;

insert into customer values(2,"Rohit","Pune","rohit@gmail.com",7378873386);
insert into product values(2,"watch",20000,1);

select * from customer;
select * from product;

create table student(
sid int ,
sname varchar(20),
city varchar(20) default "Pune");

insert into student values(1,"prasad",default);
select * from student;


use scott;
select ename ,sal
from emp
where sal>(
select sal from emp
where ename ="allen");

select ename ,deptno
from emp
where deptno=(select deptno
from emp
where ename ="james");

select ename,job from emp
where hiredate>(select hiredate from emp
where ename ="king");

select ename,sal,job from emp
where job="salesman" and sal>
(select sal from emp
where ename="martin");

select * from emp
where ename like "a%" and job=(select job from emp
where ename="allen");

select * from emp;

select ename from emp
where sal > (select sal from emp
where ename ="blake")
and sal< (select sal from emp where ename="king");

select * from dept 
where deptno=(select deptno from emp
where ename="allen");

select loc from dept where deptno=(select deptno from emp where ename ="miller");

select ename from emp where deptno=(select deptno from dept where loc="new york");

select dname
 from dept
 where deptno in (select deptno
				from emp
				where ename ="s_mith" or ename ="allen");
                
                
                USE scott;
                
select max(sal) from emp;
SELECT distinct sal,ename
FROM emp
ORDER BY sal DESC
limit 1 OFFSET 1;


select sal from emp
order by sal  desc;

select max(sal) as fifth_max 
from emp 
where sal < (select max(sal) 
			from emp
            where sal<(select max(sal) 
            from emp
            where sal<(select max(sal)
            from emp
            where sal<(select max(sal)
            from emp))));
            
            
select min(sal) as secon_min 
from emp
 where sal>(select min(sal) 
			from emp) ;
            
    select max(sal),ename from emp
    where  sal=(select max(sal) from emp); 
    select max(sal) ,ename
    from emp;
    
    
    select sal,ename 
    from emp 
    where sal=(select min(sal)
				from emp
				where sal>(select min(sal)
				from emp));
                
	select sal,ename
    from emp
    where sal=(select min(sal) from emp
    where sal>(select min(sal) from emp));
    
    select ename,sal from emp
    where hiredate=(select max(hiredate) from emp);
    
    select dname,deptno from dept
    where deptno in (select deptno
					from emp
					where sal= (select max(sal) from emp
                    where sal<(select max(sal)from emp)));
                    
select sal,ename ,dense_rank ()over(order by sal desc) from emp;

select max(sal) ,ename,deptno from emp
group by deptno;


select * from(
select ename ,sal ,job ,dense_rank() over( order by sal desc) as rnk from emp) as a
where rnk in (1,2,4,6);

select * from( select ename,sal,dense_rank() over(order by sal desc) as rmk from emp)as aa
where rmk=2;

select  lead(sal)  over(order by sal desc)
from emp;

select * from emp;
select ename ,mgr,empno,job
from emp
where empno=(select mgr from emp
where ename ="adams");

select ename from emp
where empno=(select mgr from emp where empno=(select mgr from emp where ename ="james"));


select ename,sal 
from emp 
where empno=(select mgr 
			from emp
            where ename="james");

select ename from emp where mgr=(select empno from emp where ename="blake");

select ename from emp where mgr!= (select empno from emp where job="president");


select * from( select ename,sal,dense_rank() over(order by sal desc) as rmk from emp)
where rmk=1;


/* 	CTE QUERRY COMMON TABLE EXPRESSION */

use scott;

select ename,sal from emp
where sal>all(select sal from emp where job="manager");

select job,ename,sal from emp 
where hiredate>all(select hiredate from emp 
where job="clerk");

select ename from emp where sal<any(select sal from emp where job="salesman");

call emp_info();
call new_procedure(1);
call output(@records);
select @records;

call in_out(10,@records);
select @records;


create table payments(
client_id int,
amount int not null);

create table fraud(
client_id int,
amount int,
msg varchar(20),
tot datetime);

show databases;
 use amozan;
 show tables;
 
 select * from order2;
 insert into order2 values("2001-01-05",3000,230,3);
 delete from order2
 where order_id=1;
 
 use scott;
select ename ,dname
from emp cross join dept;

select ename,dname
from emp inner join dept
on emp.deptno = dept.deptno;

select ename,sal,dname
from emp inner join dept
on emp.deptno =dept.deptno;

select job ,loc,ename
from emp inner join dept
on emp.deptno=dept.deptno
where job ="analyst";


select ename ,sal,dname,loc
from emp inner join dept
on emp.deptno =dept.deptno
where emp.deptno in(10,20) and job in ('manager','clerk');

select ename,job,hiredate,loc
from emp inner join dept
on emp.deptno=dept.deptno
where loc in("new york","dallas");

select comm,empno,ename,dname
from emp inner join dept
on emp.deptno =dept.deptno
where sal>(select sal from emp
where ename="blake") and dname in("research","sales");

select ename,loc,job,emp.deptno,hiredate
from emp inner join dept
on emp.deptno=dept.deptno
where ename like "%r_" and sal between 1000 and 5000
and year(hiredate)>1980 or hiredate<(select hiredate from emp where ename="miller") and comm is null or job in("manager","salesman","analyst");

select * from emp;
use scott;
select e1.ename as employ ,m1.ename as manager,m1.sal as manager_sal,e1.sal as emp_sal
from emp e1 join emp m1
on e1.mgr= m1.empno;

select e1.ename as employ_name ,e1.job as emp_job ,m1.ename as manager_name ,m1.job as manager_job
from emp e1 join emp m1
on e1.mgr=m1.empno;

select e1.ename as emploe_name ,e1.sal as employ_sal,m1.ename as manager_name ,m1.sal as manager_salary
from emp e1 join emp m1
on e1.mgr=m1.empno
where m1.sal<e1.sal;

select e1.ename,e1.job,m1.ename,m1.job
from emp e1 join emp m1
on e1.mgr =m1.empno
where m1.job="analyst";

select e1.ename,e1.sal,m1.ename,m1.sal,m2.ename
from emp e1 join emp m1 join emp m2
on e1.mgr=m1.empno and
 m1.mgr=m2.empno;
 
 select * from emp;
 select count(*) ,job,deptno from emp
 where job != "analyst"
 group by deptno
 order by deptno;
 
 select * from dept;
 
 
 select count(*) 
 from emp
where job!="clerk"
 group by deptno
 having count(*)>=3;
 
 select * from emp;
 
 update emp
 set ename = "smith"
 where empno=7369;
 
 update emp
set ename ="S_mith"
where ename ="smith";


select sal,count(*)
from emp
group by sal
having count(*)>1;


select ename,sal from emp 
where sal>all(select sal from emp where job="manager");
select ename ,job ,sal from emp
where hiredate>all(select hiredate from emp
where job="clerk");

select * from emp;
select e1.ename as employe_name,m1.ename as manager_name
from emp e1 join emp m1
on e1.mgr=m1.empno
where e1.ename="smith";

select e1.ename as employee_name ,e1.sal as employee_salary,m1.ename as manager_name ,m1.sal as manager_sal
from emp e1 join emp m1
on e1.mgr=m1.empno
order by employee_name desc;

create table customers(cid int,cname varchar(20),cadd varchar(20),pid int);
create table product1(pid int,pname varchar(20),prize int);

insert into customers values(3,"sourabh","pune",4);
insert into product1 values(5,"watch",100);

select * from product1;
select * from customers left join product1 on customers.pid=product1.pid
union 
select * from customers right join product1 on customers.pid=product1.pid;

select deptno from emp 
union all
select deptno from emp;
select * from product1;
truncate table product1;
insert into product1 values(5,"watch",100),(1,"mobile",200),(3,"hanfjnew",278);
set autocommit=0;
delete from product1;
select * from product1;

select * from emp;
select * from emp where deptno=10;
rollback;


create database triggers1;
use triggers1;

create table emp(empno int,
ename varchar(20),sal int,
woking_hour int);

insert into emp values(1,"abhi",30000,-55);
select * from emp1;
select * from desp;
truncate table desp;

create table emp1(empno int,ename varchar(10),sal int);
create table desp(empno int ,discription varchar (200));

insert into emp1 values(2,"prassad",35000),(1,'sourabh',20000);

create table product(pid int,pname varchar(20),prize int);
insert into product values( 1,"mobile1",25000),(2,"mobiel2",28000), (3,"mobile3",30000),(4,"mobiel4",55000),( 5,"mobile5",80000),(6,"mobiel2",85000);
select * from product;

create table student(sid int,sname varchar(20),per int,class int);
create table stud_info( user varchar(30) ,description varchar(200));
truncate table student;

insert into student values(1,'sourabh',85,6),(2,'prasad',89,7),(3,'abhi',76,6),(4,'sou',86,8);
select * from student;
update student 
set class =class+1
where per>60;
select * from stud_info;

use scott;
show tables ;desc emp;
select * from emp;
select * from dept;

select ename,emp.deptno,dname,loc ,mgr
from emp cross join dept;

select ename ,dname 
from emp inner join dept
on emp.deptno=dept.deptno
where dname="sales";



select * from emp left join dept on emp.deptno=dept.deptno;
use triggers1;
create table emp4( empno int ,ename varchar(10),sal int);
create table backup01( empno int,ename varchar(30),sal int,toe timestamp default now());

insert into emp4 values(1,"yogesh",20000),(2,"prasasd",30000),(3,"sourabh",40000);
select * from emp4;
delete from emp4
where empno=2;

select * from backup01;

create table emp5( empno int,ename varchar(20),sal int );
create table budget ( total int);

insert into emp5 values(1,"prasad",30000),(2,"abhi",40000),(3,"sourabh",500000);
use scott;
-- views--

create view soura as 
select ename 
from emp;

update soura
set ename="smith"
where ename="smitha";
select * from soura;

show index from emp;

select dname
from dept
where exists(select deptno
from emp
where dept.deptno=emp.deptno);

create index abhi 
on emp(sal,empno);

use scott;
select * from emp;

select e1.ename as employe_name, m1.ename as manager_name
from emp e1 join emp m1
on e1.mgr=m1.empno;

select * from emp left join dept
on emp.deptno= dept.deptno
union
select * from emp right join dept
on emp.deptno =dept.deptno;

SELECT * FROM EMP NATURAL JOIN DEPT;
desc university;
use scott;
create table university( sname int ,sadd varchar(20));
insert into university values(1,"    sourabh    desai     "),(2,"desai       sandesh     "),(3,"    sudhakar     desai");
alter table university 
modify column sadd varchar(50 ) ;
select * from university;

use scott;

update university
set sadd=replace(replace(replace ," ","<>"),"><"," "),"<>"," ");

create table emp1 like emp;
select * from emp1;
alter table emp1 
drop column srno;
alter table emp1 add column srno int after ename ;

use scott;
select * from emp;
select max(sal) from emp where sal < (select max(sal) from emp );