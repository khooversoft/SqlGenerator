CREATE VIEW [Alkami_pii].[Vw_sas_credit_profile_attribute]
AS
   SELECT
      x.[attribute_code],
      x.[credit_bureau_enum_id],
      x.[description],
      x.[uom_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[credit_profile_attribute] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
