-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwWG_BORR_INCOME_SRC_PAYSTUB]
AS
   SELECT
      x.[LNUM] AS [LNUM],
      x.[BNUM] AS [BNUM],
      x.[DBID] AS [DBID],
      x.[PS_CTR] AS [PS_CTR],
      x.[INC_SRC_CTR] AS [INC_SRC_CTR],
      x.[YTD_FROM_DATE] AS [YTD_FROM_DATE],
      x.[YTD_TO_DATE] AS [YTD_TO_DATE],
      x.[PAYSTUB_DATE] AS [PAYSTUB_DATE],
      x.[AVGHOURSPERWEEK] AS [AVGHOURSPERWEEK],
      x.[MONTHLYBASEPAY] AS [MONTHLYBASEPAY],
      x.[MONTHLYRATE] AS [MONTHLYRATE],
      x.[OVERTIME_PAY] AS [OVERTIME_PAY],
      x.[YTD_BASEPAY] AS [YTD_BASEPAY],
      x.[YTD_OVERTIMEPAY] AS [YTD_OVERTIMEPAY],
      x.[YTD_BONUSPAY] AS [YTD_BONUSPAY],
      x.[YTD_COMMISSIONPAY] AS [YTD_COMMISSIONPAY],
      x.[YTD_TOTALPAY] AS [YTD_TOTALPAY],
      x.[OTHER_PAY] AS [OTHER_PAY],
      x.[COMMISSION_PAY] AS [COMMISSION_PAY],
      x.[DEPENDENT_CARE_BENEFITS] AS [DEPENDENT_CARE_BENEFITS],
      x.[GARNISHMENTS] AS [GARNISHMENTS],
      x.[YTD_OTHERPAY] AS [YTD_OTHERPAY],
      x.[LOAN_REPAYMENT] AS [LOAN_REPAYMENT],
      x.[PAYS_TOTAL_PAY] AS [PAYS_TOTAL_PAY],
      x.[CALCULATED_INCOME] AS [CALCULATED_INCOME],
      x.[OVR_CALCULATED_INCOME] AS [OVR_CALCULATED_INCOME],
      x.[OTHER_DEDUCTION] AS [OTHER_DEDUCTION],
      x.[AVG_YTD_BASE] AS [AVG_YTD_BASE],
      x.[AVG_YTD_GROSS] AS [AVG_YTD_GROSS],
      x.[CHK_AVG_YTD_BASE] AS [CHK_AVG_YTD_BASE],
      x.[CHK_CURRENT_BASE] AS [CHK_CURRENT_BASE],
      x.[CHK_AVG_YTD_GROSS] AS [CHK_AVG_YTD_GROSS],
      x.[BONUS_PAY] AS [BONUS_PAY],
      x.[PAYFREQ] AS [PAYFREQ],
      x.[BASE_HOURLY_PAY] AS [BASE_HOURLY_PAY],
      x.[CHK_BASE_HOURLY_PAY] AS [CHK_BASE_HOURLY_PAY],
      x.[SUMMARY_CURRENT_NETPAY] AS [SUMMARY_CURRENT_NETPAY],
      x.[OVERTIMEHOURS] AS [OVERTIMEHOURS],
      x.[OVERTIMERATE] AS [OVERTIMERATE],
      x.[BONUSHOURS] AS [BONUSHOURS],
      x.[BONUSRATE] AS [BONUSRATE],
      x.[COMMISSIONHOURS] AS [COMMISSIONHOURS],
      x.[COMMISSIONRATE] AS [COMMISSIONRATE],
      x.[OTHERHOURS] AS [OTHERHOURS],
      x.[OTHERRATE] AS [OTHERRATE],
      x.[MILITARYHOURS] AS [MILITARYHOURS],
      x.[MILITARYRATE] AS [MILITARYRATE],
      x.[MILITARY_PAY] AS [MILITARY_PAY],
      x.[YTD_MILITARYPAY] AS [YTD_MILITARYPAY],
      x.[DOC_UPLOADED_DATE] AS [DOC_UPLOADED_DATE],
      x.[DATA_UPDATED_DATE] AS [DATA_UPDATED_DATE],
      x.[DATA_UPDATED_BYUSER] AS [DATA_UPDATED_BYUSER],
      x.[OCR_DATA_FLAG] AS [OCR_DATA_FLAG],
      x.[VALID_CARD] AS [VALID_CARD]
   FROM [clt_NetO].[WG_BORR_INCOME_SRC_PAYSTUB] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
