-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_pii].[VwGF_TL_UW_4]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[ADDRESVS] AS [ADDRESVS],
      x.[ADUTPROD] AS [ADUTPROD],
      x.[ALTSCORE] AS [ALTSCORE],
      x.[BADCREDIT] AS [BADCREDIT],
      x.[BADHR] AS [BADHR],
      x.[BADLTV] AS [BADLTV],
      x.[BORROWERDEL] AS [BORROWERDEL],
      x.[CHGREFI] AS [CHGREFI],
      x.[COBORROWERDEL] AS [COBORROWERDEL],
      x.[CTROFFYES] AS [CTROFFYES],
      x.[DELETED] AS [DELETED],
      x.[EMPLYUNA] AS [EMPLYUNA],
      x.[FHAYES] AS [FHAYES],
      x.[FRED500YES] AS [FRED500YES],
      x.[LOWERLTV] AS [LOWERLTV],
      x.[MAJCRDGS] AS [MAJCRDGS],
      x.[MANAYES] AS [MANAYES],
      x.[MINCRDGS] AS [MINCRDGS],
      x.[NOSAVE] AS [NOSAVE],
      x.[PMTSHOCK] AS [PMTSHOCK],
      x.[PORTFOUR] AS [PORTFOUR],
      x.[PORTONE] AS [PORTONE],
      x.[PORTPLUS] AS [PORTPLUS],
      x.[PORTTHREE] AS [PORTTHREE],
      x.[PORTTWO] AS [PORTTWO],
      x.[TTL_MONTH_INCOME] AS [TTL_MONTH_INCOME],
      x.[TTL_MONTH_DEBTS] AS [TTL_MONTH_DEBTS],
      x.[CREDIT_SCORE_IMPAIRMENT] AS [CREDIT_SCORE_IMPAIRMENT],
      x.[CREDIT_SELECTION_METHOD] AS [CREDIT_SELECTION_METHOD],
      x.[CHKAPPENDIXQ] AS [CHKAPPENDIXQ],
      x.[APPQREASON] AS [APPQREASON],
      x.[OVERALL_FRAUD_SCORE] AS [OVERALL_FRAUD_SCORE],
      x.[INCL_INVST_PRP_IN_QM_TEST] AS [INCL_INVST_PRP_IN_QM_TEST]
   FROM [clt_NetO].[GF_TL_UW_4] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
