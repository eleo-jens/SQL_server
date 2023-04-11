INSERT INTO student
	VALUES ( 26, 'Eléonore', 'Stultjens', '1993-09-29', 'estultjens', 1020, 20, 'EG2210')

INSERT INTO student
	VALUES (
		(SELECT MAX([student_id]) + 1 FROM [student]),
		'Maya', 'Orianne', '1987-06-18','morianne', 1020, 20, 0)

UPDATE [student]
SET [birth_date] = '1993-09-29'
WHERE [student_id] = 26

UPDATE [student]
SET [birth_date] = '1987-06-18'
WHERE [student_id] = 27

SELECT *
FROM student