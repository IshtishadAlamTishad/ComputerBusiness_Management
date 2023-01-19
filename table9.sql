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
