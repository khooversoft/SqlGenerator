-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwDTLTRAN]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[TRANCTR],
      x.[S_TRAN],
      x.[TRANDESC],
      x.[TRANAMT],
      x.[OTHERAMT],
      x.[S_PURCH_CREDIT_TYPE],
      x.[S_PURCH_SOURCE_TYPE],
      x.[OTHERPURCHCREDTYPEDESC],
      x.[OTHERPURCHSRCTYPEDESC],
      x.[MANUALAMT],
      x.[FEEAMT],
      x.[RECORD_CREATED],
      x.[USE_BY_SYSTEM],
      x.[BUILDER_EARNEST_CREDIT],
      x.[EXCLOTHCREDPREP],
      x.[POSTCLOSE_TOLERANCECURE]
   FROM [clt_NetO].[DTLTRAN] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
