create database assignment;
use assignment;

-- staff is now split into three disjoint subclasses (hall_staff, maintenance_staff, admin_staff) per the E-ERD, --
-- each carrying the merged Person + Staff attributes (Option B: subclass relations only) --

-- staff_ID example: HST2209001 (HST = Hall Staff) --
create table hall_staff(
staff_ID varchar(10) not null primary key,
full_name varchar(30) not null,
phone_no varchar(13) not null,
email varchar(50) not null unique,
date_of_birth date not null,
home_address varchar(50) not null,
nationality varchar(15) not null,
occupation varchar(30) not null,
role varchar(30) not null,
salary decimal(10,2) not null,
hire_date date not null,
years_of_experience decimal(3,1) not null,
reporting_manager varchar(30) null,
assigned_shift varchar(15) not null
);

-- staff_ID example: MST2209001 (MST = Maintenance Staff) --
create table maintenance_staff(
staff_ID varchar(10) not null primary key,
full_name varchar(30) not null,
phone_no varchar(13) not null,
email varchar(50) not null unique,
date_of_birth date not null,
home_address varchar(50) not null,
nationality varchar(15) not null,
occupation varchar(30) not null,
role varchar(30) not null,
salary decimal(10,2) not null,
hire_date date not null,
years_of_experience decimal(3,1) not null,
reporting_manager varchar(30) null,
specialization varchar(50) not null,
license varchar(50) not null,
license_expiry_date date not null
);

-- staff_ID example: ADM2209001 (ADM = Admin Staff) --
create table admin_staff(
staff_ID varchar(10) not null primary key,
full_name varchar(30) not null,
phone_no varchar(13) not null,
email varchar(50) not null unique,
date_of_birth date not null,
home_address varchar(50) not null,
nationality varchar(15) not null,
occupation varchar(30) not null,
role varchar(30) not null,
salary decimal(10,2) not null,
hire_date date not null,
years_of_experience decimal(3,1) not null,
reporting_manager varchar(30) null,
department varchar(50) not null
);

-- hall_no format: Wing(1)Block(2), example: A01 --
-- each hall is identified by a hall no, hall_name must also be unique --
create table hall(
hall_no varchar(3) not null primary key,
hall_name varchar(10) not null unique,
hall_location varchar(100) not null,
staff_ID varchar(10) not null,
Foreign Key fk_hall_staff(staff_ID) references hall_staff(staff_ID)
);

-- room_ID format: Floor(1)Number(2), example: 102 --
-- room_type: single/twin --
create table room(
room_ID varchar(3) not null primary key,
room_type varchar(10) not null,
monthly_rate decimal(10,2) not null,
hall_no varchar(3) not null,
Foreign Key fk_room_hall(hall_no) references hall(hall_no)
);

-- bed_ID example: BED00001 --
-- bed_label: mattress brand --
create table bed(
bed_ID varchar(8) not null primary key,
bed_label varchar(30) not null,
room_ID varchar(3) not null,
Foreign Key fk_bed_room(room_ID) references room(room_ID)
);

-- asset_ID example: AST00001 --
-- every asset is tied directly to exactly one bed (the room it sits in is reached transitively through bed -> room) --
create table asset(
asset_ID varchar(8) not null primary key,
asset_name varchar(30) not null,
asset_category varchar(30) not null,
asset_condition varchar(30) not null,
acquired_date date not null,
bed_ID varchar(8) not null,
Foreign Key fk_asset_bed(bed_ID) references bed(bed_ID)
);

-- student_ID example: CST2609001 --
-- category: UG/PG --
create table student(
student_ID varchar(10) not null primary key,
full_name varchar(30) not null,
phone_no varchar(13) not null,
email varchar(50) not null unique,
date_of_birth date not null,
home_address varchar(50) not null,
nationality varchar(15) not null,
occupation varchar(30) not null,
category varchar(2) not null,
intake_year varchar(6) not null,
course varchar(30) not null
);

