CREATE VIEW [Alkami].[Vw_finworksheetacctparty]
AS
   SELECT
      x.[financial_worksheet_id],
      x.[account_id],
      x.[party_id],
      x.[role_type_id],
      x.[responsibility_enum_id],
      x.[last_updated_stamp],
      x.[ASAP_SRC_NAME]
   FROM [clt_Alkami].[finworksheetacctparty] x
   WHERE x.[ASAP_DeleteDateTime] IS NOT NULL
;
