CREATE VIEW [Alkami_restricted].[Vw_sas_agreement_role_type]
AS
   SELECT
      x.[agreement_id],
      x.[role_type_id],
      x.[signature_required],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[agreement_role_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
