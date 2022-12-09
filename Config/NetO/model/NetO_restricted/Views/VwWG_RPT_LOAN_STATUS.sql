-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_RPT_LOAN_STATUS]
AS
   SELECT
      x.[ROWCNTR],
      x.[LNUM],
      x.[S_LOAN_STATUS],
      A0.Descript AS [LOAN_STATUS1],
      x.[LOAN_STATUS],
      x.[STATUS_DATE]
   FROM [clt_NetO].[WG_RPT_LOAN_STATUS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_LOAN_STATUS] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_RPT_LOAN_STATUS' and A0.[COLUMNNAME] = 'S_LOAN_STATUS'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
