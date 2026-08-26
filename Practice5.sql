-- Task 1 --
use bankingdb;
select * from customers ;
-- Display customers whose first name starts with R--\

select * from customers where firstname like 'r%';

-- Find customers whose email contains yahoo --

select * from customers where email like 'yahoo';

-- Display customers whose last name starts with P --

select * from customers where lastname like '%p';

-- Search customers whose phone number ends with 99 --

select * from customers where phone % 100=99 ;

-- task 2 --
-- Display accounts belonging to Salary and Savings account types
select* from accounts where Accounttype in ('salary','savings');

-- Retrieve transactions for Payment and Deposit categories --
select * from transactions where Transactiontype in ('payment','deposit');

-- Display customer records for CustomerID 103 and 104 --
select * from customers where CustomerID in (103,104);

-- Retrieve selected account records using AccountID values --
select * from accounts where AccountID; 

-- task 3--
-- Display customers sorted by FirstName
select * from customers order by firstname asc;

-- Display accounts sorted by AccountType
select * from accounts order by accounttype asc;

-- Display transactions sorted by Amount in descending order
select * from transactions order by amount desc;

-- Display customers sorted by DateOfBirth

select * from customers order by DateOfBirth;

-- Task 4--

-- Display top 3 transactions with highest amount --
use bankingdb;
select * from transactions;
select * from transactions order by amount desc;

-- Retrieve only 4 customer records--
select * from customers limit 4 offset 0;

-- Skip first 2 account records and display next 3 records--
select * from accounts limit 3 offset 2;

-- Display top 5 latest transactions--
select * from transactions limit 4 offset 0;
 
 -- end --


