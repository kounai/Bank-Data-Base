-- Bank Cursor / Update Example
DECLARE
    total_rows NUMBER(2);
BEGIN
    UPDATE Bank SET Bank_id = Bank_id + 500;
    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('no Bank selected');
    ELSIF SQL%FOUND THEN
        total_rows := SQL%ROWCOUNT;
        DBMS_OUTPUT.PUT_LINE(total_rows || ' Bank selected');
    END IF;
END;
/

-- Customer Cursor / Update Example
DECLARE
    total_rows NUMBER(2);
BEGIN
    UPDATE customer SET ACCOUNTNO = ACCOUNTNO + 1;
    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('no customer selected');
    ELSIF SQL%FOUND THEN
        total_rows := SQL%ROWCOUNT;
        DBMS_OUTPUT.PUT_LINE(total_rows || ' customer selected');
    END IF;
END;
/
