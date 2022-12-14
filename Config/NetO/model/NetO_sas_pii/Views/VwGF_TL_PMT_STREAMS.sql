-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TL_PMT_STREAMS]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[PAYMENTCTR] AS [PAYMENTCTR],
      x.[NUMPAYMENTS] AS [NUMPAYMENTS],
      x.[STARTDATE] AS [STARTDATE],
      x.[FULLPAYMENT] AS [FULLPAYMENT],
      x.[CONSTINTERESTFLAG] AS [CONSTINTERESTFLAG],
      x.[DEFERODDDAYSFLAG] AS [DEFERODDDAYSFLAG],
      x.[BOUGHTDOWNFLAG] AS [BOUGHTDOWNFLAG],
      x.[INTERESTONLYFLAG] AS [INTERESTONLYFLAG],
      x.[MINPMTSTREAMFLAG] AS [MINPMTSTREAMFLAG],
      x.[DISCLOSEDPMT] AS [DISCLOSEDPMT],
      x.[PMI] AS [PMI],
      x.[EFFECTIVERATE] AS [EFFECTIVERATE],
      x.[PAYMENTRATE] AS [PAYMENTRATE],
      x.[ADJUSTEDPAYMENT] AS [ADJUSTEDPAYMENT],
      x.[BALANCE] AS [BALANCE],
      x.[PIPAYMENT] AS [PIPAYMENT]
   FROM [clt_NetO].[GF_TL_PMT_STREAMS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
