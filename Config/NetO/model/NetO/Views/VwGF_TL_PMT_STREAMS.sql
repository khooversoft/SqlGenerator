-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TL_PMT_STREAMS]
AS
   SELECT
      x.[LNUM],
      x.[PAYMENTCTR],
      x.[NUMPAYMENTS],
      HASHBYTES('SHA2_256', CAST(x.[STARTDATE] AS NVARCHAR(50))) AS [STARTDATE],
      x.[FULLPAYMENT],
      x.[CONSTINTERESTFLAG],
      x.[DEFERODDDAYSFLAG],
      x.[BOUGHTDOWNFLAG],
      x.[INTERESTONLYFLAG],
      x.[MINPMTSTREAMFLAG],
      x.[DISCLOSEDPMT],
      HASHBYTES('SHA2_256', CAST(x.[PMI] AS NVARCHAR(50))) AS [PMI],
      x.[EFFECTIVERATE],
      x.[PAYMENTRATE],
      x.[ADJUSTEDPAYMENT],
      HASHBYTES('SHA2_256', CAST(x.[BALANCE] AS NVARCHAR(50))) AS [BALANCE],
      x.[PIPAYMENT]
   FROM [clt_NetO].[GF_TL_PMT_STREAMS] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
