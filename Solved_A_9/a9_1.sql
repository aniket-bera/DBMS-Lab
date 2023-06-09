set serveroutput on
declare
    n number(20);
    t number(20);
    amt number:=500;
begin
	n:=&n;
    update Acc_details set Total_Cost=Total_Cost-amt where Acc_No=n;
	commit;
	savepoint s;
    update Acc_details set Total_Cost=Total_Cost-amt where Acc_No=n;
	select Total_Cost into t from Acc_details where Acc_No=n;
	if(t<1000) then
        dbms_output.put_line(' Balance after 2nd Transaction-  ' || t);
        dbms_output.put_line(' Insufficient Balance. ');
        rollback to savepoint s;
        dbms_output.put_line(' Balance after Rollback  ' || t);
	else
	    commit;
        select Total_Cost into t from Acc_details where Acc_No=n;
        dbms_output.put_line(' Balance after COMMIT  ' || t);
	end if;
end;
/