CREATE VIEW [Alkami].[Vw_sas_financial_flow]
AS
   SELECT
      x.[financial_flow_id],
      x.[entry_type_enum_id],
      x.[financial_flow_type_enum_id],
      x.[party_id],
      x.[amount],
      x.[balance],
      x.[interval_uom_id],
      x.[data_source_id],
      x.[from_date],
      x.[thru_date],
      x.[party_relationship_id],
      x.[asset_id],
      x.[sequence_num],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[financial_flow] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
