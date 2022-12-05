-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [AssetAcq_pii].[Vw_LoanModification]
AS
   SELECT
      x.[BECUAccountNumber],
      x.[Loan_ID],
      x.[ModID],
      x.[ModEffectiveDate],
      x.[ModStartDate],
      x.[ModEndDate],
      x.[ValuePre],
      x.[ValuePost],
      x.[FreezeDays]
   FROM [clt_AssetAcq].[LoanModification] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
;
