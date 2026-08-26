create database product;
drop database product;
create database Products;
use Products;
CREATE TABLE prod (
    prodID VARCHAR(10) PRIMARY KEY,
    prodName VARCHAR(20),
    category VARCHAR(20),
    price FLOAT
);
insert into prod values('P001','laptop','Electronics',25000),('P002','mobile ','electronics',20000),('P003','table','furniture',500),('P004','chair','Furniture',500),('P005','pen','stationary',150);
select * from prod;
-- only prod --
select prodName from prod;
-- with where --
select * from prod where price <20000;
-- and --
select * from prod where  category ='furniture' and price<1000;
-- or --
select * from prod where  category ='furniture' or price<1000;
-- not --
select * from prod where prodName!='pen';
-- in --
select * from prod where prodid in ('p001','p003');

select * from prod where category = 'furniture' or category = 'staionary';

select * from prod where prodid not in('p001','p003');
-- between --
select * from prod where price between'500' and '20000';

use bankingdb;

select * from customers;
 insert into Customers values(102, 'rahil','sharma','rs@gmail.com',476578,'1999-09-04'),(103,'pk','sharma','pk@gmail.com',9876654,'1992-09-12'),(104,'rohan','kulkarni','rk@gmail.com',9579876533,'1993-11-25');
desc customers;
select * from transactions;

select * from prod order by prodname desc,price asc;
select prodname from prod order by prodname;

select * from prod where prodid in ('P003');
select distinct category from prod;

insert into prod values('P006','Pencil','Staionary',null);

use products;
 
select prodid,prodname ,price,
CASE
    when price >12000 then 'best'
    when price <1000 then 'average'
    else 'low'
end as status
from prod;

-- misssing price -
select * from prod where price is null;
select * from prod where price is not null;
use sakila;
select * from city limit 20 offset 40;
select * from city limit 30,20;
select * from transactions;
select * from ACCOUNTS;
INSERT into accounts values (201,'savings',25000,101,301),(202,'current','37000',102,302),(203,'current','34000',103,303),(204,'savings','23000',104,304);
select * from branches;

select * from city where city like 's%';
select * from city where city like '%s';
select * from city where city like '%pol%';
select * from city where city like 's___m%';

-- branches --
insert into branches values(301,'chennai','321,anna nagar','256347'),(302,'bangalore','351,electronic city','546879'),(303,'madurai','402,k.k.nagar',258091),(304,'salem','671,tj nagar',789456);

-- transaction inserting data--
insert into transactions values(401,'2000-01-14','12000','banking',201),(402,'2001-03-17','14000','online',202),(403,'2004-09-19','16000','online',203),(404,'2005-10-20','23000','banking',204);

-- Task 2 --

select * from accounts;
select * from accounts where  balance<25000;
select * from transactions where amount between 10000 and 20000;
select * from customers where customerid in(103,104);
select * from customers where FirstName like 'r%';

-- task 3--
select*from customers order by lastname asc;
select * from transactions order by amount desc;
select distinct transactiontype from transactions;
select * from transactions limit 2 offset 2;

-- task 4--
select * from customers where email is null; 
select * from accounts where balance is not null;

-- task 5---
select transactionID,transactiontype,amount,
case
    when amount <=12000 then 'lowest amount'
    when amount <=15000 then 'medium amount'
    else 'highest amount'
end as status
from transactions;

-- Task 5--

select accountid,balance,
rank() over(order by balance asc) as 'ranks'
from accounts;

select accountid,balance,
sum(balance) over() as "total"
from accounts;

select transactionid,amount,
max(amount) over() as "maximum transaction amount"
from transactions;

-- end --
select * from transactions;
desc transactions;
select * from customers;
select * from accounts;

