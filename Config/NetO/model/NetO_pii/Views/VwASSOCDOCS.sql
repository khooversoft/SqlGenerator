-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwASSOCDOCS]
AS
   SELECT
      x.[S_SUNDCON],
      A0.Descript AS [S_SUNDCONDescription],
      x.[CNTR],
      x.[S_ASSOCDOC],
      A1.Descript AS [S_ASSOCDOCDescription],
      x.[SRCENV],
      x.[REC_CUSTOM],
      x.[CREATE_DATE],
      x.[MODIFY_DATE]
   FROM [clt_NetO].[ASSOCDOCS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_SUNDCON = A0.[DBSYMBOL] AND A0.[TableName] = 'ASSOCDOCS' and A0.[COLUMNNAME] = 'S_SUNDCON'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_ASSOCDOC = A1.[DBSYMBOL] AND A1.[TableName] = 'ASSOCDOCS' and A1.[COLUMNNAME] = 'S_ASSOCDOC'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
