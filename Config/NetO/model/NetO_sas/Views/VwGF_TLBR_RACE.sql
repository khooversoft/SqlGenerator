-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLBR_RACE]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      HASHBYTES('SHA2_256', CAST(x.[ROWSERIALNO] AS NVARCHAR(50))) AS [ROWSERIALNO],
      x.[S_RACE] AS [S_RACE],
      A0.[Descript] AS [S_RACE_X],
      HASHBYTES('SHA2_256', x.[OTHER_AMERICAN_DESC]) AS [OTHER_AMERICAN_DESC],
      x.[RECORD_CREATED] AS [RECORD_CREATED]
   FROM [clt_NetO].[GF_TLBR_RACE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_RACE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLBR_RACE' and A0.[COLUMNNAME] = 'S_RACE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
