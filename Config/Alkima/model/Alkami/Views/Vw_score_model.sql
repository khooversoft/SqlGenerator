CREATE VIEW [Alkami].[Vw_score_model]
AS
   SELECT
      x.[score_model_id],
      x.[score_type_enum_id],
      x.[organization_party_id],
      x.[sequence_num],
      x.[base_value],
      x.[is_weighted],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[score_model] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
