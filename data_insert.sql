-- ===== TASK 1(b): INSERT DATA =====

INSERT INTO Student (student_ID, full_name, phone_no, email, date_of_birth, home_address, nationality, occupation, category, intake_year, course) VALUES
('CST2609001','Aisha Rahman','+6012-3456789','aisha.r@student.xmum.edu.my','2003-04-12','12 Jalan Pudu, 55100 Kuala Lumpur, WPKL','Malaysian','Student','UG',2024,'Bachelor of IT'),
('CST2609002','Wei Liang Chen','+6016-7890123','weiliang.c@student.xmum.edu.my','2002-09-23','88 Jalan Bukit Bintang, 55100 KL','Malaysian','Student','UG',2024,'Bachelor of CS'),
('CST2609003','Priya Sharma','+6019-8765432','priya.s@student.xmum.edu.my','2001-06-15','45 Lorong Selamat, 10400 Georgetown, Penang','Malaysian','Student','UG',2023,'Bachelor of SE'),
('CST2609004','Mohammed Al-Farsi','+6011-2345678','mohammed.a@student.xmum.edu.my','2004-01-30','Block C-15-2, Jalan Ampang, 50450 KL','Omani','Student','UG',2025,'Foundation in Science'),
('CST2609005','Sarah Johnson','+6013-9876543','sarah.j@student.xmum.edu.my','2003-08-19','22 Jalan SS15/4, 47500 Subang Jaya, Selangor','Australian','Student','UG',2024,'Bachelor of IT'),
('CST2609006','Daniel Tan','+6017-6543210','daniel.t@student.xmum.edu.my','2000-12-05','7 Jalan Universiti, 46200 PJ, Selangor','Malaysian','Student','PG',2025,'Master of CS'),
('CST2609007','Linda Wijaya','+62812-345678','linda.w@student.xmum.edu.my','2001-03-28','Jl. Sudirman 45, Jakarta Pusat, Indonesia','Indonesian','Student','PG',2025,'Master of Data Science'),
('CST2609008','Karim Benzema','+6014-5678901','karim.b@student.xmum.edu.my','2002-07-14','Block A-5-1, Jalan Klang Lama, 58000 KL','Malaysian','Student','UG',2024,'Bachelor of CS'),
('CST2609009','Yuki Tanaka','+6018-9012345','yuki.t@student.xmum.edu.my','2003-11-02','15 Jalan Gasing, 46000 PJ, Selangor','Japanese','Student','UG',2025,'Bachelor of SE'),
('CST2609010','Fatima Zahra','+6015-4321098','fatima.z@student.xmum.edu.my','2001-09-09','33 Jalan Tun Razak, 50400 KL','Malaysian','Student','PG',2025,'Master of IT'),
('CST2609011','Ravi Chandran','+6010-8765432','ravi.c@student.xmum.edu.my','2002-02-18','55 Jalan Masjid India, 50100 KL','Malaysian','Student','UG',2024,'Bachelor of IT'),
('CST2609012','Emily Roberts','+6012-1112223','emily.r@student.xmum.edu.my','2004-05-30','99 Jalan Ampang Hilir, 55000 KL','British','Student','UG',2025,'Foundation in Arts');

INSERT INTO Maintenance_Staff (staff_ID, full_name, phone_no, email, date_of_birth, home_address, nationality, occupation, role, salary, hire_date, years_of_experience, reporting_manager, specialization, license, license_expiry_date) VALUES
('MST2609001','Ahmad Fauzi','+6019-1112222','ahmad.f@uao.xmum.edu.my','1985-03-15','10 Jalan Damai, 43000 Kajang, Selangor','Malaysian','Technician','maintenance_staff',3500.00,'2019-01-15',7,'Lim Kok Meng','Electrical','E-2025-001','2026-12-31'),
('MST2609002','Siti Nurhaliza','+6012-3334444','siti.n@uao.xmum.edu.my','1990-07-22','25 Jalan Mawar, 43900 Sepang, Selangor','Malaysian','Technician','maintenance_staff',3200.00,'2021-06-01',5,'Lim Kok Meng','Plumbing','P-2024-089','2027-08-15'),
('MST2609003','Rajesh Kumar','+6016-5556666','rajesh.k@uao.xmum.edu.my','1988-11-08','78 Jalan Ria, 47100 Puchong, Selangor','Malaysian','Technician','maintenance_staff',3800.00,'2018-03-20',8,'Lim Kok Meng','HVAC','H-2025-012','2026-05-10'),
('MST2609004','Tan Ah Kaw','+6013-2224446','tanak.k@uao.xmum.edu.my','1983-08-12','21 Jalan Cempaka, 43900 Sepang, Selangor','Malaysian','Technician','maintenance_staff',3300.00,'2020-09-01',6,'Lim Kok Meng','Furniture','C-2025-045','2027-03-31');

