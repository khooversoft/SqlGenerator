CREATE VIEW [Alkami].[Vw_sas_agreement_party]
AS
   SELECT
      x.[agreement_id],
      x.[party_id],
      x.[role_type_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[agreement_party] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
