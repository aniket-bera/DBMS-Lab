create table Acc_details(
    Acc_No varchar2(8) primary key,
    Name varchar2(20) not null,
    Address varchar2(50) not null,
    DOB date not null,
    sex char(1) check (sex in ('M', 'F')),
    contact_no number(10) not null,
    last_trans_date date not null,
    Total_cost number(14,2) not null,
    Acc_status char(1) not null check(Acc_status in ('A', 'I'))
);

create table Transaction_Acc(
    Transaction_Id number(8) primary key,
    Acc_No varchar2(8) references Acc_details on DELETE CASCADE,
    Deposit_amt number(12,4),
    Withdraw_amt number(12,4),
    Mode_trans char(5) not null,
    Check_no number(6) default 0,
    Trans_date date not null
);

insert into Acc_details values('001', 'AMIT', 'BK-256', '12-JAN-2012','M',9836773258,'13-JUN-2012',12000, 'A');

insert into Transaction_Acc values(002, '001', 11000, 5000, 'A', 101, '12-JUN-2012');

/*delete from Acc_details where Acc_no='001';*/