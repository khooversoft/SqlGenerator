-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TS_AUDIT_USER_LOCK]
AS
   SELECT
      x.[UL_ID] AS [UL_ID],
      x.[UL_LNUM] AS [UL_LNUM],
      x.[UL_ACTION] AS [UL_ACTION],
      x.[INSERT_USERID] AS [INSERT_USERID],
      x.[INSERT_USERNAME] AS [INSERT_USERNAME],
      x.[INSERT_TIMELOCKED] AS [INSERT_TIMELOCKED],
      x.[INSERT_LASTLOCKED] AS [INSERT_LASTLOCKED],
      x.[DELETE_USERID] AS [DELETE_USERID],
      x.[DELETE_USERNAME] AS [DELETE_USERNAME],
      x.[DELETE_TIMELOCKED] AS [DELETE_TIMELOCKED],
      x.[DELETE_LASTLOCKED] AS [DELETE_LASTLOCKED],
      x.[MODIFIED_DATETIME] AS [MODIFIED_DATETIME]
   FROM [clt_NetO].[GF_TS_AUDIT_USER_LOCK] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
