CREATE VIEW [Alkami_pii].[Vw_salesfunnel_config_setting]
AS
   SELECT
      x.[config_setting_id],
      x.[salesfunnel_config_id],
      x.[setting_type_enum_id],
      x.[setting_value],
      x.[from_date],
      x.[thru_date],
      x.[sequence_num],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[salesfunnel_config_setting] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
