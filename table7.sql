create table Operate_Branch(Branch_no number(4),c_id number(5),constraint pkbno_cid primary key(Branch_no,c_id ));


alter table Operate_Branch add constraint fkb_no foreign key (Branch_no) references Branch(Branch_no);
alter table Operate_Branch add constraint fkc_id3 foreign key (c_id) references OWNER(c_id);

insert into Operate_Branch values(1001,101);
insert into Operate_Branch values(1002,102);
insert into Operate_Branch values(1003,103);
insert into Operate_Branch values(1004,104);
insert into Operate_Branch values(1005,105);

select * from Operate_Branch ;
