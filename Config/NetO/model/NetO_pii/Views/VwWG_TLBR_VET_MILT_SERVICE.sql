-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_TLBR_VET_MILT_SERVICE]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[ROWSERIALNO],
      x.[S_BRANCH],
      A0.[Descript] AS [S_BRANCH_X],
      x.[START_DATE],
      x.[END_DATE],
      x.[S_OFF_OR_ENLISTED],
      x.[SERVICE_NUMBER],
      x.[ACTIVESERVYN]
   FROM [clt_NetO].[WG_TLBR_VET_MILT_SERVICE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_BRANCH] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_TLBR_VET_MILT_SERVICE' and A0.[COLUMNNAME] = 'S_BRANCH'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
