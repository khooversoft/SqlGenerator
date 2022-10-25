-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas].[VwGF_TLR_TAXITEMS]
AS
   SELECT
      x.[LNUM],
      x.[DBID],
      x.[ROWSERIALNO],
      x.[HUDLINE],
      x.[S_TAXTYPE],
      x.[ANN_AMT],
      x.[FIRST_DUE],
      x.[ESCROW],
      x.[INSTYPE],
      x.[TRETS_ID],
      x.[MONTH_AG],
      x.[ANNUAL_AG],
      x.[MONTH_AMT],
      x.[MONTH_PD_1],
      x.[MONTH_PD_2],
      x.[MONTH_PD_3],
      x.[MONTH_PD_4],
      x.[PMT_AMT_1],
      x.[PMT_AMT_2],
      x.[PMT_AMT_3],
      x.[PMT_AMT_4],
      x.[DISBURSID],
      x.[AUTH_NAME],
      x.[TAX_DELINQUENT],
      x.[PAID_THRU_DATE],
      x.[PARCEL_ID],
      x.[CUSHION],
      x.[SFREQUENCY],
      x.[PROJASESSEDVAL],
      x.[RATEPERTHOUSAND],
      x.[COLFIRSTYR],
      x.[S_ESCTAX],
      x.[ISMERGEDINT],
      x.[TAX_TYPE_DESC],
      x.[UPFRONT_TAX_AMOUNT]
   FROM [clt_NetO].[GF_TLR_TAXITEMS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
