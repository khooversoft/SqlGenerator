-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_creditScore].[VwWG_CORR_FUNDING]
AS
   SELECT
      x.[LNUM],
      x.[RESPA_CUTOFF_DAY],
      x.[RESPA_CUTOFF_DAY_OVRD],
      x.[PURCHASE_TYPE],
      x.[FED_REF_NBR],
      x.[FED_REF_NBR_OVRD],
      x.[WIRE_SCHED_DATE],
      x.[WIRE_SCHED_DATE_OVRD],
      x.[WIRE_SENT_DATE_OVRD],
      x.[WIRE_SENT_DATE],
      x.[ESCROW_BAL_OVRD],
      x.[LENDER_PD_DISB_OVR],
      x.[MIP_OVRD],
      x.[INT_PD_DUE_OVRD],
      x.[AM_CURTAILMENT],
      x.[AM_CURT_OVRD],
      HASHBYTES('SHA2_256', CAST(x.[TOTAL_PRICE_AMOUNT] AS NVARCHAR(50))) AS [TOTAL_PRICE_AMOUNT],
      x.[TOTAL_FEES_ADJS],
      x.[NET_ESCROW_AMT],
      x.[CORS_INTEREST_PAID],
      x.[TOTAL_WIRE_AMOUNT],
      x.[SELWIRE_ACCOUNT]
   FROM [clt_NetO].[WG_CORR_FUNDING] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
