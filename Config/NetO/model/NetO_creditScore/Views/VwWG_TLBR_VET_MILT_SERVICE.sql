-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwWG_TLBR_VET_MILT_SERVICE]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      HASHBYTES('SHA2_256', CAST(x.[ROWSERIALNO] AS NVARCHAR(50))) AS [ROWSERIALNO],
      x.[S_BRANCH],
      A0.[Descript] AS [S_BRANCH_X],
      HASHBYTES('SHA2_256', CAST(x.[START_DATE] AS NVARCHAR(50))) AS [START_DATE],
      x.[END_DATE],
      x.[S_OFF_OR_ENLISTED],
      HASHBYTES('SHA2_256', x.[SERVICE_NUMBER]) AS [SERVICE_NUMBER],
      x.[ACTIVESERVYN]
   FROM [clt_NetO].[WG_TLBR_VET_MILT_SERVICE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_BRANCH] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_TLBR_VET_MILT_SERVICE' and A0.[COLUMNNAME] = 'S_BRANCH'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
