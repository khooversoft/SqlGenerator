-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLBR_ETHNICITY]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[ETHNICITY_CTR] AS [ETHNICITY_CTR],
      x.[S_ETHNICITY] AS [S_ETHNICITY],
      A0.[Descript] AS [S_ETHNICITY_X],
      x.[FURNISH_INFO_YN] AS [FURNISH_INFO_YN],
      x.[RECORD_CREATED] AS [RECORD_CREATED]
   FROM [clt_NetO].[GF_TLBR_ETHNICITY] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_ETHNICITY] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLBR_ETHNICITY' and A0.[COLUMNNAME] = 'S_ETHNICITY'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