-- nok: next-of-kin --
-- nok_ID example: nok00001 --
create table nok(
nok_ID varchar(8) not null primary key,
nok_full_name varchar(30) not null,
relationship varchar(20) not null,
nok_address varchar(50) not null,
nok_phone_no varchar(13) not null,
student_ID varchar(10) not null unique,
Foreign Key fk_nok_student(student_ID) references student(student_ID)
);

-- since requests, applications, leases are handled internally within the database, their primary keys are surrogate keys --

-- request_ID is a surrogate key as it doesn't need to carry meaningful information --
-- when a request is submitted there might not be a staff member assigned to it hence nullable --
create table maintenance_request(
request_ID int not null primary key auto_increment,
date_raised date not null,
request_priority varchar(10) not null,
request_status varchar(15) not null,
request_description varchar(50) not null,
student_ID varchar(10) not null,
Foreign Key fk_mr_student(student_ID) references student(student_ID),
staff_ID varchar(10) null,
Foreign Key fk_mr_staff(staff_ID) references maintenance_staff(staff_ID),
asset_ID varchar(8) not null,
Foreign Key fk_mr_asset(asset_ID) references asset(asset_ID)
);

-- application_ID is a surrogate key as it doesn't need to carry meaningful information --
-- when an application is submitted there might not be a staff member assigned to it hence nullable --
-- application_status: pending/waitlisted/approved/rejected/withdrawn, defaults to pending --
create table application(
application_ID int not null primary key auto_increment,
submission_date date not null,
application_status varchar(30) default 'pending',
student_ID varchar(10) not null,
Foreign Key fk_application_student(student_ID) references student(student_ID),
staff_ID varchar(10) null,
Foreign Key fk_application_staff(staff_ID) references admin_staff(staff_ID)
);

-- lease_no is a surrogate key as it doesn't need to carry meaningful information --
-- if the actual end date is the same as intended then the attribute can be left empty --
-- status: active/completed/terminated_early --
create table lease(
lease_no int not null primary key auto_increment,
start_date date not null,
intended_end_date date not null,
actual_end_date date null,
lease_status varchar(25) default 'active',
student_ID varchar(10) not null,
Foreign Key fk_lease_student(student_ID) references student(student_ID),
bed_ID varchar(8) not null,
Foreign Key fk_lease_bed(bed_ID) references bed(bed_ID),
application_ID int not null unique,
Foreign Key fk_lease_application(application_ID) references application(application_ID),
staff_ID varchar(10) not null,
Foreign Key fk_lease_staff(staff_ID) references admin_staff(staff_ID)
);

-- invoice_no example: INV0000001 --
-- paid monthly, tied to the lease --
-- invoice_status: unpaid/partial_paid/paid/overdue, defaults to unpaid --
create table invoice(
invoice_no varchar(10) not null primary key,
period_start date not null,
period_end date not null,
issue_date date not null,
due_date date not null,
total_amount decimal(10,2) null,
invoice_status varchar(30) default 'unpaid',
lease_no int not null,
Foreign Key fk_invoice_lease(lease_no) references lease(lease_no)
);

-- the invoice carries a series of sub-charges called invoice lines --
-- fee_type: rent/deposit/utility/late_fee/damage --
create table invoice_line(
line_ID int not null primary key auto_increment,
fee_type varchar(30) not null,
line_description varchar(50) null,
line_amount decimal(10,2) null,
invoice_no varchar(10) not null,
Foreign Key fk_line_invoice(invoice_no) references invoice(invoice_no)
);

-- payment_ID example: PAY0000001 --
create table payment(
payment_ID varchar(10) not null primary key,
payment_date date not null,
amount decimal(10,2) not null,
payment_method varchar(30) not null,
gateway_txn_ref varchar(30) null,
payment_status varchar(30) not null,
invoice_no varchar(10) not null,
Foreign Key fk_payment_invoice(invoice_no) references invoice(invoice_no)
);
