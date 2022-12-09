select distinct
		TABLENAME,
		COLUMNNAME
		,LKP_TABLE
		,LKP_COLUMN
		,LKP_DISPLAY_COLUMN
from [clt_NetO].[WG_SYMBOL_XREF]
where lkp_table <> 'L_SYMBOL'

--SELECT	*
--FROM	(
--		select distinct
--				TABLENAME,
--				COLUMNNAME
--				,LKP_TABLE
--				,LKP_COLUMN
--				--,CASE LKP_TABLE
--				--	WHEN 'L_SYMBOL' THEN 'LEFT JOIN [clt_NetO].[SymbolLookup] {alias} ON x.[{columnName}] = {alias}.[DBSYMBOL] AND {alias}.[TableName] = ''{tableName}'' and {alias}.[COLUMNNAME] = ''{columnName}'''
--				--	WHEN 'GF_TS_PNP_IPG_PROGRAM' THEN 'LEFT JOIN [clt_NetO].[GF_TS_PNP_IPG_PROGRAM] {alias} ON {alias}.['
--				--	WHEN 'GF_TS_PNP_IPG_INVESTOR' THEN 'INVESTORCODE'
--				--	WHEN 'GF_TS_PNP_IPG_PRODUCT' THEN 'PRODUCTCODE'
--				--	WHEN 'GF_TS_PNP_IPG_PRICING' THEN 'PRICING_GROUP_CODE'
--				--	ELSE '**'
--				--END AS [Join]
--				--,CASE LKP_TABLE
--				--	WHEN 'L_SYMBOL' THEN 'DBSYMBOL'
--				--	WHEN 'GF_TS_PNP_IPG_PROGRAM' THEN 'PROGRAMNAME'
--				--	WHEN 'GF_TS_PNP_IPG_INVESTOR' THEN 'INVESTORNAME'
--				--	WHEN 'GF_TS_PNP_IPG_PRODUCT' THEN 'PRODUCTNAME'
--				--	WHEN 'GF_TS_PNP_IPG_PRICING' THEN 'PRICING_GROUP_NAME'
--				--	ELSE '**'
--				--END AS [DisplayColumn]
--		from [clt_NetO].[WG_SYMBOL_XREF]
--		where lkp_table <> 'L_SYMBOL'
--		) x
--WHERE	x.[DisplayColumn] <> '**'


--select	'SELECT top 5 * from [clt_NetO].' + x.LKP_TABLE
--FROM	(
		--select distinct
		--		LKP_TABLE
		--from [clt_NetO].[WG_SYMBOL_XREF]
--		where LKP_Table <> 'L_SYMBOL'
--		) x

select top 2 * from [clt_NetO].L_Symbol where fldname = 'GSE Purp of Refi'
SELECT top 2 * from [clt_NetO].GF_TS_PNP_IPG_PROGRAM
--SELECT top 5 * from [clt_NetO].RATECODE
SELECT top 2 * from [clt_NetO].GF_TS_PNP_IPG_INVESTOR
SELECT top 2 * from [clt_NetO].GF_TS_PNP_IPG_PRODUCT
SELECT top 2 * from [clt_NetO].GF_TS_PNP_IPG_PRICING
