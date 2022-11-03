CREATE VIEW [Alkami_pii].[Vw_party_setting]
AS
   SELECT
      x.[party_id],
      x.[party_setting_type_id],
      x.[setting_value],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[party_setting] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
