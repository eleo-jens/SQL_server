CREATE TABLE [T_office](
	[office_id] INTEGER,
	[office_adresse] VARCHAR(30),
	CONSTRAINT PK_office PRIMARY KEY ([office_id])
)

CREATE TABLE [T_course](
	[crs_code] CHAR(8) PRIMARY KEY,
	[crs_name] VARCHAR(30),
	CONSTRAINT UK_crs UNIQUE ([crs_name])
)

CREATE TABLE [T_professor](
	[prf_id] INTEGER PRIMARY KEY,
	[prf_name] VARCHAR(30),
	[prf_course] CHAR(8)
		CONSTRAINT FK_professor_course REFERENCES [T_course] ([crs_code]) ON DELETE SET NULL,
	[office_id] INTEGER REFERENCES [T_office],
	CONSTRAINT UK_prf_name UNIQUE ([prf_name])
)

GO