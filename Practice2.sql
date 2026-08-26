create database bankingdb;
use bankingdb;

CREATE TABLE Customers (
    CustomerID int primary key,
    FirstName varchar(50),
    Lastname varchar(50),
    email varchar(100),  
    phone varchar(15),
    accountcreationdate date
);

-- Accounts
create table Accounts (
   AccountID int,
   Accounttype varchar(20),
   balance decimal(10,2)
   );
   
-- Transactions
create table Transactions (
   TransactionID Int,
   TransactionDate date,
   Amount decimal(10,2),
   Transactiontype varchar(20)
);

-- Branches
create table Branches (
   BranchId int,
   branchName varchar(100),
   BranchAddress varchar(200),
   BranchPhone varchar(15)
);

-- Loans
create table Loans (
   LoanID int,
   LoanAmount decimal(10,2),
   IntrestRate decimal(5,2),
   StartDate date,
   EndDate date
);

alter table accounts drop transactionid;
drop table accounts;
drop table branches;
drop table transactions;
drop table loans;
drop table customers;
show tables;
drop table accountbranches;

-- accounts->customers
alter table accounts add customerid int;

alter table Accounts
add constraint FK_Accounts_Customers
foreign key (customerid)
references customers(customerid);

-- accounts->branches--
alter table accounts add primary key(accountid);
alter table branches add primary key(branchID);

alter table accounts
add constraint FK_Accounts_Branches
foreign key (branchid)
references Branches(BranchID);

-- transactions -> accounts--
alter table transactions add primary key(transactionid);

alter table transactions add accountid int;

alter table transactions
add constraint FK_transactions_accounts
foreign key (accountid)
references transactions(transactionID); 

-- Loans->Customers--
alter table loans add customerID int;

alter table loans add primary key (loanID);

alter table loans 
add constraint FK_Loans_Customers
foreign key (customerid)
references loans(loanid);

describe accounts;
describe branches;
describe customers;
describe transactions;
desc loans;