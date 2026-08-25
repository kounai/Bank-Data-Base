CREATE OR REPLACE VIEW JOINED_Bank AS
SELECT Bank.Bank_name, Bank.Bank_id, BranchB.B_name, BranchB.Branch_id
FROM Bank, BranchB
WHERE Bank.Bank_id = BranchB.Bank_id;

CREATE TRIGGER JOINED_Bank_Trigger
INSTEAD OF UPDATE ON JOINED_Bank
FOR EACH ROW
BEGIN
    UPDATE BranchB 
    SET B_name = :new.B_name 
    WHERE Branch_id = :old.Branch_id;
END;
/
