CREATE VIEW [Alkami_restricted].[Vw_user_group]
AS
   SELECT
      x.[user_group_id],
      x.[description],
      x.[group_type_enum_id],
      x.[ip_allowed],
      x.[require_authc_factor],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[user_group] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
