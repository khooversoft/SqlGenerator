CREATE VIEW [Alkami_pii].[Vw_party_role]
AS
   SELECT
      x.[party_id],
      x.[role_type_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[party_role] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
