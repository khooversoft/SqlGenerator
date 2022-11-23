-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwWG_TLR_RECORDING_INFO]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[ROWSERIALNO],
      x.[REOCNTR],
      x.[RECORDING_DATE],
      x.[DOCUMENT_TYPE],
      x.[DOCUMENT_NUMBER],
      x.[DOC_TYPE_OTHER_DESC],
      x.[JURISDICTION_NAME],
      x.[JURISDICTION_TYPE],
      x.[JUDICIAL_DISTRICT],
      x.[RECORDING_DISTRICT],
      x.[BOOK_TYPE],
      x.[BOOK_NUMBER],
      x.[INSTRUMENT_NUMBER],
      x.[RECORDING_OFFICE],
      x.[RECORDING_STATE],
      x.[RECORDING_COUNTY],
      x.[PAGE_NUMBER],
      x.[VOLUME_NUMBER],
      x.[RECORDING_CITY]
   FROM [clt_NetO].[WG_TLR_RECORDING_INFO] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
