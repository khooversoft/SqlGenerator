-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_PRICE_EXCEPTIONS]
AS
   SELECT
      x.[LNUM],
      x.[EXCEPTIONID],
      x.[S_EXCEPTION_TYPE],
      A0.Descript AS [EXCEPTION_TYPE],
      x.[DATE_ADDED],
      x.[EXCEPTION_REASON],
      x.[EXCEPTION_REQUESTED_BY_USER],
      x.[INACTIVE],
      x.[INACTIVE_DATE],
      x.[S_EXCEPTION_STATUS],
      A1.Descript AS [EXCEPTION_STATUS],
      x.[DATE_ACTIONED],
      x.[LENDER_DECISION_NOTES]
   FROM [clt_NetO].[WG_PRICE_EXCEPTIONS] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[S_EXCEPTION_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'WG_PRICE_EXCEPTIONS' and A0.[COLUMNNAME] = 'S_EXCEPTION_TYPE'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[S_EXCEPTION_STATUS] = A1.[DBSYMBOL] AND A1.[TableName] = 'WG_PRICE_EXCEPTIONS' and A1.[COLUMNNAME] = 'S_EXCEPTION_STATUS'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
