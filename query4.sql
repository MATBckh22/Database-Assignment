select s.student_ID, s.full_name, s.phone_no, s.email, b.bed_ID, r.room_ID, 
	i.total_amount, 
    sum(p.amount), 
    i.invoice_no, 
    i.invoice_status, 
    (i.total_amount - sum(p.amount)) as 'remaining balance'
from student s
inner join lease l on s.student_ID = l.student_ID
inner join invoice i on l.lease_no = i.lease_no
inner join payment p on i.invoice_no = p.invoice_no
inner join bed b on b.bed_ID = l.bed_ID
inner join room r on r.room_ID = b.room_ID
where p.payment_status = 'completed'
group by s.student_ID, b.bed_ID, r.room_ID, i.invoice_no, i.total_amount
having sum(p.amount) < i.total_amount