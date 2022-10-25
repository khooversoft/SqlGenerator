CREATE VIEW [Alkami_pii].[Vw_sas_credit_info]
AS
   SELECT
      x.[credit_profile_id],
      x.[credit_info_type_enum_id],
      x.[value_amount],
      x.[value_text],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[credit_info] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
