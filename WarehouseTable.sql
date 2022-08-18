create table warehouse(
warehouseid int not null ,
address varchar(30)not null,
location varchar(30)not null,
state varchar(30)not null,
country varchar(30)not null,
pincode int not null,
total_area varchar(30)not null,
warehouse_type varchar(30)not null,
primary key (warehouseid)
);
insert into warehouse values (1,'madurai_main_road','karaikudi','tamilnadu','india',630002,'100acre','closed');
insert into warehouse values (2,'devakottai_sivan_kovil_road','devakottai','tamilnadu','india',630002,'40acre','closed');
insert into warehouse values (3,'pudukottai_main_road','thirumayam','tamilnadu','india',630002,'100acre','closed');

commit;
select * from warehouse;

drop table warehouse;
create table storage_units(
warehouseid int not null,
unit_id int not null primary key,
storage_type varchar(30)not null,
maximum_capacity int not null,
current_used_capacity int not null,
status varchar(30) not null,
location_of_storage_unit varchar(30) not null,
foreign key (warehouseid) references warehouse(warehouseid)
);
insert into storage_units values (1,2,'choco',20000,10000,'not done','B Block');
select * from storage_units;
select * from warehouse;
delete from storage_units where unit_id = 2;

create table packages(
package_id int not null,
package_number int not null,
package_name varchar(30) not null,
package_type varchar(30) not null,
package_date date not null,
expiry_date date not null,
status varchar(30) not null,
owner_name varchar(30) not null,
phone_number number not null,
email_id varchar(30) not null,
owner_aadhaar_number number not null,
package_weight int not null,
package_height int not null,
primary key (package_id)
);
rename packages to warehouse_packages;
select * from warehouse_packages;
select * from warehouse ;
insert into packages values (1,10,'chocopack','solid','10-08-2022','10-09-2022','done','omkumar',9080393982,'omgmail',656764636763,100,5);
delete from packages where package_id=1;
select * from packages;
drop table packages;
drop table storage_details;
drop table package_delivery_details;
create table storage_details(
receipt_number number not null,
receipt_date date not null,
unit_id int not null,
package_id int not null,
foreign key (unit_id) references storage_units(unit_id),
foreign key (package_id) references warehouse_packages(package_id),
primary key(receipt_number)
);
select * from storage_details;

create table package_delivery_details(
delivery_number number not null primary key,
delivery_date date not null,
unit_id number not null,
package_id number not null,
delivered_person varchar(30) not null,
delivered_aadhaar_number number not null,
delivered_phone_number number not null,
delivered_city varchar(30) not null,
delivered_pincode number not null,
foreign key (unit_id) references storage_units(unit_id),
foreign key (package_id) references warehouse_packages(package_id)
);

drop table warehouse;
drop table storage_units;
drop table packages;
drop table storage_details;
select * from  package_delivery_details;
select * from  warehouse;
select * from  warehouse_packages;
select * from  storage_details;
select * from  storage_units;
create sequence waid start with 1 increment by 1;


