select	x.Table_Name as [Table Name]
		,x.COLUMN_NAME as [Column Name]
		,case x.DATA_TYPE
			WHEN 'char' THEN 'char(' + CAST(CHARACTER_MAXIMUM_LENGTH AS NVARCHAR(20)) + ')'
			WHEN 'date' THEN 'date'
			WHEN 'datetime' THEN 'datetime'
			WHEN 'decimal' THEN 'decimal(' + CAST(NUMERIC_PRECISION AS NVARCHAR(20)) + ',' + CAST(NUMERIC_SCALE AS NVARCHAR(20)) + ')'
			WHEN 'float' THEN 'float(' + CAST(NUMERIC_PRECISION AS NVARCHAR(20)) + ')'
			WHEN 'int' THEN 'int'
			WHEN 'nchar' THEN 'nchar(' + CAST(CHARACTER_MAXIMUM_LENGTH AS NVARCHAR(20)) + ')'
			WHEN 'numeric' THEN 'numeric(' + CAST(NUMERIC_PRECISION AS NVARCHAR(20)) + ',' + CAST(NUMERIC_SCALE AS NVARCHAR(20)) + ')'
			WHEN 'nvarchar' THEN 'nvarchar(' + CASE WHEN CHARACTER_MAXIMUM_LENGTH = -1 THEN 'MAX' ELSE CAST(CHARACTER_MAXIMUM_LENGTH AS NVARCHAR(20)) END + ')'
			WHEN 'smallint' THEN 'smallint'
			WHEN 'varchar' THEN 'varchar(' + CASE WHEN CHARACTER_MAXIMUM_LENGTH = -1 THEN 'MAX' ELSE CAST(CHARACTER_MAXIMUM_LENGTH AS NVARCHAR(20)) END + ')'
		ELSE '**' END AS [Column Datatype]
		,CASE x.IS_NULLABLE WHEN 'YES' THEN 'NULL' ELSE 'NOT NULL' END AS [Column Null Option]
		,CASE WHEN k.COLUMN_NAME IS NULL THEN '' ELSE 'Yes' END AS [Primary Key]
from	INFORMATION_SCHEMA.COLUMNS x
		LEFT JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE k ON x.TABLE_NAME = k.TABLE_NAME
			AND x.COLUMN_NAME = k.COLUMN_NAME
order by x.TABLE_NAME
		,x.ORDINAL_POSITION


--select	x.TABLE_NAME
--		,x.COLUMN_NAME
--		,x.ORDINAL_POSITION
--		,k.*
--from	INFORMATION_SCHEMA.COLUMNS x
--		LEFT JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE k ON x.TABLE_NAME = k.TABLE_NAME
--where x.TABLE_NAME in ('WG_RPT_LOAN_REMARKS' )
--order by x.table_name, x.ORDINAL_POSITION

--select	DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, NUMERIC_PRECISION, NUMERIC_SCALE
--from	INFORMATION_SCHEMA.COLUMNS x
--where x.TABLE_NAME = 'VETINFO'
--group by DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, NUMERIC_PRECISION, NUMERIC_SCALE

----select	*
----from	INFORMATION_SCHEMA.KEY_COLUMN_USAGE

