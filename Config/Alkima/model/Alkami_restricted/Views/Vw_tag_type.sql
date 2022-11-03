CREATE VIEW [Alkami_restricted].[Vw_tag_type]
AS
   SELECT
      x.[tag_type_id],
      x.[name],
      x.[tooltip],
      x.[owner_party_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[tag_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
