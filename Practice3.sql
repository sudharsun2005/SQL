create database Learners;
use Learners;
create table learner(
   stdID int,
   Sname varchar(20)
);
insert into learner (stdID,Sname) values 
(1, 'pmk'),(2,'ram'),(3,'kim'); 
select * from learner;
-- update --
update learner 
set sname = 'bala'
where stdID = 2;

alter table learner add column branch char(20);
alter table learner add column gender char(20) after stdid ;

update learner set gender = 'M';
update learner set gender = 'f',Sname = 'kinii' where stdid = 3;

alter table learner add primary key (stdID);
delete from learner where stdid=3;

create table Employee (
   Eid int primary key ,
   Ename varchar(20) null ,
   Gender char(20),
   Dept varchar(50) unique,
   Age int check(age>20),
   Place varchar(50) default 'Chennai',
   Salary decimal(8,2));
desc Employee;
select * from employee;  
alter table employee add column Email varchar(20) after gender;
insert into Employee(eid,ename,gender,email,dept,age,salary) values(101, 'bhavya', 'f', 'B@gmail.com', 'ece',22,25000),(102, 'karthic', 'm', 'K@gmail.com','marketing',27,'32000'),(103, 'siraj','f', 'ss@gmail.com', 'it',24,'25000'),(104, 'madhav','m', 'mm@gmail.com','sales', 22, '25000'),(105, 'pmk', 'M', 'PMK@gmail.com', 'HR', 22, '25000');

   