-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwGF_TL_UW_4]
AS
   SELECT
      x.[LNUM],
      HASHBYTES('SHA2_256', x.[ADDRESVS]) AS [ADDRESVS],
      x.[ADUTPROD],
      HASHBYTES('SHA2_256', CAST(x.[ALTSCORE] AS NVARCHAR(50))) AS [ALTSCORE],
      x.[BADCREDIT],
      x.[BADHR],
      x.[BADLTV],
      HASHBYTES('SHA2_256', x.[BORROWERDEL]) AS [BORROWERDEL],
      x.[CHGREFI],
      HASHBYTES('SHA2_256', x.[COBORROWERDEL]) AS [COBORROWERDEL],
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
      HASHBYTES('SHA2_256', x.[CREDIT_SCORE_IMPAIRMENT]) AS [CREDIT_SCORE_IMPAIRMENT],
      A0.[Descript] AS [CREDIT_SCORE_IMPAIRMENT_X],
      HASHBYTES('SHA2_256', x.[CREDIT_SELECTION_METHOD]) AS [CREDIT_SELECTION_METHOD],
      A1.[Descript] AS [CREDIT_SELECTION_METHOD_X],
      x.[CHKAPPENDIXQ],
      x.[APPQREASON],
      HASHBYTES('SHA2_256', CAST(x.[OVERALL_FRAUD_SCORE] AS NVARCHAR(50))) AS [OVERALL_FRAUD_SCORE],
      x.[INCL_INVST_PRP_IN_QM_TEST]
   FROM [clt_NetO].[GF_TL_UW_4] x
      LEFT JOIN [clt_NetO].[SymbolLookup] A0 on x.[CREDIT_SCORE_IMPAIRMENT] = A0.[DBSYMBOL] AND A0.[TableName] = 'GF_TL_UW_4' and A0.[COLUMNNAME] = 'CREDIT_SCORE_IMPAIRMENT'
      LEFT JOIN [clt_NetO].[SymbolLookup] A1 on x.[CREDIT_SELECTION_METHOD] = A1.[DBSYMBOL] AND A1.[TableName] = 'GF_TL_UW_4' and A1.[COLUMNNAME] = 'CREDIT_SELECTION_METHOD'
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
