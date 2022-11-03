CREATE VIEW [Alkami].[Vw_role_type]
AS
   SELECT
      x.[role_type_id],
      x.[parent_type_id],
      x.[description],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[role_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
