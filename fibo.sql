CREATE OR REPLACE PROCEDURE display_fibonacci_numbers(n IN NUMBER) IS
    fib_num NUMBER;
    prev_num NUMBER := 0;
    curr_num NUMBER := 1;
BEGIN
    IF n >= 1 THEN
        DBMS_OUTPUT.PUT_LINE(prev_num);
    END IF;
    
    IF n >= 2 THEN
        DBMS_OUTPUT.PUT_LINE(curr_num);
    END IF;
    
    FOR i IN 3..n 
    LOOP
        fib_num := prev_num + curr_num;
        DBMS_OUTPUT.PUT_LINE(fib_num);
        
        prev_num := curr_num;
        curr_num := fib_num;
    END LOOP;
END;
/
SET SERVEROUTPUT ON;
DECLARE
    n NUMBER := &n;
BEGIN
    display_fibonacci_numbers(n);
END;
/
