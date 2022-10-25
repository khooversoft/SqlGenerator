CREATE VIEW [Alkami_restricted].[Vw_sas_credit_profile_attribute_default]
AS
   SELECT
      x.[attribute_code],
      x.[credit_bureau_enum_id],
      x.[default_value],
      x.[description],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[credit_profile_attribute_default] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
