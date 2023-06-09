DECLARE
  v_column_value VARCHAR2(100) := NULL;
  v_exception_msg VARCHAR2(100);
  NULL_VALUE_EXCEPTION EXCEPTION;
  PRAGMA EXCEPTION_INIT(NULL_VALUE_EXCEPTION, -20001);
BEGIN
  IF v_column_value IS NULL THEN
    v_exception_msg := 'NULL value cannot be interted';
    RAISE NULL_VALUE_EXCEPTION;
  ELSE
    INSERT INTO Customer (Phone_no) VALUES (v_column_value);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Insertion Done');
  END IF;
EXCEPTION
  WHEN NULL_VALUE_EXCEPTION THEN
    DBMS_OUTPUT.PUT_LINE(v_exception_msg);
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
    ROLLBACK;
END;
/