INSERT INTO Admin_Staff (staff_ID, full_name, phone_no, email, date_of_birth, home_address, nationality, occupation, role, salary, hire_date, years_of_experience, reporting_manager, department) VALUES
('ADM2609001','Lim Kok Meng','+6012-9998888','lim.km@uao.xmum.edu.my','1980-05-20','5 Jalan Utama, 46200 PJ, Selangor','Malaysian','Manager','admin_staff',5500.00,'2017-02-01',9,'Dr. Zamratul','Accommodation'),
('ADM2609002','Nurul Huda','+6017-4445555','nurul.h@uao.xmum.edu.my','1992-09-14','88 Jalan Indah, 43000 Kajang, Selangor','Malaysian','Officer','admin_staff',3200.00,'2022-07-10',3,'Lim Kok Meng','Accommodation'),
('ADM2609003','David Wong','+6013-7778888','david.w@uao.xmum.edu.my','1987-12-03','12 Jalan Bahagia, 58100 KL','Malaysian','Officer','admin_staff',3400.00,'2021-01-05',5,'Lim Kok Meng','Accommodation');

INSERT INTO Hall_Staff (staff_ID, full_name, phone_no, email, date_of_birth, home_address, nationality, occupation, role, salary, hire_date, years_of_experience, reporting_manager, assigned_shift) VALUES
('HST2609001','Roslan Bin Ismail','+6019-2223333','roslan.i@uao.xmum.edu.my','1982-04-10','55 Jalan Sepang, 43900 Sepang, Selangor','Malaysian','Warden','hall_staff',2800.00,'2020-03-15',6,'Lim Kok Meng','Morning'),
('HST2609002','Kavitha Devi','+6016-8889999','kavitha.d@uao.xmum.edu.my','1991-06-25','33 Jalan Putra, 43900 Sepang, Selangor','Malaysian','Warden','hall_staff',2600.00,'2023-01-10',3,'Lim Kok Meng','Evening'),
('HST2609003','Mohd Hafiz','+6014-5557777','hafiz.m@uao.xmum.edu.my','1985-09-18','44 Jalan Nilai, 71800 Nilai, NS','Malaysian','Warden','hall_staff',2700.00,'2021-08-01',5,'Lim Kok Meng','Morning'),
('HST2609004','Grace Tan','+6018-3332222','grace.t@uao.xmum.edu.my','1993-02-14','66 Jalan Salak, 43900 Sepang, Selangor','Malaysian','Warden','hall_staff',2550.00,'2023-06-15',3,'Lim Kok Meng','Evening');

INSERT INTO Application (application_ID, submission_date, application_status, student_ID, staff_ID) VALUES
('1','2026-01-15','approved','CST2609001','ADM2609002'),('2','2026-01-20','approved','CST2609002','ADM2609002'),
('3','2026-02-01','approved','CST2609003','ADM2609002'),('4','2026-02-10','approved','CST2609004','ADM2609003'),
('5','2026-02-15','approved','CST2609005','ADM2609003'),('6','2026-03-01','approved','CST2609006','ADM2609002'),
('7','2026-03-10','approved','CST2609007','ADM2609003'),('8','2026-03-15','approved','CST2609008','ADM2609003'),
('9','2026-04-01','approved','CST2609009','ADM2609003'),('10','2026-04-15','approved','CST2609010','ADM2609002'),
('11','2026-05-01','waitlisted','CST2609011','ADM2609002'),('12','2026-05-15','pending','CST2609012',NULL),
('13','2026-05-20','approved','CST2609011','ADM2609002'),('14','2026-05-25','approved','CST2609012','ADM2609003'),
('15','2026-05-10','approved','CST2609005','ADM2609003'),('16','2026-02-20','approved','CST2609009','ADM2609003');

