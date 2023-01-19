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
