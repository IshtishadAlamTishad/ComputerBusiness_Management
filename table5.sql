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
