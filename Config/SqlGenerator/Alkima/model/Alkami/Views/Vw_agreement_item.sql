CREATE VIEW [Alkami].[Vw_agreement_item]
AS
   SELECT
      x.[agreement_id],
      x.[agreement_item_seq_id],
      x.[agreement_item_type_enum_id],
      x.[from_date],
      x.[thru_date],
      x.[product_id],
      x.[quantity],
      x.[quantity_uom_id],
      x.[item_text],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[agreement_item] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
