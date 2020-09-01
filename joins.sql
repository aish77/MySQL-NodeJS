create table STUDENTS(
    id INT(100) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name varchar(50)
);

create table PAPERS(
    title varchar(100),
    grade INT(100),
    student_id INT(100) ,
    FOREIGN KEY (student_id) references STUDENTS(id)
);


INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);



select first_name, title, grade from students
JOIN papers
on
students.id = papers.student_id
order by grade desc;

select first_name, title, grade from students
LEFT JOIN papers
on
students.id = papers.student_id;


select first_name, IFNULL(title, 'MISSING'), IFNULL(grade, 0) from students
LEFT JOIN papers
on
students.id = papers.student_id;


select first_name , AVG(grade)as average from students
LEFT JOIN papers 
on
students.id = papers.student_id
group by first_name
order by grade desc;

select first_name , AVG(grade)as average,
CASE
WHEN grade>= 75 THEN 'PASSING'
ELSE 'FAILING'
END AS 'passing_status'
from students
LEFT JOIN papers 
on
students.id = papers.student_id
group by first_name
order by grade desc;
