CREATE VIEW [Alkami_restricted].[Vw_sas_user_permission]
AS
   SELECT
      x.[user_permission_id],
      x.[description],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[user_permission] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
