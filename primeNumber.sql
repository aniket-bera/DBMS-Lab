CREATE OR REPLACE FUNCTION is_prime(num NUMBER) 
RETURN BOOLEAN IS
    divisor NUMBER := 2;
BEGIN
    WHILE divisor <= SQRT(num) 
    LOOP
        IF MOD(num, divisor) = 0 THEN
            RETURN FALSE;
        END IF;
        divisor := divisor + 1;
    END LOOP;
    RETURN TRUE;
END;
/

CREATE OR REPLACE PROCEDURE display_prime_numbers(n IN NUMBER) IS
    counter NUMBER := 0;
    num NUMBER := 2;
BEGIN
    WHILE counter < n 
    LOOP
        IF is_prime(num) THEN
            DBMS_OUTPUT.PUT_LINE(num);
            counter := counter + 1;
        END IF;
        num := num + 1;
    END LOOP;
END;
/

SET SERVEROUTPUT ON;
DECLARE
    n_input NUMBER;
BEGIN
    n_input := &n_input;
    display_prime_numbers(n_input);
END;
/
