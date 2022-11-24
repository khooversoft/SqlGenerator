-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_BRM_IDENTIFIERS]
AS
   SELECT
      x.[BRM_IDENT_FIELD] AS [BRM_IDENT_FIELD],
      x.[BRM_IDENT_CODE] AS [BRM_IDENT_CODE],
      x.[S_USAGE_TYPE] AS [S_USAGE_TYPE],
      A0.Descript AS [S_USAGE_TYPEDescription],
      x.[BRM_IDENT_NAME] AS [BRM_IDENT_NAME],
      x.[BRM_IDENT_DESCRIPTION] AS [BRM_IDENT_DESCRIPTION]
   FROM [clt_NetO].[WG_BRM_IDENTIFIERS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_USAGE_TYPE = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_BRM_IDENTIFIERS' and A0.[COLUMNNAME] = 'S_USAGE_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
