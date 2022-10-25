-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwWG_BRM_DEFN_FIELDS]
AS
   SELECT
      x.[FIELDID],
      x.[S_FIELD_STATUS],
      x.[FIELD_NAME],
      x.[FIELD_TEXT],
      x.[S_FIELD_CONTROL_TYPE],
      x.[S_FIELD_OPERATOR],
      x.[S_FIELD_LIST_SOURCE],
      x.[S_FIELD_FORMAT],
      x.[CURRENT_USER_DATETIME],
      x.[CURRENT_USER_ID],
      x.[S_USAGE_TYPE]
   FROM [clt_NetO].[WG_BRM_DEFN_FIELDS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
   ;
