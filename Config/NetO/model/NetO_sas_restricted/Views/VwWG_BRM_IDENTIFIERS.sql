-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_BRM_IDENTIFIERS]
AS
   SELECT
      x.[BRM_IDENT_FIELD] AS [BRM_IDENT_FIELD],
      x.[BRM_IDENT_CODE] AS [BRM_IDENT_CODE],
      x.[S_USAGE_TYPE] AS [S_USAGE_TYPE],
      x.[BRM_IDENT_NAME] AS [BRM_IDENT_NAME],
      x.[BRM_IDENT_DESCRIPTION] AS [BRM_IDENT_DESCRIPTION]
   FROM [clt_NetO].[WG_BRM_IDENTIFIERS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;