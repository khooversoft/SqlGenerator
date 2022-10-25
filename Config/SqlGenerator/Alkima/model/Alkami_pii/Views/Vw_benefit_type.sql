CREATE VIEW [Alkami_pii].[Vw_benefit_type]
AS
   SELECT
      x.[benefit_type_id],
      x.[parent_type_id],
      x.[description],
      x.[employer_paid_percentage],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[benefit_type] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
