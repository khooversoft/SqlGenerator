-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_BRM_LKUP_BASE]
AS
   SELECT
      x.[BRMID] AS [BRMID],
      x.[S_USAGE_TYPE] AS [S_USAGE_TYPE],
      x.[LU_BRM_IDENTIFIER] AS [LU_BRM_IDENTIFIER],
      x.[S_BRM_STATUS] AS [S_BRM_STATUS],
      x.[S_BRM_TYPE] AS [S_BRM_TYPE],
      x.[BRM_NAME] AS [BRM_NAME],
      x.[BRM_DESCRIPTION] AS [BRM_DESCRIPTION],
      x.[BRM_START_DATE] AS [BRM_START_DATE],
      x.[BRM_END_DATE] AS [BRM_END_DATE],
      x.[S_CAP_CATEGORY] AS [S_CAP_CATEGORY],
      x.[S_EFFECTIVITY_RULE] AS [S_EFFECTIVITY_RULE],
      x.[CHANGE_EFF_DATE] AS [CHANGE_EFF_DATE],
      x.[CURRENT_USER_DATETIME] AS [CURRENT_USER_DATETIME],
      x.[CURRENT_USER_ID] AS [CURRENT_USER_ID],
      x.[CREATED_DATE] AS [CREATED_DATE],
      x.[CREATED_BY_USER_ID] AS [CREATED_BY_USER_ID],
      x.[LAST_CHANGE_DATE] AS [LAST_CHANGE_DATE],
      x.[LAST_CHANGE_USER_ID] AS [LAST_CHANGE_USER_ID],
      x.[MESSAGE_TEXT] AS [MESSAGE_TEXT],
      x.[S_OVERRIDE_LEVEL] AS [S_OVERRIDE_LEVEL],
      x.[BRM_CATEGORY] AS [BRM_CATEGORY]
   FROM [clt_NetO].[WG_BRM_LKUP_BASE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
