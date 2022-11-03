-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwWG_BRM_IMPORT]
AS
   SELECT
      x.[IMPORTID] AS [IMPORTID],
      x.[IMP_USER_NAME] AS [IMP_USER_NAME],
      x.[IMP_DATE_TIME] AS [IMP_DATE_TIME],
      x.[IMP_FILE_NAME] AS [IMP_FILE_NAME],
      x.[IMP_FILE_PATH] AS [IMP_FILE_PATH],
      x.[S_IMP_STATUS] AS [S_IMP_STATUS],
      x.[EXPORTID] AS [EXPORTID],
      x.[EXP_USER_NAME] AS [EXP_USER_NAME],
      x.[EXP_DATE_TIME] AS [EXP_DATE_TIME],
      x.[EXP_FILE_NAME] AS [EXP_FILE_NAME],
      x.[EXP_FILE_PATH] AS [EXP_FILE_PATH],
      x.[S_EXP_STATUS] AS [S_EXP_STATUS],
      x.[EXP_RULESET_ID] AS [EXP_RULESET_ID],
      x.[EXP_BRM_IDENT] AS [EXP_BRM_IDENT],
      x.[EXP_BRM_NAME] AS [EXP_BRM_NAME],
      x.[EXP_BRM_EFFDT] AS [EXP_BRM_EFFDT],
      x.[EXP_BRM_LC_DT] AS [EXP_BRM_LC_DT],
      x.[S_EXP_BRM_STATUS] AS [S_EXP_BRM_STATUS],
      x.[IMP_NOTES] AS [IMP_NOTES],
      x.[EXP_NOTES] AS [EXP_NOTES],
      x.[SYS_FINDINGS] AS [SYS_FINDINGS],
      x.[DBID] AS [DBID],
      x.[EXP_INCL_FIELDS] AS [EXP_INCL_FIELDS],
      x.[EXP_INCL_CATS] AS [EXP_INCL_CATS],
      x.[EXP_INCL_GRIDS] AS [EXP_INCL_GRIDS],
      x.[IMP_IMP_FIELDS] AS [IMP_IMP_FIELDS],
      x.[IMP_IMP_CATS] AS [IMP_IMP_CATS],
      x.[IMP_IMP_GRIDS] AS [IMP_IMP_GRIDS]
   FROM [clt_NetO].[WG_BRM_IMPORT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
