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


