create database practice;
show databases;
select database();
use sakila;
show tables;
select * from city;
select city_id,city from city;
use practice;
show tables;
create table learner (sno int,name varchar(20));
desc learner;
select * from learner;
insert into learner values (1,'praveen');
insert into learner values (2,'vignesh');
insert into learner values (3,'sudharsun');
show tables;
create database BankingDB;
use BankingDB;


DAY-2

create table customer(
	CustomerID INT,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Email VARCHAR(100),
	Phone VARCHAR(15)
);

desc customer;



