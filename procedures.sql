-- Bank Insert Procedure
CREATE OR REPLACE PROCEDURE BANK_insert (
    B_Bank_id BANK.Bank_id%type,
    B_Bank_name BANK.Bank_name%type,
    B_Bank_address BANK.Bank_address%type
)
AS
BEGIN
    INSERT INTO BANK(Bank_id, Bank_name, Bank_address) 
    VALUES (B_Bank_id, B_Bank_name, B_Bank_address);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('record of ' || B_Bank_address || ' inserted successfully');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('unexpected errors happened ' || SQLERRM);
END;
/

-- BranchB Insert Procedure
CREATE OR REPLACE PROCEDURE BranchB_INSERT(
    B_Branch_id BranchB.Branch_id%type,
    B_B_name BranchB.B_name%type,
    B_B_address BranchB.B_address%type,
    B_Bank_id BranchB.Bank_id%type
)
AS
BEGIN
    INSERT INTO BranchB(Branch_id, B_name, B_address, Bank_id)
    VALUES(B_Branch_id, B_B_name, B_B_address, B_Bank_id);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('record of ' || B_Branch_id || ' inserted successfully');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('unexpected errors happened ' || SQLERRM);
END;
/

-- Customer Insert Procedure
CREATE OR REPLACE PROCEDURE Customer_insert(
    C_custemer_id Customer.custemer_id%type,
    C_C_name Customer.C_name%type,
    C_C_address Customer.C_address%type,
    C_C_phone Customer.C_phone%type
)
AS
BEGIN
    INSERT INTO Customer (custemer_id, C_name, C_address, C_phone)
    VALUES (C_custemer_id, C_C_name, C_C_address, C_C_phone);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('record of ' || C_custemer_id || ' inserted successfully');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('unexpected errors happened ' || SQLERRM);
END;
/

-- Loan Insert Procedure
CREATE OR REPLACE PROCEDURE Loan_insert(
    L_L_id Loan.L_id%TYPE,
    L_L_type Loan.L_type%TYPE,
    L_L_amount Loan.L_amount%TYPE,
    L_Branch_id Loan.Branch_id%TYPE
)
AS
BEGIN
    INSERT INTO Loan (L_id, L_type, L_amount, Branch_id)
    VALUES (L_L_id, L_L_type, L_L_amount, L_Branch_id);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('record of ' || L_L_id || ' inserted successfully');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('unexpected errors happened ' || SQLERRM);
END;
/

-- Account Insert Procedure
CREATE OR REPLACE PROCEDURE Account_Insert(
    A_Acc_id Account_.Acc_id%TYPE,
    A_Acc_Balance Account_.Acc_Balance%TYPE,
    A_Acc_type Account_.Acc_type%TYPE,
    A_Branch_id Account_.Branch_id%TYPE,
    A_custemer_id Account_.custemer_id%TYPE
)
AS
BEGIN
    INSERT INTO Account_(Acc_id, Acc_Balance, Acc_type, Branch_id, custemer_id)
    VALUES (A_Acc_id, A_Acc_Balance, A_Acc_type, A_Branch_id, A_custemer_id);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('record of ' || A_Acc_id || ' inserted successfully');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('unexpected errors happened ' || SQLERRM);
END;
/
