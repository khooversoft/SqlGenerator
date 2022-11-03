CREATE VIEW [Alkami_restricted].[Vw_salesfunnel_config]
AS
   SELECT
      x.[salesfunnel_config_id],
      x.[owner_party_id],
      x.[config_name],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[salesfunnel_config] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
