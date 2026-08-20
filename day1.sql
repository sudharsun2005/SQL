-- 1. CREATE DATABASE
CREATE DATABASE BankingDB;

-- 2. USE DATABASE
USE BankingDB;

-- 3. CUSTOMERS TABLE


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    AccountCreationDate DATE,
    DateOfBirth DATE
);

-- 4. BRANCHES TABLE

CREATE TABLE Branches (
    BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);

-- 5. ACCOUNTS TABLE


CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2),
    CustomerID INT,
    BranchID INT,

    CONSTRAINT chk_MinBalance
    CHECK (Balance >= 1000),

    CONSTRAINT FK_Accounts_Customers
    FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID),

    CONSTRAINT FK_Accounts_Branches
    FOREIGN KEY (BranchID)
    REFERENCES Branches(BranchID)
);

-- 6. TRANSACTIONS TABLE


CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(20),

    CONSTRAINT FK_Transactions_Accounts
    FOREIGN KEY (AccountID)
    REFERENCES Accounts(AccountID)
);

-- 7. LOANS TABLE

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE,

    CONSTRAINT FK_Loans_Customers
    FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID)
);


-- 8. CHECK ALL TABLES

DESC Customers;

DESC Branches;

DESC Accounts;

DESC Transactions;

DESC Loans;


-- 9. SHOW ALL TABLES

SHOW TABLES;



select * from Customers;
desc Customers;

alter table Customers add column pan varchar(20);
alter table Customers add column pan1 varchar(20)first;
alter table Customers add column pan2 varchar(20)after email;
alter table Customers drop column pan;
alter table Customers modify column pan1 varchar(50);


INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, DateOfBirth)
VALUES
(001,'sudhar','Sun','sudharsun@gmail.com','9876543210','1998-04-15');


select * from Customers;

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(201,001,'Savings',500000); 

INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, DateOfBirth)
VALUES
(002,'sharn','raj','sharan@gmail.com','9876543550','1998-06-15');

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(202,002,'Current',10000); 


select * from Accounts;

create database Learners;

use Learners;

-- Table Creation - Learner
create table Learner(id int ,sname varchar(20));

desc Learner;

insert into Learner values(1,'PRAVEEN');
insert into Learner values(2,'HARSHAD'),(3,'SHARAN');

select * from Learner;

delete from Learner;

alter table Learner add Gender char(1) after id;

update Learner set Gender='M';


