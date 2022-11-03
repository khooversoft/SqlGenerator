-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TS_WF_GROUP_USER]
AS
   SELECT
      x.[S_PROC_GROUP] AS [S_PROC_GROUP],
      x.[USERID] AS [USERID],
      x.[S_USER_TYPE] AS [S_USER_TYPE],
      x.[IS_ACTIVE] AS [IS_ACTIVE],
      x.[WEIGHT] AS [WEIGHT],
      x.[SUPERVISOR_ID] AS [SUPERVISOR_ID]
   FROM [clt_NetO].[GF_TS_WF_GROUP_USER] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
