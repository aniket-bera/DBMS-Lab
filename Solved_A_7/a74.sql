set serveroutput on
declare
a number;
b number;
c number;
begin
a := &a;
b := &b;
c := &c;
if (a>b and a>c)
then
dbms_output.put_line (a || ' is the maximum');
elsif (b>c) then
dbms_output.put_line (b || ' is the maximum');
else
dbms_output.put_line (c || ' is the maximum');
end if;
end;
/