-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TS_WF_GROUP_USER]
AS
   SELECT
      x.[S_PROC_GROUP],
      x.[USERID],
      x.[S_USER_TYPE],
      x.[IS_ACTIVE],
      x.[WEIGHT],
      x.[SUPERVISOR_ID]
   FROM [clt_NetO].[GF_TS_WF_GROUP_USER] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;