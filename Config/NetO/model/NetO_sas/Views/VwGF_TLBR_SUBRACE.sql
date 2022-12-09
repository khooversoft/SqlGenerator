-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLBR_SUBRACE]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[SUBRACE_CTR] AS [SUBRACE_CTR],
      x.[S_SUBRACE] AS [S_SUBRACE],
      A0.Descript AS [SUBRACE],
      x.[OTHER_ASIAN_DESC] AS [OTHER_ASIAN_DESC],
      x.[OTHER_PACISLDR_DESC] AS [OTHER_PACISLDR_DESC],
      x.[RECORD_CREATED] AS [RECORD_CREATED]
   FROM [clt_NetO].[GF_TLBR_SUBRACE] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_SUBRACE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLBR_SUBRACE' and A0.[COLUMNNAME] = 'S_SUBRACE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
