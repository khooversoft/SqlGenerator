CREATE VIEW [Alkami_pii].[Vw_contact_mech]
AS
   SELECT
      x.[contact_mech_id],
      x.[contact_mech_type_enum_id],
      x.[data_source_id],
      x.[info_string],
      x.[gateway_cim_id],
      x.[trust_level_enum_id],
      x.[validate_message],
      x.[payment_fraud_evidence_id],
      x.[replaces_contact_mech_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[contact_mech] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
