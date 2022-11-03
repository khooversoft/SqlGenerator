-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwGF_TW_WF_ACTION_MGR]
AS
   SELECT
      x.[ACTION_ID],
      x.[S_WORKTYPE],
      x.[S_ACTION_RESOLUTION],
      x.[S_PROC_MDL_RESOLUTION],
      x.[EXTERNAL_CODE],
      x.[INSERT_DATE],
      x.[EXP_DATE_TO_COMPLETE],
      x.[START_DATE],
      x.[END_DATE],
      x.[LAST_ACTION_DATE],
      x.[IS_BEING_WORKED],
      x.[ACTION_STATUS_FLAG],
      x.[RESERVED_BY],
      x.[S_PROC_GROUP],
      x.[PROC_MDL_MGR_ID],
      x.[RESERVE_DATE],
      x.[WF_SESSION_ID],
      x.[OPENED_DATE]
   FROM [clt_NetO].[GF_TW_WF_ACTION_MGR] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
