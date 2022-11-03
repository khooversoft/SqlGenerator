-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TL_LOAN_STATUS]
AS
   SELECT
      x.[LNUM],
      x.[S_LOAN_STATUS],
      x.[S_UW_STATUS],
      x.[S_LOCK_STATUS],
      x.[LOCK_STATUS_DISPLAY],
      x.[SENT_TO_MIDANET],
      x.[AP_ADMIN_ONLY],
      x.[STATUS_MODIFIED_DT],
      x.[EXT_LOAN_STATUS_VERSION_ID],
      x.[EXT_LOAN_STATUS_VERSION]
   FROM [clt_NetO].[GF_TL_LOAN_STATUS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
