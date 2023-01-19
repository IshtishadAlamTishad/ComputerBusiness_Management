create table Customer(invoice_id number(4) constraint pki_id primary key,cs_name varchar2(20),cs_address varchar2(20));

insert into Customer values(2001,'Sheikh Rehana','Dhanmondi,Dhaka');
insert into Customer values(2002,'Abdul Hamid','Banani,Bogura');
insert into Customer values(2003,'Khaleda Zia','Gulshan,Dhaka');
insert into Customer values(2004,'Ershad Shikdar','Sopnopuri,Rangpur');
insert into Customer values(2005,'Mirza Fakrul','Jalaswaritola,Natore');
insert into Customer values(2006,'Atik Yasir','Komlapur,Rangpur');
insert into Customer values(2007,'Sakib Khan','Raoganj,Bogura');
insert into Customer values(2008,'Jakaria Alam','Majhira,Dhaka');
insert into Customer values(2009,'Rowson Ershad','Golapbag,Dhaka');
insert into Customer values(2010,'Mirza Abbas','Basundhora,Natore');

select * from customer;
