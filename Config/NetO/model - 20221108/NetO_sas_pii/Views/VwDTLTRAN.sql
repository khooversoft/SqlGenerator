-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwDTLTRAN]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[DBID] AS [DBID],
      x.[TRANCTR] AS [TRANCTR],
      x.[S_TRAN] AS [S_TRAN],
      x.[TRANDESC] AS [TRANDESC],
      x.[TRANAMT] AS [TRANAMT],
      x.[OTHERAMT] AS [OTHERAMT],
      x.[S_PURCH_CREDIT_TYPE] AS [S_PURCH_CREDIT_TYPE],
      x.[S_PURCH_SOURCE_TYPE] AS [S_PURCH_SOURCE_TYPE],
      x.[OTHERPURCHCREDTYPEDESC] AS [OTHERPURCHCREDTYPEDESC],
      x.[OTHERPURCHSRCTYPEDESC] AS [OTHERPURCHSRCTYPEDESC],
      x.[MANUALAMT] AS [MANUALAMT],
      x.[FEEAMT] AS [FEEAMT],
      x.[RECORD_CREATED] AS [RECORD_CREATED],
      x.[USE_BY_SYSTEM] AS [USE_BY_SYSTEM],
      x.[BUILDER_EARNEST_CREDIT] AS [BUILDER_EARNEST_CREDIT],
      x.[EXCLOTHCREDPREP] AS [EXCLOTHCREDPREP]
   FROM [clt_NetO].[DTLTRAN] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