INSERT INTO Hall (hall_no, hall_name, hall_location, staff_ID) VALUES
('A01','Main Hall','Jalan Sunsuria, Bandar Sunsuria, 43900 Sepang, Selangor','HST2609001'),
('A02','North Hall','Persiaran Sunsuria, 43900 Sepang, Selangor','HST2609003');

INSERT INTO Room (room_ID, room_type, monthly_rate, hall_no) VALUES
('101','single',450,'A01'),('102','twin',350,'A01'),('103','single',480,'A01'),('104','twin',380,'A01'),
('201','single',500,'A02'),('202','twin',370,'A02'),('203','single',520,'A02'),('204','twin',400,'A02'),
('105','single',460,'A01'),('106','twin',360,'A01'),('205','single',510,'A02'),('206','twin',390,'A02');

INSERT INTO Bed (bed_ID, bed_label, room_ID) VALUES
('BED00001','Goodnite','101'),('BED00002','Goodnite','102'),('BED00003','Goodnite','102'),
('BED00004','Goodnite','103'),('BED00005','Goodnite','104'),('BED00006','Goodnite','104'),
('BED00007','King Koil','201'),('BED00008','King Koil','202'),('BED00009','King Koil','202'),
('BED00010','King Koil','203'),('BED00011','King Koil','204'),('BED00012','King Koil','204'),
('BED00013','Goodnite','105'),('BED00014','Goodnite','106'),('BED00015','Goodnite','106'),
('BED00016','King Koil','205'),('BED00017','King Koil','206'),('BED00018','King Koil','206');

INSERT INTO Lease (lease_no, start_date, intended_end_date, actual_end_date, lease_status, student_ID, bed_ID, application_ID, staff_ID) VALUES
('1','2026-02-01','2026-08-01',NULL,'active','CST2609001','BED00001','1','ADM2609002'),
('2','2026-02-01','2026-08-01',NULL,'active','CST2609002','BED00002','2','ADM2609002'),
('3','2026-02-15','2026-08-15',NULL,'active','CST2609003','BED00003','3','ADM2609002'),
('4','2026-03-01','2026-09-01',NULL,'active','CST2609004','BED00004','4','ADM2609003'),
('5','2026-03-01','2026-09-01','2026-06-01','completed','CST2609005','BED00005','5','ADM2609003'),
('6','2026-03-15','2026-09-15',NULL,'active','CST2609006','BED00007','6','ADM2609002'),
('7','2026-04-01','2026-10-01',NULL,'active','CST2609007','BED00008','7','ADM2609002'),
('8','2026-04-15','2026-10-15',NULL,'active','CST2609008','BED00009','8','ADM2609003'),
('9','2026-05-01','2026-11-01',NULL,'active','CST2609009','BED00010','9','ADM2609003'),
('10','2026-05-15','2026-11-15',NULL,'active','CST2609010','BED00011','10','ADM2609002'),
('11','2026-06-01','2026-12-01',NULL,'active','CST2609011','BED00006','13','ADM2609002'),
('12','2026-06-15','2026-12-15',NULL,'active','CST2609012','BED00012','14','ADM2609003'),
('13','2026-06-01','2026-12-01',NULL,'active','CST2609005','BED00005','15','ADM2609003'),
('14','2026-03-01','2026-09-01','2026-04-15','terminated_early','CST2609009','BED00012','16','ADM2609003');

INSERT INTO nok (nok_ID, nok_full_name, relationship, nok_address, nok_phone_no, student_ID) VALUES
('nok00001','Farah Rahman','Mother','12 Jalan Pudu, 55100 KL','+6012-3456780','CST2609001'),
('nok00002','Chen Wei Ming','Father','88 Jalan Bukit Bintang, 55100 KL','+6016-7890124','CST2609002'),
('nok00003','Rajesh Sharma','Father','45 Lorong Selamat, 10400 Penang','+6019-8765433','CST2609003'),
('nok00004','Fatima Al-Farsi','Mother','Block C-15-2, Jalan Ampang, 50450','+6011-2345679','CST2609004'),
('nok00005','Michael Johnson','Father','22 Jalan SS15/4, 47500 Subang Jaya','+6013-9876544','CST2609005'),
('nok00006','Pauline Tan','Mother','7 Jalan Universiti, 46200 PJ','+6017-6543211','CST2609006'),
('nok00007','Budi Wijaya','Father','Jl. Sudirman 45, Jakarta Pusat','+62812-345679','CST2609007'),
('nok00008','Ahmad Benzema','Father','Block A-5-1, Jalan Klang Lama, KL','+6014-5678902','CST2609008'),
('nok00009','Hiroshi Tanaka','Father','15 Jalan Gasing, 46000 PJ','+6018-9012346','CST2609009'),
('nok00010','Amina Zahra','Mother','33 Jalan Tun Razak, 50400 KL','+6015-4321099','CST2609010');

