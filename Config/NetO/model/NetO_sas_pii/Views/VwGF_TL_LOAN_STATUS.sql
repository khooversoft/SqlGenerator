-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TL_LOAN_STATUS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[S_LOAN_STATUS] AS [S_LOAN_STATUS],
      A0.Descript AS [D_LOAN_STATUS],
      x.[S_UW_STATUS] AS [S_UW_STATUS],
      A1.Descript AS [D_UW_STATUS],
      x.[S_LOCK_STATUS] AS [S_LOCK_STATUS],
      A2.Descript AS [D_LOCK_STATUS],
      x.[LOCK_STATUS_DISPLAY] AS [LOCK_STATUS_DISPLAY],
      x.[SENT_TO_MIDANET] AS [SENT_TO_MIDANET],
      x.[AP_ADMIN_ONLY] AS [AP_ADMIN_ONLY],
      x.[STATUS_MODIFIED_DT] AS [STATUS_MODIFIED_DT],
      x.[EXT_LOAN_STATUS_VERSION_ID] AS [EXT_LOAN_STATUS_VERSION_ID],
      x.[EXT_LOAN_STATUS_VERSION] AS [EXT_LOAN_STATUS_VERSION]
   FROM [clt_NetO].[GF_TL_LOAN_STATUS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_LOAN_STATUS = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TL_LOAN_STATUS' and A0.[COLUMNNAME] = 'S_LOAN_STATUS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_UW_STATUS = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TL_LOAN_STATUS' and A1.[COLUMNNAME] = 'S_UW_STATUS'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.S_LOCK_STATUS = A2.[DBSYMBOL] AND A2.[TableName] = 'GF_TL_LOAN_STATUS' and A2.[COLUMNNAME] = 'S_LOCK_STATUS'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
