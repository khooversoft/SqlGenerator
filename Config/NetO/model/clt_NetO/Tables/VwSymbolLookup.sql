CREATE VIEW [clt_NetO].[SymbolLookup]
AS
	SELECT	x.[TABLENAME]
			,x.[COLUMNNAME]
			,s.[FLDNAME]
			,s.[DBSYMBOL]
			,s.[DESCRIPT]
	FROM	[clt_NetO].[WG_SYMBOL_XREF] x
			INNER JOIN [clt_NetO].[L_SYMBOL] s on s.[FLDNAME] = x.[LKP_COLUMN]
	WHERE	x.[ASAP_DeleteDateTime] is NULL
	AND		s.[ASAP_DeleteDateTime] is NULL	
;
GO

