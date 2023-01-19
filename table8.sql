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
