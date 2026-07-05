select s.student_ID, s.full_name, s.phone_no, s.email, b.bed_ID, r.room_ID, sum(i.total_amount) as total_overdue_balance, count(i.invoice_no) as total_overdue_frequency
from student s
inner join lease l on s.student_ID = l.student_ID
inner join invoice i on l.lease_no = i.lease_no
inner join bed b on b.bed_ID = l.bed_ID
inner join room r on r.room_ID = b.room_ID
where i.invoice_status = 'unpaid' and i.due_date < NOW()
group by s.student_ID, b.bed_ID, r.room_ID
having total_overdue_balance > 500 and total_overdue_frequency > 1
order by total_overdue_balance desc; 

-- update invoice set invoice_status = 'overdue' where due_date < NOW() and invoice_status != 'paid' and invoice_status != 'partially_paid'; --
