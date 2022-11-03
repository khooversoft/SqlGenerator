-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_BRM_DEFN_FIELDS]
AS
   SELECT
      x.[FIELDID] AS [FIELDID],
      x.[S_FIELD_STATUS] AS [S_FIELD_STATUS],
      x.[FIELD_NAME] AS [FIELD_NAME],
      x.[FIELD_TEXT] AS [FIELD_TEXT],
      x.[S_FIELD_CONTROL_TYPE] AS [S_FIELD_CONTROL_TYPE],
      x.[S_FIELD_OPERATOR] AS [S_FIELD_OPERATOR],
      x.[S_FIELD_LIST_SOURCE] AS [S_FIELD_LIST_SOURCE],
      x.[S_FIELD_FORMAT] AS [S_FIELD_FORMAT],
      x.[CURRENT_USER_DATETIME] AS [CURRENT_USER_DATETIME],
      x.[CURRENT_USER_ID] AS [CURRENT_USER_ID],
      x.[S_USAGE_TYPE] AS [S_USAGE_TYPE]
   FROM [clt_NetO].[WG_BRM_DEFN_FIELDS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
