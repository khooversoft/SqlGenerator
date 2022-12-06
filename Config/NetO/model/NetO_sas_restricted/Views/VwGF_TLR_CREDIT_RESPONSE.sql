-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TLR_CREDIT_RESPONSE]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[RESPONSEID] AS [RESPONSEID],
      x.[CREDITRESPONSEID] AS [CREDITRESPONSEID],
      x.[DBID] AS [DBID],
      x.[VERSION_IDENT] AS [VERSION_IDENT],
      x.[CREDIT_REPORT_IDENT] AS [CREDIT_REPORT_IDENT],
      x.[FIRST_ISSUE_DATE] AS [FIRST_ISSUE_DATE],
      x.[LAST_UPDATE_DATE] AS [LAST_UPDATE_DATE],
      x.[MERGE_TYPE] AS [MERGE_TYPE],
      x.[REPORT_TYPE] AS [REPORT_TYPE],
      x.[REPORT_TYPE_OTHER] AS [REPORT_TYPE_OTHER],
      x.[RATEING_CODE_TYPE] AS [RATEING_CODE_TYPE],
      x.[RATING_TYPE_OTHER] AS [RATING_TYPE_OTHER],
      x.[EQUIFAX_INDC] AS [EQUIFAX_INDC],
      x.[EXPERIAN_INDC] AS [EXPERIAN_INDC],
      x.[TRANSUNION_INDC] AS [TRANSUNION_INDC],
      x.[OTHER_REPOSITORY_NAME] AS [OTHER_REPOSITORY_NAME],
      x.[CREDITREPORTTRANSID] AS [CREDITREPORTTRANSID],
      x.[CREDIT_RESP_IMPORT_XML] AS [CREDIT_RESP_IMPORT_XML]
   FROM [clt_NetO].[GF_TLR_CREDIT_RESPONSE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
