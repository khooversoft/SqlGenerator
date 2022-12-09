-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwWG_AUTO_DEBIT]
AS
   SELECT
      x.[LNUM],
      x.[AD_FLAG],
      x.[S_AD_ACCT_TYPE],
      A0.Descript AS [AD_ACCT_TYPE],
      x.[AD_INST_NAME],
      x.[AD_ACCT_NUMB],
      x.[AD_RT_NUMB],
      x.[AD_DAYOFAD],
      x.[AD_ADDL_PRINC],
      x.[AD_ACCT_TYP_OTH]
   FROM [clt_NetO].[WG_AUTO_DEBIT] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_AD_ACCT_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_AUTO_DEBIT' and A0.[COLUMNNAME] = 'S_AD_ACCT_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
