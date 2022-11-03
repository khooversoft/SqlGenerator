-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TW_WF_ACTION_MGR]
AS
   SELECT
      x.[ACTION_ID] AS [ACTION_ID],
      x.[S_WORKTYPE] AS [S_WORKTYPE],
      x.[S_ACTION_RESOLUTION] AS [S_ACTION_RESOLUTION],
      x.[S_PROC_MDL_RESOLUTION] AS [S_PROC_MDL_RESOLUTION],
      x.[EXTERNAL_CODE] AS [EXTERNAL_CODE],
      x.[INSERT_DATE] AS [INSERT_DATE],
      x.[EXP_DATE_TO_COMPLETE] AS [EXP_DATE_TO_COMPLETE],
      x.[START_DATE] AS [START_DATE],
      x.[END_DATE] AS [END_DATE],
      x.[LAST_ACTION_DATE] AS [LAST_ACTION_DATE],
      x.[IS_BEING_WORKED] AS [IS_BEING_WORKED],
      x.[ACTION_STATUS_FLAG] AS [ACTION_STATUS_FLAG],
      x.[RESERVED_BY] AS [RESERVED_BY],
      x.[S_PROC_GROUP] AS [S_PROC_GROUP],
      x.[PROC_MDL_MGR_ID] AS [PROC_MDL_MGR_ID],
      x.[RESERVE_DATE] AS [RESERVE_DATE],
      x.[WF_SESSION_ID] AS [WF_SESSION_ID],
      x.[OPENED_DATE] AS [OPENED_DATE]
   FROM [clt_NetO].[GF_TW_WF_ACTION_MGR] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
