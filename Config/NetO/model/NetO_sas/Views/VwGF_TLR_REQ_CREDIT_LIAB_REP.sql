-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLR_REQ_CREDIT_LIAB_REP]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[REQUESTID] AS [REQUESTID],
      x.[CREDITREQUESTID] AS [CREDITREQUESTID],
      x.[LIABILITYID] AS [LIABILITYID],
      x.[REPOSITORYID] AS [REPOSITORYID],
      x.[SOURCE_TYPE] AS [SOURCE_TYPE],
      A0.[Descript] AS [SOURCE_TYPE_X],
      x.[SUBSCRIBER_ID] AS [SUBSCRIBER_ID],
      x.[SOURCE_TYPE_OTHER] AS [SOURCE_TYPE_OTHER]
   FROM [clt_NetO].[GF_TLR_REQ_CREDIT_LIAB_REP] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[SOURCE_TYPE] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TLR_REQ_CREDIT_LIAB_REP' and A0.[COLUMNNAME] = 'SOURCE_TYPE'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
