CREATE VIEW [Alkami].[Vw_sas_ruleset]
AS
   SELECT
      x.[ruleset_id],
      x.[name],
      x.[owner_party_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[ruleset] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
