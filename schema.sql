CREATE TABLE Bank (
    Bank_id NUMBER(5) PRIMARY KEY,
    Bank_name VARCHAR2(20) NOT NULL,
    Bank_address VARCHAR2(40) NOT NULL
);

CREATE TABLE BranchB (
    Branch_id NUMBER(5) PRIMARY KEY,
    B_name VARCHAR2(20) NOT NULL,
    B_address VARCHAR2(20) NOT NULL,
    Bank_id NUMBER(5),
    CONSTRAINT FK_Bank_id FOREIGN KEY (Bank_id) REFERENCES Bank(Bank_id)
);

CREATE TABLE Customer (
    custemer_id NUMBER(5) PRIMARY KEY,
    C_name VARCHAR2(20) NOT NULL,
    C_address VARCHAR2(40) NOT NULL,
    C_phone VARCHAR2(20) NOT NULL
);

CREATE TABLE Loan (
    L_id NUMBER(5) PRIMARY KEY,
    L_type VARCHAR2(20) NOT NULL,
    L_amount FLOAT NOT NULL,
    Branch_id NUMBER,
    custemer_id NUMBER(5)
);

CREATE TABLE Account_ (
    Acc_id NUMBER(5) PRIMARY KEY,
    Acc_Balance VARCHAR2(20) NOT NULL,
    Acc_type VARCHAR2(40) NOT NULL,
    Branch_id NUMBER,
    custemer_id NUMBER(5)
);
