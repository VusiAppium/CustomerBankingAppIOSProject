
create database CustomerBankSAApp3db;

use  CustomerBankSAApp3db;

create table Customers
(CustomerUsername varchar(30) primary key, CustomerPassword varchar(30), CustomerEmail varchar(50), CustomerIDNumber varchar(13),
CustomerName varchar(50), CustomerSurname varchar(50));

describe Customers;

create table AddressDetails
(AddressDetailsId int(10) primary key, AddressLine1 varchar(30), AddressLine2 varchar(30), City varchar(30), Province varchar(30), PostalCode varchar(30), CustomerUsername varchar(30) REFERENCES Customers(CustomerUsername));

describe AddressDetails;

create table EducationDetails
( EducationDetailsId int(10) primary key, QualificationObtained varchar(30), TertiaryInstitution varchar(50), Province varchar(50), YearObtained varchar(4), CustomerUsername varchar(30) REFERENCES Customers(CustomerUsername));

describe EducationDetails;

create table WorkDetails
(WorkDetailsId int(10) primary key, EmploymentLevel varchar(30), JobPosition varchar(50), CompanyName varchar(50), EmploymentStartDate varchar(50), CustomerUsername varchar(30));

describe WorkDetails;

create table IncomeDetails
(IncomeDetailsId int(10) primary key, IncomeRangeId int(10), NetSalary varchar(50), GrossSalary varchar(50), PaymentDay int(10), CustomerUsername varchar(30) REFERENCES Customers(CustomerUsername));

Describe IncomeDetails;

create table IncomeRange
(IncomeRangeId int(10) primary key, IncomeRange varchar(30));

Describe IncomeRange;

create table BankAccountDetails
(AccountNumber int(10) primary key, PIN int(4), CARDNUMBER int(16), BankId int(10), AccountTypeId int(10), CustomerUsername varchar(30) REFERENCES Customers(CustomerUsername ));

Describe BankAccountDetails;

create table Banks
(BankId int(10) primary key, BankName varchar(30), BranchCode varchar(50));

Describe Banks;

create table AccountTypes
(AccountTypeId int(10) primary key, AccountType varchar(30));

Describe AccountTypes;


create table Payments
(PaymentId int(10) primary key, AccountNumber varchar(50), Amount varchar(50),  PaymentDate varchar(50),BeneficiaryName varchar(20),
CustomerUsername varchar(30) REFERENCES Customers(CustomerUsername));

Describe Payments;


create table PaymentType
(PaymentTypeId int(10) primary key, PaymentType varchar(30));

Describe PaymentType;

create table Transfer
(TransferId int(10) primary key,AccountNumber int(10), TransferAmount varchar(50),  BeneficiaryName varchar(20),CustomerUsername varchar(30) REFERENCES Customers(CustomerUsername));

Describe Transfer;





















 


