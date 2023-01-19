create table OWNER(c_id number(5) constraint pkc_id primary key,c_Name varchar2(20),c_Address varchar2(20));

insert into OWNER values(101,'Alvi Ahmed','P.T.I,Bogura');
insert into OWNER values(102,'Tishad Ahmed','Lotapur,Dhaka');
insert into OWNER values(103,'Arif Ahmed','Kashbon,Natore');
insert into OWNER values(104,'Dipro Datta','Kohela,Sylhet');
insert into OWNER values(105,'Rifa Das','Kalopur,Panchagar');

select * from OWNER;
