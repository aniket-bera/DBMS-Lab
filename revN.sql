CREATE OR REPLACE FUNCTION reverse_number(input_number IN NUMBER) 
RETURN NUMBER IS
    reversed_number NUMBER := 0;
    remainder NUMBER;
BEGIN
    WHILE input_number > 0 
    LOOP
        remainder := input_number MOD 10;
        reversed_number := (reversed_number * 10) + remainder;
        input_number := input_number / 10;
    END LOOP;
    
    RETURN reversed_number;
END;
/
SET SERVEROUTPUT ON;
DECLARE
    input_number NUMBER := 5639;
    rev_number NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Reversed number: ' || reverse_number(input_number));
END;
/