INSERT INTO Asset (asset_ID, asset_name, asset_category, asset_condition, acquired_date, bed_ID) VALUES
('AST00001','Study Desk','furniture','good','2025-01-10','BED00001'),
('AST00002','Wardrobe','furniture','good','2025-01-10','BED00001'),
('AST00003','Mattress','furniture','fair','2025-01-10','BED00002'),
('AST00004','Bedside Lamp','fixture','good','2025-01-10','BED00002'),
('AST00005','Air Conditioner','appliance','good','2025-02-15','BED00003'),
('AST00006','Study Desk','furniture','good','2025-02-15','BED00004'),
('AST00007','Ceiling Fan','fixture','poor','2024-06-01','BED00005'),
('AST00008','Water Heater','appliance','out_of_service','2024-06-01','BED00005'),
('AST00009','Study Desk','furniture','good','2025-03-20','BED00007'),
('AST00010','Wardrobe','furniture','fair','2025-03-20','BED00008'),
('AST00011','Air Conditioner','appliance','poor','2025-04-10','BED00010'),
('AST00012','Bedside Lamp','fixture','good','2025-05-01','BED00011'),
('AST00013','Study Chair','furniture','poor','2024-08-15','BED00001'),
('AST00014','Wardrobe','furniture','poor','2024-09-10','BED00003'),
('AST00015','Water Heater','appliance','out_of_service','2024-07-20','BED00007'),
('AST00016','Ceiling Fan','fixture','poor','2024-11-05','BED00009'),
('AST00017','Mattress','furniture','out_of_service','2024-05-25','BED00011');


INSERT INTO Invoice (invoice_no, period_start, period_end, issue_date, due_date, total_amount, invoice_status, lease_no) VALUES
('INV0000001','2026-02-01','2026-02-28','2026-02-01','2026-02-15',1350.00,'paid','1'),
('INV0000002','2026-03-01','2026-03-31','2026-03-01','2026-03-15',450.00,'paid','1'),
('INV0000003','2026-04-01','2026-04-30','2026-04-01','2026-04-15',450.00,'partially_paid','1'),
('INV0000004','2026-02-01','2026-02-28','2026-02-01','2026-02-15',1050.00,'paid','2'),
('INV0000005','2026-03-01','2026-03-31','2026-03-01','2026-03-15',350.00,'unpaid','2'),
('INV0000006','2026-02-15','2026-03-14','2026-02-15','2026-03-01',1050.00,'paid','3'),
('INV0000007','2026-03-15','2026-04-14','2026-03-15','2026-03-29',350.00,'paid','3'),
('INV0000008','2026-03-01','2026-03-31','2026-03-01','2026-03-15',1440.00,'paid','4'),
('INV0000009','2026-03-15','2026-04-14','2026-03-15','2026-03-29',1500.00,'paid','6'),
('INV0000010','2026-04-15','2026-05-14','2026-04-15','2026-04-29',550.00,'unpaid','6'),
('INV0000011','2026-04-01','2026-04-30','2026-04-01','2026-04-15',1110.00,'paid','7'),
('INV0000012','2026-03-01','2026-03-31','2026-03-01','2026-03-15',1140.00,'paid','5'),
('INV0000013','2026-05-15','2026-06-14','2026-05-15','2026-05-29',1200.00,'unpaid','10'),
('INV0000014','2026-04-01','2026-04-30','2026-04-01','2026-04-15',350.00,'unpaid','2'),
('INV0000015','2026-04-01','2026-04-30','2026-04-01','2026-04-15',480.00,'unpaid','4'),
('INV0000016','2026-05-15','2026-06-14','2026-05-15','2026-05-29',500.00,'unpaid','6'),
('INV0000017','2026-05-01','2026-05-31','2026-05-01','2026-05-15',370.00,'unpaid','7'),
('INV0000018','2026-06-15','2026-07-14','2026-06-15','2026-06-29',400.00,'unpaid','10'),
('INV0000019','2026-05-01','2026-05-31','2026-05-01','2026-05-15',450.00,'paid','1'),
('INV0000020','2026-06-01','2026-06-30','2026-06-01','2026-06-15',450.00,'unpaid','1'),
('INV0000021','2026-05-01','2026-05-31','2026-05-01','2026-05-15',350.00,'unpaid','2'),
('INV0000022','2026-04-15','2026-05-14','2026-04-15','2026-04-29',350.00,'paid','3'),
('INV0000023','2026-05-15','2026-06-14','2026-05-15','2026-05-29',350.00,'unpaid','3'),
('INV0000024','2026-05-01','2026-05-31','2026-05-01','2026-05-15',480.00,'partially_paid','4'),
('INV0000025','2026-06-01','2026-06-30','2026-06-01','2026-06-15',370.00,'unpaid','7'),
('INV0000026','2026-04-15','2026-05-14','2026-04-15','2026-04-29',1110.00,'paid','8'),
('INV0000027','2026-05-15','2026-06-14','2026-05-15','2026-05-29',370.00,'unpaid','8'),
('INV0000028','2026-05-01','2026-05-31','2026-05-01','2026-05-15',1560.00,'paid','9'),
('INV0000029','2026-06-01','2026-06-30','2026-06-01','2026-06-15',520.00,'unpaid','9');

