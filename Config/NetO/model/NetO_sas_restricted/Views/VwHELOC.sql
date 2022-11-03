-- -----------------------------------------------------
-- Auto generated
-- -----------------------------------------------------


CREATE VIEW [NetO_sas_restricted].[VwHELOC]
AS
   SELECT
      x.[LNUM],
      x.[INTRORT],
      x.[MINITADV],
      x.[MOTHADV],
      x.[DPR],
      x.[DRAWPER],
      x.[WHENDUE],
      x.[TAXLTV],
      x.[SLNHOLD],
      x.[DRAWEXP],
      x.[TAXASAMT],
      x.[CTAXLTV],
      x.[NUM_CARDS],
      x.[S_LOCTYPE],
      x.[ANNUAL_FEE],
      x.[REPAY_MTHS],
      x.[TERMIN_FEE],
      x.[DRAWACCESS_FEE],
      x.[S_FUNDS_TO_BE_DRAWN],
      x.[OVERDRAFT_PROTECTION],
      x.[ODP_ACCOUNT_NUMBER],
      x.[ODP_ROUTING_NUMBER],
      x.[ANNUAL_CALC_OVR],
      x.[TERM_CALC_OVR],
      x.[S_REPAYMENT_METHOD]
   FROM [clt_NetO].[HELOC] x
   WHERE
      x.[ASAP_DeleteDateTime] IS NULL
      AND NOT EXISTS (SELECT * FROM [clt_NetO].[GF_TS_AUDIT_LOAN_DELETE] i WHERE x.[LNUM] = i.[DELETED_LNUM])
   ;
