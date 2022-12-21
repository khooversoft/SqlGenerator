-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TS_AUDIT_USER_LOCK]
AS
   SELECT
      x.[UL_ID],
      x.[UL_LNUM],
      x.[UL_ACTION],
      HASHBYTES('SHA2_256', CAST(x.[INSERT_USERID] AS NVARCHAR(50))) AS [INSERT_USERID],
      HASHBYTES('SHA2_256', x.[INSERT_USERNAME]) AS [INSERT_USERNAME],
      x.[INSERT_TIMELOCKED],
      x.[INSERT_LASTLOCKED],
      x.[DELETE_USERID],
      HASHBYTES('SHA2_256', x.[DELETE_USERNAME]) AS [DELETE_USERNAME],
      x.[DELETE_TIMELOCKED],
      x.[DELETE_LASTLOCKED],
      x.[MODIFIED_DATETIME]
   FROM [clt_NetO].[GF_TS_AUDIT_USER_LOCK] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
