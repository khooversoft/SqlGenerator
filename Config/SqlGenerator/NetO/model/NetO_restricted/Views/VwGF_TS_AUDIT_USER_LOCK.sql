-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwGF_TS_AUDIT_USER_LOCK]
AS
   SELECT
      x.[UL_ID],
      x.[UL_LNUM],
      x.[UL_ACTION],
      x.[INSERT_USERID],
      x.[INSERT_USERNAME],
      x.[INSERT_TIMELOCKED],
      x.[INSERT_LASTLOCKED],
      x.[DELETE_USERID],
      x.[DELETE_USERNAME],
      x.[DELETE_TIMELOCKED],
      x.[DELETE_LASTLOCKED],
      x.[MODIFIED_DATETIME]
   FROM [clt_NetO].[GF_TS_AUDIT_USER_LOCK] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
