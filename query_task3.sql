select 
	s.name, 
	s.surname, 
	s.birth_date, 
	s.faculty 
from 
	students s
join 
	exam_results e 
on 
	s.student_id = e.student_id
join 
	class_catalogue c 
on 
	c.class_id = e.class_id
where 
	e.grade >= 4
and c.class_name = 'algebra';
