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
