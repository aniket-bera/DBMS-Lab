set serveroutput on
declare 
	ename varchar2(20);	
	Eno number:=&Eno;
begin
	select ename into ename from Emp where Empno=Eno;
    dbms_output.put_line('  The Employee name is   ' || ename);
	exception
	when NO_DATA_FOUND then
	dbms_output.put_line('  The Employee is not found for the given Emp No.  ');
end;
/
