1)
create table OWNER(c_id number(5) constraint pkc_id primary key,c_Name varchar2(20),c_Address varchar2(20));

insert into OWNER values(101,'Alvi Ahmed','P.T.I,Bogura');
insert into OWNER values(102,'Tishad Ahmed','Lotapur,Dhaka');
insert into OWNER values(103,'Arif Ahmed','Kashbon,Natore');
insert into OWNER values(104,'Dipro Datta','Kohela,Sylhet');
insert into OWNER values(105,'Rifa Das','Kalopur,Panchagar');

select * from OWNER;

2)
create table Laptop_Computer_parts(product_no number(4) constraint pkp_no primary key,model varchar2(6),ava_Quantity number(3),purchase_price number(9));

insert into Laptop_Computer_parts values(201,'SS11',22,70000);
insert into Laptop_Computer_parts values(202,'SS12',20,80000);
insert into Laptop_Computer_parts values(203,'SS13',23,70000);
insert into Laptop_Computer_parts values(204,'SS14',17,75000);
insert into Laptop_Computer_parts values(205,'SS15',12,60000);
insert into Laptop_Computer_parts values(206,'SS16',13,65000);

select* from Laptop_Computer_parts;

3)
create table Price (purchase_price number(9) constraint pk_pp primary key,selling_price number(9));

insert into Price values(60000,65000);
insert into Price values(65000,70000);
insert into Price values(70000,75000);
insert into Price values(75000,80000);
insert into Price values(80000,85000);

select * from price;

4)
create table OWNER_Extra(c_Phone number(11),c_id number(5),constraint pkphn_cid primary key(c_Phone,c_id));

alter table OWNER_Extra add constraint fkc_id foreign key (c_id) references OWNER(c_id);

insert into OWNER_Extra values(999998888,101);
insert into OWNER_Extra values(999997777,101);
insert into OWNER_Extra values(999996666,102);
insert into OWNER_Extra values(999995555,103);
insert into OWNER_Extra values(999994444,104);
insert into OWNER_Extra values(999993333,105);
insert into OWNER_Extra values(999992222,105);

select * from OWNER_Extra;

5)
create table Import(product_no number(4) ,c_id number(5),constraint pkpno_cid primary key(product_no,c_id));

alter table Import add constraint fkp_no2 foreign key (product_no) references Laptop_Computer_parts (product_no);
alter table Import add constraint fkc_id2 foreign key (c_id) references OWNER(c_id);

insert into Import values(201,101);
insert into Import values(202,102);
insert into Import values(203,103);
insert into Import values(204,104);
insert into Import values(205,105);
insert into Import values(206,101);
insert into Import values(203,102);

select * from Import;

6)

create table Branch(Branch_no number(4) constraint pkb_no primary key,location varchar2(20),telephone number(6));

alter table Branch modify telephone unique;

insert into Branch values(1001,'Matidali,Bogura',41110);
insert into Branch values(1002,'Gabtoli,Dhaka',41111);
insert into Branch values(1003,'Sonatola,Rajshahi',41112);
insert into Branch values(1004,'Sariakandi,Sylhet',41113);
insert into Branch values(1005,'Dhonut,Natore',41114);

select * from Branch;

7)
create table Operate_Branch(Branch_no number(4),c_id number(5),constraint pkbno_cid primary key(Branch_no,c_id ));

alter table Operate_Branch add constraint fkb_no foreign key (Branch_no) references Branch(Branch_no);
alter table Operate_Branch add constraint fkc_id3 foreign key (c_id) references OWNER(c_id);

insert into Operate_Branch values(1001,101);
insert into Operate_Branch values(1002,102);
insert into Operate_Branch values(1003,103);
insert into Operate_Branch values(1004,104);
insert into Operate_Branch values(1005,105);

select * from Operate_Branch ;

8)
create table Employee(e_id number(5) constraint pke_id primary key,e_name varchar2(20),e_salary number(9));

insert into Employee values(201,'Istishad Tishad',20000);
insert into Employee values(202,'Ariful Islam',25000);
insert into Employee values(203,'Dipro Kar',30000);
insert into Employee values(204,'Zobayer Piash',20000);
insert into Employee values(205,'Porosh Sarkar',25000);
insert into Employee values(206,'Saif Rohan',40000);
insert into Employee values(207,'Naim Mujibur',50000);
insert into Employee values(208,'Sakib Hossain',25000);
insert into Employee values(209,'Nabil Hossain',30000);
insert into Employee values(210,'Sakid Sarkar',20000);

select * from Employee;

9)
create table Employee_Extra(e_Phone number(11),e_id number(5),constraint pkephn_eid primary key(e_Phone,e_id));

alter table Employee_Extra add constraint fke_id foreign key (e_id) references Employee(e_id);

insert into Employee_Extra values(999999991,201);
insert into Employee_Extra values(999999992,201);
insert into Employee_Extra values(999999993,202);
insert into Employee_Extra values(999999994,203);
insert into Employee_Extra values(999999995,204);
insert into Employee_Extra values(999999996,205);
insert into Employee_Extra values(999999997,205);
insert into Employee_Extra values(999999998,206);
insert into Employee_Extra values(999999999,207);
insert into Employee_Extra values(999999910,207);
insert into Employee_Extra values(999999911,208);
insert into Employee_Extra values(999999912,209);
insert into Employee_Extra values(999999913,209);
insert into Employee_Extra values(999999914,210);
insert into Employee_Extra values(999999915,210);

select * from  Employee_Extra;


10)
create table Work(e_id number(5),Branch_no number(4),constraint pkeid_bno primary key(e_id,Branch_no));

alter table Work add constraint fke_id2 foreign key (e_id) references Employee(e_id);
alter table Work add constraint fkb_no4 foreign key (Branch_no) references Branch(Branch_no);

insert into Work values(201,1001);
insert into Work values(202,1001);
insert into Work values(203,1002);
insert into Work values(204,1002);
insert into Work values(205,1003);
insert into Work values(206,1003);
insert into Work values(207,1004);
insert into Work values(208,1004);
insert into Work values(209,1005);
insert into Work values(210,1005);

select * from Work;

11)
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

12)
create table Buy(invoice_id number(4),product_no number(4), constraint pkiid_pno primary key(invoice_id,product_no));

alter table Buy add constraint fki_id foreign key (invoice_id ) references Customer(invoice_id );
alter table Buy add constraint fkp_no foreign key (product_no ) references Laptop_Computer_parts(product_no);

insert into Buy values(2001,203);
insert into Buy values(2001,202);
insert into Buy values(2003,201);
insert into Buy values(2004,201);
insert into Buy values(2002,205);
insert into Buy values(2006,204);
insert into Buy values(2007,205);
insert into Buy values(2008,201);
insert into Buy values(2009,202);
insert into Buy values(2010,202);

select * from Buy;


