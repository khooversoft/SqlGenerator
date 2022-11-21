-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwHELOC2]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[INITIAL_ADVANCE] AS [INITIAL_ADVANCE],
      x.[HELOC_DESCRIPTION] AS [HELOC_DESCRIPTION],
      x.[BILL_END_DATE] AS [BILL_END_DATE],
      x.[MIN_BALANCE] AS [MIN_BALANCE],
      x.[OPENEND_CREDIT_IND] AS [OPENEND_CREDIT_IND],
      x.[S_RTC_TYPE] AS [S_RTC_TYPE],
      A0.Descript AS [S_RTC_TYPE_Description],
      x.[WAIVE_ANNUAL_FEE] AS [WAIVE_ANNUAL_FEE],
      x.[ANNUAL_FEE_START_DT] AS [ANNUAL_FEE_START_DT]
   FROM [clt_NetO].[HELOC2] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.S_RTC_TYPE = A0.DBSYMBOL AND A0.[TableName] = 'HELOC2' and A0.[COLUMNNAME] = 'S_RTC_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
