--2.3.16
USE DBSlide

--Ma version
SELECT 
	[first_name],
	[last_name],
	[login], 
	CONCAT(
		LOWER(SUBSTRING([first_name],(LEN([first_name])-2),3)),
		YEAR(GETDATE())-YEAR([birth_date])
	)
	AS [Nouveau login]
FROM [student]
WHERE [year_result] IN (10,12,14)

--Version avec RIGHT
SELECT 
	[first_name],
	[last_name],
	[login], 
	CONCAT(
		LOWER(RIGHT([first_name],3)),
		YEAR(GETDATE())-YEAR([birth_date])
	)
	AS [Nouveau login]
FROM [student]
WHERE [year_result] IN (10,12,14)

--Version avec DATEDIFF - VERSION la plus simple
SELECT 
	[first_name],
	[last_name],
	[login], 
	CONCAT(
		LOWER(RIGHT([first_name],3)),
		DATEDIFF(YEAR,[birth_date],GETDATE())
	)
	AS [Nouveau login]
FROM [student]
WHERE [year_result] IN (10,12,14)

