-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO].[VwGF_TLR_DISCL_DATA]
AS
   SELECT
      x.[LNUM],
      x.[ROWSERIALNO],
      x.[DBID],
      x.[APR],
      x.[FINANCE_CHARGE_AMOUNT],
      x.[FINANCED_AMOUNT],
      x.[TOTAL_PAYMENT_AMOUNT],
      x.[YSP_AMOUNT],
      x.[DISCL_LOAN_AMOUNT],
      x.[DISCL_CLOSING_COSTS],
      x.[DISCL_REVIEW_TILA],
      x.[DISCL_LOAN_TYPE],
      x.[DISCL_PROGRAM],
      x.[DISCL_PAYMENT_STREAM],
      x.[DISCL_MI_PLAN],
      x.[DISCL_OCCUPANCY],
      x.[INT_RATE],
      x.[DISCL_BORROWER_COUNT],
      x.[VERBALDISC]
   FROM [clt_NetO].[GF_TLR_DISCL_DATA] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
;
