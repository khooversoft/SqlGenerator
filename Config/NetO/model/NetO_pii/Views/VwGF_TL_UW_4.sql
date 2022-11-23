-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_pii].[VwGF_TL_UW_4]
AS
   SELECT
      x.[LNUM],
      x.[ADDRESVS],
      x.[ADUTPROD],
      x.[ALTSCORE],
      x.[BADCREDIT],
      x.[BADHR],
      x.[BADLTV],
      x.[BORROWERDEL],
      x.[CHGREFI],
      x.[COBORROWERDEL],
      x.[CTROFFYES],
      x.[DELETED],
      x.[EMPLYUNA],
      x.[FHAYES],
      x.[FRED500YES],
      x.[LOWERLTV],
      x.[MAJCRDGS],
      x.[MANAYES],
      x.[MINCRDGS],
      x.[NOSAVE],
      x.[PMTSHOCK],
      x.[PORTFOUR],
      x.[PORTONE],
      x.[PORTPLUS],
      x.[PORTTHREE],
      x.[PORTTWO],
      x.[TTL_MONTH_INCOME],
      x.[TTL_MONTH_DEBTS],
      x.[CREDIT_SCORE_IMPAIRMENT],
      x.[CREDIT_SELECTION_METHOD],
      x.[CHKAPPENDIXQ],
      x.[APPQREASON],
      x.[OVERALL_FRAUD_SCORE],
      x.[INCL_INVST_PRP_IN_QM_TEST]
   FROM [clt_NetO].[GF_TL_UW_4] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
