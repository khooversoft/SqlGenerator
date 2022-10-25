CREATE VIEW [Alkami].[Vw_party]
AS
   SELECT
      x.[party_id],
      x.[pseudo_id],
      x.[party_type_enum_id],
      x.[disabled],
      x.[customer_status_id],
      x.[owner_party_id],
      x.[external_id],
      x.[data_source_id],
      x.[gateway_cim_id],
      x.[comments],
      x.[shipping_instructions],
      x.[has_duplicates],
      x.[last_dup_check_date],
      x.[merged_to_party_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[party] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
