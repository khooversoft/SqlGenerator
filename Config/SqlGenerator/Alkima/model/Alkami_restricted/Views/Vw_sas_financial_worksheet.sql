CREATE VIEW [Alkami_restricted].[Vw_sas_financial_worksheet]
AS
   SELECT
      x.[financial_worksheet_id],
      x.[order_id],
      x.[status_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[financial_worksheet] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
