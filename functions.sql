CREATE OR REPLACE FUNCTION functi(name IN VARCHAR2) RETURN VARCHAR2
IS
BEGIN
    RETURN ('a suo:' || name);
END;
/

CREATE OR REPLACE FUNCTION funct(name IN VARCHAR2) RETURN VARCHAR2
IS
BEGIN
    RETURN ('We are pleased with your presence ' || name);
END;
/
