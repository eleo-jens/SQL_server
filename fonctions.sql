SELECT 
	'sam.legrain@bstorm.be' AS [email complet],
	SUBSTRING('sam.legrain@bstorm.be',
		CHARINDEX('@', 'sam.legrain@bstrom.be') + 1,
		LEN('sam.legrain@bstorm.be') - CHARINDEX('@', 'sam.legrain@bstrom.be'))
	AS [Domaine],
	LEFT('sam.legrain@bstorm.be', CHARINDEX('@','sam.legrain@bstrom.be')-1),
	RIGHT('sam.legrain@bstorm.be', LEN('sam.legrain@bstorm.be') - CHARINDEX('@', 'sam.legrain@bstrom.be'))

SELECT '123456-123.15',
	REPLACE(
		REPLACE('123456-123.15','-',''),
		'.',
		'')