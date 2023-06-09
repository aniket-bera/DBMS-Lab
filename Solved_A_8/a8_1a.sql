set serveroutput on;
create table prime_entry(
    Num_id number(3) primary key,
    prime_num number(3) not null
);

create sequence seq
start with 1
increment by 1
/