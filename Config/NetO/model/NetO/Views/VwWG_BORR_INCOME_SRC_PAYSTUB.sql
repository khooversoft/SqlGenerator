-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwWG_BORR_INCOME_SRC_PAYSTUB]
AS
   SELECT
      x.[LNUM],
      x.[BNUM],
      x.[DBID],
      x.[PS_CTR],
      x.[INC_SRC_CTR],
      x.[YTD_FROM_DATE],
      x.[YTD_TO_DATE],
      x.[PAYSTUB_DATE],
      x.[AVGHOURSPERWEEK],
      x.[MONTHLYBASEPAY],
      x.[MONTHLYRATE],
      x.[OVERTIME_PAY],
      x.[YTD_BASEPAY],
      x.[YTD_OVERTIMEPAY],
      x.[YTD_BONUSPAY],
      x.[YTD_COMMISSIONPAY],
      x.[YTD_TOTALPAY],
      x.[OTHER_PAY],
      x.[COMMISSION_PAY],
      x.[DEPENDENT_CARE_BENEFITS],
      x.[GARNISHMENTS],
      x.[YTD_OTHERPAY],
      x.[LOAN_REPAYMENT],
      x.[PAYS_TOTAL_PAY],
      x.[CALCULATED_INCOME],
      x.[OVR_CALCULATED_INCOME],
      x.[OTHER_DEDUCTION],
      x.[AVG_YTD_BASE],
      x.[AVG_YTD_GROSS],
      x.[CHK_AVG_YTD_BASE],
      x.[CHK_CURRENT_BASE],
      x.[CHK_AVG_YTD_GROSS],
      x.[BONUS_PAY],
      x.[PAYFREQ],
      x.[BASE_HOURLY_PAY],
      x.[CHK_BASE_HOURLY_PAY],
      x.[SUMMARY_CURRENT_NETPAY],
      x.[OVERTIMEHOURS],
      x.[OVERTIMERATE],
      x.[BONUSHOURS],
      x.[BONUSRATE],
      x.[COMMISSIONHOURS],
      x.[COMMISSIONRATE],
      x.[OTHERHOURS],
      x.[OTHERRATE],
      x.[MILITARYHOURS],
      x.[MILITARYRATE],
      x.[MILITARY_PAY],
      x.[YTD_MILITARYPAY],
      x.[DOC_UPLOADED_DATE],
      x.[DATA_UPDATED_DATE],
      x.[DATA_UPDATED_BYUSER],
      x.[OCR_DATA_FLAG],
      x.[VALID_CARD]
   FROM [clt_NetO].[WG_BORR_INCOME_SRC_PAYSTUB] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
