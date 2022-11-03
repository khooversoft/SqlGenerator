-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_BRM_LKUP_BASE]
AS
   SELECT
      x.[BRMID],
      x.[S_USAGE_TYPE],
      x.[LU_BRM_IDENTIFIER],
      x.[S_BRM_STATUS],
      x.[S_BRM_TYPE],
      x.[BRM_NAME],
      x.[BRM_DESCRIPTION],
      x.[BRM_START_DATE],
      x.[BRM_END_DATE],
      x.[S_CAP_CATEGORY],
      x.[S_EFFECTIVITY_RULE],
      x.[CHANGE_EFF_DATE],
      x.[CURRENT_USER_DATETIME],
      x.[CURRENT_USER_ID],
      x.[CREATED_DATE],
      x.[CREATED_BY_USER_ID],
      x.[LAST_CHANGE_DATE],
      x.[LAST_CHANGE_USER_ID],
      x.[MESSAGE_TEXT],
      x.[S_OVERRIDE_LEVEL],
      x.[BRM_CATEGORY]
   FROM [clt_NetO].[WG_BRM_LKUP_BASE] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
