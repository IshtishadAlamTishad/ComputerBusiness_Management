create table Branch(Branch_no number(4) constraint pkb_no primary key,location varchar2(20),telephone number(6));

alter table Branch modify telephone unique;


insert into Branch values(1001,'Matidali,Bogura',41110);
insert into Branch values(1002,'Gabtoli,Dhaka',41111);
insert into Branch values(1003,'Sonatola,Rajshahi',41112);
insert into Branch values(1004,'Sariakandi,Sylhet',41113);
insert into Branch values(1005,'Dhonut,Natore',41114);

select * from Branch;
