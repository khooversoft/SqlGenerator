CREATE VIEW [Alkami_pii].[Vw_sas_role_group_member]
AS
   SELECT
      x.[role_group_enum_id],
      x.[role_type_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[role_group_member] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
