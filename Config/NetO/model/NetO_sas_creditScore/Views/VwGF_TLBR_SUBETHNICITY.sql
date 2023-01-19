-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_creditScore].[VwGF_TLBR_SUBETHNICITY]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      HASHBYTES('SHA2_256', CAST(x.[SUBETHNICITY_CTR] AS NVARCHAR(50))) AS [SUBETHNICITY_CTR],
      x.[S_SUBETHNICITY] AS [S_SUBETHNICITY],
      A0.[Descript] AS [S_SUBETHNICITY_X],
      HASHBYTES('SHA2_256', x.[OTHER_DESC]) AS [OTHER_DESC],
      x.[RECORD_CREATED] AS [RECORD_CREATED]
   FROM [clt_NetO].[GF_TLBR_SUBETHNICITY] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_SUBETHNICITY] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLBR_SUBETHNICITY' and A0.[COLUMNNAME] = 'S_SUBETHNICITY'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
