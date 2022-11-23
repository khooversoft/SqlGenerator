-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TS_WF_GROUP_USER]
AS
   SELECT
      x.[S_PROC_GROUP] AS [S_PROC_GROUP],
      A0.Descript AS [S_PROC_GROUP_Description],
      x.[USERID] AS [USERID],
      x.[S_USER_TYPE] AS [S_USER_TYPE],
      A1.Descript AS [S_USER_TYPE_Description],
      x.[IS_ACTIVE] AS [IS_ACTIVE],
      x.[WEIGHT] AS [WEIGHT],
      x.[SUPERVISOR_ID] AS [SUPERVISOR_ID]
   FROM [clt_NetO].[GF_TS_WF_GROUP_USER] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_PROC_GROUP = A0.DBSYMBOL AND A0.[TableName] = 'GF_TS_WF_GROUP_USER' and A0.[COLUMNNAME] = 'S_PROC_GROUP'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_USER_TYPE = A1.DBSYMBOL AND A1.[TableName] = 'GF_TS_WF_GROUP_USER' and A1.[COLUMNNAME] = 'S_USER_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
