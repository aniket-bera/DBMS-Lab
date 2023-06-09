set serveroutput on
declare
cursor add_interest
is
select Acc_no, Total_COST from Acc_details where Acc_status='A';
varaccn Acc_details.Acc_no%type;
varamt Acc_details.Total_COST%type;
begin
    open add_interest;
    if add_interest%isopen then
        loop
            fetch add_interest into varaccn, varamt;
            exit when add_interest%notfound;
            update Acc_details set Total_COST=varamt*1.02 where
            Acc_no=varaccn;
            dbms_output.put_line( varaccn || '   is updated  ');
	    end loop;
	else
	    dbms_output.put_line('Cursor not opened.  ');
	end if;
	close add_interest;
	commit;
end;
/