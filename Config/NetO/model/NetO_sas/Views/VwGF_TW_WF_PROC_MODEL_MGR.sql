-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TW_WF_PROC_MODEL_MGR]
AS
   SELECT
      x.[PROC_MDL_MGR_ID] AS [PROC_MDL_MGR_ID],
      x.[S_PROCESS_MODEL] AS [S_PROCESS_MODEL],
      x.[S_PROC_MDL_MGR_RESOLUTION] AS [S_PROC_MDL_MGR_RESOLUTION],
      x.[EXP_DATE_TO_COMPLETE] AS [EXP_DATE_TO_COMPLETE],
      x.[START_DATE] AS [START_DATE],
      x.[END_DATE] AS [END_DATE],
      x.[LAST_ACTION_DATE] AS [LAST_ACTION_DATE],
      x.[IS_COMPLETE] AS [IS_COMPLETE],
      x.[RESERVED_BY] AS [RESERVED_BY],
      x.[S_PROC_GROUP] AS [S_PROC_GROUP],
      x.[PROC_MGR_ID] AS [PROC_MGR_ID],
      x.[PARENT_PROC_MDL_MGR_ID] AS [PARENT_PROC_MDL_MGR_ID]
   FROM [clt_NetO].[GF_TW_WF_PROC_MODEL_MGR] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
