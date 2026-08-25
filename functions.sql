CREATE OR REPLACE FUNCTION functi(name IN VARCHAR2) RETURN VARCHAR2
IS
BEGIN
    RETURN ('a suo:' || name);
END;
/

DECLARE
    j VARCHAR2(250);
BEGIN
    j := functi('Project Students');
    DBMS_OUTPUT.PUT_LINE(j);
END;
/

SELECT functi('ahmad, Ali, mayk') FROM DUAL;



CREATE OR REPLACE FUNCTION funct(name IN VARCHAR2) RETURN VARCHAR2
IS
BEGIN
    RETURN ('We are pleased with your presence ' || name);
END;
/


DECLARE
    j VARCHAR2(250);
BEGIN
    j := funct('ABHA UNIVERSITY');
    DBMS_OUTPUT.PUT_LINE(j);
END;
/

SELECT funct('IN OUR PROJECT') FROM DUAL;
