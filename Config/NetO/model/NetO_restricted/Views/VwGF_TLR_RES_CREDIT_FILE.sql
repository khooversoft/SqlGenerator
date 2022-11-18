-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TLR_RES_CREDIT_FILE]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[RESPONSEID],
      x.[CREDITRESPONSEID],
      x.[CREDITFILEID],
      x.[BORROWER_ID],
      x.[CREDITSCOREID],
      x.[REPOSITORY_SOURCE_TYPE],
      x.[INFILE_DATE],
      x.[BNUM],
      x.[S_RESULTSTATUSTYPE],
      x.[RESULTSTATUSTTHERDESC],
      x.[CREDREPOSSRCTYPEOTHERDESC]
   FROM [clt_NetO].[GF_TLR_RES_CREDIT_FILE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;