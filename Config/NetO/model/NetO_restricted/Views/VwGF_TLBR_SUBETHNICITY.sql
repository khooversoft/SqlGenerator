-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TLBR_SUBETHNICITY]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[SUBETHNICITY_CTR],
      x.[S_SUBETHNICITY],
      A0.Descript AS [S_SUBETHNICITY_Description],
      x.[OTHER_DESC],
      x.[RECORD_CREATED]
   FROM [clt_NetO].[GF_TLBR_SUBETHNICITY] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_SUBETHNICITY = A0.DBSYMBOL AND A0.[TableName] = 'GF_TLBR_SUBETHNICITY' and A0.[COLUMNNAME] = 'S_SUBETHNICITY'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
