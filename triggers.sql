use assignment;

-- (a) BEFORE INSERT: auto-fill line_amount from room's monthly_rate
create trigger trg_line_before_insert
before insert on invoice_line
for each row
set new.line_amount = (
    select r.monthly_rate
    from room r
    join bed b on r.room_ID = b.room_ID
    join lease l on b.bed_ID = l.bed_ID
    join invoice i on l.lease_no = i.lease_no
    where i.invoice_no = new.invoice_no
    limit 1
);
show triggers;

-- before: INV0000013 has 2 lines (rent 400 + deposit 800), total = 1200
select i.invoice_no, i.total_amount,
       il.line_ID, il.fee_type, il.line_amount
from invoice i
join invoice_line il on i.invoice_no = il.invoice_no
where i.invoice_no = 'INV0000013';

-- action: insert rent line without line_amount — trigger fills it from room rate (400)
insert into invoice_line (fee_type, line_description, invoice_no)
values ('rent', 'Monthly rent - auto calculated', 'INV0000013');

-- after: new line added, line_amount auto-filled to 400
select i.invoice_no, i.total_amount,
       il.line_ID, il.fee_type, il.line_amount
from invoice i
join invoice_line il on i.invoice_no = il.invoice_no
where i.invoice_no = 'INV0000013';


-- (b) AFTER INSERT: recalculate invoice total
create trigger trg_line_after_insert
after insert on invoice_line
for each row
update invoice
set total_amount = (select sum(line_amount) from invoice_line where invoice_no = new.invoice_no)
where invoice_no = new.invoice_no;
show triggers;

-- before: INV0000011 total = 1110 (Linda, 2 lines: rent 370 + deposit 740)
select invoice_no, total_amount from invoice where invoice_no = 'INV0000011';

-- action: add rent line (line_amount auto-filled by trigger a to 370)
insert into invoice_line (fee_type, line_description, invoice_no)
values ('rent', 'Monthly rent - June 2026', 'INV0000011');

-- after: total recalculated to 1480 (370 + 740 + 370)
select invoice_no, total_amount from invoice where invoice_no = 'INV0000011';


-- (c) BEFORE UPDATE: override manual line_amount with room rate
create trigger trg_line_before_update
before update on invoice_line
for each row
set new.line_amount = (
    select r.monthly_rate
    from room r
    join bed b on r.room_ID = b.room_ID
    join lease l on b.bed_ID = l.bed_ID
    join invoice i on l.lease_no = i.lease_no
    where i.invoice_no = new.invoice_no
    limit 1
);
show triggers;

-- before: INV0000010 line 15 is rent, amount = 500 (room 201 monthly_rate = 500)
select line_ID, fee_type, line_amount, invoice_no
from invoice_line where line_ID = 15;

-- action: staff accidentally types 999 — trigger corrects it to room rate (500)
update invoice_line set line_amount = 999 where line_ID = 15;

-- after: line_amount stays 500 (999 was overridden by trigger)
select line_ID, fee_type, line_amount, invoice_no
from invoice_line where line_ID = 15;


-- (d) AFTER UPDATE: recalculate invoice total
create trigger trg_line_after_update
after update on invoice_line
for each row
update invoice
set total_amount = (select sum(line_amount) from invoice_line where invoice_no = new.invoice_no)
where invoice_no = new.invoice_no;
show triggers;

-- before: INV0000004 total = 1050 (deposit 700 + rent 350, room 102 rate = 350)
select invoice_no, total_amount from invoice where invoice_no = 'INV0000004';

-- action: update deposit line from 700 to 999 (trigger c overrides to 350, then d recalculates)
update invoice_line set line_amount = 999 where line_ID = 6;

-- after: total recalculated to 700 (350 + 350)
select invoice_no, total_amount from invoice where invoice_no = 'INV0000004';


-- (e) BEFORE DELETE: reset invoice to unpaid and total to 0 when charge removed
create trigger trg_line_before_delete
before delete on invoice_line
for each row
update invoice
set invoice_status = 'unpaid', total_amount = 0
where invoice_no = old.invoice_no;
show triggers;

-- before: INV0000005 is unpaid (RM350, 1 rent line, no payments)
select i.invoice_no, i.invoice_status, i.total_amount,
       il.line_ID, il.fee_type, il.line_amount
from invoice i
join invoice_line il on i.invoice_no = il.invoice_no
where i.invoice_no = 'INV0000005';

-- action: delete the wrong rent line before reissuing correct invoice
delete from invoice_line where invoice_no = 'INV0000005' and fee_type = 'rent';

-- after: status reset to unpaid, total reset to 0 for office reissue
select i.invoice_no, i.invoice_status, i.total_amount,
       il.line_ID, il.fee_type, il.line_amount
from invoice i
left join invoice_line il on i.invoice_no = il.invoice_no
where i.invoice_no = 'INV0000005';


-- (f) AFTER DELETE: recalculate invoice total from remaining lines
create trigger trg_line_after_delete
after delete on invoice_line
for each row
update invoice
set total_amount = (select sum(line_amount) from invoice_line where invoice_no = old.invoice_no)
where invoice_no = old.invoice_no;
show triggers;

-- before: INV0000007 has 1 line (rent 350), total = 350
select i.invoice_no, i.total_amount,
       il.line_ID, il.fee_type, il.line_amount
from invoice i
join invoice_line il on i.invoice_no = il.invoice_no
where i.invoice_no = 'INV0000007';

-- action: delete the rent line
delete from invoice_line where invoice_no = 'INV0000007' and fee_type = 'rent';

-- after: no lines left, total recalculated to NULL
select i.invoice_no, i.total_amount,
       il.line_ID, il.fee_type, il.line_amount
from invoice i
left join invoice_line il on i.invoice_no = il.invoice_no
where i.invoice_no = 'INV0000007';
