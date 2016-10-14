#Q1
SELECT teacher.name
FROM teacher LEFT OUTER JOIN dept ON teacher.dept = dept.id
WHERE teacher.dept IS NULL;

#Q2 Inner Join misses out the depts with NULL teachers and teachers will NULL depts
SELECT teacher.name, dept.name
FROM teacher INNER JOIN dept ON (teacher.dept=dept.id)

#Q3
SELECT teacher.name, dept.name
FROM teacher LEFT OUTER JOIN dept
             ON (teacher.dept=dept.id)
             
#Q4
SELECT teacher.name, dept.name
FROM teacher RIGHT OUTER JOIN dept
             ON (teacher.dept=dept.id)
             
#Q5
SELECT name, COALESCE(mobile, '07986 444 2266') as mobile
FROM teacher;

#Q6
SELECT teacher.name, COALESCE(dept.name, 'None') as dept
FROM teacher LEFT OUTER JOIN dept
             ON dept.id = teacher.dept;
             
#Q7
SELECT count(teacher.id), count(teacher.mobile)
FROM teacher

#Q8
SELECT dept.name, count(teacher.id)
FROM teacher RIGHT OUTER JOIN dept ON dept.id = teacher.dept
GROUP BY dept.name;

#Q9
SELECT teacher.name, CASE
                     WHEN teacher.dept = 1 THEN 'Sci'
                     WHEN teacher.dept = 2 THEN 'Sci'
                     ELSE 'Art'
                     END
FROM teacher;

#Q10
SELECT teacher.name, CASE
                     WHEN teacher.dept = 1 OR teacher.dept = 2 THEN 'Sci'
                     WHEN teacher.dept = 3 THEN 'Art'
                     ELSE 'None'
                     END
FROM teacher;