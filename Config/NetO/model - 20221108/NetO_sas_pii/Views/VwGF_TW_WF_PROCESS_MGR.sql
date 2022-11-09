-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TW_WF_PROCESS_MGR]
AS
   SELECT
      x.[PROC_MGR_ID] AS [PROC_MGR_ID],
      x.[S_PROCESS] AS [S_PROCESS],
      x.[EXTERNAL_CODE] AS [EXTERNAL_CODE],
      x.[EXT_CODE_DESC] AS [EXT_CODE_DESC],
      x.[EXP_COMP_DATE] AS [EXP_COMP_DATE],
      x.[START_DATE] AS [START_DATE],
      x.[END_DATE] AS [END_DATE],
      x.[LAST_ACTION_DATE] AS [LAST_ACTION_DATE],
      x.[MODELS_STARTED] AS [MODELS_STARTED],
      x.[MODELS_COMPLETED] AS [MODELS_COMPLETED],
      x.[IS_COMPLETE] AS [IS_COMPLETE],
      x.[RESERVED_BY] AS [RESERVED_BY],
      x.[S_PROC_GROUP] AS [S_PROC_GROUP]
   FROM [clt_NetO].[GF_TW_WF_PROCESS_MGR] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
