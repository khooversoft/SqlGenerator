-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwASSOCDOCS]
AS
   SELECT
      x.[S_SUNDCON] AS [S_SUNDCON],
      A0.Descript AS [D_SUNDCON],
      x.[CNTR] AS [CNTR],
      x.[S_ASSOCDOC] AS [S_ASSOCDOC],
      A1.Descript AS [D_ASSOCDOC],
      x.[SRCENV] AS [SRCENV],
      x.[REC_CUSTOM] AS [REC_CUSTOM],
      x.[CREATE_DATE] AS [CREATE_DATE],
      x.[MODIFY_DATE] AS [MODIFY_DATE]
   FROM [clt_NetO].[ASSOCDOCS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_SUNDCON = A0.[DBSYMBOL] AND A0.[TableName] = 'ASSOCDOCS' and A0.[COLUMNNAME] = 'S_SUNDCON'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.S_ASSOCDOC = A1.[DBSYMBOL] AND A1.[TableName] = 'ASSOCDOCS' and A1.[COLUMNNAME] = 'S_ASSOCDOC'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
