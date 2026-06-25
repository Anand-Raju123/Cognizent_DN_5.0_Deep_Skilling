create table customers (
   customerid number primary key,
   name       varchar2(50),
   age        number,
   balance    number,
   isvip      varchar2(5)
);
create table loans (
   loanid       number primary key,
   customerid   number,
   interestrate number,
   duedate      date
);
insert into customers values ( 1,
                               'Karishma',
                               65,
                               15000,
                               'FALSE' );
insert into customers values ( 2,
                               'Gayatri',
                               45,
                               5000,
                               'FALSE' );
insert into customers values ( 3,
                               'Balasri',
                               70,
                               25000,
                               'FALSE' );

insert into loans values ( 101,
                           1,
                           10,
                           sysdate + 20 );
insert into loans values ( 102,
                           2,
                           12,
                           sysdate + 40 );
insert into loans values ( 103,
                           3,
                           9,
                           sysdate + 15 );
commit;

select *
  from loans;
   SET SERVEROUTPUT ON;
begin
   for cust in (
      select customerid
        from customers
       where age > 60
   ) loop
      update loans
         set
         interestrate = interestrate - 1
       where customerid = cust.customerid;
   end loop;

   commit;
   dbms_output.put_line('Interest Discount Applied Successfully');
end;
/

select *
  from loans;
select *
  from customers;
select c.customerid,
       c.name,
       l.loanid,
       l.interestrate,
       l.duedate
  from customers c
  join loans l
on c.customerid = l.customerid;