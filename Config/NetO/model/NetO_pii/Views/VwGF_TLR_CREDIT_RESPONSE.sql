-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TLR_CREDIT_RESPONSE]
AS
   SELECT
      x.[LNUM],
      x.[RESPONSEID],
      x.[CREDITRESPONSEID],
      x.[DBID],
      x.[VERSION_IDENT],
      x.[CREDIT_REPORT_IDENT],
      x.[FIRST_ISSUE_DATE],
      x.[LAST_UPDATE_DATE],
      x.[MERGE_TYPE],
      x.[REPORT_TYPE],
      x.[REPORT_TYPE_OTHER],
      x.[RATEING_CODE_TYPE],
      x.[RATING_TYPE_OTHER],
      x.[EQUIFAX_INDC],
      x.[EXPERIAN_INDC],
      x.[TRANSUNION_INDC],
      x.[OTHER_REPOSITORY_NAME],
      x.[CREDITREPORTTRANSID],
      x.[CREDIT_RESP_IMPORT_XML]
   FROM [clt_NetO].[GF_TLR_CREDIT_RESPONSE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
