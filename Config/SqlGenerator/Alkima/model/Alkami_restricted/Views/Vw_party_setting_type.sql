CREATE VIEW [Alkami_restricted].[Vw_party_setting_type]
AS
   SELECT
      x.[party_setting_type_id],
      x.[description],
      x.[valid_regexp],
      x.[enum_type_id],
      x.[default_value],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[party_setting_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
