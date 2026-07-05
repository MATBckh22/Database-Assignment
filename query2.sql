select s.student_ID, s.full_name, s.phone_no, s.email, b.bed_ID, r.room_ID, sum(DATEDIFF(p.payment_date, i.due_date)) as late_days, sum(DATEDIFF(p.payment_date, i.due_date))*5 as penalty
from student s
inner join lease l on s.student_ID = l.student_ID
inner join invoice i on l.lease_no = i.lease_no
inner join payment p on i.invoice_no = p.invoice_no
inner join bed b on b.bed_ID = l.bed_ID
inner join room r on r.room_ID = b.room_ID
where p.payment_date > i.due_date
group by s.student_ID, b.bed_ID, r.room_ID
order by late_days asc