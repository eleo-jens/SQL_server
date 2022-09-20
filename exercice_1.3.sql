-- pas terminé

CREATE TABLE [T_PRODUIT_PDT](
	[id_produit] INT IDENTITY,
	[ref_magasin] VARCHAR(50),
	[ref_fabricant] VARCHAR(50),
	[code_EAN13] CHAR(13) NOT NULL,
	[prix_vente] INT,
	CONSTRAINT CK_prix CHECK ([prix_vente] >= 0),
	CONSTRAINT PK_table PRIMARY KEY ([id_produit]),
	CONSTRAINT FK_table_fabricant FOREIGN KEY ([ref_fabricant]) REFERENCES T_FABRICANT_FBQ ([ref_fabricant]),
)