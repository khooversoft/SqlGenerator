-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwHELOC]
AS
   SELECT
      x.[LNUM],
      x.[INTRORT],
      x.[MINITADV],
      x.[MOTHADV],
      HASHBYTES('SHA2_256', CAST(x.[DPR] AS NVARCHAR(50))) AS [DPR],
      x.[DRAWPER],
      x.[WHENDUE],
      x.[TAXLTV],
      x.[SLNHOLD],
      x.[DRAWEXP],
      HASHBYTES('SHA2_256', CAST(x.[TAXASAMT] AS NVARCHAR(50))) AS [TAXASAMT],
      x.[CTAXLTV],
      x.[NUM_CARDS],
      x.[S_LOCTYPE],
      A0.[Descript] AS [S_LOCTYPE_X],
      x.[ANNUAL_FEE],
      x.[REPAY_MTHS],
      x.[TERMIN_FEE],
      x.[DRAWACCESS_FEE],
      x.[S_FUNDS_TO_BE_DRAWN],
      A1.[Descript] AS [S_FUNDS_TO_BE_DRAWN_X],
      HASHBYTES('SHA2_256', x.[OVERDRAFT_PROTECTION]) AS [OVERDRAFT_PROTECTION],
      HASHBYTES('SHA2_256', x.[ODP_ACCOUNT_NUMBER]) AS [ODP_ACCOUNT_NUMBER],
      HASHBYTES('SHA2_256', x.[ODP_ROUTING_NUMBER]) AS [ODP_ROUTING_NUMBER],
      x.[ANNUAL_CALC_OVR],
      x.[TERM_CALC_OVR],
      x.[S_REPAYMENT_METHOD],
      A2.[Descript] AS [S_REPAYMENT_METHOD_X]
   FROM [clt_NetO].[HELOC] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_LOCTYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'HELOC' and A0.[COLUMNNAME] = 'S_LOCTYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_FUNDS_TO_BE_DRAWN] = A1.[DBSYMBOL] AND A1.[TableName] = 'HELOC' and A1.[COLUMNNAME] = 'S_FUNDS_TO_BE_DRAWN'
      LEFT JOIN [clt_NetO].[SymbolLookup] A2 on x.[S_REPAYMENT_METHOD] = A2.[DBSYMBOL] AND A2.[TableName] = 'HELOC' and A2.[COLUMNNAME] = 'S_REPAYMENT_METHOD'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
