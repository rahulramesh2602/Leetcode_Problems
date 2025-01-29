# Write your MySQL query statement below
SELECT 
    s.student_id, 
    s.student_name, 
    sub.subject_name, 
    COUNT(e.subject_name) as attended_exams
FROM 
    students s
CROSS JOIN 
    Subjects sub
LEFT JOIN 
    examinations e 
    ON sub.subject_name = e.subject_name and s.student_id = e.student_id
GROUP BY 
    s.student_id,  
    s.student_name, 
    sub.subject_name
ORDER BY 
    s.student_id, 
    sub.subject_name;