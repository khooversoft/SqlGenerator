-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_restricted].[VwWG_BRM_EXPORT]
AS
   SELECT
      x.[EXPORTID],
      x.[EXP_USER_NAME],
      x.[EXP_DATE_TIME],
      x.[EXP_FILE_NAME],
      x.[EXP_FILE_PATH],
      x.[S_EXP_STATUS],
      x.[EXP_RULESET_ID],
      x.[EXP_BRM_IDENT],
      x.[EXP_BRM_NAME],
      x.[EXP_BRM_EFFDT],
      x.[EXP_BRM_LC_DT],
      x.[S_EXP_BRM_STATUS],
      x.[EXP_NOTES],
      x.[DBID],
      x.[EXP_INCL_FIELDS],
      x.[EXP_INCL_CATS],
      x.[EXP_INCL_GRIDS]
   FROM [clt_NetO].[WG_BRM_EXPORT] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
