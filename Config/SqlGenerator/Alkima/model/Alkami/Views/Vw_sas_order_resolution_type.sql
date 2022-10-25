CREATE VIEW [Alkami].[Vw_sas_order_resolution_type]
AS
   SELECT
      x.[order_resolution_type_id],
      x.[decision_type_enum_id],
      x.[description],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[order_resolution_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
