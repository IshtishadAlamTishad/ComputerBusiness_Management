create table Laptop_Computer_parts(product_no number(4) constraint pkp_no primary key,model varchar2(6),ava_Quantity number(3),purchase_price number(9));
insert into Laptop_Computer_parts values(201,'SS11',22,70000);
insert into Laptop_Computer_parts values(202,'SS12',20,80000);
insert into Laptop_Computer_parts values(203,'SS13',23,70000);
insert into Laptop_Computer_parts values(204,'SS14',17,75000);
insert into Laptop_Computer_parts values(205,'SS15',12,60000);
insert into Laptop_Computer_parts values(206,'SS16',13,65000);
select* from Laptop_Computer_parts;
