-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TL_PMT_STREAMS]
AS
   SELECT
      x.[LNUM],
      x.[PAYMENTCTR],
      x.[NUMPAYMENTS],
      x.[STARTDATE],
      x.[FULLPAYMENT],
      x.[CONSTINTERESTFLAG],
      x.[DEFERODDDAYSFLAG],
      x.[BOUGHTDOWNFLAG],
      x.[INTERESTONLYFLAG],
      x.[MINPMTSTREAMFLAG],
      x.[DISCLOSEDPMT],
      x.[PMI],
      x.[EFFECTIVERATE],
      x.[PAYMENTRATE],
      x.[ADJUSTEDPAYMENT],
      x.[BALANCE],
      x.[PIPAYMENT]
   FROM [clt_NetO].[GF_TL_PMT_STREAMS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
