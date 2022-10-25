CREATE VIEW [Alkami_restricted].[Vw_sas_payroll_adjustment_fed_stts]
AS
   SELECT
      x.[payroll_adjustment_id],
      x.[tax_federal_status_enum_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[payroll_adjustment_fed_stts] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
