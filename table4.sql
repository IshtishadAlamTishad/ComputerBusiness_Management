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
