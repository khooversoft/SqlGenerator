-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TLR_RES_CREDIT_INQUIRY]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[RESPONSEID] AS [RESPONSEID],
      x.[CREDITRESPONSEID] AS [CREDITRESPONSEID],
      x.[INQUIRYID] AS [INQUIRYID],
      x.[DBID] AS [DBID],
      x.[PRIMARY_BNUM] AS [PRIMARY_BNUM],
      x.[PRIMARY_DBID] AS [PRIMARY_DBID],
      x.[SECONDARY_BNUM] AS [SECONDARY_BNUM],
      x.[SECONDARY_DBID] AS [SECONDARY_DBID],
      x.[NAME] AS [NAME],
      x.[ADDRESS1] AS [ADDRESS1],
      x.[ADDRESS2] AS [ADDRESS2],
      x.[CITY] AS [CITY],
      x.[STATE] AS [STATE],
      x.[POSTAL_CODE] AS [POSTAL_CODE],
      x.[DATE_OF_INQUIRY] AS [DATE_OF_INQUIRY],
      x.[INQUIRY_RESULT_TYPE] AS [INQUIRY_RESULT_TYPE],
      x.[CREDIT_BUSINESS_TYPE] AS [CREDIT_BUSINESS_TYPE],
      x.[CREDIT_LOAN_TYPE] AS [CREDIT_LOAN_TYPE],
      x.[TYPE_OTHER_DESC] AS [TYPE_OTHER_DESC],
      x.[CREDITLIABILITYID] AS [CREDITLIABILITYID]
   FROM [clt_NetO].[GF_TLR_RES_CREDIT_INQUIRY] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
