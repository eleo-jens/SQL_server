CREATE TABLE [T_MAINTENANCE_MTN](
	[Jour] CHAR(3) NOT NULL,
	[Machine] VARCHAR(20) NOT NULL,
	[Numero] TINYINT,
	[Vitesse] TINYINT,
	[Temperature] INT,
	[HEURE] TIME NOT NULL,
	[EVENEMENT] varchar(50) NOT NULL,
	CONSTRAINT PK_maintenance PRIMARY KEY ([Numero]),
	CONSTRAINT UK_heure_evenement UNIQUE ([Heure],[Evenement]),
	CONSTRAINT CK_jour CHECK ([Jour] != 'Dim')
)