INSERT INTO Invoice_Line (line_ID, fee_type, line_description, line_amount, invoice_no) VALUES
('1','rent','Monthly rent - February 2026',450.00,'INV0000001'),
('2','deposit','Security deposit (refundable)',900.00,'INV0000001'),
('3','rent','Monthly rent - March 2026',450.00,'INV0000002'),
('4','rent','Monthly rent - April 2026',450.00,'INV0000003'),
('5','rent','Monthly rent - February 2026',350.00,'INV0000004'),
('6','deposit','Security deposit (refundable)',700.00,'INV0000004'),
('7','rent','Monthly rent - March 2026',350.00,'INV0000005'),
('8','rent','Monthly rent - Feb-Mar 2026',350.00,'INV0000006'),
('9','deposit','Security deposit (refundable)',700.00,'INV0000006'),
('10','rent','Monthly rent - Mar-Apr 2026',350.00,'INV0000007'),
('11','rent','Monthly rent - March 2026',480.00,'INV0000008'),
('12','deposit','Security deposit (refundable)',960.00,'INV0000008'),
('13','rent','Monthly rent - Mar-Apr 2026',500.00,'INV0000009'),
('14','deposit','Security deposit (refundable)',1000.00,'INV0000009'),
('15','rent','Monthly rent - Apr-May 2026',500.00,'INV0000010'),
('16','late_fee','Late payment penalty',50.00,'INV0000010'),
('17','rent','Monthly rent - April 2026',370.00,'INV0000011'),
('18','deposit','Security deposit (refundable)',740.00,'INV0000011'),
('19','rent','Monthly rent - March 2026',380.00,'INV0000012'),
('20','deposit','Security deposit (refundable)',760.00,'INV0000012'),
('21','rent','Monthly rent - May-Jun 2026',400.00,'INV0000013'),
('22','deposit','Security deposit (refundable)',800.00,'INV0000013'),
('23','rent','Monthly rent - April 2026',350.00,'INV0000014'),
('24','rent','Monthly rent - April 2026',480.00,'INV0000015'),
('25','rent','Monthly rent - May-Jun 2026',500.00,'INV0000016'),
('26','rent','Monthly rent - May 2026',370.00,'INV0000017'),
('27','rent','Monthly rent - Jun-Jul 2026',400.00,'INV0000018'),
('28','rent','Monthly rent - May 2026',450.00,'INV0000019'),
('29','rent','Monthly rent - June 2026',450.00,'INV0000020'),
('30','rent','Monthly rent - May 2026',350.00,'INV0000021'),
('31','rent','Monthly rent - Apr-May 2026',350.00,'INV0000022'),
('32','rent','Monthly rent - May-Jun 2026',350.00,'INV0000023'),
('33','rent','Monthly rent - May 2026',480.00,'INV0000024'),
('34','rent','Monthly rent - June 2026',370.00,'INV0000025'),
('35','rent','Monthly rent - Apr-May 2026',370.00,'INV0000026'),
('36','deposit','Security deposit (refundable)',740.00,'INV0000026'),
('37','rent','Monthly rent - May-Jun 2026',370.00,'INV0000027'),
('38','rent','Monthly rent - May 2026',520.00,'INV0000028'),
('39','deposit','Security deposit (refundable)',1040.00,'INV0000028'),
('40','rent','Monthly rent - June 2026',520.00,'INV0000029');

