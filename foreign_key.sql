CREATE TABLE [Student](
	[student_id] INT IDENTITY,
	[login] NVARCHAR(50) NOT NULL,
	CONSTRAINT PK_student PRIMARY KEY ([student_id]),
	CONSTRAINT UK_student_login UNIQUE ([login])
)

CREATE TABLE [Section](
	[section_id] INT IDENTITY,
	[name] NVARCHAR(50),
	[delegate_id] INT, --student_id in Student
	CONSTRAINT PK_section PRIMARY KEY ([section_id]),
	CONSTRAINT FK_section_student FOREIGN KEY ([delegate_id])		REFERENCES [Student] ([student_id])
)

-- on ajoute à student la foreign key section_id : il devient dépendant au moment de l'ajout de la contrainte et pas avant
ALTER TABLE [Student] ADD CONSTRAINT FK_Student_Section FOREIGN KEY ([section_id]) REFERENCES [Section] ([section_id])