CREATE VIEW [Alkami_pii].[Vw_rule_config]
AS
   SELECT
      x.[rule_id],
      x.[config_key],
      x.[config_value],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[rule_config] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