INSERT INTO Payment (payment_ID, payment_date, amount, payment_method, gateway_txn_ref, payment_status, invoice_no) VALUES
('PAY0000001','2026-02-05',1350.00,'bank_transfer',NULL,'completed','INV0000001'),
('PAY0000002','2026-03-03',450.00,'gateway','TXN-20260303-001','completed','INV0000002'),
('PAY0000003','2026-04-02',250.00,'cash',NULL,'completed','INV0000003'),
('PAY0000004','2026-02-10',1050.00,'bank_transfer',NULL,'completed','INV0000004'),
('PAY0000005','2026-02-20',350.00,'bank_transfer',NULL,'completed','INV0000006'),
('PAY0000006','2026-02-25',350.00,'cash',NULL,'completed','INV0000006'),
('PAY0000007','2026-03-01',350.00,'bank_transfer',NULL,'completed','INV0000006'),
('PAY0000008','2026-03-20',350.00,'gateway','TXN-20260320-002','completed','INV0000007'),
('PAY0000009','2026-03-10',1440.00,'bank_transfer',NULL,'completed','INV0000008'),
('PAY0000010','2026-03-25',1500.00,'gateway','TXN-20260325-003','completed','INV0000009'),
('PAY0000011','2026-04-20',370.00,'bank_transfer',NULL,'completed','INV0000011'),
('PAY0000012','2026-04-25',740.00,'gateway','TXN-20260425-004','completed','INV0000011'),
('PAY0000013','2026-03-18',1140.00,'bank_transfer',NULL,'completed','INV0000012'),
('PAY0000014','2026-05-01',550.00,'gateway','TXN-20260501-005','failed','INV0000010'),
('PAY0000015','2026-05-12',450.00,'bank_transfer',NULL,'completed','INV0000019'),
('PAY0000016','2026-05-09',350.00,'cash',NULL,'completed','INV0000022'),
('PAY0000017','2026-05-14',200.00,'gateway','TXN-20260514-007','completed','INV0000024'),
('PAY0000018','2026-04-27',1110.00,'bank_transfer',NULL,'completed','INV0000026'),
('PAY0000019','2026-05-10',1560.00,'gateway','TXN-20260510-008','failed','INV0000028'),
('PAY0000020','2026-05-16',1560.00,'cash',NULL,'completed','INV0000028');

INSERT INTO Maintenance_Request (request_ID, date_raised, request_priority, request_status, request_description, student_ID, staff_ID, asset_ID) VALUES
('1','2026-04-10','high','in_progress','Air conditioner not cooling properly','CST2609003','MST2609003','AST00005'),
('2','2026-04-15','medium','open','Study desk drawer broken','CST2609001',NULL,'AST00001'),
('3','2026-04-20','low','resolved','Study desk wobbly - loose screws tightened','CST2609004','MST2609004','AST00006'),
('4','2026-05-01','urgent','in_progress','Water heater completely dead - no hot water','CST2609005','MST2609002','AST00008'),
('5','2026-05-05','low','resolved','Ceiling fan making rattling noise','CST2609005','MST2609001','AST00007'),
('6','2026-05-10','medium','in_progress','Wardrobe door hinge loose','CST2609007','MST2609004','AST00010'),
('7','2026-05-15','high','closed','Bedside lamp flickering - replaced bulb','CST2609002','MST2609001','AST00004'),
('8','2026-05-20','medium','in_progress','Air conditioner water leaking','CST2609009','MST2609003','AST00011'),
('9','2026-05-25','low','open','Study desk drawer stuck','CST2609006',NULL,'AST00009'),
('10','2026-06-01','medium','in_progress','Study desk height adjustment broken','CST2609008','MST2609004','AST00013'),
('11','2026-06-05','low','open','Mattress sagging - needs replacement','CST2609002',NULL,'AST00003'),
('12','2026-06-10','medium','open','Bedside lamp not turning on','CST2609010',NULL,'AST00012');
