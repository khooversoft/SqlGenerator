CREATE VIEW [Alkami_pii].[Vw_system_message_mapping_ruleset]
AS
   SELECT
      x.[ruleset_id],
      x.[description],
      x.[owner_party_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[system_message_mapping_ruleset] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
