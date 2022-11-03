CREATE VIEW [Alkami].[Vw_uom_dim_type_group_member]
AS
   SELECT
      x.[uom_dim_type_group_enum_id],
      x.[uom_dimension_type_id],
      x.[sequence_num],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[uom_dim_type_group_member] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
